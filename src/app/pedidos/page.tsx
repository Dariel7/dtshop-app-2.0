export const dynamic = 'force-dynamic'
import { supabase, fmt } from '@/lib/supabase'
import { ESTADO_BADGE, ESTADO_LABEL, fmtFecha } from '@/lib/utils'
import Link from 'next/link'

const PAGE_SIZE = 50

export default async function Pedidos({
  searchParams,
}: {
  searchParams: Promise<{ page?: string; estado?: string }>
}) {
  const params = await searchParams
  const page   = Math.max(1, parseInt(params.page ?? '1'))
  const estado = params.estado ?? ''
  const from   = (page - 1) * PAGE_SIZE
  const to     = from + PAGE_SIZE - 1

  let query = supabase
    .from('pedidos')
    .select(`
      id, pedido_num, estado, fecha_pedido, fecha_entrega, precio_total, metodo_pago_confirmado,
      clientes(nombre, telefono),
      canales_cobro(nombre)
    `, { count: 'exact' })
    .order('pedido_num', { ascending: false })
    .range(from, to)

  if (estado) query = query.eq('estado', estado)

  const { data: pedidos, count } = await query
  const totalPages = Math.ceil((count ?? 0) / PAGE_SIZE)
  const estados = ['', 'pendiente', 'confirmado', 'entregado', 'para_devolucion', 'devuelto', 'cancelado']

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between">
        <h1 className="text-xl font-bold">
          Pedidos{' '}
          {count != null && <span className="text-sm font-normal text-faint">({count})</span>}
        </h1>
        <Link href="/pedidos/nuevo" className="btn-primary">+ Nuevo pedido</Link>
      </div>

      {/* Filtros */}
      <div className="flex gap-2 flex-wrap">
        {estados.map(e => (
          <Link
            key={e}
            href={`/pedidos?estado=${e}&page=1`}
            className={`px-3 py-1 rounded-full text-xs font-medium transition-colors border ${
              estado === e
                ? 'bg-indigo-600 text-white border-indigo-600'
                : 'border-neutral-700 text-neutral-400 hover:border-neutral-500 hover:text-neutral-200'
            }`}
          >
            {e === '' ? 'Todos' : ESTADO_LABEL[e] ?? e}
          </Link>
        ))}
      </div>

      <div className="card p-0 overflow-hidden">
        {(pedidos ?? []).length === 0 ? (
          <p className="empty-state">Sin pedidos{estado ? ` con estado "${ESTADO_LABEL[estado]}"` : ''}.</p>
        ) : (
          <table className="w-full">
            <thead className="table-head">
              <tr>
                <th className="th">#</th>
                <th className="th">Cliente</th>
                <th className="th">Courier</th>
                <th className="th">Fecha</th>
                <th className="th">Estado</th>
                <th className="th text-right">Total</th>
                <th className="th">Pago</th>
              </tr>
            </thead>
            <tbody className="table-divider">
              {(pedidos ?? []).map((p: {
                id: string; pedido_num: number | null; estado: string
                fecha_pedido: string; fecha_entrega: string
                precio_total: number; metodo_pago_confirmado: string | null
                clientes: { nombre: string; telefono: string }[] | null
                canales_cobro: { nombre: string }[] | null
              }) => {
                const cliente = Array.isArray(p.clientes) ? p.clientes[0] : p.clientes as { nombre: string; telefono: string } | null
                const courier = Array.isArray(p.canales_cobro) ? p.canales_cobro[0] : p.canales_cobro as { nombre: string } | null
                return (
                  <tr key={p.id} className="tr-hover">
                    <td className="td font-mono text-xs text-faint">
                      {p.pedido_num ?? p.id.slice(0, 6)}
                    </td>
                    <td className="td">
                      <p className="font-medium">{cliente?.nombre ?? '—'}</p>
                      {cliente?.telefono && <p className="text-xs text-faint">{cliente.telefono}</p>}
                    </td>
                    <td className="td text-muted">{courier?.nombre ?? '—'}</td>
                    <td className="td text-muted">{fmtFecha(p.fecha_pedido)}</td>
                    <td className="td">
                      <span className={ESTADO_BADGE[p.estado] ?? 'badge-neutral'}>
                        {ESTADO_LABEL[p.estado] ?? p.estado}
                      </span>
                    </td>
                    <td className="td text-right font-medium">RD$ {fmt(p.precio_total)}</td>
                    <td className="td text-muted capitalize">{p.metodo_pago_confirmado ?? '—'}</td>
                  </tr>
                )
              })}
            </tbody>
          </table>
        )}
      </div>

      {/* Paginación */}
      {totalPages > 1 && (
        <div className="flex items-center justify-between text-sm text-faint">
          <span>Página {page} de {totalPages}</span>
          <div className="flex gap-2">
            {page > 1 && (
              <Link href={`/pedidos?estado=${estado}&page=${page - 1}`} className="btn-ghost px-3 py-1.5 text-xs">
                ← Anterior
              </Link>
            )}
            {page < totalPages && (
              <Link href={`/pedidos?estado=${estado}&page=${page + 1}`} className="btn-ghost px-3 py-1.5 text-xs">
                Siguiente →
              </Link>
            )}
          </div>
        </div>
      )}
    </div>
  )
}
