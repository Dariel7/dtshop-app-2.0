'use client'
import { useState } from 'react'
import { exportarProductos, exportarPedidos, exportarClientes } from './actions'

function downloadCsv(csv: string, filename: string) {
  const blob = new Blob(['﻿' + csv], { type: 'text/csv;charset=utf-8;' })
  const url  = URL.createObjectURL(blob)
  const a    = document.createElement('a')
  a.href     = url
  a.download = filename
  a.click()
  URL.revokeObjectURL(url)
}

export default function ExportButtons() {
  const [loading, setLoading] = useState<string | null>(null)

  async function handle(type: 'productos' | 'pedidos' | 'clientes') {
    setLoading(type)
    try {
      let csv = ''
      const date = new Date().toISOString().slice(0, 10)
      if (type === 'productos') { csv = await exportarProductos(); downloadCsv(csv, `dtshop-productos-${date}.csv`) }
      if (type === 'pedidos')   { csv = await exportarPedidos();   downloadCsv(csv, `dtshop-pedidos-${date}.csv`) }
      if (type === 'clientes')  { csv = await exportarClientes();  downloadCsv(csv, `dtshop-clientes-${date}.csv`) }
    } finally {
      setLoading(null)
    }
  }

  const btns: { key: 'productos' | 'pedidos' | 'clientes'; label: string }[] = [
    { key: 'productos', label: 'Productos' },
    { key: 'pedidos',   label: 'Pedidos'   },
    { key: 'clientes',  label: 'Clientes'  },
  ]

  return (
    <div className="flex flex-wrap gap-2">
      {btns.map(b => (
        <button
          key={b.key}
          onClick={() => handle(b.key)}
          disabled={loading !== null}
          className="btn-ghost text-xs px-3 py-1.5 border"
          style={{ borderColor: 'var(--border)' }}
        >
          {loading === b.key ? 'Descargando...' : `↓ ${b.label}`}
        </button>
      ))}
    </div>
  )
}
