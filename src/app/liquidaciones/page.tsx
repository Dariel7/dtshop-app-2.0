export const dynamic = 'force-dynamic'
import { supabase, fmt } from '@/lib/supabase'
import { fmtFecha } from '@/lib/utils'
import Link from 'next/link'

export default async function Liquidaciones() {
  const { data: liq } = await supabase
    .from('liquidaciones')
    .select('id,fecha,monto_recaudado_total,monto_entregado_neto,comision_total,canales_cobro(nombre)')
    .order('fecha', { ascending: false })
    .limit(50)

  const { data: cxc } = await supabase
    .from('vista_cxc_antiguedad')
    .select('*')
    .limit(100)

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h1 className="text-xl font-bold">Liquidaciones</h1>
        <Link href="/liquidaciones/nueva" className="btn-primary">+ Liquidar courier</Link>
      </div>

      {/* CxC pendientes */}
      {(cxc ?? []).length > 0 && (
        <div className="card p-0 overflow-hidden">
          <div className="card-header-warn">
            Pendientes de cobro — {(cxc ?? []).length} pedidos
          </div>
          <table className="w-full">
            <thead className="table-head">
              <tr>
                <th className="th">Courier</th>
                <th className="th">Pedido</th>
                <th className="th">F. entrega</th>
                <th className="th">Antigüedad</th>
                <th className="th text-right">Monto</th>
              </tr>
            </thead>
            <tbody className="table-divider">
              {(cxc ?? []).map((c: {
                courier: string; pedido_id: string; fecha_entrega: string;
                dias_pendientes: number; monto: number; tramo_antigüedad: string;
              }) => (
                <tr key={c.pedido_id} className="tr-hover">
                  <td className="td font-medium">{c.courier}</td>
                  <td className="td font-mono text-xs text-faint">{c.pedido_id.slice(0, 8)}</td>
                  <td className="td text-muted">{fmtFecha(c.fecha_entrega)}</td>
                  <td className="td">
                    <span className={
                      c.dias_pendientes > 15 ? 'badge-err' :
                      c.dias_pendientes > 7  ? 'badge-warn' : 'badge-ok'
                    }>{c.tramo_antigüedad}</span>
                  </td>
                  <td className="td text-right font-medium">RD$ {fmt(c.monto)}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}

      {/* Historial */}
      <div className="card p-0 overflow-hidden">
        <div className="card-header">Historial de liquidaciones</div>
        {(liq ?? []).length === 0 ? (
          <p className="empty-state">Sin liquidaciones registradas.</p>
        ) : (
          <table className="w-full">
            <thead className="table-head">
              <tr>
                <th className="th">Fecha</th>
                <th className="th">Courier</th>
                <th className="th text-right">Recaudado</th>
                <th className="th text-right">Comisión</th>
                <th className="th text-right">Neto recibido</th>
              </tr>
            </thead>
            <tbody className="table-divider">
              {(liq ?? []).map((l: {
                id: string; fecha: string; monto_recaudado_total: number;
                monto_entregado_neto: number; comision_total: number;
                canales_cobro: { nombre: string }[] | null;
              }) => (
                <tr key={l.id} className="tr-hover">
                  <td className="td text-muted">{fmtFecha(l.fecha)}</td>
                  <td className="td font-medium">
                    {(Array.isArray(l.canales_cobro) ? l.canales_cobro[0]?.nombre : (l.canales_cobro as { nombre: string } | null)?.nombre) ?? '—'}
                  </td>
                  <td className="td text-right text-muted">RD$ {fmt(l.monto_recaudado_total)}</td>
                  <td className="td text-right" style={{color:'var(--red)'}}>− RD$ {fmt(l.comision_total)}</td>
                  <td className="td text-right font-semibold" style={{color:'var(--green)'}}>RD$ {fmt(l.monto_entregado_neto)}</td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>
    </div>
  )
}
