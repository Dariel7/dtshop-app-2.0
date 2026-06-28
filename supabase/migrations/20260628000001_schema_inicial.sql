-- =============================================================================
-- DT Shop ERP — Esquema inicial completo
-- Paso 1 de 6: tablas base (sin funciones de eventos ni triggers de negocio)
-- =============================================================================

-- Extensión para UUIDs
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- =============================================================================
-- MÓDULO CONTABLE
-- =============================================================================

-- Catálogo de cuentas (activo/pasivo/patrimonio/ingreso/gasto)
CREATE TABLE catalogo_cuentas (
    id              uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    codigo          text NOT NULL UNIQUE,
    nombre          text NOT NULL,
    tipo            text NOT NULL CHECK (tipo IN ('activo','pasivo','patrimonio','ingreso','gasto')),
    naturaleza      text NOT NULL CHECK (naturaleza IN ('debito','credito')),
    cuenta_padre_id uuid REFERENCES catalogo_cuentas(id),
    activa          boolean NOT NULL DEFAULT true,
    created_at      timestamptz NOT NULL DEFAULT now()
);

-- Periodos contables mensuales (abierto/cerrado)
CREATE TABLE periodos_contables (
    id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    mes         text NOT NULL UNIQUE,          -- formato: "2026-06"
    estado      text NOT NULL DEFAULT 'abierto' CHECK (estado IN ('abierto','cerrado')),
    cerrado_en  timestamptz,
    created_at  timestamptz NOT NULL DEFAULT now()
);

-- Catálogo de tipos de evento de negocio
CREATE TABLE event_types (
    codigo              text PRIMARY KEY,
    nombre              text NOT NULL,
    genera_asiento      boolean NOT NULL DEFAULT true,
    genera_inventario   boolean NOT NULL DEFAULT false
);

-- Encabezado de asiento contable (un evento económico completo)
CREATE TABLE asientos_contables (
    id                   uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    fecha                date NOT NULL,
    periodo_id           uuid NOT NULL REFERENCES periodos_contables(id),
    evento_tipo          text NOT NULL REFERENCES event_types(codigo),
    evento_referencia_id uuid,               -- FK lógica al registro que originó el asiento
    descripcion          text NOT NULL,
    asiento_revertido_id uuid REFERENCES asientos_contables(id),  -- para reversiones
    created_at           timestamptz NOT NULL DEFAULT now()
);

-- Líneas del asiento (libro diario)
-- La validación SUM(debito)=SUM(credito) la impone un trigger (ver paso 2)
CREATE TABLE movimientos_contables (
    id              uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    asiento_id      uuid NOT NULL REFERENCES asientos_contables(id),
    cuenta_id       uuid NOT NULL REFERENCES catalogo_cuentas(id),
    debito          numeric(18,4) NOT NULL DEFAULT 0 CHECK (debito >= 0),
    credito         numeric(18,4) NOT NULL DEFAULT 0 CHECK (credito >= 0),
    -- Dimensiones para reportes de rentabilidad (todas opcionales)
    producto_id     uuid,   -- FK a productos (se añade después para evitar forward reference)
    pedido_id       uuid,   -- FK a pedidos
    courier_id      uuid,   -- FK a canales_cobro
    campana_id      uuid,   -- FK a campanas
    centro_costo_id uuid,   -- FK a centros_costo
    created_at      timestamptz NOT NULL DEFAULT now(),
    CONSTRAINT debito_o_credito CHECK (
        (debito > 0 AND credito = 0) OR (credito > 0 AND debito = 0)
    )
);

-- Saldos cacheados por cuenta + periodo (se actualiza con trigger en movimientos_contables)
CREATE TABLE account_balances (
    cuenta_id           uuid NOT NULL REFERENCES catalogo_cuentas(id),
    periodo_id          uuid NOT NULL REFERENCES periodos_contables(id),
    debito_acumulado    numeric(18,4) NOT NULL DEFAULT 0,
    credito_acumulado   numeric(18,4) NOT NULL DEFAULT 0,
    saldo               numeric(18,4) NOT NULL DEFAULT 0,
    ultima_actualizacion timestamptz NOT NULL DEFAULT now(),
    version             integer NOT NULL DEFAULT 1,
    PRIMARY KEY (cuenta_id, periodo_id)
);

-- =============================================================================
-- MÓDULO DE SOPORTE / MAESTROS
-- =============================================================================

CREATE TABLE centros_costo (
    id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    codigo      text NOT NULL UNIQUE,
    nombre      text NOT NULL,
    activo      boolean NOT NULL DEFAULT true,
    created_at  timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE campanas (
    id              uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    nombre          text NOT NULL,
    canal           text,                       -- facebook, google, tiktok, etc.
    fecha_inicio    date,
    fecha_fin       date,
    presupuesto     numeric(18,4),
    gasto_real      numeric(18,4),
    activa          boolean NOT NULL DEFAULT true,
    created_at      timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE clientes (
    id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    nombre      text NOT NULL,
    telefono    text,
    direccion   text,
    created_at  timestamptz NOT NULL DEFAULT now()
);

-- Couriers / canales de cobro con sus reglas de comisión propias
CREATE TABLE canales_cobro (
    id                          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    nombre                      text NOT NULL,
    tipo_comision               text NOT NULL CHECK (tipo_comision IN ('porcentaje','fijo','ninguno')),
    comision_porcentaje         numeric(6,4),    -- ej: 0.0350 = 3.50%
    comision_flete_fijo         numeric(18,4),   -- cargo fijo por envío (si aplica)
    comision_devolucion         numeric(18,4),   -- cargo por devolución (si aplica)
    activo                      boolean NOT NULL DEFAULT true,
    created_at                  timestamptz NOT NULL DEFAULT now()
);

-- =============================================================================
-- MÓDULO DE INVENTARIO / PRODUCTOS
-- =============================================================================

CREATE TABLE productos (
    id                      uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    nombre                  text NOT NULL,
    descripcion             text,
    sku                     text UNIQUE,
    precio_venta            numeric(18,4) NOT NULL,
    costo_promedio_actual   numeric(18,4),       -- caché recalculada por trigger, nunca editar manualmente
    stock_disponible        integer NOT NULL DEFAULT 0,   -- caché calculada por trigger
    activo                  boolean NOT NULL DEFAULT true,
    created_at              timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE movimientos_inventario (
    id                  uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    producto_id         uuid NOT NULL REFERENCES productos(id),
    tipo                text NOT NULL CHECK (tipo IN (
                            'COMPRA','IMPORTACION','AJUSTE','VENTA',
                            'DEVOLUCION_CLIENTE','MERMA','AJUSTE_POSITIVO'
                        )),
    origen_evento       text NOT NULL REFERENCES event_types(codigo),
    cantidad            integer NOT NULL,         -- positivo=entrada, negativo=salida
    costo_unitario      numeric(18,4) NOT NULL,
    costo_es_estimado   boolean NOT NULL DEFAULT false,   -- true en importaciones antes de recibir
    estado              text NOT NULL DEFAULT 'disponible' CHECK (estado IN (
                            'disponible','en_transito','reservado',
                            'pendiente_devolucion','perdido'
                        )),
    referencia_id       uuid,                     -- id del pedido, compra, liquidación, etc.
    referencia_tipo     text,                     -- 'pedido','compra','liquidacion','reporte_fulfillment'
    asiento_id          uuid REFERENCES asientos_contables(id),
    created_at          timestamptz NOT NULL DEFAULT now()
);

-- =============================================================================
-- MÓDULO DE PEDIDOS / VENTAS
-- =============================================================================

CREATE TABLE pedidos (
    id                      uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    cliente_id              uuid REFERENCES clientes(id),
    canal_cobro_id          uuid REFERENCES canales_cobro(id),
    campana_id              uuid REFERENCES campanas(id),
    estado                  text NOT NULL DEFAULT 'pendiente' CHECK (estado IN (
                                'pendiente','confirmado','entregado',
                                'para_devolucion','devuelto','cancelado'
                            )),
    metodo_pago_confirmado  text CHECK (metodo_pago_confirmado IN ('efectivo','transferencia')),
    fecha_pedido            date NOT NULL DEFAULT CURRENT_DATE,
    fecha_entrega           date,
    precio_total            numeric(18,4) NOT NULL DEFAULT 0,
    notas                   text,
    created_at              timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE pedido_items (
    id              uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    pedido_id       uuid NOT NULL REFERENCES pedidos(id),
    producto_id     uuid NOT NULL REFERENCES productos(id),
    cantidad        integer NOT NULL CHECK (cantidad > 0),
    precio_unitario numeric(18,4) NOT NULL,
    costo_unitario  numeric(18,4),               -- se fija al momento de confirmar venta entregada
    created_at      timestamptz NOT NULL DEFAULT now()
);

-- CxC individual por pedido (NO agregada por courier)
-- Creada al momento de VENTA_ENTREGADA; liquidada al procesar LIQUIDACION_COURIER
CREATE TABLE cuentas_por_cobrar_pedido (
    id              uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    pedido_id       uuid NOT NULL UNIQUE REFERENCES pedidos(id),
    courier_id      uuid NOT NULL REFERENCES canales_cobro(id),
    monto           numeric(18,4) NOT NULL,
    estado          text NOT NULL DEFAULT 'pendiente' CHECK (estado IN ('pendiente','liquidado')),
    asiento_id      uuid REFERENCES asientos_contables(id),
    created_at      timestamptz NOT NULL DEFAULT now()
);

-- =============================================================================
-- MÓDULO DE LIQUIDACIONES
-- =============================================================================

CREATE TABLE liquidaciones (
    id                      uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    courier_id              uuid NOT NULL REFERENCES canales_cobro(id),
    fecha                   date NOT NULL,
    periodo_id              uuid NOT NULL REFERENCES periodos_contables(id),
    monto_recaudado_total   numeric(18,4) NOT NULL,   -- suma de CxC incluidas
    monto_entregado_neto    numeric(18,4) NOT NULL,   -- lo que realmente depositó
    comision_total          numeric(18,4) NOT NULL,   -- diferencia
    asiento_id              uuid REFERENCES asientos_contables(id),
    notas                   text,
    created_at              timestamptz NOT NULL DEFAULT now(),
    CONSTRAINT comision_valida CHECK (monto_recaudado_total >= monto_entregado_neto)
);

-- Tabla puente: qué CxC pedido cubre cada liquidación
CREATE TABLE liquidacion_pedidos (
    liquidacion_id          uuid NOT NULL REFERENCES liquidaciones(id),
    cxc_pedido_id           uuid NOT NULL REFERENCES cuentas_por_cobrar_pedido(id),
    PRIMARY KEY (liquidacion_id, cxc_pedido_id)
);

-- =============================================================================
-- MÓDULO DE CAPITAL
-- =============================================================================

CREATE TABLE capital_aportes (
    id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    tipo        text NOT NULL CHECK (tipo IN ('aporte','retiro')),
    monto       numeric(18,4) NOT NULL CHECK (monto > 0),
    fecha       date NOT NULL,
    periodo_id  uuid NOT NULL REFERENCES periodos_contables(id),
    descripcion text,
    asiento_id  uuid REFERENCES asientos_contables(id),
    created_at  timestamptz NOT NULL DEFAULT now()
);

-- =============================================================================
-- FOREIGN KEYS DIFERIDAS (evitan referencias circulares en la definición inicial)
-- =============================================================================

ALTER TABLE movimientos_contables
    ADD CONSTRAINT fk_mc_producto    FOREIGN KEY (producto_id)     REFERENCES productos(id),
    ADD CONSTRAINT fk_mc_pedido      FOREIGN KEY (pedido_id)       REFERENCES pedidos(id),
    ADD CONSTRAINT fk_mc_courier     FOREIGN KEY (courier_id)      REFERENCES canales_cobro(id),
    ADD CONSTRAINT fk_mc_campana     FOREIGN KEY (campana_id)      REFERENCES campanas(id),
    ADD CONSTRAINT fk_mc_centro_costo FOREIGN KEY (centro_costo_id) REFERENCES centros_costo(id);

-- =============================================================================
-- ÍNDICES PARA CONSULTAS FRECUENTES
-- =============================================================================

-- Motor contable
CREATE INDEX idx_movimientos_contables_asiento    ON movimientos_contables(asiento_id);
CREATE INDEX idx_movimientos_contables_cuenta      ON movimientos_contables(cuenta_id);
CREATE INDEX idx_movimientos_contables_producto    ON movimientos_contables(producto_id) WHERE producto_id IS NOT NULL;
CREATE INDEX idx_movimientos_contables_pedido      ON movimientos_contables(pedido_id) WHERE pedido_id IS NOT NULL;
CREATE INDEX idx_movimientos_contables_courier     ON movimientos_contables(courier_id) WHERE courier_id IS NOT NULL;
CREATE INDEX idx_movimientos_contables_campana     ON movimientos_contables(campana_id) WHERE campana_id IS NOT NULL;
CREATE INDEX idx_account_balances_periodo          ON account_balances(periodo_id);
CREATE INDEX idx_asientos_fecha                    ON asientos_contables(fecha);
CREATE INDEX idx_asientos_periodo                  ON asientos_contables(periodo_id);

-- Inventario
CREATE INDEX idx_mov_inventario_producto           ON movimientos_inventario(producto_id);
CREATE INDEX idx_mov_inventario_tipo               ON movimientos_inventario(tipo);
CREATE INDEX idx_mov_inventario_estado             ON movimientos_inventario(estado);

-- Pedidos
CREATE INDEX idx_pedidos_cliente                   ON pedidos(cliente_id);
CREATE INDEX idx_pedidos_estado                    ON pedidos(estado);
CREATE INDEX idx_pedidos_canal                     ON pedidos(canal_cobro_id);
CREATE INDEX idx_pedido_items_pedido               ON pedido_items(pedido_id);
CREATE INDEX idx_cxc_courier                       ON cuentas_por_cobrar_pedido(courier_id);
CREATE INDEX idx_cxc_estado                        ON cuentas_por_cobrar_pedido(estado);

-- Liquidaciones
CREATE INDEX idx_liquidaciones_courier             ON liquidaciones(courier_id);
CREATE INDEX idx_liquidaciones_periodo             ON liquidaciones(periodo_id);

-- =============================================================================
-- DATOS SEMILLA — Catálogo de cuentas (basado en catalogo-de-cuentas-definitivo.md)
-- =============================================================================

INSERT INTO catalogo_cuentas (codigo, nombre, tipo, naturaleza) VALUES
-- ACTIVOS
('1000', 'Activo Corriente',                    'activo', 'debito'),
('1001', 'Caja',                                'activo', 'debito'),
('1002', 'Banco',                               'activo', 'debito'),
('1003', 'Cuentas por cobrar a couriers',       'activo', 'debito'),
('1004', 'Cuentas por cobrar a clientes',       'activo', 'debito'),   -- placeholder
('1010', 'Inventario',                          'activo', 'debito'),
('1011', 'Inventario disponible',               'activo', 'debito'),
('1012', 'Inventario en tránsito',              'activo', 'debito'),
('1013', 'Inventario pendiente de devolución',  'activo', 'debito'),
-- PASIVOS
('2000', 'Pasivo Corriente',                    'pasivo', 'credito'),
('2001', 'Tarjeta de crédito por pagar',        'pasivo', 'credito'),
('2002', 'Préstamos por pagar',                 'pasivo', 'credito'),   -- placeholder
('2003', 'Cuentas por pagar a proveedores',     'pasivo', 'credito'),   -- placeholder
('2004', 'ITBIS por pagar',                     'pasivo', 'credito'),
('2005', 'ITBIS crédito fiscal',                'pasivo', 'debito'),    -- naturaleza débito: reduce el pasivo de ITBIS
('2006', 'Comisiones pendientes a couriers',    'pasivo', 'credito'),
-- PATRIMONIO
('3000', 'Patrimonio',                          'patrimonio', 'credito'),
('3001', 'Capital aportado',                    'patrimonio', 'credito'),
('3002', 'Aportes adicionales',                 'patrimonio', 'credito'),
('3003', 'Retiros del propietario',             'patrimonio', 'debito'),
('3004', 'Utilidades retenidas',                'patrimonio', 'credito'),
('3005', 'Resultado del ejercicio',             'patrimonio', 'credito'),
-- INGRESOS
('4000', 'Ingresos',                            'ingreso', 'credito'),
('4001', 'Ventas de productos',                 'ingreso', 'credito'),
('4002', 'Devoluciones sobre ventas',           'ingreso', 'debito'),   -- contra-ingreso: naturaleza débito
('4003', 'Otros ingresos',                      'ingreso', 'credito'),  -- placeholder
('4004', 'Recuperaciones',                      'ingreso', 'credito'),  -- placeholder
('4005', 'Bonificaciones de proveedores',       'ingreso', 'credito'),  -- placeholder
-- GASTOS — Costo de venta
('5000', 'Costo de Venta',                      'gasto', 'debito'),
('5001', 'Costo de mercancía vendida',          'gasto', 'debito'),
('5002', 'Aranceles',                           'gasto', 'debito'),
('5003', 'Flete internacional',                 'gasto', 'debito'),
('5004', 'Seguro',                              'gasto', 'debito'),
('5005', 'Transporte local hasta almacén',      'gasto', 'debito'),
-- GASTOS — Variables
('6000', 'Gastos Variables',                    'gasto', 'debito'),
('6001', 'Comisión courier',                    'gasto', 'debito'),
('6002', 'Empaque / material de embalaje',      'gasto', 'debito'),
('6003', 'Publicidad',                          'gasto', 'debito'),
('6004', 'Comisión pasarela de pago',           'gasto', 'debito'),     -- placeholder
-- GASTOS — Fijos
('7000', 'Gastos Fijos',                        'gasto', 'debito'),
('7001', 'Nómina',                              'gasto', 'debito'),
('7002', 'Alquiler',                            'gasto', 'debito'),
('7003', 'Internet',                            'gasto', 'debito'),
('7004', 'Electricidad',                        'gasto', 'debito'),
('7005', 'Software',                            'gasto', 'debito'),
('7006', 'Mentorías / contabilidad',            'gasto', 'debito'),
('7007', 'Dominio / hosting',                   'gasto', 'debito'),
-- GASTOS — Extraordinarios
('8000', 'Gastos Extraordinarios',              'gasto', 'debito'),
('8001', 'Pérdidas de inventario',              'gasto', 'debito'),
('8002', 'Ajustes de inventario',               'gasto', 'debito');

-- Subcuentas — asignar cuenta_padre_id
UPDATE catalogo_cuentas SET cuenta_padre_id = (SELECT id FROM catalogo_cuentas WHERE codigo = '1000')
    WHERE codigo IN ('1001','1002','1003','1004','1010');

UPDATE catalogo_cuentas SET cuenta_padre_id = (SELECT id FROM catalogo_cuentas WHERE codigo = '1010')
    WHERE codigo IN ('1011','1012','1013');

UPDATE catalogo_cuentas SET cuenta_padre_id = (SELECT id FROM catalogo_cuentas WHERE codigo = '2000')
    WHERE codigo IN ('2001','2002','2003','2004','2005','2006');

UPDATE catalogo_cuentas SET cuenta_padre_id = (SELECT id FROM catalogo_cuentas WHERE codigo = '3000')
    WHERE codigo IN ('3001','3002','3003','3004','3005');

UPDATE catalogo_cuentas SET cuenta_padre_id = (SELECT id FROM catalogo_cuentas WHERE codigo = '4000')
    WHERE codigo IN ('4001','4002','4003','4004','4005');

UPDATE catalogo_cuentas SET cuenta_padre_id = (SELECT id FROM catalogo_cuentas WHERE codigo = '5000')
    WHERE codigo IN ('5001','5002','5003','5004','5005');

UPDATE catalogo_cuentas SET cuenta_padre_id = (SELECT id FROM catalogo_cuentas WHERE codigo = '6000')
    WHERE codigo IN ('6001','6002','6003','6004');

UPDATE catalogo_cuentas SET cuenta_padre_id = (SELECT id FROM catalogo_cuentas WHERE codigo = '7000')
    WHERE codigo IN ('7001','7002','7003','7004','7005','7006','7007');

UPDATE catalogo_cuentas SET cuenta_padre_id = (SELECT id FROM catalogo_cuentas WHERE codigo = '8000')
    WHERE codigo IN ('8001','8002');

-- =============================================================================
-- DATOS SEMILLA — Catálogo de tipos de evento (basado en plano-maestro-eventos.md)
-- =============================================================================

INSERT INTO event_types (codigo, nombre, genera_asiento, genera_inventario) VALUES
('COMPRA_LOCAL',                'Compra local',                     true,  true),
('COMPRA_IMPORTACION',          'Compra importación',               true,  true),
('IMPORTACION_RECIBIDA',        'Importación recibida',             true,  true),
('AJUSTE_COSTO_TARDIO',         'Ajuste de costo tardío',           true,  true),
('PEDIDO_CONFIRMADO',           'Pedido confirmado',                false, false),
('VENTA_ENTREGADA',             'Venta entregada',                  true,  true),
('LIQUIDACION_COURIER',         'Liquidación courier',              true,  false),
('PEDIDO_CANCELADO_EN_TRANSITO','Cancelado en tránsito',            false, true),
('DEVOLUCION_CONFIRMADA',       'Devolución confirmada',            true,  true),
('PAGO_TARJETA',                'Pago tarjeta',                     true,  false),
('APORTE_CAPITAL',              'Aporte de capital',                true,  false),
('RETIRO_CAPITAL',              'Retiro de capital',                true,  false),
('CIERRE_PERIODO',              'Cierre de periodo',                true,  false),
('REVERSION',                   'Reversión de asiento',             true,  false);

-- =============================================================================
-- DATOS SEMILLA — Centros de costo
-- =============================================================================

INSERT INTO centros_costo (codigo, nombre) VALUES
('PUBLICIDAD',      'Publicidad'),
('MENTORIA',        'Mentoría'),
('SOFTWARE',        'Software'),
('OPERACION',       'Operación'),
('IMPORTACIONES',   'Importaciones'),
('ADMINISTRACION',  'Administración');
