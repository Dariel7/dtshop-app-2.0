export const ESTADO_LABEL: Record<string, string> = {
  pendiente:       'Pendiente',
  confirmado:      'Confirmado',
  entregado:       'Entregado',
  para_devolucion: 'Para devolución',
  devuelto:        'Devuelto',
  cancelado:       'Cancelado',
}

export const ESTADO_BADGE: Record<string, string> = {
  pendiente:       'badge-warn',
  confirmado:      'badge-blue',
  entregado:       'badge-ok',
  para_devolucion: 'badge-err',
  devuelto:        'badge-neutral',
  cancelado:       'badge-err',
}

export function fmtFecha(iso: string | null | undefined): string {
  if (!iso) return '—'
  const d = new Date(iso)
  return d.toLocaleDateString('es-DO', { day: '2-digit', month: 'short', year: 'numeric' })
}
