export const dynamic = 'force-dynamic'
import { getSyncStatus } from './actions'
import SyncToggle from './SyncToggle'
import { supabase, fmt } from '@/lib/supabase'

async function getSyncStats() {
  const [state, lastLogs] = await Promise.all([
    supabase.from('sync_state').select('*').eq('id', 1).single(),
    supabase
      .from('sync_log')
      .select('ejecutado_en, filas_leidas, pedidos_nuevos, estados_cambiados, errores, duracion_ms')
      .order('ejecutado_en', { ascending: false })
      .limit(10),
  ])
  return {
    state: state.data,
    logs: lastLogs.data ?? [],
  }
}

export default async function AdminPage() {
  const [syncActive, { state, logs }] = await Promise.all([
    getSyncStatus(),
    getSyncStats(),
  ])

  return (
    <div className="space-y-6">
      <h1 className="text-xl font-bold text-gray-900">Administración</h1>

      {/* Sync control */}
      <div className="card space-y-4">
        <h2 className="font-semibold text-gray-800">Sincronización con Google Sheets</h2>

        <SyncToggle initialActive={syncActive} />

        {state && (
          <div className="grid grid-cols-2 sm:grid-cols-3 gap-3 pt-2 border-t border-gray-100 text-sm">
            <div>
              <p className="text-xs text-gray-400 uppercase tracking-wide">Último # sincronizado</p>
              <p className="font-medium text-gray-800">{state.ultimo_num_sincronizado ?? '—'}</p>
            </div>
            <div>
              <p className="text-xs text-gray-400 uppercase tracking-wide">Última ejecución</p>
              <p className="font-medium text-gray-800">
                {state.ultima_ejecucion
                  ? new Date(state.ultima_ejecucion).toLocaleString('es-DO')
                  : '—'}
              </p>
            </div>
            <div>
              <p className="text-xs text-gray-400 uppercase tracking-wide">Inicio del sync</p>
              <p className="font-medium text-gray-800">
                {state.fecha_inicio_sync
                  ? new Date(state.fecha_inicio_sync).toLocaleString('es-DO')
                  : '—'}
              </p>
            </div>
          </div>
        )}
      </div>

      {/* Últimas ejecuciones */}
      <div className="card">
        <h2 className="font-semibold text-gray-800 mb-3">Últimas ejecuciones</h2>
        {logs.length === 0 ? (
          <p className="text-sm text-gray-400">Sin registros aún.</p>
        ) : (
          <table className="w-full text-sm">
            <thead>
              <tr className="border-b border-gray-100">
                <th className="th">Hora</th>
                <th className="th text-right">Filas</th>
                <th className="th text-right">Nuevos</th>
                <th className="th text-right">Cambios</th>
                <th className="th text-right">Errores</th>
                <th className="th text-right">Duración</th>
              </tr>
            </thead>
            <tbody>
              {logs.map((l: {
                ejecutado_en: string
                filas_leidas: number
                pedidos_nuevos: number
                estados_cambiados: number
                errores: number
                duracion_ms: number
              }) => (
                <tr key={l.ejecutado_en} className="border-b border-gray-50 tr-hover">
                  <td className="td">{new Date(l.ejecutado_en).toLocaleString('es-DO')}</td>
                  <td className="td text-right">{l.filas_leidas}</td>
                  <td className="td text-right">{l.pedidos_nuevos}</td>
                  <td className="td text-right">{l.estados_cambiados}</td>
                  <td className="td text-right">
                    {l.errores > 0
                      ? <span className="badge-err">{l.errores}</span>
                      : <span className="badge-ok">0</span>}
                  </td>
                  <td className="td text-right text-gray-400">{fmt(l.duracion_ms / 1000, 1)}s</td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>
    </div>
  )
}
