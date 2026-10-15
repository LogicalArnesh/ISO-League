-- CricPulse Pro: PostgreSQL / Supabase Multi-Viewer Schema
CREATE TABLE IF NOT EXISTS public.cricpulse_series_store (
  series_id TEXT PRIMARY KEY DEFAULT 'default_series',
  series_name TEXT NOT NULL,
  payload JSONB NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE public.cricpulse_series_store ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Public Read Access"
  ON public.cricpulse_series_store
  FOR SELECT
  USING (true);

CREATE POLICY "Admin Upsert Access"
  ON public.cricpulse_series_store
  FOR ALL
  USING (true);
