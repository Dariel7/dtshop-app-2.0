'use server'
import { getSupabaseServer } from '@/lib/supabase'

// ── Sync toggle ────────────────────────────────────────────────────────────

export async function getSyncStatus(): Promise<boolean> {
  const { data } = await getSupabaseServer()
    .from('sync_state').select('sync_activo').eq('id', 1).single()
  return data?.sync_activo ?? true
}

export async function toggleSync(activate: boolean): Promise<{ ok: boolean; error?: string }> {
  const { error } = await getSupabaseServer()
    .from('sync_state').update({ sync_activo: activate }).eq('id', 1)
  if (error) return { ok: false, error: error.message }
  return { ok: true }
}

// ── Sheet ID config ────────────────────────────────────────────────────────

export async function getSheetId(): Promise<string> {
  const { data } = await getSupabaseServer()
    .from('sync_state').select('sheet_id').eq('id', 1).single()
  return data?.sheet_id ?? ''
}

export async function updateSheetId(sheetId: string): Promise<{ ok: boolean; error?: string }> {
  const id = sheetId.trim()
  if (!id) return { ok: false, error: 'El ID no puede estar vacío.' }
  const { error } = await getSupabaseServer()
    .from('sync_state').update({ sheet_id: id }).eq('id', 1)
  if (error) return { ok: false, error: error.message }
  return { ok: true }
}

// ── Import — productos ─────────────────────────────────────────────────────

export interface ProductoImport {
  nombre: string
  sku?: string
  precio_venta: number
  costo_promedio_actual?: number
  stock_disponible?: number
  accion?: 'crear' | 'actualizar' | 'omitir'
  motivo?: string
}

export async function previewProductos(rows: ProductoImport[]): Promise<ProductoImport[]> {
  const sb = getSupabaseServer()
  const { data: existentes } = await sb.from('productos').select('id,nombre,sku')

  const existMap = new Map<string, boolean>()
  for (const e of existentes ?? []) {
    existMap.set(e.nombre.trim().toLowerCase(), true)
    if (e.sku) existMap.set(e.sku.trim().toLowerCase(), true)
  }

  return rows.map(r => {
    if (!r.nombre || !r.precio_venta) {
      return { ...r, accion: 'omitir', motivo: 'Falta nombre o precio' }
    }
    const existe = existMap.has(r.nombre.trim().toLowerCase()) ||
                   (r.sku ? existMap.has(r.sku.trim().toLowerCase()) : false)
    return { ...r, accion: existe ? 'actualizar' : 'crear', motivo: existe ? 'Ya existe — se actualizará precio' : 'Nuevo' }
  })
}

export async function importarProductos(rows: ProductoImport[]): Promise<{ ok: boolean; creados: number; actualizados: number; error?: string }> {
  const sb = getSupabaseServer()
  let creados = 0, actualizados = 0

  for (const r of rows) {
    if (r.accion === 'omitir') continue
    try {
      if (r.accion === 'crear') {
        await sb.from('productos').insert({
          nombre:                 r.nombre.trim(),
          sku:                    r.sku?.trim() ?? null,
          precio_venta:           r.precio_venta,
          costo_promedio_actual:  r.costo_promedio_actual ?? null,
          stock_disponible:       r.stock_disponible ?? 0,
          activo:                 true,
        })
        creados++
      } else {
        await sb.from('productos').update({
          precio_venta:          r.precio_venta,
          costo_promedio_actual: r.costo_promedio_actual ?? null,
        }).ilike('nombre', r.nombre.trim())
        actualizados++
      }
    } catch { /* continúa con el siguiente */ }
  }
  return { ok: true, creados, actualizados }
}

// ── Export ─────────────────────────────────────────────────────────────────

export async function exportarProductos(): Promise<string> {
  const { data } = await getSupabaseServer()
    .from('productos').select('nombre,sku,precio_venta,costo_promedio_actual,stock_disponible,activo').order('nombre')
  const rows = data ?? []
  const headers = 'nombre,sku,precio_venta,costo_promedio_actual,stock_disponible,activo'
  const lines = rows.map((r: Record<string, unknown>) =>
    [r.nombre, r.sku ?? '', r.precio_venta, r.costo_promedio_actual ?? '', r.stock_disponible, r.activo].join(',')
  )
  return [headers, ...lines].join('\n')
}

export async function exportarPedidos(): Promise<string> {
  const { data } = await getSupabaseServer()
    .from('pedidos')
    .select('pedido_num,estado,fecha_pedido,fecha_entrega,precio_total,metodo_pago_confirmado,notas,clientes(nombre,telefono),canales_cobro(nombre)')
    .order('pedido_num', { ascending: false })
  const rows = data ?? []
  const headers = 'pedido_num,estado,fecha_pedido,fecha_entrega,precio_total,metodo_pago,cliente,telefono,courier,notas'
  const lines = rows.map((r: Record<string, unknown>) => {
    const cl = r.clientes as { nombre: string; telefono: string } | null
    const co = r.canales_cobro as { nombre: string } | null
    return [
      r.pedido_num, r.estado, r.fecha_pedido, r.fecha_entrega ?? '',
      r.precio_total, r.metodo_pago_confirmado ?? '',
      `"${cl?.nombre ?? ''}"`, cl?.telefono ?? '',
      co?.nombre ?? '', `"${String(r.notas ?? '').replace(/"/g, '""')}"`
    ].join(',')
  })
  return [headers, ...lines].join('\n')
}

export async function exportarClientes(): Promise<string> {
  const { data } = await getSupabaseServer()
    .from('clientes').select('nombre,telefono,email,direccion').order('nombre')
  const rows = data ?? []
  const headers = 'nombre,telefono,email,direccion'
  const lines = rows.map((r: Record<string, unknown>) =>
    [`"${r.nombre}"`, r.telefono ?? '', r.email ?? '', `"${r.direccion ?? ''}"`].join(',')
  )
  return [headers, ...lines].join('\n')
}
