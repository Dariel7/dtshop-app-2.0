-- Habilitar RLS y dar lectura pública (anon) a las tablas principales
-- Escritura solo via service_role (funciones RPC del backend)

ALTER TABLE pedidos                   ENABLE ROW LEVEL SECURITY;
ALTER TABLE pedido_items              ENABLE ROW LEVEL SECURITY;
ALTER TABLE clientes                  ENABLE ROW LEVEL SECURITY;
ALTER TABLE productos                 ENABLE ROW LEVEL SECURITY;
ALTER TABLE canales_cobro             ENABLE ROW LEVEL SECURITY;
ALTER TABLE cuentas_por_cobrar_pedido ENABLE ROW LEVEL SECURITY;
ALTER TABLE liquidaciones             ENABLE ROW LEVEL SECURITY;
ALTER TABLE liquidacion_pedidos       ENABLE ROW LEVEL SECURITY;
ALTER TABLE movimientos_inventario    ENABLE ROW LEVEL SECURITY;
ALTER TABLE catalogo_cuentas          ENABLE ROW LEVEL SECURITY;
ALTER TABLE periodos_contables        ENABLE ROW LEVEL SECURITY;
ALTER TABLE campanas                  ENABLE ROW LEVEL SECURITY;
ALTER TABLE centros_costo             ENABLE ROW LEVEL SECURITY;
ALTER TABLE capital_aportes           ENABLE ROW LEVEL SECURITY;
ALTER TABLE asientos_contables        ENABLE ROW LEVEL SECURITY;
ALTER TABLE movimientos_contables     ENABLE ROW LEVEL SECURITY;
ALTER TABLE account_balances          ENABLE ROW LEVEL SECURITY;
ALTER TABLE event_types               ENABLE ROW LEVEL SECURITY;

-- Políticas de lectura para anon (la app lee con la anon key)
CREATE POLICY "anon_read" ON pedidos                   FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON pedido_items              FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON clientes                  FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON productos                 FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON canales_cobro             FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON cuentas_por_cobrar_pedido FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON liquidaciones             FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON liquidacion_pedidos       FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON movimientos_inventario    FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON catalogo_cuentas          FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON periodos_contables        FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON campanas                  FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON centros_costo             FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON capital_aportes           FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON asientos_contables        FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON movimientos_contables     FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON account_balances          FOR SELECT TO anon USING (true);
CREATE POLICY "anon_read" ON event_types               FOR SELECT TO anon USING (true);

-- Escritura total para service_role (inserts desde el backend/formularios)
CREATE POLICY "service_all" ON pedidos                   FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON pedido_items              FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON clientes                  FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON productos                 FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON canales_cobro             FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON cuentas_por_cobrar_pedido FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON liquidaciones             FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON liquidacion_pedidos       FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON movimientos_inventario    FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON catalogo_cuentas          FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON periodos_contables        FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON campanas                  FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON centros_costo             FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON capital_aportes           FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON asientos_contables        FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON movimientos_contables     FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON account_balances          FOR ALL TO service_role USING (true);
CREATE POLICY "service_all" ON event_types               FOR ALL TO service_role USING (true);
