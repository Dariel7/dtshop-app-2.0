'use client'
import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { getSupabase } from '@/lib/supabase'

type Producto = { id: string; nombre: string; precio_venta: number; stock_disponible: number }
type Courier  = { id: string; nombre: string }
type Cliente  = { id: string; nombre: string; telefono: string }

export default function NuevoPedido() {
  const router = useRouter()
  const [productos, setProductos] = useState<Producto[]>([])
  const [couriers,  setCouriers]  = useState<Courier[]>([])
  const [clientes,  setClientes]  = useState<Cliente[]>([])
  const [loading,   setLoading]   = useState(false)
  const [error,     setError]     = useState('')

  const [form, setForm] = useState({
    cliente_id:             '',
    nuevo_cliente_nombre:   '',
    nuevo_cliente_telefono: '',
    courier_id:             '',
    producto_id:            '',
    cantidad:               '1',
    precio_unit:            '',
    fecha_pedido:           new Date().toISOString().slice(0, 10),
    notas:                  '',
  })

  useEffect(() => {
    const sb = getSupabase()
    Promise.all([
      sb.from('productos').select('id,nombre,precio_venta,stock_disponible').eq('activo', true).order('nombre'),
      sb.from('canales_cobro').select('id,nombre').eq('activo', true).order('nombre'),
      sb.from('clientes').select('id,nombre,telefono').order('nombre').limit(200),
    ]).then(([p, c, cl]) => {
      setProductos(p.data ?? [])
      setCouriers(c.data ?? [])
      setClientes(cl.data ?? [])
    })
  }, [])

  const productoSel = productos.find(p => p.id === form.producto_id)
  const set = (k: string, v: string) => setForm(f => ({ ...f, [k]: v }))

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    setLoading(true)
    setError('')
    const sb = getSupabase()

    try {
      let clienteId = form.cliente_id
      if (!clienteId && form.nuevo_cliente_nombre) {
        const { data, error } = await sb
          .from('clientes')
          .insert({ nombre: form.nuevo_cliente_nombre, telefono: form.nuevo_cliente_telefono || null })
          .select('id').single()
        if (error) throw error
        clienteId = data.id
      }
      if (!clienteId) throw new Error('Selecciona o ingresa un cliente.')

      const cantidad = parseInt(form.cantidad)
      const precio   = parseFloat(form.precio_unit || String(productoSel?.precio_venta ?? 0))

      const { data: pedido, error: ep } = await sb
        .from('pedidos')
        .insert({
          cliente_id:     clienteId,
          canal_cobro_id: form.courier_id || null,
          estado:         'pendiente',
          fecha_pedido:   form.fecha_pedido,
          precio_total:   cantidad * precio,
          notas:          form.notas || null,
        })
        .select('id').single()
      if (ep) throw ep

      const { error: ei } = await sb
        .from('pedido_items')
        .insert({ pedido_id: pedido.id, producto_id: form.producto_id, cantidad, precio_unitario: precio })
      if (ei) throw ei

      router.push('/pedidos')
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : JSON.stringify(err))
    } finally {
      setLoading(false)
    }
  }

  return (
    <div className="max-w-lg space-y-4">
      <h1 className="text-xl font-bold">Nuevo pedido</h1>

      <form onSubmit={handleSubmit} className="card space-y-4">
        {/* Cliente */}
        <div>
          <label className="label">Cliente existente</label>
          <select className="input" value={form.cliente_id} onChange={e => set('cliente_id', e.target.value)}>
            <option value="">— Nuevo cliente —</option>
            {clientes.map(c => (
              <option key={c.id} value={c.id}>{c.nombre}{c.telefono ? ` (${c.telefono})` : ''}</option>
            ))}
          </select>
        </div>

        {!form.cliente_id && (
          <div className="grid grid-cols-2 gap-3 p-3 rounded-lg" style={{background:'var(--bg-subtle)', border:'1px solid var(--border)'}}>
            <div>
              <label className="label">Nombre *</label>
              <input className="input" placeholder="Nombre del cliente"
                value={form.nuevo_cliente_nombre} onChange={e => set('nuevo_cliente_nombre', e.target.value)}
                required={!form.cliente_id} />
            </div>
            <div>
              <label className="label">Teléfono</label>
              <input className="input" placeholder="809-000-0000"
                value={form.nuevo_cliente_telefono} onChange={e => set('nuevo_cliente_telefono', e.target.value)} />
            </div>
          </div>
        )}

        {/* Producto */}
        <div>
          <label className="label">Producto *</label>
          <select className="input" required value={form.producto_id}
            onChange={e => {
              const p = productos.find(x => x.id === e.target.value)
              set('producto_id', e.target.value)
              if (p) set('precio_unit', String(p.precio_venta))
            }}>
            <option value="">Seleccionar producto...</option>
            {productos.map(p => (
              <option key={p.id} value={p.id} disabled={p.stock_disponible <= 0}>
                {p.nombre} — Stock: {p.stock_disponible}
              </option>
            ))}
          </select>
        </div>

        <div className="grid grid-cols-2 gap-3">
          <div>
            <label className="label">Cantidad *</label>
            <input className="input" type="number" min="1"
              max={productoSel?.stock_disponible ?? 999} required
              value={form.cantidad} onChange={e => set('cantidad', e.target.value)} />
          </div>
          <div>
            <label className="label">Precio unitario (RD$) *</label>
            <input className="input" type="number" step="0.01" min="0" required
              value={form.precio_unit} onChange={e => set('precio_unit', e.target.value)} />
          </div>
        </div>

        {form.producto_id && form.cantidad && form.precio_unit && (
          <p className="text-sm font-semibold text-right" style={{color:'var(--indigo-hover)'}}>
            Total: RD$ {(parseInt(form.cantidad) * parseFloat(form.precio_unit)).toFixed(2)}
          </p>
        )}

        <div className="grid grid-cols-2 gap-3">
          <div>
            <label className="label">Courier</label>
            <select className="input" value={form.courier_id} onChange={e => set('courier_id', e.target.value)}>
              <option value="">Sin asignar</option>
              {couriers.map(c => <option key={c.id} value={c.id}>{c.nombre}</option>)}
            </select>
          </div>
          <div>
            <label className="label">Fecha *</label>
            <input className="input" type="date" required
              value={form.fecha_pedido} onChange={e => set('fecha_pedido', e.target.value)} />
          </div>
        </div>

        <div>
          <label className="label">Notas</label>
          <textarea className="input resize-none" rows={2}
            value={form.notas} onChange={e => set('notas', e.target.value)} />
        </div>

        {error && (
          <p className="text-sm rounded-lg px-3 py-2" style={{color:'var(--red)', background:'#1f0a0a', border:'1px solid #6b0a0a'}}>
            {error}
          </p>
        )}

        <div className="flex gap-3 pt-1">
          <button type="submit" className="btn-primary" disabled={loading}>
            {loading ? 'Guardando...' : 'Crear pedido'}
          </button>
          <a href="/pedidos" className="btn-ghost">Cancelar</a>
        </div>
      </form>
    </div>
  )
}
