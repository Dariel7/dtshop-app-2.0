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
        <span className="text-sm text-gray-500">
          Valor total en almacén: <strong className="text-gray-900">RD$ {fmt(valorTotal)}</strong>
        </span>
      </div>

      {/* Tabla principal */}
      <div className="card p-0 overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-50 border-b border-gray-200">
            <tr>
              <th className="th">Producto</th>
              <th className="th">SKU</th>
              <th className="th text-right">Disponible</th>
              <th className="th text-right">En tránsito</th>
              <th className="th text-right">Pend. devolución</th>
              <th className="th text-right">Costo prom.</th>
              <th className="th text-right">Precio venta</th>
              <th className="th text-right">Valor almacén</th>
            </tr>
          </thead>
          <tbody className="divide-y divide-gray-100">
            {(detalle ?? []).map((p: {
              producto: string; disponible: number; en_transito: number;
              pend_devolucion: number; costo_promedio: number; valor_total: number;
            }) => {
              const prod = (productos ?? []).find((x: { nombre: string }) => x.nombre === p.producto)
              return (
                <tr key={p.producto} className="tr-hover">
                  <td className="td font-medium">{p.producto}</td>
                  <td className="td text-gray-400 font-mono text-xs">{prod?.sku ?? '—'}</td>
                  <td className="td text-right">
                    <span className={p.disponible <= 2 ? 'badge-err' : p.disponible <= 5 ? 'badge-warn' : 'badge-ok'}>
                      {p.disponible}
                    </span>
                  </td>
                  <td className="td text-right text-amber-600">{p.en_transito || '—'}</td>
                  <td className="td text-right text-red-500">{p.pend_devolucion || '—'}</td>
                  <td className="td text-right">RD$ {fmt(p.costo_promedio)}</td>
                  <td className="td text-right">RD$ {fmt(prod?.precio_venta)}</td>
                  <td className="td text-right font-medium">RD$ {fmt(p.valor_total)}</td>
                </tr>
              )
            })}
          </tbody>
          <tfoot className="bg-gray-50 border-t border-gray-200">
            <tr>
              <td colSpan={7} className="td font-semibold text-right">Total valor en almacén</td>
              <td className="td text-right font-bold text-indigo-700">RD$ {fmt(valorTotal)}</td>
            </tr>
          </tfoot>
        </table>
      </div>
    </div>
  )
}
