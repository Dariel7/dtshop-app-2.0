export const dynamic = 'force-dynamic'
import { getSyncStatus, getSheetId } from './actions'
import SyncToggle from './SyncToggle'
import SheetConfig from './SheetConfig'
import ExportButtons from './ExportButtons'
import ImportProductos from './ImportProductos'
import { supabase, fmt } from '@/lib/supabase'
import { fmtFecha } from '@/lib/utils'

async function getSyncStats() {
  const [state, lastLogs, errores] = await Promise.all([
    supabase.from('sync_state').select('*').eq('id', 1).single(),
    supabase.from('sync_log')
      .select('ejecutado_en,filas_leidas,pedidos_nuevos,estados_cambiados,errores,duracion_ms')
      .order('ejecutado_en', { ascending: false }).limit(15),
    supabase.from('sync_errors')
      .select('pedido_num,columna,mensaje,created_at')
      .eq('resuelto', false).order('created_at', { ascending: false }).limit(20),
  ])
  return { state: state.data, logs: lastLogs.data ?? [], errores: errores.data ?? [] }
}

export default async function AdminPage() {
  const [syncActive, sheetId, { state, logs, errores }] = await Promise.all([
    getSyncStatus(),
    getSheetId(),
    getSyncStats(),
  ])

  return (
    <div className="space-y-6 max-w-4xl">
      <h1 className="text-xl font-bold">Administración</h1>

      {/* ── Sync ─────────────────────────────────────────────────────── */}
      <div className="card space-y-5">
        <div className="flex items-start justify-between gap-4">
          <div>
            <h2 className="font-semibold">Sincronización con Google Sheets</h2>
            <p className="text-xs text-faint mt-0.5">Lee el Sheet cada 1 minuto y actualiza pedidos automáticamente</p>
          </div>
          <SyncToggle initialActive={syncActive} />
        </div>

        <div style={{borderTop:'1px solid var(--border)'}} className="pt-4 space-y-2">
          <label className="label">Google Sheet vinculado</label>
          <SheetConfig initialId={sheetId} />
        </div>

        {state && (
          <div className="grid grid-cols-2 sm:grid-cols-4 gap-3 pt-3" style={{borderTop:'1px solid var(--border)'}}>
            <div>
              <p className="text-xs text-faint uppercase tracking-wide">Último # sync</p>
              <p className="font-semibold mt-0.5">{state.ultimo_num_sincronizado ?? '—'}</p>
            </div>
            <div>
              <p className="text-xs text-faint uppercase tracking-wide">Última ejecución</p>
              <p className="font-semibold mt-0.5">
                {state.ultima_ejecucion
                  ? new Date(state.ultima_ejecucion).toLocaleTimeString('es-DO', { hour: '2-digit', minute: '2-digit' })
                  : '—'}
              </p>
            </div>
            <div>
              <p className="text-xs text-faint uppercase tracking-wide">Nuevos (último)</p>
              <p className="font-semibold mt-0.5" style={{color:'var(--indigo-hover)'}}>
                {logs[0]?.pedidos_nuevos ?? 0}
              </p>
            </div>
            <div>
              <p className="text-xs text-faint uppercase tracking-wide">Errores pendientes</p>
              <p className="font-semibold mt-0.5" style={{color: errores.length > 0 ? 'var(--red)' : 'var(--green)'}}>
                {errores.length}
              </p>
            </div>
          </div>
        )}
      </div>

      {/* ── Errores sin resolver ──────────────────────────────────────── */}
      {errores.length > 0 && (
        <div className="card p-0 overflow-hidden">
          <div className="card-header-warn">Errores sin resolver — {errores.length}</div>
          <table className="w-full">
            <thead className="table-head">
              <tr>
                <th className="th">Pedido #</th>
                <th className="th">Mensaje</th>
                <th className="th">Fecha</th>
              </tr>
            </thead>
            <tbody className="table-divider">
              {errores.map((e: { pedido_num: number | null; columna: string | null; mensaje: string; created_at: string }, i) => (
                <tr key={i} className="tr-hover">
                  <td className="td font-mono text-xs">{e.pedido_num ?? '—'}</td>
                  <td className="td text-muted">{e.mensaje}</td>
                  <td className="td text-faint text-xs">{fmtFecha(e.created_at)}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}

      {/* ── Exportar datos ────────────────────────────────────────────── */}
      <div className="card space-y-3">
        <div>
          <h2 className="font-semibold">Exportar datos</h2>
          <p className="text-xs text-faint mt-0.5">Descarga los datos actuales en formato CSV</p>
        </div>
        <ExportButtons />
      </div>

      {/* ── Importar productos ────────────────────────────────────────── */}
      <div className="card space-y-4">
        <div>
          <h2 className="font-semibold">Importar productos</h2>
          <p className="text-xs text-faint mt-0.5">
            Sube un CSV con columnas: <span className="font-mono text-muted">nombre, precio_venta, costo, stock</span>.
            Se muestra una vista previa antes de confirmar — nada se guarda hasta que apruebes.
          </p>
        </div>
        <ImportProductos />
      </div>

      {/* ── Historial de ejecuciones ──────────────────────────────────── */}
      <div className="card p-0 overflow-hidden">
        <div className="card-header">Historial de sync</div>
        {logs.length === 0 ? (
          <p className="empty-state">Sin registros aún.</p>
        ) : (
          <table className="w-full">
            <thead className="table-head">
              <tr>
                <th className="th">Hora</th>
                <th className="th text-right">Filas</th>
                <th className="th text-right">Nuevos</th>
                <th className="th text-right">Cambios</th>
                <th className="th text-right">Errores</th>
                <th className="th text-right">Duración</th>
              </tr>
            </thead>
            <tbody className="table-divider">
              {logs.map((l: {
                ejecutado_en: string; filas_leidas: number; pedidos_nuevos: number
                estados_cambiados: number; errores: number; duracion_ms: number
              }) => (
                <tr key={l.ejecutado_en} className="tr-hover">
                  <td className="td text-muted">
                    {new Date(l.ejecutado_en).toLocaleString('es-DO', {
                      month: 'short', day: '2-digit', hour: '2-digit', minute: '2-digit'
                    })}
                  </td>
                  <td className="td text-right text-muted">{l.filas_leidas}</td>
                  <td className="td text-right">
                    {l.pedidos_nuevos > 0
                      ? <span className="font-medium" style={{color:'var(--indigo-hover)'}}>+{l.pedidos_nuevos}</span>
                      : <span className="text-faint">0</span>}
                  </td>
                  <td className="td text-right">
                    {l.estados_cambiados > 0
                      ? <span className="font-medium" style={{color:'var(--amber)'}}>{l.estados_cambiados}</span>
                      : <span className="text-faint">0</span>}
                  </td>
                  <td className="td text-right">
                    {l.errores > 0
                      ? <span className="badge-err">{l.errores}</span>
                      : <span className="text-faint">0</span>}
                  </td>
                  <td className="td text-right text-faint text-xs">{fmt(l.duracion_ms / 1000, 1)}s</td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>
    </div>
  )
}
