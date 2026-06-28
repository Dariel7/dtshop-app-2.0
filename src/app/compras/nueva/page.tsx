'use client'
import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { getSupabase, fmt } from '@/lib/supabase'

type Producto = { id: string; nombre: string; costo_promedio_actual: number }

export default function NuevaCompra() {
  const router = useRouter()
  const [productos, setProductos] = useState<Producto[]>([])
  const [loading,   setLoading]   = useState(false)
  const [error,     setError]     = useState('')
  const [form, setForm] = useState({
    tipo:           'local',
    producto_id:    '',
    cantidad:       '1',
    costo_unitario: '',
    metodo_pago:    'tarjeta',
    fecha:          new Date().toISOString().slice(0, 10),
  })

  useEffect(() => {
    getSupabase().from('productos').select('id,nombre,costo_promedio_actual')
      .eq('activo', true).order('nombre')
      .then(({ data }) => setProductos(data ?? []))
  }, [])

  const set = (k: string, v: string) => setForm(f => ({ ...f, [k]: v }))
  const productoSel = productos.find(p => p.id === form.producto_id)
  const totalCompra = form.cantidad && form.costo_unitario
    ? parseInt(form.cantidad) * parseFloat(form.costo_unitario)
    : null

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    setLoading(true)
    setError('')
    try {
      const sb  = getSupabase()
      const rpc = form.tipo === 'local' ? 'registrar_compra_local' : 'registrar_importacion'
      const params = form.tipo === 'local'
        ? {
            p_producto_id:    form.producto_id,
            p_cantidad:       parseInt(form.cantidad),
            p_costo_unitario: parseFloat(form.costo_unitario),
            p_metodo_pago:    form.metodo_pago,
            p_fecha:          form.fecha,
          }
        : {
            p_producto_id:             form.producto_id,
            p_cantidad:                parseInt(form.cantidad),
            p_costo_unitario_estimado: parseFloat(form.costo_unitario),
            p_fecha_orden:             form.fecha,
          }

      const { error: err } = await sb.rpc(rpc, params)
      if (err) throw err
      router.push('/inventario')
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : JSON.stringify(err))
    } finally {
      setLoading(false)
    }
  }

  return (
    <div className="max-w-lg space-y-4">
      <div className="flex items-center gap-3">
        <a href="/inventario" className="text-faint hover:text-white transition-colors text-sm">← Inventario</a>
        <span className="text-faint">/</span>
        <h1 className="text-xl font-bold">Registrar compra</h1>
      </div>

      <form onSubmit={handleSubmit} className="card space-y-5">

        {/* Tipo de compra */}
        <div>
          <label className="label">Tipo de compra</label>
          <div className="flex gap-2">
            {([['local', 'Compra local'], ['importacion', 'Importación']] as const).map(([val, label]) => (
              <button key={val} type="button"
                onClick={() => set('tipo', val)}
                className={`flex-1 py-2 rounded-lg text-sm font-medium border transition-colors ${
                  form.tipo === val
                    ? 'bg-indigo-600 text-white border-indigo-600'
                    : 'border-neutral-700 text-neutral-400 hover:border-neutral-500 hover:text-white'
                }`}>
                {label}
              </button>
            ))}
          </div>
          {form.tipo === 'importacion' && (
            <p className="mt-2 text-xs rounded-lg px-3 py-2" style={{color:'var(--amber)', background:'#1f1500', border:'1px solid #6b4a0a'}}>
              El costo ingresado es estimado. Se ajustará al recibir la mercancía con el costo real.
            </p>
          )}
        </div>

        {/* Producto */}
        <div>
          <label className="label">Producto *</label>
          <select className="input" required value={form.producto_id}
            onChange={e => set('producto_id', e.target.value)}>
            <option value="">Seleccionar producto...</option>
            {productos.map(p => <option key={p.id} value={p.id}>{p.nombre}</option>)}
          </select>
          {productoSel?.costo_promedio_actual != null && (
            <p className="text-xs text-faint mt-1">
              Costo promedio actual: <span className="text-muted">RD$ {fmt(productoSel.costo_promedio_actual)}</span>
            </p>
          )}
        </div>

        {/* Cantidad y costo */}
        <div className="grid grid-cols-2 gap-3">
          <div>
            <label className="label">Cantidad *</label>
            <input className="input" type="number" min="1" required
              value={form.cantidad} onChange={e => set('cantidad', e.target.value)} />
          </div>
          <div>
            <label className="label">
              {form.tipo === 'local' ? 'Costo unitario (RD$)' : 'Costo estimado (RD$)'} *
            </label>
            <input className="input" type="number" step="0.01" min="0.01" required
              value={form.costo_unitario} onChange={e => set('costo_unitario', e.target.value)} />
          </div>
        </div>

        {totalCompra != null && (
          <p className="text-sm font-semibold text-right" style={{color:'var(--indigo-hover)'}}>
            Total: RD$ {fmt(totalCompra)}
          </p>
        )}

        {/* Método de pago (solo local) */}
        {form.tipo === 'local' && (
          <div>
            <label className="label">Método de pago *</label>
            <select className="input" value={form.metodo_pago} onChange={e => set('metodo_pago', e.target.value)}>
              <option value="tarjeta">Tarjeta de crédito</option>
              <option value="transferencia">Transferencia bancaria</option>
              <option value="efectivo">Efectivo</option>
            </select>
          </div>
        )}

        {/* Fecha */}
        <div>
          <label className="label">Fecha *</label>
          <input className="input" type="date" required
            value={form.fecha} onChange={e => set('fecha', e.target.value)} />
        </div>

        {error && (
          <p className="text-sm rounded-lg px-3 py-2" style={{color:'var(--red)', background:'#1f0a0a', border:'1px solid #6b0a0a'}}>
            {error}
          </p>
        )}

        <div className="flex gap-3 pt-1">
          <button type="submit" className="btn-primary" disabled={loading}>
            {loading ? 'Guardando...' : 'Registrar compra'}
          </button>
          <a href="/inventario" className="btn-ghost">Cancelar</a>
        </div>
      </form>
    </div>
  )
}
