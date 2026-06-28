-- =============================================================================
-- DT Shop ERP — Vistas de reportes
-- Paso 4 de 6: Estado de Resultados, Balance General, Flujo de Caja,
--              Capital de Trabajo, CxC por antigüedad, Kardex
--
-- Principio: todas leen de account_balances o movimientos_contables.
-- Nunca recalculan historial completo. Nunca duplican lógica de negocio.
-- Todas aceptan parámetros de periodo/fecha para ser parametrizables.
-- =============================================================================

-- =============================================================================
-- 1. ESTADO DE RESULTADOS
-- Estructura: Ventas netas → Utilidad bruta → Margen de contribución
--             → Utilidad operativa → Utilidad neta
-- Fuente: account_balances filtrado por periodo(s)
-- =============================================================================

CREATE OR REPLACE FUNCTION reporte_estado_resultados(
    p_periodo_inicio    text,   -- formato 'YYYY-MM'
    p_periodo_fin       text DEFAULT NULL  -- NULL = solo el periodo_inicio
)
RETURNS TABLE (
    linea           text,
    codigo_cuenta   text,
    cuenta          text,
    monto           numeric(18,4),
    es_subtotal     boolean
) LANGUAGE plpgsql STABLE AS $$
DECLARE
    v_fin text;
BEGIN
    v_fin := COALESCE(p_periodo_fin, p_periodo_inicio);

    RETURN QUERY
    WITH saldos AS (
        -- Sumar saldos de todos los periodos en el rango
        SELECT
            cc.codigo,
            cc.nombre,
            cc.tipo,
            cc.naturaleza,
            cc.cuenta_padre_id,
            COALESCE(SUM(ab.saldo), 0) AS saldo
        FROM catalogo_cuentas cc
        LEFT JOIN account_balances ab ON ab.cuenta_id = cc.id
        LEFT JOIN periodos_contables pc ON pc.id = ab.periodo_id
            AND pc.mes >= p_periodo_inicio AND pc.mes <= v_fin
        WHERE cc.tipo IN ('ingreso','gasto')
          AND cc.cuenta_padre_id IS NOT NULL   -- solo cuentas hoja (no grupos)
        GROUP BY cc.id, cc.codigo, cc.nombre, cc.tipo, cc.naturaleza, cc.cuenta_padre_id
    ),
    ventas_brutas       AS (SELECT COALESCE(SUM(saldo),0) AS v FROM saldos WHERE codigo = '4001'),
    devoluciones        AS (SELECT COALESCE(SUM(saldo),0) AS v FROM saldos WHERE codigo = '4002'),
    costo_mercancias    AS (SELECT COALESCE(SUM(saldo),0) AS v FROM saldos WHERE codigo IN ('5001','5002','5003','5004','5005')),
    gastos_variables    AS (SELECT COALESCE(SUM(saldo),0) AS v FROM saldos WHERE codigo IN ('6001','6002','6003','6004')),
    gastos_fijos        AS (SELECT COALESCE(SUM(saldo),0) AS v FROM saldos WHERE codigo LIKE '7%'),
    gastos_ext          AS (SELECT COALESCE(SUM(saldo),0) AS v FROM saldos WHERE codigo LIKE '8%'),
    otros_ingresos      AS (SELECT COALESCE(SUM(saldo),0) AS v FROM saldos WHERE codigo IN ('4003','4004','4005'))
    SELECT linea, codigo_cuenta, cuenta, monto, es_subtotal FROM (
        VALUES
        -- Ingresos
        ('01', '4001', 'Ventas de productos',           (SELECT v FROM ventas_brutas),    false),
        ('02', '4002', '(-) Devoluciones sobre ventas', (SELECT v FROM devoluciones),     false),
        ('03', '',     'Ventas netas',
            (SELECT v FROM ventas_brutas) - (SELECT v FROM devoluciones),                  true),
        -- Costo
        ('04', '5000', '(-) Costo de mercancía vendida',(SELECT v FROM costo_mercancias), false),
        ('05', '',     'Utilidad bruta',
            (SELECT v FROM ventas_brutas) - (SELECT v FROM devoluciones)
            - (SELECT v FROM costo_mercancias),                                             true),
        -- Gastos variables (publicidad destacada)
        ('06', '6001', '  Comisión courier',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos WHERE codigo='6001'),               false),
        ('07', '6002', '  Empaque / embalaje',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos WHERE codigo='6002'),               false),
        ('08', '6003', '  Publicidad ★',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos WHERE codigo='6003'),               false),
        ('09', '6004', '  Comisión pasarela',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos WHERE codigo='6004'),               false),
        ('10', '',     'Margen de contribución',
            (SELECT v FROM ventas_brutas) - (SELECT v FROM devoluciones)
            - (SELECT v FROM costo_mercancias) - (SELECT v FROM gastos_variables),          true),
        -- Gastos fijos
        ('11', '7000', '(-) Gastos fijos',             (SELECT v FROM gastos_fijos),      false),
        ('12', '',     'Utilidad operativa',
            (SELECT v FROM ventas_brutas) - (SELECT v FROM devoluciones)
            - (SELECT v FROM costo_mercancias) - (SELECT v FROM gastos_variables)
            - (SELECT v FROM gastos_fijos),                                                 true),
        -- Gastos extraordinarios y otros
        ('13', '8000', '(-) Gastos extraordinarios',   (SELECT v FROM gastos_ext),        false),
        ('14', '4003', '(+) Otros ingresos',           (SELECT v FROM otros_ingresos),    false),
        ('15', '',     'Utilidad neta del periodo',
            (SELECT v FROM ventas_brutas) - (SELECT v FROM devoluciones)
            - (SELECT v FROM costo_mercancias) - (SELECT v FROM gastos_variables)
            - (SELECT v FROM gastos_fijos) - (SELECT v FROM gastos_ext)
            + (SELECT v FROM otros_ingresos),                                               true)
    ) t(linea, codigo_cuenta, cuenta, monto, es_subtotal)
    ORDER BY linea;
END;
$$;

-- =============================================================================
-- 2. BALANCE GENERAL
-- Estructura: Activo / Pasivo / Patrimonio a una fecha de corte
-- Inventario: una sola línea total (detalle en reporte_detalle_inventario)
-- =============================================================================

CREATE OR REPLACE FUNCTION reporte_balance_general(
    p_hasta_periodo text   -- formato 'YYYY-MM' — incluye todos los periodos hasta este
)
RETURNS TABLE (
    seccion         text,
    codigo_cuenta   text,
    cuenta          text,
    monto           numeric(18,4),
    es_subtotal     boolean
) LANGUAGE plpgsql STABLE AS $$
BEGIN
    RETURN QUERY
    WITH saldos_acum AS (
        SELECT
            cc.codigo,
            cc.nombre,
            cc.tipo,
            cc.cuenta_padre_id,
            COALESCE(SUM(ab.saldo), 0) AS saldo
        FROM catalogo_cuentas cc
        LEFT JOIN account_balances ab ON ab.cuenta_id = cc.id
        LEFT JOIN periodos_contables pc ON pc.id = ab.periodo_id
            AND pc.mes <= p_hasta_periodo
        WHERE cc.tipo IN ('activo','pasivo','patrimonio')
          AND cc.cuenta_padre_id IS NOT NULL
        GROUP BY cc.id, cc.codigo, cc.nombre, cc.tipo, cc.cuenta_padre_id
    ),
    -- Inventario total = suma de disponible + tránsito + pendiente devolución
    inv_total AS (
        SELECT COALESCE(SUM(saldo),0) AS v
        FROM saldos_acum WHERE codigo IN ('1011','1012','1013')
    ),
    total_activo AS (
        SELECT COALESCE(SUM(saldo),0) AS v FROM saldos_acum WHERE tipo = 'activo'
    ),
    total_pasivo AS (
        SELECT COALESCE(SUM(saldo),0) AS v FROM saldos_acum WHERE tipo = 'pasivo'
    ),
    total_patrimonio AS (
        SELECT COALESCE(SUM(saldo),0) AS v FROM saldos_acum WHERE tipo = 'patrimonio'
    )
    SELECT seccion, codigo_cuenta, cuenta, monto, es_subtotal FROM (VALUES
        -- ACTIVO
        ('ACTIVO', '',     'ACTIVO',                        NULL::numeric,                   true),
        ('ACTIVO', '1001', 'Caja',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos_acum WHERE codigo='1001'),            false),
        ('ACTIVO', '1002', 'Banco',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos_acum WHERE codigo='1002'),            false),
        ('ACTIVO', '1003', 'Cuentas por cobrar a couriers',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos_acum WHERE codigo='1003'),            false),
        ('ACTIVO', '1010', 'Inventario (total)',            (SELECT v FROM inv_total),        false),
        ('ACTIVO', '',     'TOTAL ACTIVO',                  (SELECT v FROM total_activo),     true),
        -- PASIVO
        ('PASIVO', '',     'PASIVO',                        NULL,                             true),
        ('PASIVO', '2001', 'Tarjeta de crédito por pagar',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos_acum WHERE codigo='2001'),            false),
        ('PASIVO', '2004', 'ITBIS por pagar',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos_acum WHERE codigo='2004'),            false),
        ('PASIVO', '2006', 'Comisiones pendientes a couriers',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos_acum WHERE codigo='2006'),            false),
        ('PASIVO', '',     'TOTAL PASIVO',                  (SELECT v FROM total_pasivo),     true),
        -- PATRIMONIO
        ('PATRIMONIO', '', 'PATRIMONIO',                    NULL,                             true),
        ('PATRIMONIO', '3001', 'Capital aportado',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos_acum WHERE codigo IN ('3001','3002')),false),
        ('PATRIMONIO', '3003', '(-) Retiros del propietario',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos_acum WHERE codigo='3003'),            false),
        ('PATRIMONIO', '3004', 'Utilidades retenidas',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos_acum WHERE codigo='3004'),            false),
        ('PATRIMONIO', '3005', 'Resultado del ejercicio',
            (SELECT COALESCE(SUM(saldo),0) FROM saldos_acum WHERE codigo='3005'),            false),
        ('PATRIMONIO', '',     'TOTAL PATRIMONIO',          (SELECT v FROM total_patrimonio), true),
        -- VERIFICACIÓN
        ('VERIFICACION', '', 'Total Pasivo + Patrimonio',
            (SELECT v FROM total_pasivo) + (SELECT v FROM total_patrimonio),                  true)
    ) t(seccion, codigo_cuenta, cuenta, monto, es_subtotal)
    ORDER BY seccion, codigo_cuenta;
END;
$$;

-- Nota auxiliar de inventario (el detalle que no va en la cara del Balance)
CREATE OR REPLACE FUNCTION reporte_detalle_inventario(p_hasta_periodo text DEFAULT NULL)
RETURNS TABLE (
    producto        text,
    disponible      integer,
    en_transito     integer,
    pend_devolucion integer,
    costo_promedio  numeric(18,4),
    valor_total     numeric(18,4)
) LANGUAGE plpgsql STABLE AS $$
BEGIN
    RETURN QUERY
    SELECT
        p.nombre,
        COALESCE(SUM(CASE WHEN mi.estado = 'disponible'           THEN mi.cantidad ELSE 0 END), 0)::integer,
        COALESCE(SUM(CASE WHEN mi.estado = 'en_transito'          THEN mi.cantidad ELSE 0 END), 0)::integer,
        COALESCE(SUM(CASE WHEN mi.estado = 'pendiente_devolucion' THEN mi.cantidad ELSE 0 END), 0)::integer,
        p.costo_promedio_actual,
        COALESCE(p.stock_disponible * p.costo_promedio_actual, 0)
    FROM productos p
    LEFT JOIN movimientos_inventario mi ON mi.producto_id = p.id
    WHERE p.activo = true
    GROUP BY p.id, p.nombre, p.costo_promedio_actual, p.stock_disponible
    ORDER BY p.nombre;
END;
$$;

-- =============================================================================
-- 3. FLUJO DE CAJA (clasificado en Operación / Inversión / Financiamiento)
-- Fuente: movimientos_contables sobre cuentas de Caja/Banco,
--         clasificados por evento_tipo del asiento padre
-- =============================================================================

CREATE OR REPLACE FUNCTION reporte_flujo_caja(
    p_periodo_inicio    text,
    p_periodo_fin       text DEFAULT NULL
)
RETURNS TABLE (
    actividad       text,
    descripcion     text,
    monto           numeric(18,4),
    es_subtotal     boolean
) LANGUAGE plpgsql STABLE AS $$
DECLARE
    v_fin text;
BEGIN
    v_fin := COALESCE(p_periodo_fin, p_periodo_inicio);

    RETURN QUERY
    WITH movs_caja AS (
        -- Todos los movimientos sobre Caja (1001) y Banco (1002) en el rango
        SELECT
            mc.debito,
            mc.credito,
            ac.evento_tipo,
            -- Débito en cuenta de activo = entrada de dinero; crédito = salida
            (mc.debito - mc.credito) AS flujo_neto
        FROM movimientos_contables mc
        JOIN asientos_contables ac ON ac.id = mc.asiento_id
        JOIN periodos_contables pc ON pc.id = ac.periodo_id
            AND pc.mes >= p_periodo_inicio AND pc.mes <= v_fin
        WHERE mc.cuenta_id IN (fn_cuenta('1001'), fn_cuenta('1002'))
    ),
    operacion AS (
        SELECT COALESCE(SUM(flujo_neto), 0) AS v
        FROM movs_caja
        WHERE evento_tipo IN (
            'VENTA_ENTREGADA','LIQUIDACION_COURIER',
            'COMPRA_LOCAL','COMPRA_IMPORTACION','IMPORTACION_RECIBIDA',
            'PAGO_TARJETA','DEVOLUCION_CONFIRMADA','AJUSTE_COSTO_TARDIO'
        )
    ),
    inversion AS (
        -- Placeholder: cuando se agreguen activos fijos, sus eventos van aquí
        SELECT 0::numeric(18,4) AS v
    ),
    financiamiento AS (
        SELECT COALESCE(SUM(flujo_neto), 0) AS v
        FROM movs_caja
        WHERE evento_tipo IN ('APORTE_CAPITAL','RETIRO_CAPITAL')
    ),
    -- Desglose operativo
    liq_cobradas AS (
        SELECT COALESCE(SUM(flujo_neto),0) AS v FROM movs_caja WHERE evento_tipo='LIQUIDACION_COURIER' AND flujo_neto > 0
    ),
    pagos_op AS (
        SELECT COALESCE(SUM(flujo_neto),0) AS v FROM movs_caja
        WHERE evento_tipo IN ('COMPRA_LOCAL','COMPRA_IMPORTACION','IMPORTACION_RECIBIDA') AND flujo_neto < 0
    ),
    pagos_tarjeta AS (
        SELECT COALESCE(SUM(flujo_neto),0) AS v FROM movs_caja WHERE evento_tipo='PAGO_TARJETA' AND flujo_neto < 0
    )
    SELECT actividad, descripcion, monto, es_subtotal FROM (VALUES
        ('OPERACION',      'ACTIVIDADES DE OPERACIÓN',                NULL::numeric,                true),
        ('OPERACION',      '(+) Liquidaciones de couriers recibidas', (SELECT v FROM liq_cobradas), false),
        ('OPERACION',      '(-) Pagos operativos (compras directas)', (SELECT v FROM pagos_op),     false),
        ('OPERACION',      '(-) Pago de tarjeta de crédito',         (SELECT v FROM pagos_tarjeta),false),
        ('OPERACION',      'Flujo neto de operación',                 (SELECT v FROM operacion),    true),
        ('INVERSION',      'ACTIVIDADES DE INVERSIÓN',                NULL,                         true),
        ('INVERSION',      'Flujo neto de inversión',                 (SELECT v FROM inversion),    true),
        ('FINANCIAMIENTO', 'ACTIVIDADES DE FINANCIAMIENTO',           NULL,                         true),
        ('FINANCIAMIENTO', '(+/-) Aportes y retiros del propietario', (SELECT v FROM financiamiento),false),
        ('FINANCIAMIENTO', 'Flujo neto de financiamiento',            (SELECT v FROM financiamiento),true),
        ('TOTAL',          'FLUJO DE CAJA NETO TOTAL',
            (SELECT v FROM operacion) + (SELECT v FROM inversion) + (SELECT v FROM financiamiento), true)
    ) t(actividad, descripcion, monto, es_subtotal)
    ORDER BY actividad, descripcion;
END;
$$;

-- =============================================================================
-- 4. CAPITAL DE TRABAJO
-- Responde: ¿puedo seguir comprando mercancía?
-- =============================================================================

CREATE OR REPLACE FUNCTION reporte_capital_trabajo(p_hasta_periodo text DEFAULT NULL)
RETURNS TABLE (linea text, monto numeric(18,4)) LANGUAGE plpgsql STABLE AS $$
DECLARE
    v_hasta text;
BEGIN
    v_hasta := COALESCE(p_hasta_periodo, to_char(now(), 'YYYY-MM'));

    RETURN QUERY
    WITH s AS (
        SELECT cc.codigo, COALESCE(SUM(ab.saldo),0) AS saldo
        FROM catalogo_cuentas cc
        LEFT JOIN account_balances ab ON ab.cuenta_id = cc.id
        LEFT JOIN periodos_contables pc ON pc.id = ab.periodo_id AND pc.mes <= v_hasta
        GROUP BY cc.codigo
    )
    SELECT linea, monto FROM (VALUES
        ('(+) Caja',
            (SELECT saldo FROM s WHERE codigo='1001')),
        ('(+) Banco',
            (SELECT saldo FROM s WHERE codigo='1002')),
        ('(+) Cuentas por cobrar a couriers',
            (SELECT saldo FROM s WHERE codigo='1003')),
        ('(+) Inventario disponible',
            (SELECT saldo FROM s WHERE codigo='1011')),
        ('(-) Tarjeta de crédito por pagar',
            -(SELECT saldo FROM s WHERE codigo='2001')),
        ('(-) Cuentas por pagar a proveedores',
            -(SELECT saldo FROM s WHERE codigo='2003')),
        ('= CAPITAL DE TRABAJO',
            (SELECT saldo FROM s WHERE codigo='1001')
            + (SELECT saldo FROM s WHERE codigo='1002')
            + (SELECT saldo FROM s WHERE codigo='1003')
            + (SELECT saldo FROM s WHERE codigo='1011')
            - (SELECT saldo FROM s WHERE codigo='2001')
            - (SELECT saldo FROM s WHERE codigo='2003'))
    ) t(linea, monto);
END;
$$;

-- =============================================================================
-- 5. ESTADO DE CUENTAS POR COBRAR — antigüedad por courier
-- Muestra qué pedidos siguen pendientes de liquidar y cuántos días llevan
-- =============================================================================

CREATE OR REPLACE VIEW vista_cxc_antiguedad AS
SELECT
    cc.nombre                                       AS courier,
    p.id                                            AS pedido_id,
    p.fecha_entrega                                 AS fecha_entrega,
    CURRENT_DATE - p.fecha_entrega                  AS dias_pendientes,
    cxc.monto,
    cxc.estado,
    CASE
        WHEN CURRENT_DATE - p.fecha_entrega <= 3    THEN '0-3 días'
        WHEN CURRENT_DATE - p.fecha_entrega <= 7    THEN '4-7 días'
        WHEN CURRENT_DATE - p.fecha_entrega <= 15   THEN '8-15 días'
        ELSE 'Más de 15 días'
    END                                             AS tramo_antigüedad
FROM cuentas_por_cobrar_pedido cxc
JOIN pedidos p       ON p.id  = cxc.pedido_id
JOIN canales_cobro cc ON cc.id = cxc.courier_id
WHERE cxc.estado = 'pendiente'
ORDER BY dias_pendientes DESC, cc.nombre;

-- =============================================================================
-- 6. KARDEX POR PRODUCTO
-- Historial de entradas/salidas con costo y saldo acumulado
-- =============================================================================

CREATE OR REPLACE FUNCTION reporte_kardex(
    p_producto_id   uuid,
    p_desde         date DEFAULT NULL,
    p_hasta         date DEFAULT NULL
)
RETURNS TABLE (
    fecha           timestamptz,
    tipo            text,
    origen_evento   text,
    cantidad        integer,
    costo_unitario  numeric(18,4),
    costo_total     numeric(18,4),
    stock_acum      integer,
    descripcion     text
) LANGUAGE plpgsql STABLE AS $$
BEGIN
    RETURN QUERY
    SELECT
        mi.created_at,
        mi.tipo,
        mi.origen_evento,
        mi.cantidad,
        mi.costo_unitario,
        mi.cantidad * mi.costo_unitario,
        SUM(mi.cantidad) OVER (
            PARTITION BY mi.producto_id ORDER BY mi.created_at
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        )::integer,
        COALESCE(ac.descripcion, mi.tipo)
    FROM movimientos_inventario mi
    LEFT JOIN asientos_contables ac ON ac.id = mi.asiento_id
    WHERE mi.producto_id = p_producto_id
      AND (p_desde IS NULL OR mi.created_at::date >= p_desde)
      AND (p_hasta IS NULL OR mi.created_at::date <= p_hasta)
    ORDER BY mi.created_at;
END;
$$;

-- =============================================================================
-- 7. RENTABILIDAD POR PRODUCTO (usando dimensiones de movimientos_contables)
-- =============================================================================

CREATE OR REPLACE FUNCTION reporte_rentabilidad_producto(
    p_periodo_inicio    text,
    p_periodo_fin       text DEFAULT NULL
)
RETURNS TABLE (
    producto        text,
    unidades        bigint,
    ingresos        numeric(18,4),
    costo_venta     numeric(18,4),
    utilidad_bruta  numeric(18,4),
    margen_pct      numeric(6,2)
) LANGUAGE plpgsql STABLE AS $$
DECLARE v_fin text;
BEGIN
    v_fin := COALESCE(p_periodo_fin, p_periodo_inicio);
    RETURN QUERY
    SELECT
        pr.nombre,
        COALESCE(SUM(ABS(mi.cantidad)), 0),
        COALESCE(SUM(CASE WHEN mc.cuenta_id = fn_cuenta('4001') THEN mc.credito ELSE 0 END), 0),
        COALESCE(SUM(CASE WHEN mc.cuenta_id = fn_cuenta('5001') THEN mc.debito  ELSE 0 END), 0),
        COALESCE(SUM(CASE WHEN mc.cuenta_id = fn_cuenta('4001') THEN mc.credito ELSE 0 END), 0)
        - COALESCE(SUM(CASE WHEN mc.cuenta_id = fn_cuenta('5001') THEN mc.debito ELSE 0 END), 0),
        CASE
            WHEN COALESCE(SUM(CASE WHEN mc.cuenta_id = fn_cuenta('4001') THEN mc.credito ELSE 0 END), 0) = 0 THEN 0
            ELSE round(
                100 * (
                    COALESCE(SUM(CASE WHEN mc.cuenta_id = fn_cuenta('4001') THEN mc.credito ELSE 0 END), 0)
                    - COALESCE(SUM(CASE WHEN mc.cuenta_id = fn_cuenta('5001') THEN mc.debito ELSE 0 END), 0)
                ) / COALESCE(SUM(CASE WHEN mc.cuenta_id = fn_cuenta('4001') THEN mc.credito ELSE 0 END), 0)
            , 2)
        END
    FROM productos pr
    JOIN movimientos_inventario mi ON mi.producto_id = pr.id AND mi.tipo = 'VENTA'
    JOIN asientos_contables ac ON ac.id = mi.asiento_id
    JOIN periodos_contables pc ON pc.id = ac.periodo_id
        AND pc.mes >= p_periodo_inicio AND pc.mes <= v_fin
    JOIN movimientos_contables mc ON mc.asiento_id = ac.id AND mc.producto_id = pr.id
    GROUP BY pr.id, pr.nombre
    ORDER BY utilidad_bruta DESC;
END;
$$;

-- =============================================================================
-- 8. RENTABILIDAD POR COURIER
-- =============================================================================

CREATE OR REPLACE FUNCTION reporte_rentabilidad_courier(
    p_periodo_inicio    text,
    p_periodo_fin       text DEFAULT NULL
)
RETURNS TABLE (
    courier             text,
    pedidos_liquidados  bigint,
    monto_recaudado     numeric(18,4),
    comisiones_pagadas  numeric(18,4),
    neto_recibido       numeric(18,4)
) LANGUAGE plpgsql STABLE AS $$
DECLARE v_fin text;
BEGIN
    v_fin := COALESCE(p_periodo_fin, p_periodo_inicio);
    RETURN QUERY
    SELECT
        cc.nombre,
        COUNT(DISTINCT l.id),
        COALESCE(SUM(l.monto_recaudado_total), 0),
        COALESCE(SUM(l.comision_total), 0),
        COALESCE(SUM(l.monto_entregado_neto), 0)
    FROM canales_cobro cc
    JOIN liquidaciones l ON l.courier_id = cc.id
    JOIN periodos_contables pc ON pc.id = l.periodo_id
        AND pc.mes >= p_periodo_inicio AND pc.mes <= v_fin
    GROUP BY cc.id, cc.nombre
    ORDER BY neto_recibido DESC;
END;
$$;
