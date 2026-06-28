import { createClient } from 'https://esm.sh/@supabase/supabase-js@2'

const SHEET_ID = '1YvquHHGQuBifmtG0Dfut_TW54HYinvFU7ywW_E0s-HM'

// ── Leer Google Sheet con API Key (sheet público con link) ───────────────────

// Estados terminales: ya no cambian después de llegar aquí
const TERMINAL_SYSTEM_STATES = new Set(['entregado', 'devuelto', 'cancelado'])

// Mapeo: estado crudo del Sheet → estado del sistema
// El estado del Sheet puede venir como "COMPLETADO AUREL" → parseamos solo la primera palabra
const SHEET_STATE_MAP: Record<string, string> = {
  EN_ESPERA:              'pendiente',
  LLAMAR:                 'pendiente',
  NOVEDAD:                'pendiente',
  NUEVO:                  'pendiente',
  SIN_WHATSAP:            'pendiente',
  SIN_WHATSAPP:           'pendiente',
  DUPLICADO_SIN_WHATSAP:  'pendiente',
  CONFIRMADO:             'confirmado',
  EN_RUTA:                'confirmado',
  COMPLETADO:             'entregado',   // dispara confirmar_venta_entregada
  PARA_DEVOLUCION:        'para_devolucion',
  DEVOLUCION:             'devuelto',    // dispara marcar_pedido_para_devolucion
  CANCELADO:              'cancelado',
  SIN_COBERTURA:          'cancelado',
  CONFIRMADO_SIN_STOCK:   'cancelado',
}

// ── Tipos ────────────────────────────────────────────────────────────────────

interface ParsedSheetState {
  systemState: string | null
  rawCourier: string | null   // courier extraído del texto del estado, ej "AUREL" de "COMPLETADO AUREL"
  isTesteo: boolean
  isPruebaInterna: boolean
}

interface ParsedRow {
  pedidoNum: number | null
  fecha: string | null
  estadoRaw: string
  coberturaRaw: string | null  // columna COBERTURA
  nombre: string | null
  telefono: string | null
  direccion: string | null
  provincia: string | null
  ciudad: string | null
  productoNombre: string | null
  cantidad: number | null
  subtotalLinea: number | null   // PRECI TOTAL DEL PRODUCTO (total de línea)
  precioUnitario: number | null  // PRECIO TOTAL (nombre engañoso — es el unitario)
  comentario: string | null
  ultimaActualizacion: string | null
  rawCourier: string | null
}

// ── Leer Google Sheet con API Key (sheet público con link) ───────────────────

async function fetchSheetRows(apiKey: string): Promise<{ headers: string[]; rows: string[][] }> {
  const url = `https://sheets.googleapis.com/v4/spreadsheets/${SHEET_ID}/values/A:AZ?key=${apiKey}`
  const res = await fetch(url)

  if (!res.ok) {
    const err = await res.text()
    throw new Error(`Sheets API error: ${err}`)
  }

  const data = await res.json()
  const values: string[][] = data.values ?? []

  if (values.length < 2) return { headers: [], rows: [] }

  const headers = values[0].map((h: string) => h.trim().toUpperCase())
  const rows    = values.slice(1)

  return { headers, rows }
}

// ── Parsear estado del Sheet ──────────────────────────────────────────────────

function parseSheetState(raw: string): ParsedSheetState {
  const upper = raw.trim().toUpperCase().replace(/\s+/g, ' ')

  if (upper.startsWith('TESTEO')) {
    return { systemState: 'pendiente', rawCourier: null, isTesteo: true, isPruebaInterna: false }
  }
  if (upper.startsWith('PRUEBA_INTERNA') || upper.startsWith('PRUEBA INTERNA')) {
    return { systemState: 'pendiente', rawCourier: null, isTesteo: false, isPruebaInterna: true }
  }

  // Extraer primera palabra (el estado) y el resto (posible courier)
  const parts      = upper.split(' ')
  const stateKey   = parts[0].replace(/-/g, '_')
  const courierRaw = parts.length > 1 ? parts.slice(1).join(' ') : null

  const systemState = SHEET_STATE_MAP[stateKey] ?? null

  return { systemState, rawCourier: courierRaw, isTesteo: false, isPruebaInterna: false }
}

// ── Parsear fila del Sheet ────────────────────────────────────────────────────

function parseRow(headers: string[], row: string[]): ParsedRow {
  const get = (name: string): string => {
    const idx = headers.indexOf(name)
    return idx >= 0 ? (row[idx] ?? '').trim() : ''
  }

  const pedidoNumRaw = get('#').replace(/[^0-9]/g, '')
  const cantidadRaw  = get('CANTIDAD')
  const subtotalRaw  = get('PRECI TOTAL DEL PRODUCTO')  // es el total de línea
  const unitarioRaw  = get('PRECIO TOTAL')               // es el precio unitario (nombres invertidos)

  const { rawCourier, ..._ } = parseSheetState(get('ESTADO DE PEDIDO'))

  return {
    pedidoNum:         pedidoNumRaw ? parseInt(pedidoNumRaw) : null,
    fecha:             get('FECHA') || null,
    estadoRaw:         get('ESTADO DE PEDIDO'),
    coberturaRaw:      get('COBERTURA') || null,
    nombre:            get('NOMBRE Y APELLIDO') || null,
    telefono:          get('TELEFONO') || get('TELÉFONO') || null,
    direccion:         get('DIRECCION') || get('DIRECCIÓN') || null,
    provincia:         get('PROVINCIA') || null,
    ciudad:            get('CIUDAD') || null,
    productoNombre:    get('NOMBRE DE PRODUCTO') || null,
    cantidad:          cantidadRaw ? parseInt(cantidadRaw) : null,
    subtotalLinea:     subtotalRaw ? parseFloat(subtotalRaw.replace(/,/g, '')) : null,
    precioUnitario:    unitarioRaw ? parseFloat(unitarioRaw.replace(/,/g, '')) : null,
    comentario:        get('COMENTARIO') || null,
    ultimaActualizacion: get('ÚLTIMA ACTUALIZACIÓN') || get('ULTIMA ACTUALIZACION') || null,
    rawCourier,
  }
}

// ── Resolver courier por nombre ───────────────────────────────────────────────

async function resolveCourier(
  supabase: ReturnType<typeof createClient>,
  nombreRaw: string | null,
): Promise<string | null> {
  if (!nombreRaw) return null

  const { data } = await supabase
    .from('canales_cobro')
    .select('id, nombre')
    .ilike('nombre', `%${nombreRaw}%`)
    .limit(1)
    .single()

  return data?.id ?? null
}

// ── Resolver o crear cliente ──────────────────────────────────────────────────

async function upsertCliente(
  supabase: ReturnType<typeof createClient>,
  nombre: string | null,
  telefono: string | null,
): Promise<string | null> {
  if (!telefono && !nombre) return null

  if (telefono) {
    const { data: existing } = await supabase
      .from('clientes')
      .select('id')
      .eq('telefono', telefono)
      .limit(1)
      .single()

    if (existing) return existing.id
  }

  const { data: created } = await supabase
    .from('clientes')
    .insert({ nombre: nombre ?? 'Sin nombre', telefono: telefono ?? null })
    .select('id')
    .single()

  return created?.id ?? null
}

// ── Resolver producto por nombre ──────────────────────────────────────────────

async function resolveProducto(
  supabase: ReturnType<typeof createClient>,
  nombreRaw: string | null,
): Promise<string | null> {
  if (!nombreRaw) return null

  const { data } = await supabase
    .from('productos')
    .select('id')
    .ilike('nombre', `%${nombreRaw}%`)
    .limit(1)
    .single()

  return data?.id ?? null
}

// ── Procesar una fila del Sheet ───────────────────────────────────────────────

interface SyncResult {
  accion: 'nuevo' | 'estado_cambiado' | 'sin_cambio' | 'omitido' | 'error'
  pedidoNum: number | null
  detalle?: string
}

async function procesarFila(
  supabase: ReturnType<typeof createClient>,
  row: ParsedRow,
  syncLogId: string,
): Promise<SyncResult> {
  if (!row.pedidoNum) {
    return { accion: 'omitido', pedidoNum: null, detalle: 'sin numero de pedido' }
  }

  const { systemState, rawCourier, isTesteo, isPruebaInterna } = parseSheetState(row.estadoRaw)

  if (!systemState) {
    await supabase.from('sync_errors').insert({
      sync_log_id: syncLogId,
      pedido_num:  row.pedidoNum,
      mensaje:     `Estado desconocido: "${row.estadoRaw}"`,
      fila_raw:    row as unknown as Record<string, unknown>,
    })
    return { accion: 'error', pedidoNum: row.pedidoNum, detalle: `estado desconocido: ${row.estadoRaw}` }
  }

  // Buscar pedido existente
  const { data: pedidoExistente } = await supabase
    .from('pedidos')
    .select('id, estado, canal_cobro_id')
    .eq('pedido_num', row.pedidoNum)
    .single()

  if (pedidoExistente) {
    // ── Pedido existente: detectar cambio de estado ──────────────────────────

    const estadoActual = pedidoExistente.estado as string

    // Si ya está en estado terminal, no tocarlo
    if (TERMINAL_SYSTEM_STATES.has(estadoActual)) {
      return { accion: 'sin_cambio', pedidoNum: row.pedidoNum }
    }

    // Sin cambio de estado relevante
    if (estadoActual === systemState) {
      // Actualizar campos descriptivos igualmente
      await supabase.from('pedidos').update({
        direccion:                  row.direccion,
        ciudad:                     row.ciudad,
        provincia:                  row.provincia,
        notas:                      row.comentario,
        ultima_actualizacion_sheet: row.ultimaActualizacion
          ? new Date(row.ultimaActualizacion).toISOString()
          : null,
      }).eq('id', pedidoExistente.id)

      return { accion: 'sin_cambio', pedidoNum: row.pedidoNum }
    }

    // Cambio de estado detectado
    const pedidoId  = pedidoExistente.id as string
    const courierName = row.coberturaRaw ?? rawCourier
    const courierId = await resolveCourier(supabase, courierName)

    if (systemState === 'entregado') {
      // Necesita pasar por 'confirmado' antes de llamar a confirmar_venta_entregada
      if (estadoActual === 'pendiente') {
        await supabase.from('pedidos').update({ estado: 'confirmado' }).eq('id', pedidoId)
      }

      if (!courierId) {
        await supabase.from('sync_errors').insert({
          sync_log_id: syncLogId,
          pedido_num:  row.pedidoNum,
          mensaje:     `COMPLETADO sin courier resuelto (cobertura: "${courierName ?? 'vacío'}")`,
          fila_raw:    row as unknown as Record<string, unknown>,
        })
        // Igual actualizamos estado para no perder el cambio
        await supabase.from('pedidos').update({ estado: 'confirmado' }).eq('id', pedidoId)
        return { accion: 'error', pedidoNum: row.pedidoNum, detalle: 'courier no resuelto para COMPLETADO' }
      }

      const fechaEntrega = row.fecha ?? new Date().toISOString().slice(0, 10)
      const { error: rpcError } = await supabase.rpc('confirmar_venta_entregada', {
        p_pedido_id:               pedidoId,
        p_courier_id:              courierId,
        p_fecha_entrega:           fechaEntrega,
        p_metodo_pago_confirmado:  'efectivo',
      })

      if (rpcError) {
        await supabase.from('sync_errors').insert({
          sync_log_id: syncLogId,
          pedido_num:  row.pedidoNum,
          mensaje:     `Error en confirmar_venta_entregada: ${rpcError.message}`,
          fila_raw:    row as unknown as Record<string, unknown>,
        })
        return { accion: 'error', pedidoNum: row.pedidoNum, detalle: rpcError.message }
      }

    } else if (systemState === 'para_devolucion' || systemState === 'devuelto') {
      if (['confirmado', 'entregado'].includes(estadoActual)) {
        const { error: rpcError } = await supabase.rpc('marcar_pedido_para_devolucion', {
          p_pedido_id: pedidoId,
        })
        if (rpcError) {
          await supabase.from('sync_errors').insert({
            sync_log_id: syncLogId,
            pedido_num:  row.pedidoNum,
            mensaje:     `Error en marcar_pedido_para_devolucion: ${rpcError.message}`,
            fila_raw:    row as unknown as Record<string, unknown>,
          })
          return { accion: 'error', pedidoNum: row.pedidoNum, detalle: rpcError.message }
        }
      }

    } else {
      // Actualización directa de estado (sin asiento contable)
      await supabase.from('pedidos').update({
        estado:          systemState,
        canal_cobro_id:  courierId ?? pedidoExistente.canal_cobro_id,
        es_testeo:       isTesteo || undefined,
        es_prueba_interna: isPruebaInterna || undefined,
        direccion:       row.direccion,
        ciudad:          row.ciudad,
        provincia:       row.provincia,
        notas:           row.comentario,
        ultima_actualizacion_sheet: row.ultimaActualizacion
          ? new Date(row.ultimaActualizacion).toISOString()
          : null,
      }).eq('id', pedidoId)
    }

    return {
      accion: 'estado_cambiado',
      pedidoNum: row.pedidoNum,
      detalle: `${estadoActual} → ${systemState}`,
    }

  } else {
    // ── Pedido nuevo: no existe en el sistema ────────────────────────────────

    const clienteId  = await upsertCliente(supabase, row.nombre, row.telefono)
    const courierName = row.coberturaRaw ?? rawCourier
    const courierId  = await resolveCourier(supabase, courierName)
    const fechaPedido = row.fecha ?? new Date().toISOString().slice(0, 10)

    const precioTotal = row.subtotalLinea ?? 0

    const { data: nuevoPedido, error: insertError } = await supabase
      .from('pedidos')
      .insert({
        cliente_id:    clienteId,
        canal_cobro_id: courierId,
        estado:        systemState === 'entregado' ? 'confirmado' : systemState,
        fecha_pedido:  fechaPedido,
        precio_total:  precioTotal,
        notas:         row.comentario,
        direccion:     row.direccion,
        ciudad:        row.ciudad,
        provincia:     row.provincia,
        pedido_num:    row.pedidoNum,
        es_testeo:     isTesteo,
        es_prueba_interna: isPruebaInterna,
        ultima_actualizacion_sheet: row.ultimaActualizacion
          ? new Date(row.ultimaActualizacion).toISOString()
          : null,
      })
      .select('id')
      .single()

    if (insertError || !nuevoPedido) {
      await supabase.from('sync_errors').insert({
        sync_log_id: syncLogId,
        pedido_num:  row.pedidoNum,
        mensaje:     `Error al insertar pedido: ${insertError?.message}`,
        fila_raw:    row as unknown as Record<string, unknown>,
      })
      return { accion: 'error', pedidoNum: row.pedidoNum, detalle: insertError?.message }
    }

    const pedidoId = nuevoPedido.id as string

    // Insertar item si hay producto
    if (row.productoNombre) {
      const productoId = await resolveProducto(supabase, row.productoNombre)

      if (productoId && row.cantidad) {
        await supabase.from('pedido_items').insert({
          pedido_id:       pedidoId,
          producto_id:     productoId,
          cantidad:        row.cantidad,
          precio_unitario: row.precioUnitario ?? (row.subtotalLinea ? row.subtotalLinea / row.cantidad : 0),
        })
      } else if (!productoId) {
        await supabase.from('sync_errors').insert({
          sync_log_id: syncLogId,
          pedido_num:  row.pedidoNum,
          mensaje:     `Producto no encontrado: "${row.productoNombre}" — insertar manualmente`,
          fila_raw:    row as unknown as Record<string, unknown>,
        })
      }
    }

    // Si llega COMPLETADO, ejecutar confirmar_venta_entregada
    if (systemState === 'entregado' && courierId) {
      const { error: rpcError } = await supabase.rpc('confirmar_venta_entregada', {
        p_pedido_id:              pedidoId,
        p_courier_id:             courierId,
        p_fecha_entrega:          fechaPedido,
        p_metodo_pago_confirmado: 'efectivo',
      })
      if (rpcError) {
        await supabase.from('sync_errors').insert({
          sync_log_id: syncLogId,
          pedido_num:  row.pedidoNum,
          mensaje:     `Pedido creado pero confirmar_venta_entregada falló: ${rpcError.message}`,
          fila_raw:    row as unknown as Record<string, unknown>,
        })
      }
    }

    return { accion: 'nuevo', pedidoNum: row.pedidoNum }
  }
}

// ── Entry point ───────────────────────────────────────────────────────────────

Deno.serve(async () => {
  const startMs = Date.now()

  const supabaseUrl = Deno.env.get('SUPABASE_URL')!
  const serviceKey  = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
  const apiKey      = Deno.env.get('GOOGLE_API_KEY')!

  const supabase = createClient(supabaseUrl, serviceKey, {
    auth: { persistSession: false },
  })

  // Crear fila en sync_log para esta ejecución
  const { data: logRow } = await supabase
    .from('sync_log')
    .insert({ filas_leidas: 0, pedidos_nuevos: 0, estados_cambiados: 0, errores: 0 })
    .select('id')
    .single()

  const syncLogId = logRow?.id as string

  try {
    const { headers, rows } = await fetchSheetRows(apiKey)

    if (!headers.length) {
      await supabase.from('sync_log').update({ detalle: { error: 'Sheet vacío o sin encabezados' } }).eq('id', syncLogId)
      return new Response(JSON.stringify({ ok: false, error: 'Sheet vacío' }), { status: 200 })
    }

    // Obtener punto de corte
    const { data: syncState } = await supabase
      .from('sync_state')
      .select('ultimo_num_sincronizado, fecha_inicio_sync')
      .eq('id', 1)
      .single()

    // Si es la primera ejecución, detectar el punto de corte automáticamente
    let ultimoNum = syncState?.ultimo_num_sincronizado as number | null
    if (!ultimoNum) {
      const { data: maxRow } = await supabase
        .from('pedidos')
        .select('pedido_num')
        .order('pedido_num', { ascending: false })
        .not('pedido_num', 'is', null)
        .limit(1)
        .single()

      ultimoNum = (maxRow?.pedido_num as number | null) ?? 0

      await supabase.from('sync_state').update({
        ultimo_num_sincronizado: ultimoNum,
        fecha_inicio_sync:       new Date().toISOString(),
      }).eq('id', 1)
    }

    let nuevos = 0, cambiados = 0, errores = 0
    const detalles: SyncResult[] = []

    for (const row of rows) {
      const parsed = parseRow(headers, row)

      // Saltar filas sin número de pedido
      if (!parsed.pedidoNum) continue

      // Saltar pedidos ya migrados en estado terminal
      // (solo si son del bloque histórico Y están en estado terminal)
      // Los no-terminales se revisan siempre
      if (parsed.pedidoNum <= ultimoNum) {
        const { data: existing } = await supabase
          .from('pedidos')
          .select('estado')
          .eq('pedido_num', parsed.pedidoNum)
          .single()

        if (existing && TERMINAL_SYSTEM_STATES.has(existing.estado)) {
          continue
        }
      }

      const result = await procesarFila(supabase, parsed, syncLogId)
      detalles.push(result)

      if (result.accion === 'nuevo')            nuevos++
      else if (result.accion === 'estado_cambiado') cambiados++
      else if (result.accion === 'error')       errores++
    }

    const duracion = Date.now() - startMs

    await supabase.from('sync_log').update({
      filas_leidas:      rows.length,
      pedidos_nuevos:    nuevos,
      estados_cambiados: cambiados,
      errores,
      duracion_ms:       duracion,
      detalle:           detalles.filter(d => d.accion !== 'sin_cambio' && d.accion !== 'omitido'),
    }).eq('id', syncLogId)

    await supabase.from('sync_state').update({
      ultima_ejecucion: new Date().toISOString(),
    }).eq('id', 1)

    return new Response(
      JSON.stringify({ ok: true, filas: rows.length, nuevos, cambiados, errores, ms: duracion }),
      { headers: { 'Content-Type': 'application/json' } },
    )

  } catch (err) {
    const msg = err instanceof Error ? err.message : String(err)
    await supabase.from('sync_log').update({
      errores: 1,
      detalle: { error: msg },
      duracion_ms: Date.now() - startMs,
    }).eq('id', syncLogId)

    return new Response(
      JSON.stringify({ ok: false, error: msg }),
      { status: 500, headers: { 'Content-Type': 'application/json' } },
    )
  }
})
