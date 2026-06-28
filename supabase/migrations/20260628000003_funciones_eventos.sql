-- =============================================================================
-- DT Shop ERP — Funciones RPC por evento de negocio
-- Paso 2b: una función por cada caso de uso de casos-de-uso.md
-- Cada función es una transacción completa (todo o nada).
-- =============================================================================

-- =============================================================================
-- 1. registrar_compra_local()
-- Compra a proveedor local, costo conocido, pago con tarjeta/transferencia/efectivo
-- =============================================================================

CREATE OR REPLACE FUNCTION registrar_compra_local(
    p_producto_id       uuid,
    p_cantidad          integer,
    p_costo_unitario    numeric(18,4),
    p_metodo_pago       text,          -- 'tarjeta' | 'transferencia' | 'efectivo'
    p_fecha             date,
    p_centro_costo_id   uuid DEFAULT NULL
)
RETURNS uuid LANGUAGE plpgsql AS $$
DECLARE
    v_periodo_id    uuid;
    v_asiento_id    uuid;
    v_total         numeric(18,4);
    v_cuenta_origen uuid;
BEGIN
    -- Validaciones
    IF p_cantidad <= 0 THEN
        RAISE EXCEPTION 'La cantidad debe ser mayor a 0.';
    END IF;
    IF p_costo_unitario <= 0 THEN
        RAISE EXCEPTION 'El costo unitario debe ser mayor a 0.';
    END IF;
    IF p_metodo_pago NOT IN ('tarjeta','transferencia','efectivo') THEN
        RAISE EXCEPTION 'Método de pago inválido: %. Use tarjeta, transferencia o efectivo.', p_metodo_pago;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM productos WHERE id = p_producto_id AND activo = true) THEN
        RAISE EXCEPTION 'Producto % no encontrado o inactivo.', p_producto_id;
    END IF;

    v_periodo_id := fn_obtener_periodo(p_fecha);
    v_total      := p_cantidad * p_costo_unitario;

    -- Cuenta de origen según método de pago
    v_cuenta_origen := CASE p_metodo_pago
        WHEN 'tarjeta'       THEN fn_cuenta('2001')   -- Tarjeta de crédito por pagar
        WHEN 'transferencia' THEN fn_cuenta('1002')   -- Banco
        WHEN 'efectivo'      THEN fn_cuenta('1001')   -- Caja
    END;

    -- Asiento contable
    INSERT INTO asientos_contables (fecha, periodo_id, evento_tipo, descripcion)
    VALUES (p_fecha, v_periodo_id, 'COMPRA_LOCAL',
            'Compra local: ' || (SELECT nombre FROM productos WHERE id = p_producto_id)
            || ' x' || p_cantidad)
    RETURNING id INTO v_asiento_id;

    INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito, producto_id, centro_costo_id)
    VALUES
        (v_asiento_id, fn_cuenta('1011'), v_total, 0,       p_producto_id, p_centro_costo_id),  -- Débito: Inventario disponible
        (v_asiento_id, v_cuenta_origen,   0,       v_total, p_producto_id, p_centro_costo_id);  -- Crédito: Tarjeta/Banco/Caja

    PERFORM fn_cerrar_asiento(v_asiento_id);

    -- Movimiento de inventario (trigger actualiza costo_promedio_actual y stock)
    INSERT INTO movimientos_inventario
        (producto_id, tipo, origen_evento, cantidad, costo_unitario, estado, asiento_id)
    VALUES
        (p_producto_id, 'COMPRA', 'COMPRA_LOCAL', p_cantidad, p_costo_unitario, 'disponible', v_asiento_id);

    RETURN v_asiento_id;
END;
$$;

-- =============================================================================
-- 2. registrar_importacion()
-- Importación ordenada/pagada, costo estimado, mercancía en tránsito
-- =============================================================================

CREATE OR REPLACE FUNCTION registrar_importacion(
    p_producto_id               uuid,
    p_cantidad                  integer,
    p_costo_unitario_estimado   numeric(18,4),
    p_fecha_orden               date,
    p_centro_costo_id           uuid DEFAULT NULL
)
RETURNS uuid LANGUAGE plpgsql AS $$
DECLARE
    v_periodo_id    uuid;
    v_asiento_id    uuid;
    v_total         numeric(18,4);
    v_mov_inv_id    uuid;
BEGIN
    IF p_cantidad <= 0 THEN
        RAISE EXCEPTION 'La cantidad debe ser mayor a 0.';
    END IF;
    IF p_costo_unitario_estimado <= 0 THEN
        RAISE EXCEPTION 'El costo estimado debe ser mayor a 0.';
    END IF;
    IF NOT EXISTS (SELECT 1 FROM productos WHERE id = p_producto_id AND activo = true) THEN
        RAISE EXCEPTION 'Producto % no encontrado o inactivo.', p_producto_id;
    END IF;

    v_periodo_id := fn_obtener_periodo(p_fecha_orden);
    v_total      := p_cantidad * p_costo_unitario_estimado;

    INSERT INTO asientos_contables (fecha, periodo_id, evento_tipo, descripcion)
    VALUES (p_fecha_orden, v_periodo_id, 'COMPRA_IMPORTACION',
            'Importación (en tránsito): ' || (SELECT nombre FROM productos WHERE id = p_producto_id)
            || ' x' || p_cantidad || ' — costo estimado')
    RETURNING id INTO v_asiento_id;

    INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito, producto_id, centro_costo_id)
    VALUES
        (v_asiento_id, fn_cuenta('1012'), v_total, 0,       p_producto_id, p_centro_costo_id),  -- Débito: Inventario en tránsito
        (v_asiento_id, fn_cuenta('2001'), 0,       v_total, p_producto_id, p_centro_costo_id);  -- Crédito: Tarjeta por pagar

    PERFORM fn_cerrar_asiento(v_asiento_id);

    INSERT INTO movimientos_inventario
        (producto_id, tipo, origen_evento, cantidad, costo_unitario, costo_es_estimado, estado, asiento_id)
    VALUES
        (p_producto_id, 'IMPORTACION', 'COMPRA_IMPORTACION', p_cantidad,
         p_costo_unitario_estimado, true, 'en_transito', v_asiento_id)
    RETURNING id INTO v_mov_inv_id;

    RETURN v_asiento_id;
END;
$$;

-- =============================================================================
-- 3. confirmar_recepcion_importacion()
-- Mercancía llega, costo real conocido (con flete+arancel+seguro)
-- =============================================================================

CREATE OR REPLACE FUNCTION confirmar_recepcion_importacion(
    p_movimiento_transito_id    uuid,
    p_costo_real_unitario       numeric(18,4),
    p_fecha_recepcion           date
)
RETURNS uuid LANGUAGE plpgsql AS $$
DECLARE
    v_mov           movimientos_inventario%ROWTYPE;
    v_periodo_id    uuid;
    v_asiento_id    uuid;
    v_total_estimado numeric(18,4);
    v_total_real     numeric(18,4);
    v_diferencia     numeric(18,4);
BEGIN
    IF p_costo_real_unitario <= 0 THEN
        RAISE EXCEPTION 'El costo real debe ser mayor a 0.';
    END IF;

    SELECT * INTO v_mov
    FROM movimientos_inventario
    WHERE id = p_movimiento_transito_id AND estado = 'en_transito';

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Movimiento % no encontrado o ya fue recibido.', p_movimiento_transito_id;
    END IF;

    v_periodo_id     := fn_obtener_periodo(p_fecha_recepcion);
    v_total_estimado := v_mov.cantidad * v_mov.costo_unitario;
    v_total_real     := v_mov.cantidad * p_costo_real_unitario;
    v_diferencia     := v_total_real - v_total_estimado;

    INSERT INTO asientos_contables (fecha, periodo_id, evento_tipo, descripcion)
    VALUES (p_fecha_recepcion, v_periodo_id, 'IMPORTACION_RECIBIDA',
            'Recepción importación: ' || (SELECT nombre FROM productos WHERE id = v_mov.producto_id)
            || ' x' || v_mov.cantidad || ' — costo real')
    RETURNING id INTO v_asiento_id;

    -- Líneas base: mueve de en_tránsito a disponible
    INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito, producto_id)
    VALUES
        (v_asiento_id, fn_cuenta('1011'), v_total_real,     0,               v_mov.producto_id),  -- Débito: Inventario disponible (costo real)
        (v_asiento_id, fn_cuenta('1012'), 0,                v_total_estimado, v_mov.producto_id); -- Crédito: Inventario en tránsito (costo estimado)

    -- Si hay diferencia entre estimado y real, ajusta tarjeta por pagar
    IF v_diferencia > 0 THEN
        -- El costo real fue mayor: se debe más en tarjeta
        INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito, producto_id)
        VALUES (v_asiento_id, fn_cuenta('2001'), 0, v_diferencia, v_mov.producto_id);
    ELSIF v_diferencia < 0 THEN
        -- El costo real fue menor: se debe menos en tarjeta
        INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito, producto_id)
        VALUES (v_asiento_id, fn_cuenta('2001'), ABS(v_diferencia), 0, v_mov.producto_id);
    END IF;

    PERFORM fn_cerrar_asiento(v_asiento_id);

    -- Cerrar el movimiento de tránsito
    UPDATE movimientos_inventario
    SET estado = 'disponible', asiento_id = v_asiento_id
    WHERE id = p_movimiento_transito_id;

    -- Nuevo movimiento al costo real (trigger recalcula promedio)
    INSERT INTO movimientos_inventario
        (producto_id, tipo, origen_evento, cantidad, costo_unitario, costo_es_estimado, estado,
         referencia_id, referencia_tipo, asiento_id)
    VALUES
        (v_mov.producto_id, 'AJUSTE', 'IMPORTACION_RECIBIDA', v_mov.cantidad,
         p_costo_real_unitario, false, 'disponible',
         p_movimiento_transito_id, 'movimiento_inventario', v_asiento_id);

    RETURN v_asiento_id;
END;
$$;

-- =============================================================================
-- 4. confirmar_venta_entregada()
-- Courier confirma entrega; se reconoce ingreso y costo simultáneamente
-- =============================================================================

CREATE OR REPLACE FUNCTION confirmar_venta_entregada(
    p_pedido_id                 uuid,
    p_courier_id                uuid,
    p_fecha_entrega             date,
    p_metodo_pago_confirmado    text   -- 'efectivo' | 'transferencia'
)
RETURNS uuid LANGUAGE plpgsql AS $$
DECLARE
    v_periodo_id        uuid;
    v_asiento_id        uuid;
    v_precio_total      numeric(18,4) := 0;
    v_costo_total       numeric(18,4) := 0;
    v_cxc_id            uuid;
    v_item              pedido_items%ROWTYPE;
    v_costo_promedio    numeric(18,4);
    v_pedido_num        text;
BEGIN
    IF p_metodo_pago_confirmado NOT IN ('efectivo','transferencia') THEN
        RAISE EXCEPTION 'Método de pago inválido: %. Use efectivo o transferencia.', p_metodo_pago_confirmado;
    END IF;

    -- Validar que el pedido existe y está en estado confirmado
    IF NOT EXISTS (SELECT 1 FROM pedidos WHERE id = p_pedido_id AND estado = 'confirmado') THEN
        RAISE EXCEPTION 'Pedido % no existe o no está en estado confirmado.', p_pedido_id;
    END IF;

    v_periodo_id := fn_obtener_periodo(p_fecha_entrega);
    v_pedido_num := substring(p_pedido_id::text, 1, 8);

    INSERT INTO asientos_contables (fecha, periodo_id, evento_tipo, evento_referencia_id, descripcion)
    VALUES (p_fecha_entrega, v_periodo_id, 'VENTA_ENTREGADA', p_pedido_id,
            'Venta entregada — Pedido #' || v_pedido_num)
    RETURNING id INTO v_asiento_id;

    -- Procesar cada item del pedido
    FOR v_item IN SELECT * FROM pedido_items WHERE pedido_id = p_pedido_id LOOP
        SELECT costo_promedio_actual INTO v_costo_promedio
        FROM productos WHERE id = v_item.producto_id;

        IF v_costo_promedio IS NULL THEN
            RAISE EXCEPTION 'Producto % no tiene costo promedio definido. Registre una compra primero.', v_item.producto_id;
        END IF;

        -- Fijar el costo en el item al momento de la venta
        UPDATE pedido_items
        SET costo_unitario = v_costo_promedio
        WHERE id = v_item.id;

        v_precio_total := v_precio_total + (v_item.precio_unitario * v_item.cantidad);
        v_costo_total  := v_costo_total  + (v_costo_promedio       * v_item.cantidad);

        -- Movimiento de inventario (salida)
        INSERT INTO movimientos_inventario
            (producto_id, tipo, origen_evento, cantidad, costo_unitario, estado,
             referencia_id, referencia_tipo, asiento_id)
        VALUES
            (v_item.producto_id, 'VENTA', 'VENTA_ENTREGADA', -v_item.cantidad,
             v_costo_promedio, 'disponible', p_pedido_id, 'pedido', v_asiento_id);
    END LOOP;

    -- Asiento: cara del ingreso
    INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito, pedido_id, courier_id)
    VALUES
        (v_asiento_id, fn_cuenta('1003'), v_precio_total, 0,              p_pedido_id, p_courier_id),  -- Débito: CxC courier
        (v_asiento_id, fn_cuenta('4001'), 0,              v_precio_total, p_pedido_id, p_courier_id);  -- Crédito: Ventas

    -- Asiento: cara del costo
    INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito, pedido_id)
    VALUES
        (v_asiento_id, fn_cuenta('5001'), v_costo_total, 0,             p_pedido_id),   -- Débito: Costo de mercancía vendida
        (v_asiento_id, fn_cuenta('1011'), 0,             v_costo_total, p_pedido_id);   -- Crédito: Inventario disponible

    PERFORM fn_cerrar_asiento(v_asiento_id);

    -- CxC individual por pedido
    INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, asiento_id)
    VALUES (p_pedido_id, p_courier_id, v_precio_total, v_asiento_id)
    RETURNING id INTO v_cxc_id;

    -- Actualizar estado del pedido
    UPDATE pedidos
    SET estado                 = 'entregado',
        metodo_pago_confirmado = p_metodo_pago_confirmado,
        fecha_entrega          = p_fecha_entrega,
        canal_cobro_id         = p_courier_id
    WHERE id = p_pedido_id;

    RETURN v_asiento_id;
END;
$$;

-- =============================================================================
-- 5. liquidar_courier()
-- Courier entrega el dinero recaudado de uno o varios pedidos
-- =============================================================================

CREATE OR REPLACE FUNCTION liquidar_courier(
    p_courier_id            uuid,
    p_pedidos_ids           uuid[],
    p_monto_entregado_neto  numeric(18,4),
    p_fecha                 date
)
RETURNS uuid LANGUAGE plpgsql AS $$
DECLARE
    v_periodo_id        uuid;
    v_asiento_id        uuid;
    v_liquidacion_id    uuid;
    v_monto_total       numeric(18,4) := 0;
    v_comision          numeric(18,4);
    v_cxc               cuentas_por_cobrar_pedido%ROWTYPE;
    v_pedido_id         uuid;
BEGIN
    IF array_length(p_pedidos_ids, 1) IS NULL THEN
        RAISE EXCEPTION 'Debe incluir al menos un pedido en la liquidación.';
    END IF;

    -- Validar todas las CxC antes de tocar nada
    FOREACH v_pedido_id IN ARRAY p_pedidos_ids LOOP
        SELECT * INTO v_cxc
        FROM cuentas_por_cobrar_pedido
        WHERE pedido_id = v_pedido_id;

        IF NOT FOUND THEN
            RAISE EXCEPTION 'No existe CxC para el pedido %. ¿Ya fue marcado como entregado?', v_pedido_id;
        END IF;
        IF v_cxc.courier_id <> p_courier_id THEN
            RAISE EXCEPTION 'El pedido % pertenece a un courier distinto.', v_pedido_id;
        END IF;
        IF v_cxc.estado = 'liquidado' THEN
            RAISE EXCEPTION 'El pedido % ya fue liquidado anteriormente.', v_pedido_id;
        END IF;

        v_monto_total := v_monto_total + v_cxc.monto;
    END LOOP;

    IF p_monto_entregado_neto > v_monto_total THEN
        RAISE EXCEPTION 'El monto entregado (%) no puede superar el recaudado (%).',
            p_monto_entregado_neto, v_monto_total;
    END IF;

    v_comision   := v_monto_total - p_monto_entregado_neto;
    v_periodo_id := fn_obtener_periodo(p_fecha);

    INSERT INTO asientos_contables (fecha, periodo_id, evento_tipo, evento_referencia_id, descripcion)
    VALUES (p_fecha, v_periodo_id, 'LIQUIDACION_COURIER', p_courier_id,
            'Liquidación courier: ' || (SELECT nombre FROM canales_cobro WHERE id = p_courier_id)
            || ' — ' || array_length(p_pedidos_ids,1) || ' pedidos')
    RETURNING id INTO v_asiento_id;

    -- Asiento
    INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito, courier_id)
    VALUES
        (v_asiento_id, fn_cuenta('1002'), p_monto_entregado_neto, 0,              p_courier_id),  -- Débito: Banco
        (v_asiento_id, fn_cuenta('1003'), 0,                      v_monto_total,  p_courier_id);  -- Crédito: CxC courier

    IF v_comision > 0 THEN
        INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito, courier_id)
        VALUES (v_asiento_id, fn_cuenta('6001'), v_comision, 0, p_courier_id);  -- Débito: Comisión courier
    END IF;

    PERFORM fn_cerrar_asiento(v_asiento_id);

    -- Registro de liquidación
    INSERT INTO liquidaciones
        (courier_id, fecha, periodo_id, monto_recaudado_total, monto_entregado_neto, comision_total, asiento_id)
    VALUES
        (p_courier_id, p_fecha, v_periodo_id, v_monto_total, p_monto_entregado_neto, v_comision, v_asiento_id)
    RETURNING id INTO v_liquidacion_id;

    -- Tabla puente + marcar CxC como liquidadas
    FOREACH v_pedido_id IN ARRAY p_pedidos_ids LOOP
        SELECT id INTO v_cxc.id FROM cuentas_por_cobrar_pedido WHERE pedido_id = v_pedido_id;

        INSERT INTO liquidacion_pedidos (liquidacion_id, cxc_pedido_id)
        VALUES (v_liquidacion_id, v_cxc.id);

        UPDATE cuentas_por_cobrar_pedido
        SET estado = 'liquidado'
        WHERE pedido_id = v_pedido_id;
    END LOOP;

    RETURN v_asiento_id;
END;
$$;

-- =============================================================================
-- 6. confirmar_devolucion()
-- Fulfillment notifica si el producto se reintegra o se pierde
-- =============================================================================

CREATE OR REPLACE FUNCTION confirmar_devolucion(
    p_pedido_id                 uuid,
    p_resultado                 text,   -- 'reintegrable' | 'perdida'
    p_reporte_fulfillment_id    uuid,
    p_fecha                     date
)
RETURNS uuid LANGUAGE plpgsql AS $$
DECLARE
    v_periodo_id        uuid;
    v_asiento_id        uuid;
    v_cxc               cuentas_por_cobrar_pedido%ROWTYPE;
    v_item              pedido_items%ROWTYPE;
    v_precio_total      numeric(18,4) := 0;
    v_costo_total       numeric(18,4) := 0;
    v_cuenta_cxc_o_banco uuid;
BEGIN
    IF p_resultado NOT IN ('reintegrable','perdida') THEN
        RAISE EXCEPTION 'Resultado inválido: %. Use reintegrable o perdida.', p_resultado;
    END IF;
    IF p_resultado = 'perdida' AND p_reporte_fulfillment_id IS NULL THEN
        RAISE EXCEPTION 'Una pérdida requiere reporte_fulfillment_id. No se puede registrar sin el aviso del tercero.';
    END IF;
    IF NOT EXISTS (SELECT 1 FROM pedidos WHERE id = p_pedido_id AND estado = 'para_devolucion') THEN
        RAISE EXCEPTION 'Pedido % no existe o no está en estado para_devolucion.', p_pedido_id;
    END IF;

    SELECT * INTO v_cxc FROM cuentas_por_cobrar_pedido WHERE pedido_id = p_pedido_id;

    -- Si ya fue liquidado, la reversión va contra Banco; si no, contra CxC
    IF v_cxc.estado = 'liquidado' THEN
        v_cuenta_cxc_o_banco := fn_cuenta('1002');  -- Banco
    ELSE
        v_cuenta_cxc_o_banco := fn_cuenta('1003');  -- CxC courier
    END IF;

    v_periodo_id := fn_obtener_periodo(p_fecha);

    -- Calcular totales desde los items (costo fijado al momento de la venta)
    FOR v_item IN SELECT * FROM pedido_items WHERE pedido_id = p_pedido_id LOOP
        v_precio_total := v_precio_total + (v_item.precio_unitario * v_item.cantidad);
        v_costo_total  := v_costo_total  + (COALESCE(v_item.costo_unitario, 0) * v_item.cantidad);
    END LOOP;

    INSERT INTO asientos_contables (fecha, periodo_id, evento_tipo, evento_referencia_id, descripcion)
    VALUES (p_fecha, v_periodo_id, 'DEVOLUCION_CONFIRMADA', p_pedido_id,
            'Devolución ' || p_resultado || ' — Pedido #' || substring(p_pedido_id::text,1,8))
    RETURNING id INTO v_asiento_id;

    IF p_resultado = 'reintegrable' THEN
        -- Inventario vuelve a disponible; se reversa el costo y el ingreso
        INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito, pedido_id)
        VALUES
            (v_asiento_id, fn_cuenta('1011'), v_costo_total,   0,              p_pedido_id),   -- Débito: Inventario disponible
            (v_asiento_id, fn_cuenta('4002'), v_precio_total,  0,              p_pedido_id),   -- Débito: Devoluciones sobre ventas
            (v_asiento_id, v_cuenta_cxc_o_banco, 0,            v_precio_total, p_pedido_id),   -- Crédito: CxC o Banco
            (v_asiento_id, fn_cuenta('5001'), 0,               v_costo_total,  p_pedido_id);   -- Crédito: Reversión costo de venta

        -- Movimiento de inventario: reintegro
        FOR v_item IN SELECT * FROM pedido_items WHERE pedido_id = p_pedido_id LOOP
            INSERT INTO movimientos_inventario
                (producto_id, tipo, origen_evento, cantidad, costo_unitario, estado,
                 referencia_id, referencia_tipo, asiento_id)
            VALUES
                (v_item.producto_id, 'DEVOLUCION_CLIENTE', 'DEVOLUCION_CONFIRMADA',
                 v_item.cantidad, COALESCE(v_item.costo_unitario, 0), 'disponible',
                 p_pedido_id, 'pedido', v_asiento_id);
        END LOOP;

    ELSE
        -- Pérdida: no vuelve al inventario; se registra como merma + gasto extraordinario
        INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito, pedido_id)
        VALUES
            (v_asiento_id, fn_cuenta('8001'), v_costo_total,   0,              p_pedido_id),   -- Débito: Pérdidas de inventario
            (v_asiento_id, fn_cuenta('4002'), v_precio_total,  0,              p_pedido_id),   -- Débito: Devoluciones sobre ventas
            (v_asiento_id, v_cuenta_cxc_o_banco, 0,            v_precio_total, p_pedido_id),   -- Crédito: CxC o Banco
            (v_asiento_id, fn_cuenta('5001'), 0,               v_costo_total,  p_pedido_id);   -- Crédito: Reversión costo de venta

        -- Movimiento de inventario: merma (referencia al reporte del fulfillment)
        FOR v_item IN SELECT * FROM pedido_items WHERE pedido_id = p_pedido_id LOOP
            INSERT INTO movimientos_inventario
                (producto_id, tipo, origen_evento, cantidad, costo_unitario, estado,
                 referencia_id, referencia_tipo, asiento_id)
            VALUES
                (v_item.producto_id, 'MERMA', 'DEVOLUCION_CONFIRMADA',
                 -v_item.cantidad, COALESCE(v_item.costo_unitario, 0), 'perdido',
                 p_reporte_fulfillment_id, 'reporte_fulfillment', v_asiento_id);
        END LOOP;
    END IF;

    PERFORM fn_cerrar_asiento(v_asiento_id);

    UPDATE pedidos SET estado = 'devuelto' WHERE id = p_pedido_id;

    RETURN v_asiento_id;
END;
$$;

-- =============================================================================
-- 7. registrar_pago_tarjeta()
-- Paga el estado de cuenta de la tarjeta de crédito
-- =============================================================================

CREATE OR REPLACE FUNCTION registrar_pago_tarjeta(
    p_monto         numeric(18,4),
    p_fecha         date,
    p_descripcion   text DEFAULT 'Pago tarjeta de crédito'
)
RETURNS uuid LANGUAGE plpgsql AS $$
DECLARE
    v_periodo_id    uuid;
    v_asiento_id    uuid;
BEGIN
    IF p_monto <= 0 THEN
        RAISE EXCEPTION 'El monto debe ser mayor a 0.';
    END IF;

    v_periodo_id := fn_obtener_periodo(p_fecha);

    INSERT INTO asientos_contables (fecha, periodo_id, evento_tipo, descripcion)
    VALUES (p_fecha, v_periodo_id, 'PAGO_TARJETA', p_descripcion)
    RETURNING id INTO v_asiento_id;

    INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito)
    VALUES
        (v_asiento_id, fn_cuenta('2001'), p_monto, 0),       -- Débito: Tarjeta por pagar (reduce pasivo)
        (v_asiento_id, fn_cuenta('1002'), 0,       p_monto); -- Crédito: Banco

    PERFORM fn_cerrar_asiento(v_asiento_id);

    RETURN v_asiento_id;
END;
$$;

-- =============================================================================
-- 8. registrar_aporte_capital() / registrar_retiro_capital()
-- Aportes o retiros del propietario — clasificados como Financiamiento
-- =============================================================================

CREATE OR REPLACE FUNCTION registrar_aporte_capital(
    p_monto         numeric(18,4),
    p_fecha         date,
    p_descripcion   text DEFAULT 'Aporte de capital'
)
RETURNS uuid LANGUAGE plpgsql AS $$
DECLARE
    v_periodo_id    uuid;
    v_asiento_id    uuid;
BEGIN
    IF p_monto <= 0 THEN
        RAISE EXCEPTION 'El monto debe ser mayor a 0.';
    END IF;

    v_periodo_id := fn_obtener_periodo(p_fecha);

    INSERT INTO asientos_contables (fecha, periodo_id, evento_tipo, descripcion)
    VALUES (p_fecha, v_periodo_id, 'APORTE_CAPITAL', p_descripcion)
    RETURNING id INTO v_asiento_id;

    INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito)
    VALUES
        (v_asiento_id, fn_cuenta('1002'), p_monto, 0),       -- Débito: Banco
        (v_asiento_id, fn_cuenta('3001'), 0,       p_monto); -- Crédito: Capital aportado

    PERFORM fn_cerrar_asiento(v_asiento_id);

    INSERT INTO capital_aportes (tipo, monto, fecha, periodo_id, descripcion, asiento_id)
    VALUES ('aporte', p_monto, p_fecha, v_periodo_id, p_descripcion, v_asiento_id);

    RETURN v_asiento_id;
END;
$$;

CREATE OR REPLACE FUNCTION registrar_retiro_capital(
    p_monto         numeric(18,4),
    p_fecha         date,
    p_descripcion   text DEFAULT 'Retiro del propietario'
)
RETURNS uuid LANGUAGE plpgsql AS $$
DECLARE
    v_periodo_id    uuid;
    v_asiento_id    uuid;
BEGIN
    IF p_monto <= 0 THEN
        RAISE EXCEPTION 'El monto debe ser mayor a 0.';
    END IF;

    v_periodo_id := fn_obtener_periodo(p_fecha);

    INSERT INTO asientos_contables (fecha, periodo_id, evento_tipo, descripcion)
    VALUES (p_fecha, v_periodo_id, 'RETIRO_CAPITAL', p_descripcion)
    RETURNING id INTO v_asiento_id;

    INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito)
    VALUES
        (v_asiento_id, fn_cuenta('3003'), p_monto, 0),       -- Débito: Retiros del propietario
        (v_asiento_id, fn_cuenta('1002'), 0,       p_monto); -- Crédito: Banco

    PERFORM fn_cerrar_asiento(v_asiento_id);

    INSERT INTO capital_aportes (tipo, monto, fecha, periodo_id, descripcion, asiento_id)
    VALUES ('retiro', p_monto, p_fecha, v_periodo_id, p_descripcion, v_asiento_id);

    RETURN v_asiento_id;
END;
$$;

-- =============================================================================
-- 9. cerrar_periodo()
-- Cierre contable: bloquea el periodo y transfiere resultado a utilidades retenidas
-- =============================================================================

CREATE OR REPLACE FUNCTION cerrar_periodo(p_periodo_id uuid)
RETURNS void LANGUAGE plpgsql AS $$
DECLARE
    v_periodo   periodos_contables%ROWTYPE;
    v_asiento_id uuid;
    v_resultado numeric(18,4);
    v_ingresos  numeric(18,4) := 0;
    v_gastos    numeric(18,4) := 0;
BEGIN
    SELECT * INTO v_periodo FROM periodos_contables WHERE id = p_periodo_id;
    IF NOT FOUND THEN
        RAISE EXCEPTION 'Periodo % no encontrado.', p_periodo_id;
    END IF;
    IF v_periodo.estado = 'cerrado' THEN
        RAISE EXCEPTION 'El periodo % ya está cerrado.', v_periodo.mes;
    END IF;

    -- Calcular resultado del periodo (ingresos - gastos)
    SELECT
        COALESCE(SUM(CASE WHEN cc.tipo = 'ingreso' THEN ab.saldo ELSE 0 END), 0),
        COALESCE(SUM(CASE WHEN cc.tipo = 'gasto'   THEN ab.saldo ELSE 0 END), 0)
    INTO v_ingresos, v_gastos
    FROM account_balances ab
    JOIN catalogo_cuentas cc ON cc.id = ab.cuenta_id
    WHERE ab.periodo_id = p_periodo_id
      AND cc.tipo IN ('ingreso','gasto');

    v_resultado := v_ingresos - v_gastos;

    -- Asiento de cierre
    INSERT INTO asientos_contables (fecha, periodo_id, evento_tipo, descripcion)
    VALUES (v_periodo.mes::date + interval '1 month' - interval '1 day',
            p_periodo_id, 'CIERRE_PERIODO',
            'Cierre periodo ' || v_periodo.mes)
    RETURNING id INTO v_asiento_id;

    IF v_resultado >= 0 THEN
        -- Utilidad: débita resultado del ejercicio, acredita utilidades retenidas
        INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito)
        VALUES
            (v_asiento_id, fn_cuenta('3005'), v_resultado, 0),           -- Débito: Resultado del ejercicio
            (v_asiento_id, fn_cuenta('3004'), 0,           v_resultado); -- Crédito: Utilidades retenidas
    ELSE
        -- Pérdida: débita utilidades retenidas, acredita resultado del ejercicio
        INSERT INTO movimientos_contables (asiento_id, cuenta_id, debito, credito)
        VALUES
            (v_asiento_id, fn_cuenta('3004'), ABS(v_resultado), 0),
            (v_asiento_id, fn_cuenta('3005'), 0,                ABS(v_resultado));
    END IF;

    PERFORM fn_cerrar_asiento(v_asiento_id);

    -- Marcar periodo como cerrado
    UPDATE periodos_contables
    SET estado = 'cerrado', cerrado_en = now()
    WHERE id = p_periodo_id;
END;
$$;

-- =============================================================================
-- 10. validar_liquidacion() — función de solo lectura para conciliación
-- Compara la lista del courier contra las CxC abiertas SIN escribir nada
-- =============================================================================

CREATE OR REPLACE FUNCTION validar_liquidacion(
    p_courier_id    uuid,
    p_pedidos_ids   uuid[]
)
RETURNS TABLE (
    pedido_id       uuid,
    monto           numeric(18,4),
    estado_cxc      text,
    coincide        boolean,
    observacion     text
) LANGUAGE plpgsql STABLE AS $$
DECLARE
    v_pedido_id uuid;
BEGIN
    FOREACH v_pedido_id IN ARRAY p_pedidos_ids LOOP
        RETURN QUERY
        SELECT
            v_pedido_id,
            cxc.monto,
            cxc.estado,
            (cxc.id IS NOT NULL AND cxc.courier_id = p_courier_id AND cxc.estado = 'pendiente'),
            CASE
                WHEN cxc.id IS NULL           THEN 'No existe CxC para este pedido'
                WHEN cxc.courier_id <> p_courier_id THEN 'Pedido pertenece a otro courier'
                WHEN cxc.estado = 'liquidado' THEN 'Ya liquidado anteriormente'
                ELSE 'OK'
            END
        FROM (
            SELECT cx.id, cx.courier_id, cx.monto, cx.estado
            FROM cuentas_por_cobrar_pedido cx
            WHERE cx.pedido_id = v_pedido_id
        ) cxc
        -- LEFT JOIN para devolver fila incluso si no existe CxC
        RIGHT JOIN (SELECT v_pedido_id AS pid) dummy ON true;
    END LOOP;
END;
$$;

-- =============================================================================
-- 11. marcar_pedido_para_devolucion()
-- Pedido cancelado/rechazado en tránsito — sin asiento (no hay hecho económico todavía)
-- =============================================================================

CREATE OR REPLACE FUNCTION marcar_pedido_para_devolucion(p_pedido_id uuid)
RETURNS void LANGUAGE plpgsql AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pedidos WHERE id = p_pedido_id AND estado IN ('confirmado','entregado')
    ) THEN
        RAISE EXCEPTION 'Pedido % no está en estado confirmado o entregado.', p_pedido_id;
    END IF;

    UPDATE pedidos SET estado = 'para_devolucion' WHERE id = p_pedido_id;

    -- Marcar items en inventario como pendiente_devolucion
    UPDATE movimientos_inventario
    SET estado = 'pendiente_devolucion'
    WHERE referencia_id = p_pedido_id
      AND referencia_tipo = 'pedido'
      AND estado = 'disponible';
END;
$$;
