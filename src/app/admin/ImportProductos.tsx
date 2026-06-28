'use client'
import { useState } from 'react'
import { previewProductos, importarProductos, ProductoImport } from './actions'

function parseCsv(text: string): ProductoImport[] {
  const lines = text.trim().split('\n')
  if (lines.length < 2) return []
  const headers = lines[0].split(',').map(h => h.trim().toLowerCase().replace(/\s+/g, '_'))

  return lines.slice(1).map(line => {
    const vals = line.split(',')
    const get  = (names: string[]) => {
      for (const n of names) {
        const i = headers.indexOf(n)
        if (i >= 0) return vals[i]?.trim().replace(/^"|"$/g, '') ?? ''
      }
      return ''
    }
    return {
      nombre:                get(['nombre', 'name', 'producto']),
      sku:                   get(['sku', 'codigo', 'code']) || undefined,
      precio_venta:          parseFloat(get(['precio_venta', 'precio', 'price'])) || 0,
      costo_promedio_actual: parseFloat(get(['costo_promedio_actual', 'costo', 'cost'])) || undefined,
      stock_disponible:      parseInt(get(['stock_disponible', 'stock'])) || 0,
    }
  }).filter(r => r.nombre)
}

export default function ImportProductos() {
  const [stage,   setStage]   = useState<'idle' | 'preview' | 'done'>('idle')
  const [rows,    setRows]    = useState<ProductoImport[]>([])
  const [loading, setLoading] = useState(false)
  const [result,  setResult]  = useState<{ creados: number; actualizados: number } | null>(null)
  const [error,   setError]   = useState('')

  async function handleFile(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0]
    if (!file) return
    setLoading(true); setError('')
    try {
      const text    = await file.text()
      const parsed  = parseCsv(text)
      if (parsed.length === 0) { setError('No se encontraron filas válidas en el CSV.'); setLoading(false); return }
      const preview = await previewProductos(parsed)
      setRows(preview)
      setStage('preview')
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Error al leer el archivo.')
    } finally {
      setLoading(false)
    }
  }

  async function handleConfirm() {
    setLoading(true); setError('')
    try {
      const res = await importarProductos(rows.filter(r => r.accion !== 'omitir'))
      setResult(res)
      setStage('done')
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Error al importar.')
    } finally {
      setLoading(false)
    }
  }

  function reset() {
    setStage('idle'); setRows([]); setResult(null); setError('')
  }

  const accionColor = (a: string | undefined) =>
    a === 'crear' ? 'var(--green)' : a === 'actualizar' ? 'var(--amber)' : 'var(--text-3)'

  if (stage === 'done' && result) {
    return (
      <div className="space-y-3">
        <div className="rounded-lg px-4 py-3 text-sm" style={{background:'#0a1f0a', border:'1px solid #1a4a1a'}}>
          <p style={{color:'var(--green)'}} className="font-semibold">Importación completada</p>
          <p className="text-muted mt-1">{result.creados} productos creados · {result.actualizados} actualizados</p>
        </div>
        <button onClick={reset} className="btn-ghost text-xs">Importar otro archivo</button>
      </div>
    )
  }

  if (stage === 'preview') {
    const crear      = rows.filter(r => r.accion === 'crear').length
    const actualizar = rows.filter(r => r.accion === 'actualizar').length
    const omitir     = rows.filter(r => r.accion === 'omitir').length

    return (
      <div className="space-y-3">
        <div className="flex gap-4 text-xs">
          <span style={{color:'var(--green)'}}>● {crear} nuevos</span>
          <span style={{color:'var(--amber)'}}>● {actualizar} a actualizar</span>
          {omitir > 0 && <span className="text-faint">● {omitir} omitidos</span>}
        </div>

        <div className="rounded-lg overflow-hidden" style={{border:'1px solid var(--border)'}}>
          <table className="w-full text-xs">
            <thead className="table-head">
              <tr>
                <th className="th">Nombre</th>
                <th className="th text-right">Precio</th>
                <th className="th text-right">Costo</th>
                <th className="th text-right">Stock</th>
                <th className="th">Acción</th>
              </tr>
            </thead>
            <tbody className="table-divider">
              {rows.map((r, i) => (
                <tr key={i} className="tr-hover">
                  <td className="td">{r.nombre}</td>
                  <td className="td text-right">{r.precio_venta > 0 ? `RD$ ${r.precio_venta.toFixed(2)}` : '—'}</td>
                  <td className="td text-right text-muted">{r.costo_promedio_actual ? `RD$ ${r.costo_promedio_actual.toFixed(2)}` : '—'}</td>
                  <td className="td text-right text-muted">{r.stock_disponible ?? 0}</td>
                  <td className="td">
                    <span className="text-xs font-medium" style={{color: accionColor(r.accion)}}>
                      {r.accion === 'crear' ? '+ Crear' : r.accion === 'actualizar' ? '~ Actualizar' : '— Omitir'}
                    </span>
                    {r.motivo && <span className="text-faint ml-1">({r.motivo})</span>}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>

        {error && <p className="text-xs" style={{color:'var(--red)'}}>{error}</p>}

        <div className="flex gap-3">
          <button onClick={handleConfirm} disabled={loading} className="btn-primary text-sm">
            {loading ? 'Importando...' : `Confirmar importación (${crear + actualizar})`}
          </button>
          <button onClick={reset} className="btn-ghost text-sm">Cancelar</button>
        </div>
      </div>
    )
  }

  return (
    <div className="space-y-3">
      <div className="rounded-lg border-2 border-dashed p-6 text-center cursor-pointer hover:border-indigo-600 transition-colors"
        style={{borderColor:'var(--border)'}}
        onClick={() => document.getElementById('csv-input')?.click()}>
        <p className="text-sm text-muted">Haz click para seleccionar un archivo CSV</p>
        <p className="text-xs text-faint mt-1">Columnas esperadas: nombre, precio_venta, costo, stock</p>
        <input id="csv-input" type="file" accept=".csv" className="hidden" onChange={handleFile} />
      </div>
      {loading && <p className="text-xs text-muted text-center">Analizando archivo...</p>}
      {error   && <p className="text-xs" style={{color:'var(--red)'}}>{error}</p>}
    </div>
  )
}
