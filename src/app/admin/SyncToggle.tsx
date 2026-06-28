'use client'
import { useTransition, useState } from 'react'
import { toggleSync } from './actions'

export default function SyncToggle({ initialActive }: { initialActive: boolean }) {
  const [active, setActive] = useState(initialActive)
  const [pending, startTransition] = useTransition()
  const [msg, setMsg] = useState<string | null>(null)

  function handleToggle() {
    const next = !active
    startTransition(async () => {
      const res = await toggleSync(next)
      if (res.ok) {
        setActive(next)
        setMsg(next ? 'Sync activado' : 'Sync desactivado')
      } else {
        setMsg(`Error: ${res.error}`)
      }
      setTimeout(() => setMsg(null), 3000)
    })
  }

  return (
    <div className="flex items-center gap-4">
      <button
        onClick={handleToggle}
        disabled={pending}
        className={`relative inline-flex h-7 w-12 items-center rounded-full transition-colors focus:outline-none disabled:opacity-50 ${
          active ? 'bg-indigo-600' : 'bg-gray-300'
        }`}
      >
        <span
          className={`inline-block h-5 w-5 transform rounded-full bg-white shadow transition-transform ${
            active ? 'translate-x-6' : 'translate-x-1'
          }`}
        />
      </button>
      <span className="text-sm text-gray-600">
        {pending ? 'Guardando...' : active ? 'Activo — cada 1 minuto' : 'Desactivado'}
      </span>
      {msg && (
        <span className={`text-sm font-medium ${msg.startsWith('Error') ? 'text-red-600' : 'text-green-600'}`}>
          {msg}
        </span>
      )}
    </div>
  )
}
