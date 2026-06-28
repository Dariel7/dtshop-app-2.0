'use client'
import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { supabase } from '@/lib/supabase'

type Producto = { id: string; nombre: string; costo_promedio_actual: number }

export default function NuevaCompra() {
  const router = useRouter()
  const [productos, setProductos] = useState<Producto[]>([])
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')
  const [form, setForm] = useState({
    tipo:              'local',   // 'local' | 'importacion'
    producto_id:       '',
    cantidad:          '1',
    costo_unitario:    '',
    metodo_pago:       'tarjeta', // solo aplica para compra local
    fecha:             new Date().toISOString().slice(0, 10),
  })

  useEffect(() => {
    supabase.from('productos').select('id,nombre,costo_promedio_actual')
      .eq('activo', true).order('nombre')
      .then(({ data }) => setProductos(data ?? []))
  }, [])

  const set = (k: string, v: string) => setForm(f => ({ ...f, [k]: v }))

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    setLoading(true)
    setError('')
    try {
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
            p_producto_id:                 form.producto_id,
            p_cantidad:                    parseInt(form.cantidad),
            p_costo_unitario_estimado:     parseFloat(form.costo_unitario),
            p_fecha_orden:                 form.fecha,
          }

      const { error: err } = await supabase.rpc(rpc, params)
      if (err) throw err
      router.push('/inventario')
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : JSON.stringify(err))
    } finally {
      setLoading(false)
    }
  }

  const productoSel = productos.find(p => p.id === form.producto_id)

  return (
    <div className="max-w-lg space-y-4">
      <h1 className="text-xl font-bold">Registrar compra</h1>

      <form onSubmit={handleSubmit} className="card space-y-4">
        {/* Tipo */}
        <div className="flex gap-2">
          {(['local','importacion'] as const).map(t => (
            <button key={t} type="button"
              className={`flex-1 py-2 rounded-lg text-sm font-medium border transition-colors ${
                form.tipo === t ? 'bg-indigo-600 text-white border-indigo-600' : 'bg-white text-gray-600 border-gray-300 hover:bg-gray-50'
              }`}
              onClick={() => set('tipo', t)}>
              {t === 'local' ? 'Compra local' : 'Importación'}
            </button>
          ))}
        </div>

        {form.tipo === 'importacion' && (
          <p className="text-xs text-amber-700 bg-amber-50 p-2 rounded">
            El costo ingresado es estimado. Se ajustará al recibir la mercancía con el costo real (flete + arancel + seguro).
          </p>
        )}

        <div>
          <label className="label">Producto *</label>
          <select className="input" required value={form.producto_id}
            onChange={e => set('producto_id', e.target.value)}>
            <option value="">Seleccionar...</option>
            {productos.map(p => <option key={p.id} value={p.id}>{p.nombre}</option>)}
          </select>
          {productoSel?.costo_promedio_actual && (
            <p className="text-xs text-gray-400 mt-1">
              Costo promedio actual: RD$ {productoSel.costo_promedio_actual.toFixed(2)}
            </p>
          )}
        </div>

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

        {form.cantidad && form.costo_unitario && (
          <p className="text-sm font-semibold text-indigo-700 text-right">
            Total: RD$ {(parseInt(form.cantidad) * parseFloat(form.costo_unitario)).toFixed(2)}
          </p>
        )}

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

        <div>
          <label className="label">Fecha *</label>
          <input className="input" type="date" required
            value={form.fecha} onChange={e => set('fecha', e.target.value)} />
        </div>

        {error && <p className="text-sm text-red-600 bg-red-50 p-2 rounded">{error}</p>}

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
