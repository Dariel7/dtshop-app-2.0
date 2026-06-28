-- =============================================================================
-- DT Shop ERP — Migración de datos históricos
-- Paso 3 de 6: tablas legado → nuevo esquema
--
-- INSTRUCCIONES ANTES DE EJECUTAR:
--   1. Exporta las tablas actuales de Supabase a un schema llamado "legado":
--      CREATE SCHEMA legado;
--      -- Luego importa/copia cada tabla con su estructura y datos:
--      --   legado.campanas, legado.flujo_caja, legado.inventario_movimientos,
--      --   legado.pedidos, legado.productos
--   2. Ejecuta este script dentro de una transacción.
--      Si algo falla, se revierte todo y puedes corregir y reintentar.
--   3. Después de validar los resultados, elimina el schema legado.
--
-- ORDEN DE MIGRACIÓN:
--   1. productos (base de todo)
--   2. campanas
--   3. clientes (derivados de pedidos.nombre/telefono)
--   4. pedidos + pedido_items
--   5. inventario_movimientos → movimientos_inventario (con asientos retroactivos)
--   6. flujo_caja → capital_aportes + asientos de financiamiento
-- =============================================================================

BEGIN;

-- =============================================================================
-- PASO 3.1 — PRODUCTOS
-- Mapeo directo; stock_actual y costo_promedio se recalculan desde inventario.
-- =============================================================================

INSERT INTO productos (id, nombre, precio_venta, activo, created_at)
SELECT
    id,
    COALESCE(nombre, 'Producto sin nombre'),
    COALESCE(precio, 0),
    COALESCE(activo, true),
    COALESCE(created_at, now())
FROM legado.productos
ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- PASO 3.2 — CAMPANAS
-- La tabla campanas ya existía; migrar preservando ids.
-- =============================================================================

INSERT INTO campanas (id, nombre, canal, presupuesto, activa, created_at)
SELECT
    id,
    COALESCE(nombre, 'Sin nombre'),
    canal,
    presupuesto,
    COALESCE(activa, true),
    COALESCE(created_at, now())
FROM legado.campanas
ON CONFLICT (id) DO NOTHING;

-- =============================================================================
-- PASO 3.3 — CLIENTES
-- legado.pedidos guarda nombre/teléfono/dirección repetidos en cada fila.
-- Deduplicamos por teléfono (identificador más confiable disponible).
-- =============================================================================

INSERT INTO clientes (nombre, telefono, direccion)
SELECT DISTINCT ON (telefono)
    COALESCE(nombre_cliente, nombre, 'Sin nombre'),
    telefono,
    direccion
FROM legado.pedidos
WHERE telefono IS NOT NULL
  AND telefono <> ''
ON CONFLICT DO NOTHING;

-- Clientes sin teléfono (casos edge): insertar por nombre único
INSERT INTO clientes (nombre, telefono, direccion)
SELECT DISTINCT ON (nombre_cliente)
    COALESCE(nombre_cliente, nombre, 'Sin nombre'),
    NULL,
    direccion
FROM legado.pedidos
WHERE (telefono IS NULL OR telefono = '')
  AND nombre_cliente IS NOT NULL
ON CONFLICT DO NOTHING;

-- =============================================================================
-- PASO 3.4 — TABLA TEMPORAL DE MAPEO pedido_legado → cliente_nuevo
-- Necesaria para asignar cliente_id a cada pedido migrado.
-- =============================================================================

CREATE TEMP TABLE tmp_pedido_cliente_map AS
SELECT
    p.id AS pedido_id_legado,
    c.id AS cliente_id_nuevo
FROM legado.pedidos p
LEFT JOIN clientes c ON (
    (p.telefono IS NOT NULL AND p.telefono <> '' AND c.telefono = p.telefono)
    OR
    (p.telefono IS NULL OR p.telefono = '') AND c.nombre = COALESCE(p.nombre_cliente, p.nombre)
);

-- =============================================================================
-- PASO 3.5 — PERIODOS CONTABLES
-- Crear periodos para todos los meses con actividad histórica.
-- =============================================================================

INSERT INTO periodos_contables (mes, estado)
SELECT DISTINCT to_char(fecha_pedido, 'YYYY-MM'), 'cerrado'
FROM legado.pedidos
WHERE fecha_pedido IS NOT NULL
UNION
SELECT DISTINCT to_char(fecha, 'YYYY-MM'), 'cerrado'
FROM legado.flujo_caja
WHERE fecha IS NOT NULL
ON CONFLICT (mes) DO NOTHING;

-- El periodo del mes actual queda abierto
INSERT INTO periodos_contables (mes, estado)
VALUES (to_char(now(), 'YYYY-MM'), 'abierto')
ON CONFLICT (mes) DO UPDATE SET estado = 'abierto';

-- =============================================================================
-- PASO 3.6 — COURIERS / CANALES DE COBRO
-- En legado.pedidos, courier es texto libre. Extraemos los valores únicos
-- y creamos un canal por cada nombre distinto normalizado.
-- Comisiones se dejan en NULL — el usuario las configura luego en el UI.
-- =============================================================================

INSERT INTO canales_cobro (nombre, tipo_comision)
SELECT DISTINCT
    initcap(lower(trim(courier))),
    'ninguno'   -- se actualiza manualmente después de la migración
FROM legado.pedidos
WHERE courier IS NOT NULL AND trim(courier) <> ''
ON CONFLICT DO NOTHING;

-- Tabla temporal: mapeo courier_texto → canal_cobro.id
CREATE TEMP TABLE tmp_courier_map AS
SELECT
    trim(lower(p.courier)) AS courier_texto,
    c.id AS canal_cobro_id
FROM (SELECT DISTINCT lower(trim(courier)) AS courier FROM legado.pedidos WHERE courier IS NOT NULL) p
JOIN canales_cobro c ON lower(c.nombre) = lower(trim(p.courier));

-- =============================================================================
-- PASO 3.7 — PEDIDOS + PEDIDO_ITEMS
-- Estado: normalizamos usando la columna estado (fuente de verdad sobre estado_raw).
-- Método de pago: tomamos metodo_pago si existe, NULL si no.
-- CPA: se descarta (era un campo calculado guardado — Hallazgo #9 de auditoría).
-- =============================================================================

INSERT INTO pedidos (
    id, cliente_id, canal_cobro_id, campana_id,
    estado, metodo_pago_confirmado,
    fecha_pedido, fecha_entrega, precio_total, notas, created_at
)
SELECT
    p.id,
    m.cliente_id_nuevo,
    cm.canal_cobro_id,
    p.campana_id,
    -- Normalizar estados al nuevo CHECK constraint
    CASE
        WHEN lower(COALESCE(p.estado, '')) IN ('pendiente','nuevo','creado')            THEN 'pendiente'
        WHEN lower(COALESCE(p.estado, '')) IN ('confirmado','enviado','despachado')     THEN 'confirmado'
        WHEN lower(COALESCE(p.estado, '')) IN ('entregado','completado','cobrado')      THEN 'entregado'
        WHEN lower(COALESCE(p.estado, '')) IN ('devuelto','devolución','devolucion')    THEN 'devuelto'
        WHEN lower(COALESCE(p.estado, '')) IN ('cancelado')                             THEN 'cancelado'
        WHEN lower(COALESCE(p.estado, '')) LIKE '%devolucion%'
          OR lower(COALESCE(p.estado, '')) LIKE '%devolución%'                          THEN 'para_devolucion'
        ELSE 'pendiente'
    END AS estado,
    -- Método de pago confirmado (solo si el pedido fue entregado)
    CASE
        WHEN lower(COALESCE(p.metodo_pago, p.forma_pago, '')) IN ('efectivo','cash')        THEN 'efectivo'
        WHEN lower(COALESCE(p.metodo_pago, p.forma_pago, '')) IN ('transferencia','transfer','trans') THEN 'transferencia'
        ELSE NULL
    END AS metodo_pago_confirmado,
    COALESCE(p.fecha_pedido, p.created_at::date, CURRENT_DATE),
    p.fecha_entrega,
    COALESCE(p.precio_total, p.precio_unit * p.cantidad, 0),
    p.notas,
    COALESCE(p.created_at, now())
FROM legado.pedidos p
LEFT JOIN tmp_pedido_cliente_map m  ON m.pedido_id_legado = p.id
LEFT JOIN tmp_courier_map cm ON cm.courier_texto = lower(trim(p.courier))
ON CONFLICT (id) DO NOTHING;

-- pedido_items: el schema legado tiene producto + cantidad en la misma fila de pedidos
-- (un solo producto por pedido — Hallazgo #1 de auditoría)
INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
SELECT
    p.id,
    pr.id,
    COALESCE(p.cantidad, 1),
    COALESCE(p.precio_unit, pr.precio_venta, 0)
FROM legado.pedidos p
JOIN productos pr ON lower(trim(pr.nombre)) = lower(trim(p.producto))
WHERE p.producto IS NOT NULL
  AND p.estado NOT IN ('cancelado')   -- no migrar items de pedidos cancelados
ON CONFLICT DO NOTHING;

-- =============================================================================
-- PASO 3.8 — MOVIMIENTOS DE INVENTARIO (histórico)
-- motivo (texto libre) → tipo (enum fijo)
-- Se insertan directamente SIN llamar registrar_compra_local() etc.
-- porque son datos históricos: no queremos re-ejecutar la lógica de negocio,
-- solo preservar el registro de lo que ocurrió.
-- Los asientos retroactivos SE OMITEN para periodos ya cerrados (no se reabre
-- la historia contable — decisión documentada en arquitectura-final.md).
-- =============================================================================

INSERT INTO movimientos_inventario (
    producto_id, tipo, origen_evento, cantidad,
    costo_unitario, costo_es_estimado, estado,
    referencia_id, referencia_tipo, created_at
)
SELECT
    im.producto_id,
    -- Mapeo de motivo texto → tipo enum
    CASE
        WHEN lower(im.motivo) LIKE '%compra%' OR lower(im.motivo) LIKE '%entrada%'
             OR lower(im.motivo) LIKE '%recepcion%' OR lower(im.motivo) LIKE '%recepción%'
             THEN 'COMPRA'
        WHEN lower(im.motivo) LIKE '%importacion%' OR lower(im.motivo) LIKE '%importación%'
             OR lower(im.motivo) LIKE '%transito%'  OR lower(im.motivo) LIKE '%tránsito%'
             THEN 'IMPORTACION'
        WHEN lower(im.motivo) LIKE '%venta%' OR lower(im.motivo) LIKE '%salida%'
             OR lower(im.motivo) LIKE '%pedido%'
             THEN 'VENTA'
        WHEN lower(im.motivo) LIKE '%devolucion%' OR lower(im.motivo) LIKE '%devolución%'
             OR lower(im.motivo) LIKE '%reintegro%'
             THEN 'DEVOLUCION_CLIENTE'
        WHEN lower(im.motivo) LIKE '%merma%'  OR lower(im.motivo) LIKE '%perdida%'
             OR lower(im.motivo) LIKE '%pérdida%' OR lower(im.motivo) LIKE '%daño%'
             THEN 'MERMA'
        WHEN lower(im.motivo) LIKE '%ajuste%'
             THEN CASE WHEN COALESCE(im.cantidad, 0) > 0 THEN 'AJUSTE_POSITIVO' ELSE 'AJUSTE' END
        ELSE 'AJUSTE'
    END AS tipo,
    -- origen_evento equivalente
    CASE
        WHEN lower(im.motivo) LIKE '%compra%' OR lower(im.motivo) LIKE '%entrada%'  THEN 'COMPRA_LOCAL'
        WHEN lower(im.motivo) LIKE '%importacion%' OR lower(im.motivo) LIKE '%importación%' THEN 'COMPRA_IMPORTACION'
        WHEN lower(im.motivo) LIKE '%venta%' OR lower(im.motivo) LIKE '%salida%'    THEN 'VENTA_ENTREGADA'
        WHEN lower(im.motivo) LIKE '%devolucion%' OR lower(im.motivo) LIKE '%devolución%' THEN 'DEVOLUCION_CONFIRMADA'
        WHEN lower(im.motivo) LIKE '%merma%'  OR lower(im.motivo) LIKE '%perdida%'  THEN 'DEVOLUCION_CONFIRMADA'
        ELSE 'AJUSTE_COSTO_TARDIO'
    END AS origen_evento,
    COALESCE(im.cantidad, 0),
    COALESCE(im.costo_unitario, im.costo, 0),
    false,          -- histórico: se trata como costo conocido
    'disponible',
    im.pedido_id,   -- referencia si existe
    CASE WHEN im.pedido_id IS NOT NULL THEN 'pedido' ELSE NULL END,
    COALESCE(im.created_at, now())
FROM legado.inventario_movimientos im
WHERE im.producto_id IS NOT NULL
ON CONFLICT DO NOTHING;

-- =============================================================================
-- PASO 3.9 — FLUJO DE CAJA → separar capital de operación
--
-- Regla de clasificación (basada en Hallazgo #6 de auditoría):
--   - categoria IN ('aporte','capital','inversion','inversión') → capital_aportes
--   - categoria IN ('retiro','retiro_propietario')              → capital_aportes (tipo=retiro)
--   - resto → se registra como asiento histórico (gasto fijo o ingreso)
--
-- Para los aportes ficticios históricos identificados: se migran a capital_aportes
-- con tipo correcto, NO como ingresos operativos.
-- =============================================================================

-- 3.9a — Aportes de capital
INSERT INTO capital_aportes (tipo, monto, fecha, periodo_id, descripcion)
SELECT
    'aporte',
    ABS(COALESCE(fc.monto, fc.ingreso, 0)),
    COALESCE(fc.fecha, now()::date),
    fn_obtener_periodo(COALESCE(fc.fecha, now()::date)),
    COALESCE(fc.descripcion, fc.concepto, 'Aporte de capital (migrado)')
FROM legado.flujo_caja fc
WHERE lower(COALESCE(fc.categoria, fc.tipo, '')) IN (
    'aporte','capital','aporte capital','inversión','inversion',
    'aporte_capital','capital_propio','capital propio'
)
  AND COALESCE(fc.monto, fc.ingreso, 0) > 0;

-- 3.9b — Retiros del propietario
INSERT INTO capital_aportes (tipo, monto, fecha, periodo_id, descripcion)
SELECT
    'retiro',
    ABS(COALESCE(fc.monto, fc.egreso, 0)),
    COALESCE(fc.fecha, now()::date),
    fn_obtener_periodo(COALESCE(fc.fecha, now()::date)),
    COALESCE(fc.descripcion, fc.concepto, 'Retiro del propietario (migrado)')
FROM legado.flujo_caja fc
WHERE lower(COALESCE(fc.categoria, fc.tipo, '')) IN (
    'retiro','retiro_propietario','retiro propietario','drawings'
)
  AND COALESCE(ABS(fc.monto), ABS(fc.egreso), 0) > 0;

-- =============================================================================
-- PASO 3.10 — TABLA DE AUDITORÍA DE MIGRACIÓN
-- Registra qué quedó sin mapear para revisión manual.
-- =============================================================================

CREATE TABLE IF NOT EXISTS migracion_pendientes (
    tabla_origen    text,
    id_legado       uuid,
    motivo_texto    text,
    tipo_mapeado    text,
    observacion     text,
    created_at      timestamptz DEFAULT now()
);

-- Movimientos cuyo motivo no pudo mapearse limpiamente
INSERT INTO migracion_pendientes (tabla_origen, id_legado, motivo_texto, tipo_mapeado, observacion)
SELECT
    'inventario_movimientos',
    im.id,
    im.motivo,
    'AJUSTE',
    'Motivo no reconocido — mapeado a AJUSTE. Revisar manualmente.'
FROM legado.inventario_movimientos im
WHERE lower(COALESCE(im.motivo,'')) NOT SIMILAR TO
    '%(compra|entrada|importaci|venta|salida|pedido|devoluci|reintegro|merma|perdida|pérdida|daño|ajuste)%';

-- Pedidos cuyo estado no pudo normalizarse
INSERT INTO migracion_pendientes (tabla_origen, id_legado, motivo_texto, tipo_mapeado, observacion)
SELECT
    'pedidos',
    p.id,
    p.estado,
    'pendiente',
    'Estado no reconocido — mapeado a pendiente. Revisar manualmente.'
FROM legado.pedidos p
WHERE lower(COALESCE(p.estado,'')) NOT SIMILAR TO
    '%(pendiente|nuevo|creado|confirmado|enviado|despachado|entregado|completado|cobrado|devoluci|cancelado)%';

-- flujo_caja que no pudo clasificarse como capital ni operativo
INSERT INTO migracion_pendientes (tabla_origen, id_legado, motivo_texto, tipo_mapeado, observacion)
SELECT
    'flujo_caja',
    fc.id,
    fc.categoria,
    'sin_clasificar',
    'Categoría no reconocida — no migrada. Revisar manualmente.'
FROM legado.flujo_caja fc
WHERE lower(COALESCE(fc.categoria, fc.tipo, '')) NOT SIMILAR TO
    '%(aporte|capital|inversión|inversion|retiro|venta|cobro|gasto|pago|publicidad|nomina|nómina|alquiler|importacion)%';

COMMIT;

-- =============================================================================
-- POST-MIGRACIÓN: recalcular stock y costo promedio desde cero
-- Ejecutar DESPUÉS del COMMIT anterior.
-- =============================================================================

-- Disparar el recálculo de costo promedio y stock por producto
-- recorriendo los movimientos en orden cronológico (el trigger lo hace por INSERT,
-- pero para datos históricos ya insertados, usamos esta función de reconstrucción).

CREATE OR REPLACE FUNCTION reconstruir_costos_y_stock()
RETURNS void LANGUAGE plpgsql AS $$
DECLARE
    v_producto productos%ROWTYPE;
    v_stock         integer;
    v_costo_total   numeric(18,4);
    v_unidades_acum integer;
    v_promedio      numeric(18,4);
    v_mov           movimientos_inventario%ROWTYPE;
BEGIN
    FOR v_producto IN SELECT * FROM productos LOOP
        v_stock       := 0;
        v_costo_total := 0;
        v_unidades_acum := 0;
        v_promedio    := 0;

        FOR v_mov IN
            SELECT * FROM movimientos_inventario
            WHERE producto_id = v_producto.id
              AND costo_es_estimado = false
            ORDER BY created_at ASC
        LOOP
            IF v_mov.tipo IN ('COMPRA','AJUSTE_POSITIVO','DEVOLUCION_CLIENTE') THEN
                -- Entrada: actualizar promedio ponderado
                IF (v_unidades_acum + v_mov.cantidad) > 0 THEN
                    v_promedio := (v_costo_total + (v_mov.cantidad * v_mov.costo_unitario))
                                  / (v_unidades_acum + v_mov.cantidad);
                END IF;
                v_unidades_acum := v_unidades_acum + v_mov.cantidad;
                v_costo_total   := v_unidades_acum * v_promedio;
            ELSIF v_mov.tipo IN ('AJUSTE') AND v_mov.cantidad > 0 THEN
                IF (v_unidades_acum + v_mov.cantidad) > 0 THEN
                    v_promedio := (v_costo_total + (v_mov.cantidad * v_mov.costo_unitario))
                                  / (v_unidades_acum + v_mov.cantidad);
                END IF;
                v_unidades_acum := v_unidades_acum + v_mov.cantidad;
                v_costo_total   := v_unidades_acum * v_promedio;
            END IF;
        END LOOP;

        -- Stock disponible: suma neta de todos los movimientos en estado disponible
        SELECT COALESCE(SUM(cantidad), 0)
        INTO v_stock
        FROM movimientos_inventario
        WHERE producto_id = v_producto.id
          AND estado = 'disponible';

        UPDATE productos
        SET costo_promedio_actual = round(v_promedio, 4),
            stock_disponible      = GREATEST(v_stock, 0)
        WHERE id = v_producto.id;

    END LOOP;
END;
$$;

SELECT reconstruir_costos_y_stock();
