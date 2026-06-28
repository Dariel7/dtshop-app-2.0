-- Tablas de soporte para la sincronización con Google Sheets
-- y columnas adicionales en pedidos

-- ── Columnas adicionales en pedidos ─────────────────────────────────────────
ALTER TABLE pedidos
  ADD COLUMN IF NOT EXISTS direccion                   text,
  ADD COLUMN IF NOT EXISTS referencia_chat             text,
  ADD COLUMN IF NOT EXISTS ultima_actualizacion_sheet  timestamptz;

-- ── Tabla: sync_log (una fila por ejecución del sync) ───────────────────────
CREATE TABLE IF NOT EXISTS sync_log (
    id              uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    ejecutado_en    timestamptz NOT NULL DEFAULT now(),
    filas_leidas    integer NOT NULL DEFAULT 0,
    pedidos_nuevos  integer NOT NULL DEFAULT 0,
    estados_cambiados integer NOT NULL DEFAULT 0,
    errores         integer NOT NULL DEFAULT 0,
    duracion_ms     integer,
    detalle         jsonb   -- resumen de cambios aplicados
);

-- ── Tabla: sync_state (punto de corte y estado global del sync) ──────────────
CREATE TABLE IF NOT EXISTS sync_state (
    id                              integer PRIMARY KEY DEFAULT 1,   -- singleton
    ultimo_num_sincronizado         integer,   -- se detecta automáticamente en primera ejecución
    fecha_inicio_sync               timestamptz,
    ultima_ejecucion                timestamptz,
    CONSTRAINT sync_state_singleton CHECK (id = 1)
);

-- Fila única
INSERT INTO sync_state (id) VALUES (1) ON CONFLICT DO NOTHING;

-- ── Tabla: sync_errors (errores por fila, para corrección manual) ────────────
CREATE TABLE IF NOT EXISTS sync_errors (
    id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    sync_log_id uuid REFERENCES sync_log(id),
    pedido_num  integer,
    columna     text,
    mensaje     text NOT NULL,
    fila_raw    jsonb,  -- copia de la fila del Sheet tal como llegó
    resuelto    boolean NOT NULL DEFAULT false,
    created_at  timestamptz NOT NULL DEFAULT now()
);

-- ── Índices ──────────────────────────────────────────────────────────────────
CREATE INDEX IF NOT EXISTS idx_sync_log_ejecutado_en ON sync_log(ejecutado_en DESC);
CREATE INDEX IF NOT EXISTS idx_sync_errors_pedido_num ON sync_errors(pedido_num);
CREATE INDEX IF NOT EXISTS idx_sync_errors_resuelto ON sync_errors(resuelto) WHERE NOT resuelto;

-- ── RLS ──────────────────────────────────────────────────────────────────────
ALTER TABLE sync_log    ENABLE ROW LEVEL SECURITY;
ALTER TABLE sync_state  ENABLE ROW LEVEL SECURITY;
ALTER TABLE sync_errors ENABLE ROW LEVEL SECURITY;

CREATE POLICY "anon_read"    ON sync_log    FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read"    ON sync_state  FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read"    ON sync_errors FOR SELECT TO anon USING (true);
CREATE POLICY "service_all"  ON sync_log    FOR ALL TO service_role USING (true);
CREATE POLICY "service_all"  ON sync_state  FOR ALL TO service_role USING (true);
CREATE POLICY "service_all"  ON sync_errors FOR ALL TO service_role USING (true);

-- ── pg_cron: programar el sync cada 1 minuto ─────────────────────────────────
-- IMPORTANTE: ejecutar este bloque manualmente en el SQL Editor de Supabase
-- después de desplegar el Edge Function y guardar ANON_KEY en Vault.
--
-- Paso previo (SQL Editor):
--   SELECT vault.create_secret('anon_key', 'eyJ...tu-anon-key-aquí...');
--
-- Luego ejecutar:
-- SELECT cron.schedule(
--   'sync-pedidos-sheet',
--   '* * * * *',
--   $$
--   SELECT net.http_post(
--     url     := 'https://lmfhyhaqysbrpswwwwnt.supabase.co/functions/v1/sync-pedidos-sheet',
--     headers := jsonb_build_object(
--       'Content-Type',  'application/json',
--       'Authorization', 'Bearer ' || (SELECT decrypted_secret FROM vault.decrypted_secrets WHERE name = 'anon_key')
--     ),
--     body    := '{}'::jsonb
--   )
--   $$
-- );
