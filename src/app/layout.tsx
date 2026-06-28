import type { Metadata } from 'next'
import './globals.css'
import Nav from '@/components/ui/Nav'

export const metadata: Metadata = {
  title: 'DT Shop ERP',
  description: 'Sistema de gestión DT Shop',
}

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="es" className="dark">
      <body className="min-h-screen flex flex-col">
        <Nav />
        <main className="flex-1 max-w-7xl mx-auto w-full px-4 py-6">
          {children}
        </main>
      </body>
    </html>
  )
}
