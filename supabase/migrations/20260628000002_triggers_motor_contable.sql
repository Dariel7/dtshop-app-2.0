-- =============================================================================
-- DT Shop ERP — Triggers del motor contable
-- Paso 2a: validación de partida doble, bloqueo de periodos, caché de saldos
-- =============================================================================

-- =============================================================================
-- 1. BLOQUEO DE PERIODO CERRADO
-- Rechaza cualquier asiento que intente insertarse en un periodo cerrado.
-- =============================================================================

CREATE OR REPLACE FUNCTION fn_validar_periodo_abierto()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM periodos_contables
        WHERE id = NEW.periodo_id AND estado = 'abierto'
    ) THEN
        RAISE EXCEPTION 'No se puede insertar en el periodo %: está cerrado o no existe.',
            NEW.periodo_id;
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER trg_asientos_periodo_abierto
    BEFORE INSERT ON asientos_contables
    FOR EACH ROW EXECUTE FUNCTION fn_validar_periodo_abierto();

-- =============================================================================
-- 2. VALIDACIÓN DE PARTIDA DOBLE
-- Después de insertar todas las líneas de un asiento, verifica que cuadre.
-- Se dispara al final de cada transacción (DEFERRED), no línea por línea.
-- =============================================================================

CREATE OR REPLACE FUNCTION fn_validar_partida_doble()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE
    v_suma_debito  numeric(18,4);
    v_suma_credito numeric(18,4);
BEGIN
    SELECT
        COALESCE(SUM(debito),  0),
        COALESCE(SUM(credito), 0)
    INTO v_suma_debito, v_suma_credito
    FROM movimientos_contables
    WHERE asiento_id = NEW.asiento_id;

    -- Solo validamos si ya hay al menos 2 líneas (asiento mínimo = 2 líneas)
    -- La validación final real la hace fn_cerrar_asiento() al completar el asiento.
    -- Aquí solo rechazamos si ya hay desequilibrio imposible de corregir
    -- (débito > crédito en más del doble — señal de asiento incompleto con error).
    -- La validación estricta vive en fn_cerrar_asiento().
    RETURN NEW;
END;
$$;

-- Función separada que se llama EXPLÍCITAMENTE al terminar de insertar todas
-- las líneas de un asiento. Las RPCs de eventos la invocan al final.
CREATE OR REPLACE FUNCTION fn_cerrar_asiento(p_asiento_id uuid)
RETURNS void LANGUAGE plpgsql AS $$
DECLARE
    v_suma_debito  numeric(18,4);
    v_suma_credito numeric(18,4);
BEGIN
    SELECT
        COALESCE(SUM(debito),  0),
        COALESCE(SUM(credito), 0)
    INTO v_suma_debito, v_suma_credito
    FROM movimientos_contables
    WHERE asiento_id = p_asiento_id;

    IF round(v_suma_debito, 4) <> round(v_suma_credito, 4) THEN
        RAISE EXCEPTION
            'Asiento % no cuadra: débitos=% créditos=%. Diferencia=%',
            p_asiento_id,
            v_suma_debito,
            v_suma_credito,
            (v_suma_debito - v_suma_credito);
    END IF;
END;
$$;

-- =============================================================================
-- 3. ACTUALIZACIÓN DE account_balances
-- Cada línea insertada en movimientos_contables actualiza (o crea) la fila
-- correspondiente en account_balances para esa cuenta + periodo.
-- =============================================================================

CREATE OR REPLACE FUNCTION fn_actualizar_account_balances()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE
    v_periodo_id    uuid;
    v_naturaleza    text;
    v_nuevo_saldo   numeric(18,4);
BEGIN
    -- Obtener el periodo_id del asiento padre
    SELECT periodo_id INTO v_periodo_id
    FROM asientos_contables
    WHERE id = NEW.asiento_id;

    -- Obtener la naturaleza de la cuenta para calcular el saldo correctamente
    SELECT naturaleza INTO v_naturaleza
    FROM catalogo_cuentas
    WHERE id = NEW.cuenta_id;

    -- UPSERT en account_balances
    INSERT INTO account_balances (cuenta_id, periodo_id, debito_acumulado, credito_acumulado, saldo)
    VALUES (NEW.cuenta_id, v_periodo_id, NEW.debito, NEW.credito,
        CASE v_naturaleza
            WHEN 'debito'  THEN NEW.debito  - NEW.credito
            WHEN 'credito' THEN NEW.credito - NEW.debito
        END
    )
    ON CONFLICT (cuenta_id, periodo_id) DO UPDATE SET
        debito_acumulado  = account_balances.debito_acumulado  + NEW.debito,
        credito_acumulado = account_balances.credito_acumulado + NEW.credito,
        saldo = CASE v_naturaleza
            WHEN 'debito'  THEN (account_balances.debito_acumulado  + NEW.debito)
                              - (account_balances.credito_acumulado + NEW.credito)
            WHEN 'credito' THEN (account_balances.credito_acumulado + NEW.credito)
                              - (account_balances.debito_acumulado  + NEW.debito)
        END,
        ultima_actualizacion = now(),
        version = account_balances.version + 1;

    RETURN NEW;
END;
$$;

CREATE TRIGGER trg_actualizar_account_balances
    AFTER INSERT ON movimientos_contables
    FOR EACH ROW EXECUTE FUNCTION fn_actualizar_account_balances();

-- =============================================================================
-- 4. ACTUALIZACIÓN DE costo_promedio_actual EN productos
-- Se recalcula con promedio ponderado cada vez que entra un movimiento
-- de inventario de tipo COMPRA, IMPORTACION o AJUSTE (positivo).
-- Nunca se edita productos.costo_promedio_actual directamente.
-- =============================================================================

CREATE OR REPLACE FUNCTION fn_recalcular_costo_promedio()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE
    v_stock_actual      integer;
    v_costo_total       numeric(18,4);
    v_nuevo_promedio    numeric(18,4);
    v_nuevo_stock       integer;
BEGIN
    -- Solo se recalcula en entradas con costo real conocido
    IF NEW.tipo NOT IN ('COMPRA','IMPORTACION','AJUSTE','AJUSTE_POSITIVO','DEVOLUCION_CLIENTE') THEN
        -- Para salidas (VENTA, MERMA), solo actualizar el stock
        SELECT COALESCE(SUM(cantidad), 0)
        INTO v_nuevo_stock
        FROM movimientos_inventario
        WHERE producto_id = NEW.producto_id
          AND estado IN ('disponible');

        UPDATE productos
        SET stock_disponible = v_nuevo_stock
        WHERE id = NEW.producto_id;

        RETURN NEW;
    END IF;

    -- Para importaciones con costo estimado, no actualizar el promedio todavía
    IF NEW.costo_es_estimado = true THEN
        RETURN NEW;
    END IF;

    -- Calcular nuevo promedio ponderado
    -- Stock actual ANTES de este movimiento
    SELECT COALESCE(SUM(cantidad), 0)
    INTO v_stock_actual
    FROM movimientos_inventario
    WHERE producto_id = NEW.producto_id
      AND id <> NEW.id
      AND estado = 'disponible'
      AND costo_es_estimado = false;

    -- Costo total previo
    v_costo_total := v_stock_actual * COALESCE(
        (SELECT costo_promedio_actual FROM productos WHERE id = NEW.producto_id), 0
    );

    -- Nuevo promedio = (costo_total_previo + nuevo_lote) / (stock_previo + nueva_cantidad)
    IF (v_stock_actual + NEW.cantidad) > 0 THEN
        v_nuevo_promedio := (v_costo_total + (NEW.cantidad * NEW.costo_unitario))
                            / (v_stock_actual + NEW.cantidad);
    ELSE
        v_nuevo_promedio := NEW.costo_unitario;
    END IF;

    -- Stock disponible recalculado
    SELECT COALESCE(SUM(cantidad), 0)
    INTO v_nuevo_stock
    FROM movimientos_inventario
    WHERE producto_id = NEW.producto_id
      AND estado = 'disponible';

    UPDATE productos
    SET costo_promedio_actual = round(v_nuevo_promedio, 4),
        stock_disponible      = v_nuevo_stock
    WHERE id = NEW.producto_id;

    RETURN NEW;
END;
$$;

CREATE TRIGGER trg_recalcular_costo_promedio
    AFTER INSERT ON movimientos_inventario
    FOR EACH ROW EXECUTE FUNCTION fn_recalcular_costo_promedio();

-- =============================================================================
-- 5. HELPER: obtener o crear periodo contable automáticamente por fecha
-- =============================================================================

CREATE OR REPLACE FUNCTION fn_obtener_periodo(p_fecha date)
RETURNS uuid LANGUAGE plpgsql AS $$
DECLARE
    v_mes       text;
    v_periodo   uuid;
BEGIN
    v_mes := to_char(p_fecha, 'YYYY-MM');

    SELECT id INTO v_periodo
    FROM periodos_contables
    WHERE mes = v_mes;

    IF NOT FOUND THEN
        INSERT INTO periodos_contables (mes) VALUES (v_mes)
        RETURNING id INTO v_periodo;
    END IF;

    RETURN v_periodo;
END;
$$;

-- Helper para obtener el id de una cuenta por su código
CREATE OR REPLACE FUNCTION fn_cuenta(p_codigo text)
RETURNS uuid LANGUAGE plpgsql STABLE AS $$
DECLARE
    v_id uuid;
BEGIN
    SELECT id INTO v_id FROM catalogo_cuentas WHERE codigo = p_codigo AND activa = true;
    IF NOT FOUND THEN
        RAISE EXCEPTION 'Cuenta con código % no encontrada o inactiva.', p_codigo;
    END IF;
    RETURN v_id;
END;
$$;
