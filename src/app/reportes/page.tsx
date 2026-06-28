'use client'
import { useState } from 'react'
import { getSupabase } from '@/lib/supabase'
import { fmt, fmtMes, mesActual } from '@/lib/supabase'

type Fila = { linea?: string; seccion?: string; actividad?: string; cuenta?: string; descripcion?: string; monto: number; es_subtotal: boolean }

function TablaReporte({ filas }: { filas: Fila[] }) {
  return (
    <table className="w-full">
      <tbody className="table-divider">
        {filas.map((f, i) => {
          const label = f.linea ?? f.seccion ?? f.actividad ?? f.descripcion ?? '—'
          const cuenta = 'cuenta' in f ? f.cuenta : ('descripcion' in f ? f.descripcion : label)
          return (
            <tr key={i} style={f.es_subtotal ? { background: 'var(--bg-subtle)' } : {}}>
              <td className="px-4 py-2 text-sm" style={{color: f.es_subtotal ? 'var(--text-1)' : 'var(--text-2)', fontWeight: f.es_subtotal ? 600 : 400}}>
                {cuenta ?? label}
              </td>
              <td className="px-4 py-2 text-sm text-right font-medium" style={{
                color: f.es_subtotal
                  ? (f.monto >= 0 ? 'var(--green)' : 'var(--red)')
                  : 'var(--text-2)'
              }}>
                {f.monto == null ? '' : `RD$ ${fmt(f.monto)}`}
              </td>
            </tr>
          )
        })}
      </tbody>
    </table>
  )
}

const TABS = [
  { key: 'resultados', label: 'Estado de Resultados' },
  { key: 'balance',    label: 'Balance General' },
  { key: 'flujo',      label: 'Flujo de Caja' },
  { key: 'capital',    label: 'Capital de Trabajo' },
] as const

export default function Reportes() {
  const [tab,      setTab]      = useState<typeof TABS[number]['key']>('resultados')
  const [mes,      setMes]      = useState(mesActual())
  const [filas,    setFilas]    = useState<Fila[]>([])
  const [cargando, setCargando] = useState(false)

  async function cargar() {
    setCargando(true)
    const sb = getSupabase()
    let data: Fila[] = []
    if (tab === 'resultados') {
      const { data: d } = await sb.rpc('reporte_estado_resultados', { p_periodo_inicio: mes })
      data = d ?? []
    } else if (tab === 'balance') {
      const { data: d } = await sb.rpc('reporte_balance_general', { p_hasta_periodo: mes })
      data = d ?? []
    } else if (tab === 'flujo') {
      const { data: d } = await sb.rpc('reporte_flujo_caja', { p_periodo_inicio: mes })
      data = d ?? []
    } else {
      const { data: d } = await sb.rpc('reporte_capital_trabajo', { p_hasta_periodo: mes })
      data = d ?? []
    }
    setFilas(data)
    setCargando(false)
  }

  return (
    <div className="space-y-4 max-w-2xl">
      <h1 className="text-xl font-bold">Reportes</h1>

      {/* Tabs */}
      <div className="flex gap-1 p-1 rounded-lg" style={{background:'var(--bg-subtle)'}}>
        {TABS.map(t => (
          <button key={t.key} type="button"
            onClick={() => { setTab(t.key); setFilas([]) }}
            className={`flex-1 py-1.5 text-xs font-medium rounded-md transition-colors ${
              tab === t.key
                ? 'bg-indigo-600 text-white shadow'
                : 'text-muted hover:text-white'
            }`}>
            {t.label}
          </button>
        ))}
      </div>

      {/* Selector de mes + botón */}
      <div className="flex gap-3 items-end">
        <div className="flex-1">
          <label className="label">Periodo</label>
          <input className="input" type="month" value={mes} onChange={e => setMes(e.target.value)} />
        </div>
        <button className="btn-primary" onClick={cargar} disabled={cargando}>
          {cargando ? 'Cargando...' : 'Generar'}
        </button>
      </div>

      {/* Resultado */}
      {filas.length > 0 && (
        <div className="card p-0 overflow-hidden">
          <div className="card-header">
            {TABS.find(t => t.key === tab)?.label} — {fmtMes(mes)}
          </div>
          <TablaReporte filas={filas} />
        </div>
      )}

      {!cargando && filas.length === 0 && (
        <p className="text-sm text-faint text-center py-8">Selecciona un periodo y presiona Generar.</p>
      )}
    </div>
  )
}
