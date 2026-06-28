'use client'
import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { getSupabase, fmt } from '@/lib/supabase'
import { fmtFecha } from '@/lib/utils'

type Courier = { id: string; nombre: string }
type CxC = {
  pedido_id: string; monto: number; estado: string
  pedidos: { pedido_num: number | null; fecha_entrega: string; clientes: { nombre: string }[] | null } | null
}

export default function NuevaLiquidacion() {
  const router = useRouter()
  const [couriers,     setCouriers] = useState<Courier[]>([])
  const [cxcAbiertas,  setCxc]      = useState<CxC[]>([])
  const [seleccionados, setSel]     = useState<string[]>([])
  const [loading,      setLoading]  = useState(false)
  const [error,        setError]    = useState('')
  const [form, setForm] = useState({
    courier_id:           '',
    monto_entregado_neto: '',
    fecha:                new Date().toISOString().slice(0, 10),
  })

  useEffect(() => {
    getSupabase().from('canales_cobro').select('id,nombre').eq('activo', true).order('nombre')
      .then(({ data }) => setCouriers(data ?? []))
  }, [])

  useEffect(() => {
    if (!form.courier_id) { setCxc([]); setSel([]); return }
    getSupabase()
      .from('cuentas_por_cobrar_pedido')
      .select('pedido_id,monto,estado,pedidos(pedido_num,fecha_entrega,clientes(nombre))')
      .eq('courier_id', form.courier_id)
      .eq('estado', 'pendiente')
      .then(({ data }) => { setCxc((data as unknown as CxC[]) ?? []); setSel([]) })
  }, [form.courier_id])

  const set = (k: string, v: string) => setForm(f => ({ ...f, [k]: v }))

  const totalSel  = cxcAbiertas.filter(c => seleccionados.includes(c.pedido_id)).reduce((s, c) => s + Number(c.monto), 0)
  const netoNum   = parseFloat(form.monto_entregado_neto || '0')
  const comision  = totalSel - netoNum

  const toggleSel = (id: string) => setSel(s => s.includes(id) ? s.filter(x => x !== id) : [...s, id])
  const selAll    = () => setSel(cxcAbiertas.map(c => c.pedido_id))
  const deselAll  = () => setSel([])

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    if (seleccionados.length === 0) { setError('Selecciona al menos un pedido.'); return }
    setLoading(true); setError('')
    try {
      const { error: err } = await getSupabase().rpc('liquidar_courier', {
        p_courier_id:           form.courier_id,
        p_pedidos_ids:          seleccionados,
        p_monto_entregado_neto: netoNum,
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

  return (
    <div className="max-w-2xl space-y-4">
      <div className="flex items-center gap-3">
        <a href="/liquidaciones" className="text-faint hover:text-white transition-colors text-sm">← Liquidaciones</a>
        <span className="text-faint">/</span>
        <h1 className="text-xl font-bold">Liquidar courier</h1>
      </div>

      <form onSubmit={handleSubmit} className="space-y-4">

        {/* Courier y fecha */}
        <div className="card">
          <div className="grid grid-cols-2 gap-3">
            <div>
              <label className="label">Courier *</label>
              <select className="input" required value={form.courier_id}
                onChange={e => set('courier_id', e.target.value)}>
                <option value="">Seleccionar courier...</option>
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

        {/* Pedidos pendientes */}
        {form.courier_id && (
          <div className="card p-0 overflow-hidden">
            <div className="card-header flex items-center justify-between">
              <span>
                Pedidos pendientes
                {cxcAbiertas.length > 0 && (
                  <span className="ml-2 text-faint font-normal">({cxcAbiertas.length})</span>
                )}
              </span>
              {cxcAbiertas.length > 0 && (
                <div className="flex gap-3">
                  <button type="button" onClick={selAll}
                    className="text-xs" style={{color:'var(--indigo-hover)'}}>
                    Seleccionar todos
                  </button>
                  {seleccionados.length > 0 && (
                    <button type="button" onClick={deselAll} className="text-xs text-faint hover:text-muted">
                      Limpiar
                    </button>
                  )}
                </div>
              )}
            </div>

            {cxcAbiertas.length === 0 ? (
              <p className="empty-state">No hay pedidos pendientes para este courier.</p>
            ) : (
              <table className="w-full">
                <thead className="table-head">
                  <tr>
                    <th className="th w-8"></th>
                    <th className="th">#</th>
                    <th className="th">Cliente</th>
                    <th className="th">F. entrega</th>
                    <th className="th text-right">Monto</th>
                  </tr>
                </thead>
                <tbody className="table-divider">
                  {cxcAbiertas.map(c => {
                    const cliente = Array.isArray(c.pedidos?.clientes)
                      ? c.pedidos!.clientes![0]?.nombre
                      : (c.pedidos?.clientes as { nombre: string } | null)?.nombre
                    const sel = seleccionados.includes(c.pedido_id)
                    return (
                      <tr key={c.pedido_id}
                        className="tr-hover cursor-pointer"
                        style={sel ? {background:'#1a1f3a'} : {}}
                        onClick={() => toggleSel(c.pedido_id)}>
                        <td className="td">
                          <input type="checkbox" readOnly checked={sel}
                            className="rounded accent-indigo-600 cursor-pointer" />
                        </td>
                        <td className="td font-mono text-xs text-faint">
                          {c.pedidos?.pedido_num ?? c.pedido_id.slice(0, 8)}
                        </td>
                        <td className="td font-medium">{cliente ?? '—'}</td>
                        <td className="td text-muted">{fmtFecha(c.pedidos?.fecha_entrega)}</td>
                        <td className="td text-right font-medium">RD$ {fmt(c.monto)}</td>
                      </tr>
                    )
                  })}
                </tbody>
              </table>
            )}
          </div>
        )}

        {/* Resumen y monto */}
        {seleccionados.length > 0 && (
          <div className="card space-y-4">
            <div className="flex justify-between text-sm">
              <span className="text-muted">Total recaudado ({seleccionados.length} pedidos)</span>
              <strong className="text-white">RD$ {fmt(totalSel)}</strong>
            </div>

            <div>
              <label className="label">Monto entregado neto (RD$) *</label>
              <input className="input" type="number" step="0.01" min="0" required
                max={totalSel}
                value={form.monto_entregado_neto}
                onChange={e => set('monto_entregado_neto', e.target.value)}
                placeholder="Lo que el courier depositó en tu cuenta" />
            </div>

            {form.monto_entregado_neto && (
              <div className="flex justify-between text-sm pt-2" style={{borderTop:'1px solid var(--border)'}}>
                <span className="text-muted">Comisión del courier</span>
                <strong style={{color: comision > 0 ? 'var(--red)' : 'var(--green)'}}>
                  RD$ {fmt(comision)}
                </strong>
              </div>
            )}
          </div>
        )}

        {error && (
          <p className="text-sm rounded-lg px-3 py-2" style={{color:'var(--red)', background:'#1f0a0a', border:'1px solid #6b0a0a'}}>
            {error}
          </p>
        )}

        <div className="flex gap-3">
          <button type="submit" className="btn-primary" disabled={loading || seleccionados.length === 0}>
            {loading ? 'Procesando...' : `Confirmar liquidación${seleccionados.length > 0 ? ` (${seleccionados.length})` : ''}`}
          </button>
          <a href="/liquidaciones" className="btn-ghost">Cancelar</a>
        </div>
      </form>
    </div>
  )
}
