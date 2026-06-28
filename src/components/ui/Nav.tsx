'use client'
import Link from 'next/link'
import { usePathname } from 'next/navigation'

const NAV_LINKS = [
  { href: '/',              label: 'Dashboard' },
  { href: '/pedidos',       label: 'Pedidos' },
  { href: '/inventario',    label: 'Inventario' },
  { href: '/compras',       label: 'Compras' },
  { href: '/liquidaciones', label: 'Liquidaciones' },
  { href: '/reportes',      label: 'Reportes' },
]

export default function Nav() {
  const path = usePathname()

  const isActive = (href: string) =>
    href === '/' ? path === '/' : path.startsWith(href)

  return (
    <nav style={{ background: '#0d0d0d', borderBottom: '1px solid #1f1f1f' }}>
      <div className="max-w-7xl mx-auto px-4 flex items-center h-14 gap-1">
        {/* Logo */}
        <Link href="/" className="font-bold text-white mr-3 text-sm tracking-tight shrink-0">
          DT<span style={{color:'var(--indigo)'}}>Shop</span>
        </Link>

        {/* Separator */}
        <div className="w-px h-5 shrink-0" style={{background:'#2a2a2a'}} />

        {/* Main links */}
        <div className="flex items-center gap-0.5 flex-1 overflow-x-auto scrollbar-none ml-2">
          {NAV_LINKS.map(l => (
            <Link
              key={l.href}
              href={l.href}
              className={`px-3 py-1.5 rounded-lg text-xs font-medium whitespace-nowrap transition-colors ${
                isActive(l.href)
                  ? 'bg-indigo-600 text-white'
                  : 'text-neutral-400 hover:text-white hover:bg-neutral-800'
              }`}
            >
              {l.label}
            </Link>
          ))}
        </div>

        {/* Admin — al extremo derecho */}
        <Link
          href="/admin"
          className={`ml-2 px-3 py-1.5 rounded-lg text-xs font-medium shrink-0 transition-colors ${
            path.startsWith('/admin')
              ? 'bg-neutral-700 text-white'
              : 'text-neutral-600 hover:text-neutral-300 hover:bg-neutral-800'
          }`}
        >
          ⚙ Admin
        </Link>
      </div>
    </nav>
  )
}
