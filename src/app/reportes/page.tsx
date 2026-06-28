'use client'
import { useState } from 'react'
import { supabase, fmt, fmtMes, mesActual } from '@/lib/supabase'

type Fila = { linea?: string; seccion?: string; actividad?: string; cuenta?: string; descripcion?: string; monto: number; es_subtotal: boolean }

function TablaReporte({ filas }: { filas: Fila[] }) {
  return (
    <table className="w-full">
      <tbody>
        {filas.map((f, i) => {
          const label = f.linea ?? f.seccion ?? f.actividad ?? f.descripcion ?? '—'
          const cuenta = 'cuenta' in f ? f.cuenta : ('descripcion' in f ? f.descripcion : label)
          return (
            <tr key={i} className={f.es_subtotal ? 'bg-gray-50 font-semibold border-t border-gray-200' : ''}>
              <td className="px-4 py-2 text-sm">{cuenta ?? label}</td>
              <td className={`px-4 py-2 text-sm text-right ${
                f.es_subtotal
                  ? (f.monto >= 0 ? 'text-green-700' : 'text-red-600')
                  : 'text-gray-700'
              }`}>
                {f.monto == null ? '' : `RD$ ${fmt(f.monto)}`}
              </td>
            </tr>
          )
        })}
      </tbody>
    </table>
  )
}

export default function Reportes() {
  const [tab,   setTab]   = useState<'resultados'|'balance'|'flujo'|'capital'>('resultados')
  const [mes,   setMes]   = useState(mesActual())
  const [filas, setFilas] = useState<Fila[]>([])
  const [cargando, setCargando] = useState(false)

  async function cargar() {
    setCargando(true)
    let data: Fila[] = []
    if (tab === 'resultados') {
      const { data: d } = await supabase.rpc('reporte_estado_resultados', { p_periodo_inicio: mes })
      data = d ?? []
    } else if (tab === 'balance') {
      const { data: d } = await supabase.rpc('reporte_balance_general', { p_hasta_periodo: mes })
      data = d ?? []
    } else if (tab === 'flujo') {
      const { data: d } = await supabase.rpc('reporte_flujo_caja', { p_periodo_inicio: mes })
      data = d ?? []
    } else {
      const { data: d } = await supabase.rpc('reporte_capital_trabajo', { p_hasta_periodo: mes })
      data = d ?? []
    }
    setFilas(data)
    setCargando(false)
  }

  const TABS = [
    { key: 'resultados', label: 'Estado de Resultados' },
    { key: 'balance',    label: 'Balance General' },
    { key: 'flujo',      label: 'Flujo de Caja' },
    { key: 'capital',    label: 'Capital de Trabajo' },
  ] as const

  return (
    <div className="space-y-4 max-w-2xl">
      <h1 className="text-xl font-bold">Reportes</h1>

      {/* Tabs */}
      <div className="flex gap-1 bg-gray-100 p-1 rounded-lg">
        {TABS.map(t => (
          <button key={t.key} type="button"
            onClick={() => { setTab(t.key); setFilas([]) }}
            className={`flex-1 py-1.5 text-xs font-medium rounded-md transition-colors ${
              tab === t.key ? 'bg-white shadow text-indigo-700' : 'text-gray-500 hover:text-gray-700'
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
          <div className="px-4 py-3 bg-gray-50 border-b border-gray-200">
            <h2 className="font-semibold">
              {TABS.find(t => t.key === tab)?.label} — {fmtMes(mes)}
            </h2>
          </div>
          <TablaReporte filas={filas} />
        </div>
      )}
    </div>
  )
}
