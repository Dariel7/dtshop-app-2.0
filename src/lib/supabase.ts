import { createClient } from '@supabase/supabase-js'

const url  = process.env.NEXT_PUBLIC_SUPABASE_URL!
const key  = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!

export const supabase = createClient(url, key)

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
