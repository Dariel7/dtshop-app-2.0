import { createClient, SupabaseClient } from '@supabase/supabase-js'

// ── Cliente servidor (service_role — solo para Server Components) ────────────
let _server: SupabaseClient | null = null

export function getSupabaseServer(): SupabaseClient {
  if (!_server) {
    const url = process.env.NEXT_PUBLIC_SUPABASE_URL || 'https://placeholder.supabase.co'
    // Usa service_role si está disponible (server-side), si no cae a anon
    const key = process.env.SUPABASE_SERVICE_ROLE_KEY
           || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
           || 'placeholder-key'
    _server = createClient(url, key, { auth: { persistSession: false } })
  }
  return _server
}

// ── Cliente browser (anon — para 'use client' components) ───────────────────
let _client: SupabaseClient | null = null

export function getSupabase(): SupabaseClient {
  if (!_client) {
    const url = process.env.NEXT_PUBLIC_SUPABASE_URL || 'https://placeholder.supabase.co'
    const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || 'placeholder-key'
    _client = createClient(url, key)
  }
  return _client
}

// supabase proxy — Server Components usan getSupabaseServer() directamente
export const supabase = new Proxy({} as SupabaseClient, {
  get(_, prop) {
    return (getSupabaseServer() as unknown as Record<string | symbol, unknown>)[prop]
  },
})

// ── helpers de formato ──────────────────────────────────────────────────────

export function fmt(n: number | null | undefined, decimals = 2): string {
  if (n == null) return '—'
  return new Intl.NumberFormat('es-DO', {
    style: 'decimal',
    minimumFractionDigits: decimals,
    maximumFractionDigits: decimals,
  }).format(n)
}

export function fmtMes(mes: string): string {
  const [y, m] = mes.split('-')
  const nombres = ['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic']
  return `${nombres[parseInt(m) - 1]} ${y}`
}

export function mesActual(): string {
  return new Date().toISOString().slice(0, 7)
}
