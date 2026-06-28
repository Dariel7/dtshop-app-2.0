ALTER TABLE sync_state
  ADD COLUMN IF NOT EXISTS sync_activo boolean NOT NULL DEFAULT true;
