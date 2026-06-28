import { supabase, fmt } from '@/lib/supabase'
import Link from 'next/link'

const ESTADO_BADGE: Record<string, string> = {
  pendiente:        'badge-warn',
  confirmado:       'badge-warn',
  entregado:        'badge-ok',
  para_devolucion:  'badge-err',
  devuelto:         'badge-err',
  cancelado:        'badge-err',
}

export default async function Pedidos() {
  const { data: pedidos } = await supabase
    .from('pedidos')
    .select(`
      id, estado, fecha_pedido, fecha_entrega, precio_total, metodo_pago_confirmado,
      clientes(nombre, telefono),
      canales_cobro(nombre)
    `)
    .order('fecha_pedido', { ascending: false })
    .limit(100)

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between">
        <h1 className="text-xl font-bold">Pedidos</h1>
        <Link href="/pedidos/nuevo" className="btn-primary">+ Nuevo pedido</Link>
      </div>

      <div className="card p-0 overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-50 border-b border-gray-200">
            <tr>
              <th className="th">Pedido</th>
              <th className="th">Cliente</th>
              <th className="th">Courier</th>
              <th className="th">Fecha</th>
              <th className="th">Estado</th>
              <th className="th text-right">Total</th>
              <th className="th">Pago</th>
            </tr>
          </thead>
          <tbody className="divide-y divide-gray-100">
            {(pedidos ?? []).map((p: {
              id: string; estado: string; fecha_pedido: string; fecha_entrega: string;
              precio_total: number; metodo_pago_confirmado: string | null;
              clientes: { nombre: string; telefono: string }[] | null;
              canales_cobro: { nombre: string }[] | null;
            }) => {
              const cliente = Array.isArray(p.clientes) ? p.clientes[0] : p.clientes as { nombre: string; telefono: string } | null
              const courier = Array.isArray(p.canales_cobro) ? p.canales_cobro[0] : p.canales_cobro as { nombre: string } | null
              return (
              <tr key={p.id} className="tr-hover">
                <td className="td font-mono text-xs text-gray-400">{p.id.slice(0, 8)}</td>
                <td className="td">
                  <p className="font-medium">{cliente?.nombre ?? '—'}</p>
                  <p className="text-xs text-gray-400">{cliente?.telefono ?? ''}</p>
                </td>
                <td className="td">{courier?.nombre ?? '—'}</td>
                <td className="td">{p.fecha_pedido}</td>
                <td className="td">
                  <span className={ESTADO_BADGE[p.estado] ?? 'badge-warn'}>{p.estado}</span>
                </td>
                <td className="td text-right font-medium">RD$ {fmt(p.precio_total)}</td>
                <td className="td capitalize">{p.metodo_pago_confirmado ?? '—'}</td>
              </tr>
            )})}
          </tbody>
        </table>
      </div>
    </div>
  )
}
