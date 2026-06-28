export const dynamic = 'force-dynamic'
import { supabase, fmt, mesActual } from '@/lib/supabase'
import Link from 'next/link'

async function getDashboard() {
  const mes = mesActual()
  const [capitalTrabajo, cxcPendientes, pedidosMes, inventario] = await Promise.all([
    supabase.rpc('reporte_capital_trabajo', { p_hasta_periodo: mes }),
    supabase.from('vista_cxc_antiguedad').select('monto', { count: 'exact' }),
    supabase.from('pedidos').select('estado', { count: 'exact' }).gte('fecha_pedido', `${mes}-01`),
    supabase.from('productos').select('nombre,stock_disponible,costo_promedio_actual').eq('activo', true).order('stock_disponible', { ascending: true }).limit(5),
  ])

  const ctFilas     = capitalTrabajo.data ?? []
  const capitalTotal = ctFilas.find((r: { linea: string; monto: number }) => r.linea.startsWith('='))?.monto ?? 0
  const cxcTotal     = (cxcPendientes.data ?? []).reduce((s: number, r: { monto: number }) => s + Number(r.monto), 0)
  const totalPedidos = pedidosMes.count ?? 0

  return { capitalTotal, cxcTotal, totalPedidos, inventario: inventario.data ?? [] }
}

export default async function Dashboard() {
  const { capitalTotal, cxcTotal, totalPedidos, inventario } = await getDashboard()
  const mes = mesActual()

  return (
    <div className="space-y-6">
      <h1 className="text-xl font-bold">Dashboard</h1>

      {/* KPIs */}
      <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
        <div className="card">
          <p className="text-xs font-semibold uppercase tracking-wide text-faint">Capital de trabajo</p>
          <p className={`text-2xl font-bold mt-1 ${capitalTotal >= 0 ? 'text-green-400' : 'text-red-400'}`}>
            RD$ {fmt(capitalTotal)}
          </p>
          <p className="text-xs text-faint mt-1">Liquidez disponible para operar</p>
        </div>
        <div className="card">
          <p className="text-xs font-semibold uppercase tracking-wide text-faint">Couriers te deben</p>
          <p className="text-2xl font-bold mt-1" style={{color: cxcTotal > 0 ? 'var(--amber)' : 'var(--text-2)'}}>
            RD$ {fmt(cxcTotal)}
          </p>
          <p className="text-xs text-faint mt-1">Pendiente de liquidar</p>
        </div>
        <div className="card">
          <p className="text-xs font-semibold uppercase tracking-wide text-faint">Pedidos este mes</p>
          <p className="text-2xl font-bold mt-1" style={{color:'var(--indigo-hover)'}}>
            {totalPedidos}
          </p>
          <p className="text-xs text-faint mt-1">{mes}</p>
        </div>
      </div>

      {/* Inventario bajo */}
      <div className="card p-0 overflow-hidden">
        <div className="card-header">Productos con stock más bajo</div>
        {inventario.length === 0 ? (
          <p className="empty-state">Sin productos registrados.</p>
        ) : (
          <table className="w-full">
            <thead className="table-head">
              <tr>
                <th className="th">Producto</th>
                <th className="th text-right">Stock</th>
                <th className="th text-right">Costo promedio</th>
                <th className="th text-right">Valor en almacén</th>
              </tr>
            </thead>
            <tbody className="table-divider">
              {inventario.map((p: { nombre: string; stock_disponible: number; costo_promedio_actual: number }) => (
                <tr key={p.nombre} className="tr-hover">
                  <td className="td font-medium">{p.nombre}</td>
                  <td className="td text-right">
                    <span className={p.stock_disponible <= 2 ? 'badge-err' : p.stock_disponible <= 5 ? 'badge-warn' : 'badge-ok'}>
                      {p.stock_disponible} uds
                    </span>
                  </td>
                  <td className="td text-right text-muted">
                    {p.costo_promedio_actual ? `RD$ ${fmt(p.costo_promedio_actual)}` : '—'}
                  </td>
                  <td className="td text-right text-muted">RD$ {fmt(p.stock_disponible * (p.costo_promedio_actual ?? 0))}</td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>

      {/* Accesos rápidos */}
      <div className="grid grid-cols-2 sm:grid-cols-4 gap-3">
        {[
          { href: '/pedidos/nuevo',       label: 'Nuevo pedido',      sub: 'Registrar venta' },
          { href: '/compras/nueva',        label: 'Registrar compra',  sub: 'Entrada de stock' },
          { href: '/liquidaciones/nueva',  label: 'Liquidar courier',  sub: 'Cobrar entregas' },
          { href: '/reportes',             label: 'Ver reportes',      sub: 'Financiero' },
        ].map(a => (
          <Link key={a.href} href={a.href}
            className="card text-center hover:border-indigo-600/50 transition-colors cursor-pointer group">
            <p className="text-sm font-semibold" style={{color:'var(--indigo-hover)'}}>{a.label}</p>
            <p className="text-xs text-faint mt-0.5 group-hover:text-muted transition-colors">{a.sub}</p>
          </Link>
        ))}
      </div>
    </div>
  )
}
