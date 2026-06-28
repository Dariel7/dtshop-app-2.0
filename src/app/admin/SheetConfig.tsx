'use client'
import { useState, useTransition } from 'react'
import { updateSheetId } from './actions'

export default function SheetConfig({ initialId }: { initialId: string }) {
  const [value,   setValue]   = useState(initialId)
  const [msg,     setMsg]     = useState<{ text: string; ok: boolean } | null>(null)
  const [pending, start]      = useTransition()

  function handleSave() {
    start(async () => {
      const res = await updateSheetId(value)
      setMsg({ text: res.ok ? 'Guardado — el próximo sync usará este Sheet.' : (res.error ?? 'Error'), ok: res.ok })
      setTimeout(() => setMsg(null), 4000)
    })
  }

  // Extraer ID si pegan la URL completa
  function handleChange(raw: string) {
    const match = raw.match(/\/spreadsheets\/d\/([a-zA-Z0-9_-]+)/)
    setValue(match ? match[1] : raw)
  }

  return (
    <div className="space-y-2">
      <div className="flex gap-2">
        <input
          className="input flex-1 font-mono text-xs"
          placeholder="ID del Sheet o URL completa"
          value={value}
          onChange={e => handleChange(e.target.value)}
        />
        <button
          className="btn-primary shrink-0"
          onClick={handleSave}
          disabled={pending || value === initialId}
        >
          {pending ? 'Guardando...' : 'Guardar'}
        </button>
      </div>
      <p className="text-xs text-faint">
        Pega el ID o la URL completa del Sheet. El sheet debe ser público (cualquiera con el enlace puede ver).
      </p>
      {msg && (
        <p className="text-xs font-medium" style={{ color: msg.ok ? 'var(--green)' : 'var(--red)' }}>
          {msg.text}
        </p>
      )}
    </div>
  )
}
