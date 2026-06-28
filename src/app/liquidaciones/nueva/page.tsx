'use client'
import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { supabase, fmt } from '@/lib/supabase'

type Courier = { id: string; nombre: string }
type CxC = {
  pedido_id: string; monto: number; estado: string;
  pedidos: { fecha_entrega: string; clientes: { nombre: string }[] | null } | null
}

export default function NuevaLiquidacion() {
  const router = useRouter()
  const [couriers,   setCouriers]  = useState<Courier[]>([])
  const [cxcAbiertas, setCxc]      = useState<CxC[]>([])
  const [seleccionados, setSel]    = useState<string[]>([])
  const [loading,    setLoading]   = useState(false)
  const [error,      setError]     = useState('')
  const [form, setForm] = useState({
    courier_id:           '',
    monto_entregado_neto: '',
    fecha:                new Date().toISOString().slice(0, 10),
  })

  useEffect(() => {
    supabase.from('canales_cobro').select('id,nombre').eq('activo', true)
      .then(({ data }) => setCouriers(data ?? []))
  }, [])

  useEffect(() => {
    if (!form.courier_id) { setCxc([]); setSel([]); return }
    supabase
      .from('cuentas_por_cobrar_pedido')
      .select('pedido_id,monto,estado,pedidos(fecha_entrega,clientes(nombre))')
      .eq('courier_id', form.courier_id)
      .eq('estado', 'pendiente')
      .then(({ data }) => { setCxc((data as unknown as CxC[]) ?? []); setSel([]) })
  }, [form.courier_id])

  const totalSel = cxcAbiertas
    .filter(c => seleccionados.includes(c.pedido_id))
    .reduce((s, c) => s + Number(c.monto), 0)

  const comision = totalSel - parseFloat(form.monto_entregado_neto || '0')

  const toggleSel = (id: string) =>
    setSel(s => s.includes(id) ? s.filter(x => x !== id) : [...s, id])

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    if (seleccionados.length === 0) { setError('Selecciona al menos un pedido.'); return }
    setLoading(true); setError('')
    try {
      const { error: err } = await supabase.rpc('liquidar_courier', {
        p_courier_id:           form.courier_id,
        p_pedidos_ids:          seleccionados,
        p_monto_entregado_neto: parseFloat(form.monto_entregado_neto),
        p_fecha:                form.fecha,
      })
      if (err) throw err
      router.push('/liquidaciones')
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : JSON.stringify(err))
    } finally {
      setLoading(false)
    }
  }

  const set = (k: string, v: string) => setForm(f => ({ ...f, [k]: v }))

  return (
    <div className="max-w-2xl space-y-4">
      <h1 className="text-xl font-bold">Liquidar courier</h1>

      <form onSubmit={handleSubmit} className="space-y-4">
        <div className="card space-y-4">
          <div className="grid grid-cols-2 gap-3">
            <div>
              <label className="label">Courier *</label>
              <select className="input" required value={form.courier_id}
                onChange={e => set('courier_id', e.target.value)}>
                <option value="">Seleccionar...</option>
                {couriers.map(c => <option key={c.id} value={c.id}>{c.nombre}</option>)}
              </select>
            </div>
            <div>
              <label className="label">Fecha de liquidación *</label>
              <input className="input" type="date" required
                value={form.fecha} onChange={e => set('fecha', e.target.value)} />
            </div>
          </div>
        </div>

        {/* Pedidos pendientes del courier */}
        {form.courier_id && (
          <div className="card p-0 overflow-hidden">
            <div className="px-4 py-3 bg-gray-50 border-b border-gray-200 flex items-center justify-between">
              <span className="text-sm font-semibold">Pedidos pendientes de este courier</span>
              <button type="button" className="text-xs text-indigo-600 hover:underline"
                onClick={() => setSel(cxcAbiertas.map(c => c.pedido_id))}>
                Seleccionar todos
              </button>
            </div>
            {cxcAbiertas.length === 0
              ? <p className="td text-gray-400 text-center py-6">No hay pedidos pendientes.</p>
              : (
                <table className="w-full">
                  <thead>
                    <tr className="border-b border-gray-100">
                      <th className="th w-8"></th>
                      <th className="th">Pedido</th>
                      <th className="th">Cliente</th>
                      <th className="th">F. entrega</th>
                      <th className="th text-right">Monto</th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-gray-100">
                    {cxcAbiertas.map(c => (
                      <tr key={c.pedido_id} className="tr-hover cursor-pointer"
                        onClick={() => toggleSel(c.pedido_id)}>
                        <td className="td">
                          <input type="checkbox" readOnly
                            checked={seleccionados.includes(c.pedido_id)}
                            className="rounded border-gray-300" />
                        </td>
                        <td className="td font-mono text-xs">{c.pedido_id.slice(0,8)}</td>
                        <td className="td">{(Array.isArray(c.pedidos?.clientes) ? c.pedidos!.clientes![0]?.nombre : (c.pedidos?.clientes as { nombre: string } | null)?.nombre) ?? '—'}</td>
                        <td className="td">{c.pedidos?.fecha_entrega ?? '—'}</td>
                        <td className="td text-right font-medium">RD$ {fmt(c.monto)}</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              )}
          </div>
        )}

        {seleccionados.length > 0 && (
          <div className="card space-y-3">
            <div className="flex justify-between text-sm">
              <span className="text-gray-500">Total recaudado ({seleccionados.length} pedidos)</span>
              <strong>RD$ {fmt(totalSel)}</strong>
            </div>
            <div>
              <label className="label">Monto entregado neto (RD$) *</label>
              <input className="input" type="number" step="0.01" min="0" required
                max={totalSel}
                value={form.monto_entregado_neto}
                onChange={e => set('monto_entregado_neto', e.target.value)} />
              <p className="text-xs text-gray-400 mt-1">
                Lo que el courier realmente depositó en tu cuenta.
              </p>
            </div>
            {form.monto_entregado_neto && (
              <div className="flex justify-between text-sm border-t pt-2">
                <span className="text-gray-500">Comisión del courier</span>
                <strong className={comision < 0 ? 'text-red-600' : 'text-gray-900'}>
                  RD$ {fmt(comision)}
                </strong>
              </div>
            )}
          </div>
        )}

        {error && <p className="text-sm text-red-600 bg-red-50 p-3 rounded">{error}</p>}

        <div className="flex gap-3">
          <button type="submit" className="btn-primary" disabled={loading || seleccionados.length === 0}>
            {loading ? 'Procesando...' : 'Confirmar liquidación'}
          </button>
          <a href="/liquidaciones" className="btn-ghost">Cancelar</a>
        </div>
      </form>
    </div>
  )
}
