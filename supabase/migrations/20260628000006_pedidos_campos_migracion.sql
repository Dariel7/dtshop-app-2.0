-- Columnas adicionales para soportar la migración de datos históricos
-- y los flags definidos en nivel1-procesos-negocio.md

ALTER TABLE pedidos
  ADD COLUMN IF NOT EXISTS es_testeo          boolean NOT NULL DEFAULT false,
  ADD COLUMN IF NOT EXISTS es_prueba_interna  boolean NOT NULL DEFAULT false,
  ADD COLUMN IF NOT EXISTS estado_original    text,       -- estado tal como venía del sistema anterior
  ADD COLUMN IF NOT EXISTS costo_envio        numeric(18,4) NOT NULL DEFAULT 0,
  ADD COLUMN IF NOT EXISTS ciudad             text,
  ADD COLUMN IF NOT EXISTS provincia          text,
  ADD COLUMN IF NOT EXISTS recaudo_estado     text NOT NULL DEFAULT 'PENDIENTE'
                                                CHECK (recaudo_estado IN ('PENDIENTE','RECAUDADO')),
  ADD COLUMN IF NOT EXISTS recaudo_fecha      date,
  ADD COLUMN IF NOT EXISTS pedido_num         integer UNIQUE;  -- número secuencial del sistema anterior

-- Índices útiles para filtrar en reportes
CREATE INDEX IF NOT EXISTS idx_pedidos_es_testeo         ON pedidos(es_testeo);
CREATE INDEX IF NOT EXISTS idx_pedidos_es_prueba_interna ON pedidos(es_prueba_interna);
CREATE INDEX IF NOT EXISTS idx_pedidos_pedido_num        ON pedidos(pedido_num);

-- Unique constraint en canales_cobro.nombre (necesario para upsert en migración)
DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_constraint WHERE conname = 'canales_cobro_nombre_unique'
  ) THEN
    ALTER TABLE canales_cobro ADD CONSTRAINT canales_cobro_nombre_unique UNIQUE (nombre);
  END IF;
END $$;
