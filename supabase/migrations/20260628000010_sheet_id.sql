ALTER TABLE sync_state
  ADD COLUMN IF NOT EXISTS sheet_id text DEFAULT '1YvquHHGQuBifmtG0Dfut_TW54HYinvFU7ywW_E0s-HM';

UPDATE sync_state SET sheet_id = '1YvquHHGQuBifmtG0Dfut_TW54HYinvFU7ywW_E0s-HM' WHERE id = 1 AND sheet_id IS NULL;
