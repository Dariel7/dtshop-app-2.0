export const dynamic = 'force-dynamic'
import Link from 'next/link'
import { supabase, fmt } from '@/lib/supabase'
import { fmtFecha } from '@/lib/utils'

export default async function Compras() {
  const { data: movs } = await supabase
    .from('movimientos_inventario')
    .select('id,tipo,origen_evento,cantidad,costo_unitario,costo_es_estimado,estado,created_at,productos(nombre)')
    .in('tipo', ['COMPRA', 'IMPORTACION', 'AJUSTE'])
    .order('created_at', { ascending: false })
    .limit(80)

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between">
        <h1 className="text-xl font-bold">Compras</h1>
        <Link href="/compras/nueva" className="btn-primary">+ Nueva compra</Link>
      </div>

      <div className="card p-0 overflow-hidden">
        {(movs ?? []).length === 0 ? (
          <p className="empty-state">Sin compras registradas.</p>
        ) : (
          <table className="w-full">
            <thead className="table-head">
              <tr>
                <th className="th">Fecha</th>
                <th className="th">Producto</th>
                <th className="th">Tipo</th>
                <th className="th text-right">Cantidad</th>
                <th className="th text-right">Costo unit.</th>
                <th className="th text-right">Total</th>
                <th className="th">Estado</th>
              </tr>
            </thead>
            <tbody className="table-divider">
              {(movs ?? []).map((m: {
                id: string; tipo: string; origen_evento: string; cantidad: number;
                costo_unitario: number; costo_es_estimado: boolean; estado: string;
                created_at: string; productos: { nombre: string }[] | null;
              }) => (
                <tr key={m.id} className="tr-hover">
                  <td className="td text-muted">{fmtFecha(m.created_at)}</td>
                  <td className="td font-medium">
                    {Array.isArray(m.productos) ? m.productos[0]?.nombre : (m.productos as { nombre: string } | null)?.nombre ?? '—'}
                  </td>
                  <td className="td">
                    <span className={m.tipo === 'IMPORTACION' ? 'badge-warn' : m.tipo === 'AJUSTE' ? 'badge-neutral' : 'badge-ok'}>
                      {m.tipo === 'IMPORTACION' ? 'Importación' : m.tipo === 'COMPRA' ? 'Local' : 'Ajuste'}
                    </span>
                  </td>
                  <td className="td text-right">{m.cantidad}</td>
                  <td className="td text-right text-muted">
                    RD$ {fmt(m.costo_unitario)}
                    {m.costo_es_estimado && <span className="ml-1 text-xs" style={{color:'var(--amber)'}}>(est.)</span>}
                  </td>
                  <td className="td text-right font-medium">RD$ {fmt(m.cantidad * m.costo_unitario)}</td>
                  <td className="td">
                    <span className={m.estado === 'en_transito' ? 'badge-warn' : 'badge-ok'}>
                      {m.estado === 'en_transito' ? 'En tránsito' : 'Recibido'}
                    </span>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>
    </div>
  )
}
