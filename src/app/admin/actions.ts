'use server'
import { getSupabaseServer } from '@/lib/supabase'

export async function getSyncStatus(): Promise<boolean> {
  const sb = getSupabaseServer()
  const { data } = await sb
    .from('sync_state')
    .select('sync_activo')
    .eq('id', 1)
    .single()
  return data?.sync_activo ?? true
}

export async function toggleSync(activate: boolean): Promise<{ ok: boolean; error?: string }> {
  const sb = getSupabaseServer()
  const { error } = await sb
    .from('sync_state')
    .update({ sync_activo: activate })
    .eq('id', 1)
  if (error) return { ok: false, error: error.message }
  return { ok: true }
}
