'use client'
import Link from 'next/link'
import { usePathname } from 'next/navigation'

const links = [
  { href: '/',              label: 'Dashboard' },
  { href: '/pedidos',       label: 'Pedidos' },
  { href: '/inventario',    label: 'Inventario' },
  { href: '/compras',       label: 'Compras' },
  { href: '/liquidaciones', label: 'Liquidaciones' },
  { href: '/reportes',      label: 'Reportes' },
]

export default function Nav() {
  const path = usePathname()
  return (
    <nav className="bg-white border-b border-gray-200 dark:bg-gray-900 dark:border-gray-800">
      <div className="max-w-7xl mx-auto px-4 flex items-center gap-1 h-14">
        <span className="font-bold text-indigo-400 mr-4 text-base">DT Shop</span>
        {links.map(l => (
          <Link
            key={l.href}
            href={l.href}
            className={`px-3 py-1.5 rounded-lg text-sm font-medium transition-colors ${
              path === l.href || (l.href !== '/' && path.startsWith(l.href))
                ? 'bg-indigo-900/50 text-indigo-300'
                : 'text-gray-400 hover:bg-gray-800 hover:text-gray-100'
            }`}
          >
            {l.label}
          </Link>
        ))}
      </div>
    </nav>
  )
}
