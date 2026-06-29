ALTER TABLE pedidos
  ADD COLUMN IF NOT EXISTS es_novedad boolean NOT NULL DEFAULT false;

COMMENT ON COLUMN pedidos.es_novedad IS
  'Indica que hay un inconveniente activo con la entrega (cliente no contesta, dirección incorrecta, intento fallido, etc.). Se extrae del texto del estado en el Sheet cuando contiene "NOVEDAD".';

CREATE INDEX IF NOT EXISTS idx_pedidos_es_novedad ON pedidos(es_novedad) WHERE es_novedad = true;
