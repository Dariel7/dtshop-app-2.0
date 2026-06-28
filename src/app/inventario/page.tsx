export const dynamic = 'force-dynamic'
import { supabase, fmt, mesActual } from '@/lib/supabase'

export default async function Inventario() {
  const mes = mesActual()
  const { data: productos } = await supabase
    .from('productos')
    .select('id,nombre,sku,precio_venta,costo_promedio_actual,stock_disponible,activo')
    .order('nombre')

  const valorTotal = (productos ?? []).reduce(
    (s: number, p: { stock_disponible: number; costo_promedio_actual: number }) =>
      s + (p.stock_disponible * (p.costo_promedio_actual ?? 0)), 0
  )

  const { data: detalle } = await supabase.rpc('reporte_detalle_inventario', { p_hasta_periodo: mes })

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between">
        <h1 className="text-xl font-bold">Inventario</h1>
        <span className="text-sm text-muted">
          Valor total: <strong className="text-white">RD$ {fmt(valorTotal)}</strong>
        </span>
      </div>

      <div className="card p-0 overflow-hidden">
        {(detalle ?? []).length === 0 ? (
          <p className="empty-state">Sin productos registrados.</p>
        ) : (
          <table className="w-full">
            <thead className="table-head">
              <tr>
                <th className="th">Producto</th>
                <th className="th text-faint">SKU</th>
                <th className="th text-right">Disponible</th>
                <th className="th text-right">En tránsito</th>
                <th className="th text-right">Pend. devolución</th>
                <th className="th text-right">Costo prom.</th>
                <th className="th text-right">Precio venta</th>
                <th className="th text-right">Valor almacén</th>
              </tr>
            </thead>
            <tbody className="table-divider">
              {(detalle ?? []).map((p: {
                producto: string; disponible: number; en_transito: number;
                pend_devolucion: number; costo_promedio: number; valor_total: number;
              }) => {
                const prod = (productos ?? []).find((x: { nombre: string }) => x.nombre === p.producto)
                return (
                  <tr key={p.producto} className="tr-hover">
                    <td className="td font-medium">{p.producto}</td>
                    <td className="td font-mono text-xs text-faint">{prod?.sku ?? '—'}</td>
                    <td className="td text-right">
                      <span className={p.disponible <= 2 ? 'badge-err' : p.disponible <= 5 ? 'badge-warn' : 'badge-ok'}>
                        {p.disponible}
                      </span>
                    </td>
                    <td className="td text-right text-muted">{p.en_transito || '—'}</td>
                    <td className="td text-right" style={{color: p.pend_devolucion ? 'var(--red)' : 'var(--text-3)'}}>
                      {p.pend_devolucion || '—'}
                    </td>
                    <td className="td text-right text-muted">RD$ {fmt(p.costo_promedio)}</td>
                    <td className="td text-right text-muted">RD$ {fmt(prod?.precio_venta)}</td>
                    <td className="td text-right font-medium">RD$ {fmt(p.valor_total)}</td>
                  </tr>
                )
              })}
            </tbody>
            <tfoot>
              <tr style={{borderTop: '1px solid var(--border)', background: 'var(--bg-subtle)'}}>
                <td colSpan={7} className="td font-semibold text-right text-muted">Total valor en almacén</td>
                <td className="td text-right font-bold" style={{color: 'var(--indigo-hover)'}}>RD$ {fmt(valorTotal)}</td>
              </tr>
            </tfoot>
          </table>
        )}
      </div>
    </div>
  )
}
