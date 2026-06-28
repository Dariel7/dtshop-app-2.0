export const dynamic = 'force-dynamic'
import { supabase, fmt, mesActual } from '@/lib/supabase'

async function getDashboard() {
  const mes = mesActual()

  const [capitalTrabajo, cxcPendientes, pedidosMes, inventario] = await Promise.all([
    supabase.rpc('reporte_capital_trabajo', { p_hasta_periodo: mes }),
    supabase.from('vista_cxc_antiguedad').select('monto', { count: 'exact' }),
    supabase.from('pedidos')
      .select('estado', { count: 'exact' })
      .gte('fecha_pedido', `${mes}-01`),
    supabase.from('productos')
      .select('nombre, stock_disponible, costo_promedio_actual')
      .eq('activo', true)
      .order('stock_disponible', { ascending: true })
      .limit(5),
  ])

  const ctFilas = capitalTrabajo.data ?? []
  const capitalTotal = ctFilas.find((r: { linea: string; monto: number }) => r.linea.startsWith('='))?.monto ?? 0
  const cxcTotal = (cxcPendientes.data ?? []).reduce((s: number, r: { monto: number }) => s + Number(r.monto), 0)
  const totalPedidos = pedidosMes.count ?? 0

  return { capitalTotal, cxcTotal, totalPedidos, inventario: inventario.data ?? [] }
}

export default async function Dashboard() {
  const { capitalTotal, cxcTotal, totalPedidos, inventario } = await getDashboard()
  const mes = mesActual()

  return (
    <div className="space-y-6">
      <h1 className="text-xl font-bold text-gray-900">Dashboard</h1>

      {/* KPIs principales */}
      <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
        <div className="card">
          <p className="text-xs text-gray-500 font-medium uppercase tracking-wide">Capital de trabajo</p>
          <p className={`text-2xl font-bold mt-1 ${capitalTotal >= 0 ? 'text-green-600' : 'text-red-600'}`}>
            RD$ {fmt(capitalTotal)}
          </p>
          <p className="text-xs text-gray-400 mt-1">Liquidez disponible para operar</p>
        </div>
        <div className="card">
          <p className="text-xs text-gray-500 font-medium uppercase tracking-wide">Couriers te deben</p>
          <p className="text-2xl font-bold mt-1 text-amber-600">RD$ {fmt(cxcTotal)}</p>
          <p className="text-xs text-gray-400 mt-1">Pendiente de liquidar</p>
        </div>
        <div className="card">
          <p className="text-xs text-gray-500 font-medium uppercase tracking-wide">Pedidos este mes</p>
          <p className="text-2xl font-bold mt-1 text-indigo-600">{totalPedidos}</p>
          <p className="text-xs text-gray-400 mt-1">{mes}</p>
        </div>
      </div>

      {/* Inventario bajo */}
      <div className="card">
        <h2 className="font-semibold text-gray-800 mb-3">Productos con stock más bajo</h2>
        <table className="w-full">
          <thead>
            <tr className="border-b border-gray-100">
              <th className="th">Producto</th>
              <th className="th text-right">Stock</th>
              <th className="th text-right">Costo promedio</th>
              <th className="th text-right">Valor en almacén</th>
            </tr>
          </thead>
          <tbody>
            {inventario.map((p: { nombre: string; stock_disponible: number; costo_promedio_actual: number }) => (
              <tr key={p.nombre} className="border-b border-gray-50 tr-hover">
                <td className="td font-medium">{p.nombre}</td>
                <td className="td text-right">
                  <span className={p.stock_disponible <= 2 ? 'badge-err' : p.stock_disponible <= 5 ? 'badge-warn' : 'badge-ok'}>
                    {p.stock_disponible} uds
                  </span>
                </td>
                <td className="td text-right">RD$ {fmt(p.costo_promedio_actual)}</td>
                <td className="td text-right">RD$ {fmt(p.stock_disponible * p.costo_promedio_actual)}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      {/* Accesos rápidos */}
      <div className="grid grid-cols-2 sm:grid-cols-4 gap-3">
        {[
          { href: '/pedidos/nuevo',       label: 'Nuevo pedido' },
          { href: '/compras/nueva',       label: 'Registrar compra' },
          { href: '/liquidaciones/nueva', label: 'Liquidar courier' },
          { href: '/reportes',            label: 'Ver reportes' },
        ].map(a => (
          <a key={a.href} href={a.href}
            className="card text-center text-sm font-medium text-indigo-600 hover:bg-indigo-50 transition-colors cursor-pointer">
            {a.label}
          </a>
        ))}
      </div>
    </div>
  )
}
