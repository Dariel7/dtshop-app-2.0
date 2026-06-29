-- =============================================================================
-- DT Shop — Migración histórica desde CSV (generado automáticamente)
-- Total pedidos: 345 | Rango: #1004 – #1357
-- =============================================================================

BEGIN;

-- ============================================================
-- 1. PRODUCTOS
-- ============================================================

INSERT INTO productos (nombre, precio_venta, stock_disponible, activo)
SELECT 'Aceite Facial de Limpieza Profunda', 0, 0, true
WHERE NOT EXISTS (SELECT 1 FROM productos WHERE lower(nombre) = lower('Aceite Facial de Limpieza Profunda'));

INSERT INTO productos (nombre, precio_venta, stock_disponible, activo)
SELECT 'Almohadillas Coreanas Anti Manchas', 0, 0, true
WHERE NOT EXISTS (SELECT 1 FROM productos WHERE lower(nombre) = lower('Almohadillas Coreanas Anti Manchas'));

INSERT INTO productos (nombre, precio_venta, stock_disponible, activo)
SELECT 'Báscula Digital', 0, 0, true
WHERE NOT EXISTS (SELECT 1 FROM productos WHERE lower(nombre) = lower('Báscula Digital'));

INSERT INTO productos (nombre, precio_venta, stock_disponible, activo)
SELECT 'Báscula Inteligente', 0, 0, true
WHERE NOT EXISTS (SELECT 1 FROM productos WHERE lower(nombre) = lower('Báscula Inteligente'));

INSERT INTO productos (nombre, precio_venta, stock_disponible, activo)
SELECT 'Cepillo Desenredante Hidratante 2-en-1 – Peina Sin Dolor y Reduce el Frizz', 0, 0, true
WHERE NOT EXISTS (SELECT 1 FROM productos WHERE lower(nombre) = lower('Cepillo Desenredante Hidratante 2-en-1 – Peina Sin Dolor y Reduce el Frizz'));

INSERT INTO productos (nombre, precio_venta, stock_disponible, activo)
SELECT 'Corrector de Cicatrices', 0, 0, true
WHERE NOT EXISTS (SELECT 1 FROM productos WHERE lower(nombre) = lower('Corrector de Cicatrices'));

INSERT INTO productos (nombre, precio_venta, stock_disponible, activo)
SELECT 'Espejo LED Profesional Recargable con 3 Modos de Luz', 0, 0, true
WHERE NOT EXISTS (SELECT 1 FROM productos WHERE lower(nombre) = lower('Espejo LED Profesional Recargable con 3 Modos de Luz'));

INSERT INTO productos (nombre, precio_venta, stock_disponible, activo)
SELECT 'Luces LED Inteligentes (Pack 2 unidades)', 0, 0, true
WHERE NOT EXISTS (SELECT 1 FROM productos WHERE lower(nombre) = lower('Luces LED Inteligentes (Pack 2 unidades)'));

INSERT INTO productos (nombre, precio_venta, stock_disponible, activo)
SELECT 'Luz LED RGB - Recargable - Magnética', 0, 0, true
WHERE NOT EXISTS (SELECT 1 FROM productos WHERE lower(nombre) = lower('Luz LED RGB - Recargable - Magnética'));

INSERT INTO productos (nombre, precio_venta, stock_disponible, activo)
SELECT 'Luz solar con sensor', 0, 0, true
WHERE NOT EXISTS (SELECT 1 FROM productos WHERE lower(nombre) = lower('Luz solar con sensor'));

INSERT INTO productos (nombre, precio_venta, stock_disponible, activo)
SELECT 'Meno Vitamina', 0, 0, true
WHERE NOT EXISTS (SELECT 1 FROM productos WHERE lower(nombre) = lower('Meno Vitamina'));

INSERT INTO productos (nombre, precio_venta, stock_disponible, activo)
SELECT 'Parches para Ojeras y Bolsas Bajo los Ojos', 0, 0, true
WHERE NOT EXISTS (SELECT 1 FROM productos WHERE lower(nombre) = lower('Parches para Ojeras y Bolsas Bajo los Ojos'));

-- ============================================================
-- 2. CANALES DE COBRO (couriers)
-- ============================================================

INSERT INTO canales_cobro (nombre, tipo_comision, activo)
SELECT 'Aurel', 'ninguno', true
WHERE NOT EXISTS (SELECT 1 FROM canales_cobro WHERE lower(nombre) = lower('Aurel'));

INSERT INTO canales_cobro (nombre, tipo_comision, activo)
SELECT 'Gintracom', 'ninguno', true
WHERE NOT EXISTS (SELECT 1 FROM canales_cobro WHERE lower(nombre) = lower('Gintracom'));

INSERT INTO canales_cobro (nombre, tipo_comision, activo)
SELECT 'Motorizado', 'ninguno', true
WHERE NOT EXISTS (SELECT 1 FROM canales_cobro WHERE lower(nombre) = lower('Motorizado'));

-- ============================================================
-- 3. CLIENTES (deduplicados por teléfono)
-- ============================================================

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Deyanira -', '12039421948', 'Recidencial paradise villa C15'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '12039421948');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Eladio Díaz', '12155326857', 'Calle 2 barrio indri'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '12155326857');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Kelele Ninja', '12155432043', 'San isidro'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '12155432043');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Robert -', '13479610412', 'Calle Puerto Rico número 44 de Sánchez Ozama'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '13479610412');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ada almanzar', '14074337209', 'Urbanización maría cristina #3'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '14074337209');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Isidora abreu ventura', '14233135467', 'Calle Santa Cruz de tenerife Parmal mirador #48 hondura Republica Dominicana'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '14233135467');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yelixfer -', '14802384270', 'Av sol poniente'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '14802384270');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Joel villaman', '14807575513', 'Calls interior H 15'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '14807575513');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Sujey pina nuñez', '17063068358', 'Calle la joya #53'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '17063068358');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'ANA TINEO', '17188261828', 'Valle berde 2 calle 5 casa 2'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '17188261828');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Efrain Díaz', '17874108976', 'Calle Los Compadres 3 Caleta campo lindo Boca Chica'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '17874108976');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Kirsy  de la cruz -', '18092039189', 'Piedra blanca del salto después del campo de golf'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092039189');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'joseph  prophil -', '18092078178', 'Sabana larga frente el mercado binacional'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092078178');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Sires y encarnacion jaquez', '18092080883', 'Cristo salvador calle respaldo Colón sin número'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092080883');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Juan -', '18092081135', 'La victoria'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092081135');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Junior Valentín', '18092090404', 'Torre Río, tercer nivel, suite 306'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092090404');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Diogenes del rosario', '18092090735', 'Pepe Santana'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092090735');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'cesar martinez', '18092129434', 'callé circunvalación'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092129434');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wascar -', '18092199482', 'Av. Charles de Gaulle no. 66 justo al lado de la sirena'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092199482');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jose cruz809 223 1455', '18092231455', 'C/ ir mirador del arroyo casa #6 urb ladera  de Arroyo hondo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092231455');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Hugo Badia', '18092232991', 'Calle 7 casa 117  jardines del este'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092232991');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ignaqui Estevez', '18092237592', 'Calle 6'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092237592');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Mirna ortiz', '18092238154', '16 de agosto no. 11'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092238154');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jesús Lantigua', '18092242915', 'Calle Duarte esquina padre castellanos (segunda planta edificio circuito Musa)'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092242915');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Isis bautista', '18092247111', 'Ave. Abraham Lincoln 962 edificio Osiris'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092247111');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Kilsis Gonzalez', '18092248867', 'Calle pedernales'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092248867');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Isaac Ogando Rojas', '18092308451', 'Complejo deportivo de Bayaguana'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092308451');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Julio Vallejo', '18092324975', 'Calle progreso 07 brisas del Este.'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092324975');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Maria -', '18092325330', 'La colonia'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092325330');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'José Alberto Santos', '18092507891', 'C/ interior B14, Alma Rosa Segunda'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092507891');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ana g Duluc', '18092563750', 'ALTAGRACIA #69'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092563750');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Tomas -', '18092566799', 'Los Cajules el Seibo  casa # 19'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092566799');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Arlene Faneyte', '18092584145', 'C/Federico Geraldino 44, Torre Almaden IV, Apto.11-01'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092584145');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Domingo Melenciano De La Cruz', '18092600999', 'Rumaldo solano #5 Sabaneta El Carril Haina'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092600999');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Juan Carlos Zamora', '18092640135', 'Res. Don Julián #22. Sector La Villa; C/Los Santos.'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092640135');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Mayi -', '18092659212', '-'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092659212');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carlos Ferreras', '18092702369', 'Av. Las Viñas#61'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092702369');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rudy de la cruz', '18092817202', 'Los indios 48 barrio lindo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092817202');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Nicola de la cruz', '18092823749', 'Via prinsipal'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092823749');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'ARISMENDY López', '18092995266', 'Presidencial, La Palma, calle Palma, Real, esquina, licuada número uno'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092995266');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Sujey Martínez', '18092999286', 'Calle mella #83nizao'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18092999286');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'francis rosario', '18093033305', 'Cabuya 33 mirador del este'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093033305');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ana -', '18093033786', 'Fantino falco 43 edificio naco real apto 1bn Frente al salón palacio de la belleza'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093033786');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yvelisse Almanzar', '18093109330', 'Calla Plutón no 9 Residencial Galaxia'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093109330');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yeremy Perez', '18093236866', 'Calle oeste número 65 los frailes 1'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093236866');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dominica Rosario', '18093359154', 'Km 19 las Américas en el sector La Ureña'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093359154');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wendely Díaz', '18093438667', 'Detrás de CEMP , Cuidad las Cayenas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093438667');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Elgin Alberto Richiez', '18093505632', 'M 18 c 41, Residencial Romana'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093505632');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Roberto -', '18093506933', 'Higuey los morales'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093506933');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Gustavo cid', '18093507553', 'Prinvipal'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093507553');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yoselyn -', '18093509463', 'Yunbo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093509463');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Adelso -', '18093525711', 'C/ Jesús Diplan #45'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093525711');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Adriana -', '18093527277', 'La vega'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093527277');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Toni -', '18093527370', 'Los frailes primero'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093527370');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jorge Luis Jorge cabrera', '18093573814', 'Calle Altagracia esquina luperon plaza empire local  #5'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093573814');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Francisco -', '18093605881', 'Calle asomante #41'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093605881');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Francis soler', '18093714992', 'Mercado nuevo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093714992');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wilbert Geffrard', '18093767066', 'Calle circunvalación B #4 Villa Francés ( Súper Mercado Olé'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093767066');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Anabell -', '18093862130', 'San vicente de Paul, dentro del megacentro'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093862130');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rolando rosado', '18093908874', 'Av jimenez moya #4 bella vista'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093908874');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Victor sanchez', '18093913962', '21 de enero'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093913962');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Gerson Escanio matos', '18093925008', 'Distrito municipal de palo alto'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093925008');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Juan Antonio', '18093947668', 'Aguas Buenas No. 18'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093947668');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Manolo Divalon', '18093967246', 'calle los maestro 13'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093967246');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Helen -', '18093999327', 'Carretera Higüey , yuma km 1 , Auto Haus , a Higüey , la Altagracua'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18093999327');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Miguel angel frías Cruz', '18094155830', 'Avenida España, Lobato  de Friusa y yo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094155830');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Summer -', '18094327705', 'Colina de la Riviera edificio E apt 3'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094327705');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carlos -', '18094381241', 'Benito moncion'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094381241');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Héctor Lebron', '18094445203', 'Av. Máximo Gomez ministerio de educación'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094445203');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Juan Antonio Mejia Ruiz', '18094478537', 'Calle 2da. NO. 8,URB.MRRBELLA 2DA.LOS FRAILES ll'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094478537');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Fausto -', '18094492880', 'Hotel Rancho Guacamayo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094492880');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Natanael javier', '18094497262', 'C/ Carlos Manuel pumarol km 4 frente al complejo deportivo Ray de Tampa bay'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094497262');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Alexandra de los Santos', '18094543293', 'Barrio hoyo del cacao, sector la bujuquera, colmado Alvarez'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094543293');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rachel -', '18094601929', 'Vicente Celetino Duarte'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094601929');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Daniela espallat', '18094609908', 'Manoguayabo 27 de febrero'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094609908');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'raphael castillo', '18094616236', 'Duarte #30,,bocacanasta ,bani'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094616236');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yadara gonzalez', '18094743296', 'Frente a la escuela vocacional'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094743296');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jesús castillo', '18094866174', 'Brisa del llano, próximo a la villa de Alondra'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094866174');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Clásico flow', '18094882949', 'Quita sueño de Haina'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094882949');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rafael Díaz Filpo', '18094898149', 'Torre Sherry'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094898149');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dolores acosta s', '18094903973', 'Chicago calle primera #980'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094903973');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yasmín reyes', '18094952270', 'Autopista Duarte km 12 la penda'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094952270');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yowanda -', '18094959187', 'Calle luperon'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094959187');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Kailis inoska', '18094986812', 'Avenida constitución #95'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18094986812');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ana Francisco', '18095072372', 'Calle 41 esq 2 del invi las colinas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18095072372');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Michael Aybar', '18095075448', 'Avenida Fabio Herrera Residencial Don Marcelo #44 sector Bocacanasta'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18095075448');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Briank -', '18095132845', 'Joaquín Balaguer / villa cerro #16'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18095132845');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'José augusto nuñez', '18095139156', 'Lo ciruelo montellano'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18095139156');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Daneivis Lissett', '18095162284', 'Cjon B, Av. México 50'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18095162284');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Pedro Reyes', '18095193436', 'Calle Manuel de Jesús Silverio #62'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18095193436');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Mauricio de jesus', '18095193725', 'Darío franco'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18095193725');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ysabel  Contreras -', '18095197969', 'Ciudad las palmas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18095197969');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rolando Calderon', '18095336510', 'Av.jose Contreras no.99 edificio empresarial Calderón'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18095336510');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Hugo paula', '18095430732', 'Avenida libertad #06'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18095430732');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Fernando Tiquitik', '18095562341', 'Dajabon, el piñon frente colmado la salvacion'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18095562341');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Samira santana', '18096091142', 'Pradecalle 27 Oeste Esquina Cul De Sac 4ras Del Parque 2esq cul de SAC 4oas praderas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096091142');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ronald -', '18096097448', 'Ernesto de la massa 104'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096097448');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Hilario -', '18096134815', 'Miguel de regla mota #1 urbanización blanquizales'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096134815');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Freddy baez', '18096186841', 'Abigail 10 Cristo rey dan juan'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096186841');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Elvio -', '18096271100', 'Calle belén #3 bario 5to centenario'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096271100');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Andrés Contreras', '18096276877', 'Calle la torre barrio gringo #23'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096276877');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Katherine Sánchez', '18096379236', 'Avenida Alemania, Plaza Gran Caribe. Musas Esthetic Spa'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096379236');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Alfredo Belén', '18096500077', 'Calle 2da #3 proyecto Ana Gabriela santa fez próximo a la oficina de medio ambiente'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096500077');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'audy -', '18096502079', 'ave  lincoln , plaza francesa'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096502079');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Andy de Jesús peña', '18096547027', 'Carretera Verón Punta cana # 23 urbanización lantigua'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096547027');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Marcet -', '18096605900', 'Restauración 64'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096605900');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'José Vargas', '18096641095', 'Calle 14, edeificio Mariela, número 15, cerro don Antonio, santiago'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096641095');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'José frias', '18096670441', 'Calle sanche númer 4nunmercado nuevo frente a donde venden los plátanos en nuestro negocio'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096670441');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Solanyi díaz', '18096675356', 'Calle 5 peña Gómez dos'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096675356');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Teresa Sánchez', '18096677745', 'Calle Duarte #18,sector la Carolina,  Hacienda Estrella'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096677745');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Leonela peña', '18096690450', 'Calle José Francisco peña Gómez  barrio manteadentro'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096690450');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Félix Santana', '18096690797', 'Las Terrenas calle bulevar el portillo rotonda'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096690797');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jose n', '18096692780', 'Rafael Hernández 16 B naco'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096692780');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Francis -', '18096727400', 'Complejo Iberostar Bavaro'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096727400');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ambar Castro', '18096761626', 'Calle marino Pérez #8 las colinas 1'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096761626');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'María Santana', '18096775094', 'Avenida Olímpica calle la barranquita número.1'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096775094');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ramón -', '18096938564', 'Los fraile segundo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096938564');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Damari uben zapata', '18096943823', 'Vista cana paseo del cendero lake paradise villa 2'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096943823');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Luis Rosario', '18096971722', 'Calle puerto Rico edificio patricia apartamento 4c'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096971722');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ashlyt vanessa', '18096975969', 'Ciudad las cayenas 68-203'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18096975969');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Lívida -', '18097044919', 'Leonardo davinci 20'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097044919');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carlos -', '18097055896', 'Mella  número 106 frénateal banco de reservas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097055896');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Blas Abreu', '18097058923', 'Av Romulo Betancourt No. 1149, Plaza Daviana, Mirador Norte'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097058923');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Nerys Martinez', '18097060121', 'Carretera Jacagua No 65, Los ciruelitos Yadira Center Transmisión'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097060121');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yoel Mejía', '18097071794', 'Padre Abreu 96'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097071794');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Osmeldi -', '18097084334', 'Calle Rosario, esq Dr. Alfonseca, plaza SoHo mall, 3 er piso. Módulo c-03'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097084334');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Luis reyes', '18097088918', 'Juan Gomez'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097088918');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Gomez -', '18097092008', 'Carretera mella km 7/5'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097092008');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Francisco Mora Valenzuela', '18097106150', 'Calle2da # 3'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097106150');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Daniel Nuñez', '18097121629', 'Manzana R24'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097121629');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Joanna Martínez', '18097131380', 'Calle Plácida del Río 3'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097131380');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Patricia Inoa', '18097141717', 'Ave Los Roboes #401, Buena Vista Norte'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097141717');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yenli Blue', '18097199920', 'La Ciénaga, frente a la agroquímica La Fiera'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097199920');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yamilex concepcion', '18097208730', 'Fantino frente al parque'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097208730');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Onasi -', '18097477468', 'Canasta'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097477468');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Pedro Romero', '18097492127', 'Residencial punta bavaro'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097492127');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Martha Santana', '18097560758', 'Calle Las Marias 2 C, ALFIMAR'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097560758');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carmen de la cruz', '18097579441', 'Calle colonia 94'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097579441');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Doneisy Bertre', '18097579949', 'Salome Ureña =23'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097579949');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Miguel Angel garcias', '18097585780', 'Calle pupito peguero # 11'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097585780');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Eriana -', '18097587606', 'Calle Mella 33'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097587606');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dafi Guzmán HerediaelE', '18097591177', 'El limón de jimaní'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097591177');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Francisco -', '18097621908', 'C/ Duarte  34'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097621908');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Lisseth -', '18097654627', 'Dirección General de Aduanas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097654627');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dindo -', '18097655438', 'Urbanización la Estancia # 5'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097655438');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Támara Rome', '18097699414', 'Av Pedro Henriquez Ureña No 135 Torre Tellium II apto 1102 La Esperilla'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097699414');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yudelky paulino', '18097717191', 'Doctor tejada florentino floristería yanil tenares'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097717191');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ania Sugey', '18097741525', 'Cooperativa'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097741525');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Steisy Pimentel', '18097744652', 'Sector Ureña calle bethel ferreteria maury'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097744652');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Woolendele -', '18097752138', 'Calle #6'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097752138');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yrene Beaubrun', '18097754364', 'Luz celeste Lara'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097754364');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Mileidys segura', '18097814639', 'Pueblo de bavaro edif britsy apartamento,a301'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097814639');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Elina sánchez', '18097828894', 'Calle  c#14 serro alto'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097828894');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jose -', '18097864429', 'Calle Antonio Valdez Hijo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097864429');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Olga Lidia', '18097869410', 'C/ L #35, Villa Progreso / San Pedro de Macorís'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18097869410');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Miguel de peña', '18098018929', 'García Godoy 60 Suite 107'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098018929');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Maria -', '18098051046', 'Nunez de Caceres 110, plaza mirador'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098051046');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Mirian de leon', '18098053532', 'Detrás de la cancha de la cueva de cevicos'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098053532');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Luis -', '18098178550', 'Francisco Villa espesa #240 ensanche la fe'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098178550');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Alphi Ruiz', '18098189221', 'Calle segunda, edificio H&S 2 apartamento 203, detrás de repuesto sandro'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098189221');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wanda ESMERLIN', '18098270453', 'Luis Adolfo Castillo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098270453');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jhonny peralta santos', '18098274553', 'Costambar calle gurabito condominio luperon edf#7 apto #1'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098274553');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Claudia Rodríguez', '18098277992', 'Calle Américo Lugo vigil díaz n#158'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098277992');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'sagrario isabel', '18098350530', 'Urbanizacion el silencio calle bromelia  casa 12'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098350530');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Robert De paula', '18098353450', 'Principal'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098353450');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Nelson Mercedes', '18098415123', 'Los franceses kilometro 1 Gaspar Hernández'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098415123');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Arawak Gonzalez', '18098415781', 'Escribir Antes De Entregar'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098415781');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Manuela -', '18098416286', 'Frente al Play Municipal'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098416286');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Cesar peña Z', '18098432424', 'Dirección regional Cibao sur policía'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098432424');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carlos jimenez', '18098474966', 'carrer veron punta cana plaza coral hotel local#6'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098474966');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ana Contreras', '18098475258', 'Cul de sac 12 colina de los Ríos'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098475258');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jose Reyes', '18098528659', 'Julio Postigo 6'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098528659');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ysmeli Mendoza', '18098531287', 'Calle principal al lado del poso tubular'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098531287');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jose R', '18098541232', 'Ministerio Relaciones Exteriores, ave. Independencia #752, Hacienda San Geronimo, al lado banco agricola'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098541232');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Aquilina.alcequiez. -', '18098564714', 'ManzanaF #4 Residencial Gacela.'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098564714');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Isa -', '18098630590', 'MAritrinida Sánchez madre vieja sur'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098630590');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Mirtha Crisóstomo', '18098633132', 'Calle 20 gurabo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098633132');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Luis moises vanderhorst García', '18098674587', 'Calle el carmen 52b las terrenas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098674587');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Anabel -', '18098734510', 'Ciudad Juan Bosch, residencial dos amigos, edificio 63'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098734510');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Lissette Ubiera Rivera', '18098766087', 'Cámara junior 6, barrio los maestros'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098766087');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Domingo Alexander vanterpool', '18098767442', 'Santa Fe villa blanca en el parquesito'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098767442');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Hirquin -', '18098821680', 'Lo varrancone depue de conani'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098821680');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'José Manuel Bichara', '18098851213', 'Calle Juan Goico Alix #57, Ensanchez ozama'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098851213');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Faustin François', '18098904886', 'Detrás escuela en la Sánchez'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098904886');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'María Pimentel', '18098932150', 'La entrada del hospital nuevo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098932150');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Julia Hernandez', '18098992101', 'Calle 16 de agosto número 57 los Pepines. Centro de la ciudad'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18098992101');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Uilton Rodríguez', '18099076173', 'Villa Vasque Montecristo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099076173');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Francisco Dominguez', '18099090997', 'Calle F No8  residencia don Bolívar'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099090997');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rose belon', '18099094172', 'Cambelen'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099094172');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Deyani Santana', '18099099352', 'Callé Espaillat #75'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099099352');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Manuel -', '18099147713', 'Madre vieja sur'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099147713');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Massiel -', '18099160837', 'Mercado publico bonao'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099160837');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Octavio meran', '18099163968', 'Santa Lucía #2'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099163968');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Anne rose', '18099176522', 'Santiago'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099176522');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Vinicio gonzalez', '18099182254', 'La mercedes calle 8 casa 17'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099182254');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Lisane -', '18099198355', 'Torre real II apt G5'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099198355');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yoly Reyes', '18099210560', 'C/6#25 resd. Brisas del Valle las charcas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099210560');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rosa Mateo', '18099234020', 'Residencial III y IV 181 Madre Vieja Sur  SC'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099234020');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Felicia Reyes', '18099235058', 'Ave. Caonabo #10 torre Taurus III, apartamento 3A'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099235058');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Martin López', '18099243141', 'Los Guallos'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099243141');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yeleini Pujols', '18099319691', 'Avenida guayacanes entrando por apreció'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099319691');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Leonardo Rojas', '18099432899', 'Constructora AMRZ'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099432899');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Evelyn -', '18099522126', 'Calle 13 # 9 Alma Rosa1'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099522126');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Uver -', '18099563946', 'Calle Antonio Guzmán'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099563946');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'caridad gutierrez', '18099620097', 'calle los fallos av. pedro Rivera taller gutierrez'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099620097');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yaritza Gomez', '18099621266', 'Calle 5ta no. 9 Don Juan II'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099621266');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Estefany -', '18099622392', 'Los Castillo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099622392');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Robinson mata', '18099627510', 'Urbanización atlantica calle # 1 , casa # 5 puerto plata'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099627510');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rosa moris', '18099733321', 'Calle Sanchez  #24'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099733321');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rosa Morales', '18099780805', 'Antonio Molano'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099780805');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ambiorys -', '18099811378', 'C1era.31, San Antonio'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099811378');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Noelia suero', '18099831423', 'La unión'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099831423');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'jose -', '18099861297', 'jacobo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099861297');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'HECTOR MONTERO', '18099868600', 'Edifico 5 apto D, manzana 4, Villa Liberación'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099868600');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ana -', '18099908003', 'Esta es la ubicación:   C/ Dr. Nuñez y Dominguez #28 Torre Marevento , La Julia'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099908003');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Liliana viola', '18099946210', 'Doctor Cabral Francisco del rosario zanches'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099946210');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carmen Elizabeth Peña Santos', '18099957037', 'la pared de jarna'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18099957037');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rosa miguelina', '18292082581', 'La mercedes'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292082581');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Paulina -', '18292083525', '24 de abril calle 30 de mayo casa 67'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292083525');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Julio perez', '18292123367', 'Super Mercado Ole, La Caleta'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292123367');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yanirys francois', '18292124186', 'Carretera Seibo km9'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292124186');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Lidia Pacheco', '18292130808', 'Federico Basilis'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292130808');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Leidy -', '18292137363', 'Próceres de la Restauración #168'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292137363');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Paulina perez', '18292189286', 'Carretera,José Duran'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292189286');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Madelyn carela', '18292203816', 'Calle ramon mariano grullon tienda de vape 222 vape store'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292203816');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'José esteves', '18292229192', '27 de febrero 346 mirador norte'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292229192');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Aury Moralez de la rosa', '18292280113', 'Juan José mota # 42'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292280113');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Noemi -', '18292332100', 'Calle principal'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292332100');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yasury Picon feliz', '18292337202', 'Calle José Altagracia matos número 17'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292337202');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Janna Delgado', '18292525114', 'Arenoso, don fermin la vega'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292525114');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Daysi Medina', '18292579997', 'Calle Juan de la Cruz Alvarez no. 1 edificio Reynita Linda'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292579997');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Alexandra Rodriguez', '18292590343', 'Manzana Q Edificio 15 Apartamento 201'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292590343');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Manuela -', '18292603526', 'Villa flores'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292603526');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Caren de Jesús', '18292625101', 'Calle 1ra #24 Isabelita. Casi frente a escuela primaria Escolástica Paez'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292625101');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yaquelin  salcedo -', '18292627281', 'Federico de Jesús garcia #85'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292627281');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Guarionex Acosta', '18292650497', 'Calle Enrriquillo #6 , centro ciudad  .'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292650497');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Julio -', '18292735426', 'Boca chica'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292735426');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'JUANCARLOS -', '18292748863', 'Lotificacion don oxiris calle primera # 4'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292748863');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Kelvin -', '18292801375', 'Carretera San Francisco tenare Layaguiza'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292801375');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Deivi -', '18292801583', '18#44'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292801583');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Joan pilier', '18292848411', 'Ciudad del sol 318'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292848411');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wilfrido -', '18292919115', 'Calle principal #4/ Batey Olivares'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292919115');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Madeline Etienne', '18292963172', 'Las Palomas carretera sabaneta, Residencial Ciprés'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292963172');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'AzLIM MAICA', '18292974315', 'Guayubin'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292974315');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Aney Diaz rojas', '18292977552', 'Pueblo bavaro las palma 21'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18292977552');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Banesa Vargas', '18293011999', 'Coronel Rafael Thomas Fernandez Domínguez Cayenas 3 Edf G 304'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293011999');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Adilca -', '18293034232', 'Reparto del este'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293034232');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Papito almanzar', '18293121305', 'Detra de los bombero'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293121305');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Stalyn -', '18293122530', 'En trada de villa lafe calle maría veron'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293122530');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Amer -', '18293187523', 'Próximo al parque'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293187523');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'George Rivas', '18293200303', 'San Antonio, calle primera casa número 26'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293200303');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Manuela cespedes', '18293250923', 'El casique barahona'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293250923');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Raquel -', '18293273843', 'Los alto de la herradura, calle san vidente de Paul, casa #53'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293273843');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jose -', '18293280170', 'Colmado duran'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293280170');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Mafeo12 -', '18293328024', 'Betty palave'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293328024');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carolin -', '18293341414', 'Cuesta abajo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293341414');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Maria orquidea franco', '18293362430', 'Terrero'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293362430');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Esteban Vasquez', '18293368714', 'La carrera #20 agua loca km15.5de las américas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293368714');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Nancy santana', '18293383837', 'Residencial las palmas manzana 9 casa número 5'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293383837');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Gerardo -', '18293406323', 'Francisco bido 3'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293406323');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Sarah Gonzalez', '18293421155', 'Miguel Ángel Monclus #72, Torre Kairos III, mirador norte (cerca de la Núñez de Cáceres)'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293421155');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Altagracia Hidalgo', '18293421937', 'Los pomos tenares'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293421937');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rita -', '18293425814', 'Azucena 111 Apto E-401 El portal al lado de Pricesmart'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293425814');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Osvaldo Cross', '18293436439', 'Calle Gregorio Luperon No.33'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293436439');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Argenis Rosado', '18293488010', 'La colonia'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293488010');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Joel Joseph', '18293514660', 'La seiba del salado'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293514660');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dolores Luna', '18293528523', 'Calle España Edificio 6 Apartamento 2-2 El Congo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293528523');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jennifer Jean Louis', '18293549511', 'Virgen de la piedra'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293549511');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Johana -', '18293580236', 'Barrio San Pedro'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293580236');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jimena foxan', '18293599082', 'Bario puerto rico a 5 casa del colmado julio'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293599082');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ángel Polanco', '18293691378', 'Calle guayacan Prollerto sol de bavaro'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293691378');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wilton -', '18293755678', 'José Francisco Peña gomes'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293755678');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Anyela María', '18293758025', 'Los Jardines Metropolitanos República del Líbano w6 D Clásico Alquileres'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293758025');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Anabelis -', '18293844745', 'La 27'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293844745');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rafael -', '18293879062', 'Av. Jacobo majluta #23'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293879062');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wander García Santana', '18293885300', 'Villa hermosa'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293885300');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Angélica María frias', '18293904586', 'La Jolla'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293904586');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Juan Antonio De La Cruz Rosario', '18293945204', 'HATILLO SHAMPAÑA NO 60,SANTO DOMINGO OESTE'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293945204');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Nilda  Calderon -', '18293955778', '6 de noviembre Sajuor'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18293955778');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Marina cueva', '18294100274', 'cabarete, casa67 atras de electromueble mario'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294100274');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Victor -', '18294133206', 'Calle 31 esquina2² san Felipe villa mella'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294133206');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Feliciano peralta', '18294216705', 'Calle principal #30 cerro del castillo la trinitaria'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294216705');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Alberto aquino', '18294234620', 'Residencial las palmera 1 madre vieja sur'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294234620');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Joel santos', '18294281465', 'Sábana grande de boya'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294281465');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Diego Henríquez', '18294290249', 'C/ chachito Díaz 137 boca de juma'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294290249');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dahiana Reyes', '18294375038', 'Calle 9 esq niño rizek'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294375038');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wilson Luciano adames', '18294390905', 'Casita linda Villa Europa #3 colmado Valdez'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294390905');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Luis Martinez', '18294481626', 'Bonao - Maimón'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294481626');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dilcia -', '18294527349', 'Presidente Vásquez'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294527349');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ana rosario', '18294561625', 'Los jardines Santiago plaza don pino'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294561625');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Faury -', '18294570284', 'Buena vista primera calle 36 8'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294570284');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wilkin Sanche', '18294616029', 'La balsa'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294616029');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Danerlly Encarnacion', '18294623584', 'Calle Belén Nazaret'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294623584');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Kenia Berenice', '18294652349', 'Calle Juan Bosch'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294652349');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Franck melvin', '18294686298', 'Calles 20 casa #17'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294686298');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Diefet Yambati', '18294793809', 'Calle San Miguel'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294793809');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Katherine Romero', '18294828815', 'Entrada de monte de la jagua, casa número 37'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294828815');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Josué Jimenez', '18294953501', 'Hermanas mirabal'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18294953501');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Juan marte', '18295083273', 'Los tocone'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295083273');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Zuleika altagracia Santana casado', '18295085429', 'Ingenio santafe barrio buenos aires, calle Lluis Felipe de aza . Casa número 6+'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295085429');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Leonor -', '18295091551', 'Pueblo bavaro calle principal'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295091551');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jefferson Baptiste', '18295179182', 'Domingo mais'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295179182');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'David vialet', '18295268109', 'El pocito calle San Rafae'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295268109');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Juana -', '18295271780', 'Av María Trinidad Sánchez número 44 Esperanza'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295271780');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Luisa Sterling', '18295347586', 'Cruce de guayacanes Calle Juaquin Balaguer #3 a 3 casa del repuesto lucilo Domínguez'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295347586');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Odanel Zabala', '18295363411', 'Calle c # 32  el perla antillana'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295363411');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dilenia -', '18295487779', 'Calle jose arturo petez # 6'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295487779');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Nelson Martínez', '18295505583', 'Benerito por el colmadon'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295505583');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Sugeiry magdalin', '18295508009', 'Calle 2 residencial carlin XII apartamento G2'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295508009');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yoryi jose', '18295516193', 'Avenida luperon en la rotonda de pueblo nuevo donde yoryi moloy'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295516193');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Leonel de la cruz', '18295538987', 'Viya nabarro'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295538987');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carolina -', '18295546408', 'Calle Omar torrijo 4 ballona'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295546408');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Luceliz -', '18295567059', 'Embrujo 3 calle Ana Jiménez residencial balcones universitarios 3 apto o1'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295567059');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Daniel perdomo', '18295567809', 'acto de rafey sona franca etapa 5'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295567809');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Alejandro Fermín', '18295631206', 'Calle 9 número 24 las Antillas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295631206');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dinelys -', '18295639307', 'Pueblo Nuevo. Las Matas de Farfán'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295639307');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ana Sarita', '18295681486', 'Calle de la cancha callejón aridio casa de dos niveles al lado de Elias y foco'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295681486');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Roberta Almonte Rodriguez', '18295709600', 'Centro de cabarete frente hay banco BHD'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295709600');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rafael Cuello', '18295709806', 'Res. Alameda Este , Santo Domingo Oeste'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295709806');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Danna yibelis', '18295742430', 'Calle cristo rey número 5'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295742430');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Genesis Mejía', '18295809754', 'El cercado por la entrada de los concho en el puerto verde'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295809754');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jon -', '18295850251', 'Los tocones'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295850251');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Felícita -', '18295862696', 'Calle Manuela diez edificio L apto 306'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295862696');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Lisbeth -', '18295897092', 'Avenida aniana Vargas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295897092');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Maria -', '18295989358', 'Avenida John F. Kennedy calle doctor de fillo. Antiguo edificio de teleantillas. Pasaportes'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18295989358');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Laysha aracena', '18296025625', 'Calle#05 la colonia'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296025625');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wilson Rodríguez', '18296050915', 'Calle progreso número 9 brisas del este'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296050915');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Edward Montero', '18296060289', 'C/General Cabral #77'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296060289');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yuby Ureña', '18296164753', 'Carretera Don Pedro'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296164753');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dasca Joseph', '18296183104', 'Calle Carmen'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296183104');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Fidias Mateo', '18296195465', 'Pedro Corto'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296195465');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Winton -', '18296198086', 'Av.españa, cristo rey #1'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296198086');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carlos Jose', '18296241810', 'Moca'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296241810');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Josefina -', '18296296484', 'Calle 30 Mata de los Indios'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296296484');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Sócrates  ramirez -', '18296311389', '6omelia'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296311389');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Noemí Fani Ladoo FÍGARO de Devers', '18296328144', 'Emilio morel #44'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296328144');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Richard Freites', '18296339784', 'Calle central #11 bellas colinas, San Miguel de manoguayabo. Santo Domingo oeste'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296339784');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Julieta jiemenez Martinez', '18296348505', 'Calle 9 Buenos aire'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296348505');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Deybi Ramirez', '18296367726', 'Principal villa visan'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296367726');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wislet Carismene', '18296373315', 'Calle principal número 1'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296373315');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Robeli morel', '18296374877', 'Principal'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296374877');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'eduard taveras', '18296390416', 'Tamboril Santiago'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296390416');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'José Antonio Acosta Jiménez', '18296412997', 'Prolongación hostos sector Juan Pablo Duarte justo detrás de la fortaleza'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296412997');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Eliusy garcia', '18296462717', 'Calle jose dolores ceron 68 ensanche lupero'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296462717');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Estarlin Rodríguez bido', '18296476163', '19 de marzo #43'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296476163');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yesenia García', '18296497684', 'Res'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296497684');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yandelson -', '18296503796', 'Capotillo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296503796');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Kelvin Alcántara', '18296509070', 'Residencial palmera oriental etapa 4 edificio k 103'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296509070');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Estela acevedo', '18296515268', 'Saturno 13A sol de luz villa mella'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296515268');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yuniffer Viloria', '18296525265', 'Gurabo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296525265');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Noelia -', '18296553562', 'Santa Cruz el seibo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296553562');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Natalie Bonifacio', '18296602823', 'Jarabacoa pinar quemado'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296602823');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Cristal veloz', '18296616755', 'Calle Enriquillo,frente al colmado bebo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296616755');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Daniel tejada', '18296618503', 'barrio carlos daniel, calle Simon Bolivar 34'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296618503');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT '𝑀𝒶𝓇𝓎 -', '18296642030', 'Luis Jiménez moya'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296642030');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wascarnicolaspolancogarcia -', '18296750278', 'Monte verde 30b'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296750278');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carmen Balbuena', '18296754307', 'Calle las flores 27'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296754307');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Guadalupe Cruz Mota', '18296766477', 'Coronel melcado'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296766477');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Mike lombardini', '18296784731', 'Calle hostos 2'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296784731');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Alexis Ramírez', '18296806097', 'Prado las  cañas de guerra entrando por el pleys de mioki'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296806097');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jeisson Gabriel', '18296909898', 'Avenida estado unidos frente a iberia'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296909898');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Erick Pérez', '18296935857', 'Las salinas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296935857');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Aracelis Rosario', '18296988062', 'Calle castillo 62'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18296988062');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Nector Rosario', '18297061552', 'C/ Principal Anamuya #29'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297061552');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yudy silverio', '18297073361', 'El javillar calle príncipipal 50'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297073361');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Luís manual Santana', '18297079922', '6 de noviembre#24'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297079922');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rafael nova', '18297098079', 'Kilómetro 12 las Américas calle segunda casa número 27'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297098079');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Valentina castro', '18297120871', 'Platanal'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297120871');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yesenia  pinales -', '18297147901', 'Viya liberación manzana 19 casa 37 b'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297147901');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Juan lantigua', '18297228373', 'Los reyes calle 2 ed.18 apt 1.'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297228373');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Morena Stephan', '18297236177', 'Paraíso calle Ortiz #3'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297236177');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yannely -', '18297300620', 'Carmen Celia Balaguer #3 el millón'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297300620');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Cristal -', '18297306640', 'Villa Ofelia zoilo mesa #9'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297306640');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Celia Morales', '18297417289', 'Ave. Independencia 608, Residencial Yaris'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297417289');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Marvelin Ovalle Guzmán', '18297514060', 'palmares Mall, nivel 2, en el restaurante de Romero'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297514060');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Luzbiliana -', '18297551124', 'Klm 13, calle respaldo 4'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297551124');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yesenia Hernández', '18297561981', 'C/30 de marzo #66 villa Esperanza. Centro educativo Mercedes Batista'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297561981');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Juan Alberto Muñoz Duarte', '18297564151', 'José Francisco peña Gómez km3'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297564151');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wanda -', '18297564439', 'Lo soto bajo calle Teo cruz'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297564439');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yessica Eridania', '18297569280', 'Rincón de Veragua'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297569280');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Sonia santos', '18297595637', 'Calle colibrí casa ##2 residencial la herencia'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297595637');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Cheferson -', '18297618450', 'Calle casa n2 cerro alto Santiago'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297618450');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Julio Gómez', '18297626778', 'Ciudad Real, manzana F  Edificio 12 , apto 101'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297626778');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jose lopez', '18297647180', '-'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297647180');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ramona -', '18297668764', 'La circunvalación'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297668764');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Luis Enrique Sanchez Suarez', '18297685662', 'Calle los locutores Chilo poeriet'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297685662');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'La Para De La', '18297731495', 'San Cristóbal'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297731495');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Anyelani franco', '18297761142', '27 de febrero #55 Benito moncion'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297761142');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Anna -', '18297874975', 'Calle Santa Clara #32'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297874975');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Manuela Gómez', '18297880131', 'Calle princesa Estefanía'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297880131');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Edinson Ureña', '18297890139', 'Pinar quemado'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297890139');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Andres Capellan', '18297907362', 'Constanza'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297907362');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Daniel duversaint', '18297921946', 'Calle #12 laurca'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297921946');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Maria Paulina Rodriguez', '18297946895', 'Cuaba  nueva arriba casa 2-92'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297946895');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wilkin Pujols Mendez', '18297972567', 'Av. República de Argentina, Resid. Argelin el embrujo 1 - Apt 2-A'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297972567');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Selenia -', '18297985334', 'Don jaime'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297985334');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Johairis -', '18297991120', 'Calle proyecto'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18297991120');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Claudia Soto', '18298015429', 'Calle máximo Cabral #4 Gazcue'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298015429');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ana -', '18298028521', 'Charle de gol brisa los palmarés'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298028521');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'La gorda rd', '18298167300', 'La seiba del salado'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298167300');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carolina -', '18298205364', 'Centro de los herues'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298205364');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Edwin ambiori', '18298274138', 'Carretera Sánchez salida Azúa San Juan'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298274138');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Victor Alcantara', '18298288801', 'Calle principal #38 los parmarito'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298288801');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Doohan -', '18298374740', 'Chivg'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298374740');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Reymond Ledesma', '18298384097', 'Calle Girsol #10, sector Jardines del Norte'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298384097');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Antonio -', '18298391017', 'Dionisio mejía'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298391017');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Danilo de los santos', '18298414298', 'Cabilma del este calle paseo 12 de enero'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298414298');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Elías -', '18298478661', 'C. Máximo Gómez #47 - Villa Verde'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298478661');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Andrés encarnación Soriano', '18298495030', 'C p no 52 bendaño atiyo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298495030');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Aracelis -', '18298530501', 'Calle Sánchez no.150 esquina 16 de agosto'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298530501');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Angela Del Rosario Florian Trinidad', '18298627648', 'Juan Ruperto Polanco casa 11A La Descuebierta'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298627648');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'David Corniel', '18298629661', 'La Yautia, La Vega, Jarabacoa'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298629661');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Miguelina Fernández', '18298637370', 'Residencial Amarilys 3, Manzana F #3, Pista San Isidro'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298637370');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Lissette Vásquez', '18298650850', 'C/ Los Trinitarios res. 2001 Apart. 3A Arroyo Hondo frente a cuesta hermosa primera'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298650850');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Alan Checo.', '18298682748', 'Calle Duarte #6'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298682748');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Nelson Fernández', '18298699028', 'Hermano buenas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298699028');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jose Farias', '18298701111', 'Otilio Mendez # 14'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298701111');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Altagracia De Pimentel', '18298755544', 'Calle José María Cabral no.4 Bella Vista nNorte'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298755544');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Elizabeth -', '18298771983', 'Barbarin Mojica número uno mejoramiento social'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298771983');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Osiris sanchez', '18298774824', 'Circunvalación veron'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298774824');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Solange santana', '18298851510', 'Calle genaro perez No. 10. Residencial Ruddy XXVII apto 2b la española'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298851510');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Miguel Angel Domínguez', '18298852219', 'Avenida George Washington 500'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298852219');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'María Alvarez', '18298867131', 'Calle la vaguada  9 colina de los rios'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298867131');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Aracelis gonzales de perez', '18298877337', 'Calle 12numero 2 ponce los giaricano'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298877337');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Francisco -', '18298897861', 'CONSTRUSAND'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298897861');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Benancia santos', '18298908451', 'Calle el pley casa 26'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298908451');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ronald Tejeda', '18298989177', 'Diagonal B #20 renacimiento'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18298989177');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wenceslao de la cruz de León', '18299019693', 'Calle 13 casa #1 caleta'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299019693');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Aracelis Altagracia', '18299079203', 'Cayemariamonte#26losoto arriba'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299079203');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Manuel E Sánchez Díaz', '18299083824', 'La margarita num.15 Almirante caña'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299083824');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Bernardo Calletano', '18299121199', 'Gregorio luperon 6 el almirante'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299121199');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Evangeline Janice', '18299124056', 'Sarasota  no 120 Calle funcy Pichardo Torre dp xi  802'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299124056');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Socrates Morel', '18299148855', 'Kilómetros 10 de Cumayasa'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299148855');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ado -', '18299218283', 'Timoteo ogando numero 31 san geronimonimo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299218283');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Francisco Méndez', '18299227346', 'Calle republica de colombia alto de arroyo  homdo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299227346');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ederson frias de los santos', '18299227490', 'La Mercede'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299227490');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Moreno -', '18299252292', 'Villa verde'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299252292');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Franklin de lima', '18299318456', 'María Trinidad Sánchez k/17 las americas sector nuevos amanecer'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299318456');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Xiomara -', '18299322055', 'Calle Magdalena suero #25 san geronimo distrito nacional'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299322055');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yasmin genao', '18299326650', 'Calles las sombrillas'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299326650');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Grey -', '18299329761', 'Calle inviviendad proyecto'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299329761');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Estefany rosario', '18299371166', 'Interiol sol 20 el radiante Villa mella'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299371166');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Enrique -', '18299581947', 'La gualliga pedro bran'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299581947');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yajaira -', '18299738278', 'los cocos calle 7'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299738278');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Adalberto polanco', '18299783859', 'C/ Pablo néruda # 1'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299783859');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Maricela cruz', '18299801716', 'Av. Olímpica No.20, Reparto Peralta Santiago'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299801716');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yokasta carrion', '18299824907', 'Duarte esquina colon#53'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299824907');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yasmiri -', '18299845843', 'Bellavista mall'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299845843');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Julio M Bonnelly T', '18299865999', 'Carretera Don Pedro Residencial Las Mercedes'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299865999');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yulys marquez', '18299873084', 'Banco bhd frente al parque independencia'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299873084');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Lucy -', '18299887033', 'Av. Mauricio baez #57'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299887033');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dayana -', '18299898171', 'Independiente'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299898171');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Bronw -', '18299933261', '102 av francisco rosario'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18299933261');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Nayi torres', '18483651595', 'Ciudad Juan Bosh c/rio verde palmeras 3'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18483651595');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yulisa de oleo', '18492018121', 'C/San Ramón #15 la piña'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492018121');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Janice Vasquez', '18492030626', 'Torre alta calle los robles edificio Eduardo1'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492030626');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jessica -', '18492074977', 'Recidencial primaveral 2 villa 119-A'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492074977');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yenny -', '18492098954', 'Avenida Mario concepción edificio cornelio apto 4a los robles la 3'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492098954');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Alfredo mariot', '18492203518', 'C/ antonio guzman fernandez # 47'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492203518');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Michel Jeff', '18492437530', 'Colmado'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492437530');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ebony Rivera severino', '18492453912', 'El cachon'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492453912');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Alejandro -', '18492468802', 'Villa mella'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492468802');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yajaira Robles', '18492489978', 'Calle 4 de marzo  casa 7'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492489978');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Zuleyky Guzmán', '18492495911', 'Avenida los agricultores, Coopcredi'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492495911');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Melkys M. Novas F.', '18492512909', 'Calle hicotea #16, nuevo Boca de Cachón, Independencia'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492512909');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'José Pérez', '18492590729', 'Sánchez'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492590729');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dessire Taveras', '18492624904', 'Calle Hostos esquina Salcedo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492624904');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Biannely -', '18492640096', 'Higuero'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492640096');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Enyel Diaz', '18492677744', 'Avenida del Francisco Sanchez'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492677744');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Amable frías', '18492710145', 'La malena'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492710145');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Nelvi Felix', '18492753234', 'Primera complejo deportivo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492753234');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Luisana -', '18492804533', 'Amalia'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18492804533');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Magdelyn  Sánchez -', '18493300335', 'Arenoso. La vega. Residencial Don Rafael'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493300335');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Kelvin Santana', '18493305609', 'Respaldo avenida manuela diez jimenes los cajuiles'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493305609');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Cristian cuevas', '18493415786', 'Manolo Tavares justo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493415786');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Roberto -', '18493501547', 'Calle las flores'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493501547');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wilfredo rafael', '18493519486', 'Agustín guerrero #26'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493519486');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Pacifico ayres', '18493520211', '12#16 villa. Olga'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493520211');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Josué -', '18493522166', 'Primera'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493522166');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Maria del pilar hernandez', '18493527346', 'Calle obras viales #1b el millon'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493527346');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Susan Robert', '18493535301', 'José Luperon'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493535301');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Suleny Cabrera', '18493547090', 'Nordesa 111 calle d 64'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493547090');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Magaly guzman', '18493586508', 'Residencial irka'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493586508');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Massiel -', '18493606212', 'Ingeniero gusman'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493606212');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Nicolino Loche', '18493608700', 'En los jardines metropolitanos calle 1.'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493608700');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Cecilin maria', '18493709428', 'Matancitas, al lado de la escuela primaria clara brens'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493709428');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Maribel Tejeda', '18493762434', '-'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493762434');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'María Teresa Perez', '18493773063', 'Cerro al medio'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493773063');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Claudia rosario diaz', '18493801028', 'Calle ernesto chequevara 10 al lado de la gallera'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493801028');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yajaira -', '18493825212', 'Calle meran Villa Mercedes Madrevieja sur'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493825212');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Phito -', '18493882716', 'Frente del cuartel punta cana'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493882716');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rafael pajero Beato', '18493900746', 'Callejón Los Espinales, C. Parada Vieja 77'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493900746');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yunior -', '18493931822', 'Villa juana'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493931822');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Juleisi piña moreno', '18493934011', 'Hectáreas p.quezada #1'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493934011');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yomery -', '18493962388', 'Calle López de Vega #34, proyecto 2c'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18493962388');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jaice ruiz', '18494016385', '99 santa rosa'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494016385');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Massiel Mercedes', '18494260991', 'Boulevard turístico del este friusa'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494260991');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Luis Manuel', '18494275022', 'Calle 26 casa número 12'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494275022');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Gisselle -', '18494381109', 'Los sufridos'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494381109');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yvrose gedeus gedeusyvrose21@gmail.com', '18494409968', 'Fruisa Bavalo République Dominicaine Punta cana'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494409968');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ana medina', '18494464960', 'Orlando Martínez'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494464960');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carlos Agramonte', '18494480704', 'Calle A  número 98 sector las callenas santiago entrando por tanu.'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494480704');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Mario mena', '18494495098', 'Carretera el morro presa de tabera'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494495098');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Miliangela Veliz', '18494497873', 'Serena Village F2-103 veron punta cana'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494497873');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Danilo Monegro', '18494531910', 'Calle pilar Taveras 56, Sector Santa Ana'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494531910');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ruhaiddy -', '18494545779', 'Av: los restauradores, residencial el paso, calle 1'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494545779');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Virgey Mateo Tavarez', '18494561968', 'C/1ra # 27 La Hoz La Romana'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494561968');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ezequiel soriano', '18494565656', 'Calle 5  no 59 las palmeras 3 y 4 madre vieja sur san cristobal'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494565656');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Félix larrion', '18494591102', 'Hotel excellence del carmen'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494591102');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Poli -', '18494593629', 'Poli'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494593629');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Mary Laura', '18494641949', 'Urbanización Hidalgo, entrando por el Dealer papi motor, edificio nirvana 4 apartamento 201'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494641949');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Katerin Gomez', '18494652204', 'Calle libertad, más para abajo del supermercado baez, en la floristería yd floristería serca del Polanco'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494652204');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Junior reyes', '18494696562', 'Av francisco alberto caamoño barrio blanc los multis'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494696562');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jorge -', '18494705098', 'Los callenes'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494705098');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ingrid Ramírez', '18494760789', 'Calle flamboyanes'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494760789');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Emil Liriano', '18494781147', 'Av Sabana Larga esquina Bonaire Alma Rosa I'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18494781147');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Tomairy Ramirez Delgadillo', '18495262164', 'Calle El Nin #19 barrio Quisqueya 2 después de donde renguelo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18495262164');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Cocina -', '18495270722', '144 Manga Larga'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18495270722');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Wismehylin geronimo', '18495297930', 'Calle 39 12B villa carmen'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18495297930');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Antonio Melican', '18495350922', 'Calle playa punta icaco 19 en Los Corales de SAN Luis Santo Domingo Este'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18495350922');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Kenia -', '18495425353', 'Calle 9 el almirante'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18495425353');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Juan Carlos', '18495761702', 'Central de lucerna'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18495761702');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Daniel reyes', '18495764163', 'Cuerpo d bomberos d miches.  Serca d caribe express'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18495764163');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Katherine -', '18495771314', 'Calle Miguel mercado #17( calle de Santiago)'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18495771314');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Sheila Maria Ciscal Almaguer', '18495818159', 'Avenida Guayacanes Codenca #6 Bávaro La Altagracia Dominican Republic Friusa'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18495818159');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jose -', '18495819167', 'Pepe herr'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18495819167');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Edward -', '18495838302', 'Monte Cristi barrio nuevo km 14 el duro'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18495838302');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Orlando -', '18495859023', 'Calle higuera esquina carambola'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18495859023');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dariel Tejada', '18496300294', 'Sabana Larga #63'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18496300294');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ejemplo -', '18496450115', 'Bajando'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18496450115');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Nayeli Mora', '18496523069', 'Calle F'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18496523069');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Maryest Nuñez', '18496525163', 'Leoncio Ruiz #2 frente al monumento de Trujillo al lado de la estación de Servicio texaco'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18496525163');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'VALENTINA  MERCEDES b -', '18496550734', 'Villa cerro la pangolaj  Orlando  martinez 30'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18496550734');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Francisco Alberto paredes', '18496578337', 'Calle Pérez marque'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18496578337');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Jesus -', '18496589066', 'Calle 9, #24, residencial Santo Domingo'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18496589066');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Maria Esther', '18497512516', 'Avenida ecológica residencial vista ecológica'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18497512516');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Bladimir -', '18497974636', 'María Mercedes calle D #23'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18497974636');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Yoeli de la rosa', '18498039854', 'Calle 37, número 6, barrio 24 de abrir, los alcarrizos'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18498039854');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Juan Ramírez', '18498168953', 'Calle capotillo no. 4 detrás de ferreteria agrofer'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18498168953');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Estefany Paulino', '18498597684', 'Calle 18 # 26; Reparto Rosa -Herrera'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18498597684');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ruth Suero', '18498769480', 'Manuel Emilio Perdomo #12. Naco'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18498769480');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Ana belkys berroa payano', '18498796478', 'Los 4 caminos de miches'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18498796478');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Rubens Sanchez', '18498822785', 'Hasin'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18498822785');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Dione Cubilete Díaz', '18498848295', 'Sector km.12 de Haina, Autopista 30 de Mayo B/Guzman, C/ 1ra. #37'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18498848295');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Carmen de los santos', '18498896129', 'Calle caracol #15 Andrés Boca Chica'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '18498896129');

INSERT INTO clientes (nombre, telefono, direccion)
SELECT 'Estela Mendez', '393318230557', 'Principe negro #20 sector El Rosal'
WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE telefono = '393318230557');

-- ============================================================
-- 4. PEDIDOS
-- ============================================================

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1004) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18496300294' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Digital') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-25'::date, 2000.0,
    'Mao', 'Valverde', 1004, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2000.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1005) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18496300294' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Digital') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-25'::date, 2000.0,
    'Mao', 'Valverde', 1005, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2000.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1006) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18496300294' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Digital') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-25'::date, 2000.0,
    'Mao', 'Valverde', 1006, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2000.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1007) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18496300294' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Digital') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-25'::date, 2000.0,
    'Mao', 'Valverde', 1007, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2000.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1008) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494591102' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-01-27'::date, 2300.0,
    'Vabaro', 'La Altagracia', 1008, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2300.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1009) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094959187' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-01-27'::date, 1950.0,
    'Nagua', 'María Trinidad Sánchez', 1009, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1010) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '14807575513' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-01-28'::date, 1950.0,
    'Santo Domingo', 'Distrito Nacional', 1010, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1011) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18495838302' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-28'::date, 1950.0,
    'Monte Cristi', 'Monte Cristi', 1011, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1012) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18294953501' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-28'::date, 1950.0,
    'República Dominicana', 'La Romana', 1012, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1013) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298384097' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-28'::date, 1950.0,
    'Distrito Nacional', 'Santo Domingo, Distrito Nacional', 1013, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1014) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298897861' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-28'::date, 1950.0,
    'Santo domingo', 'Distrito nacional', 1014, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1015) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093527277' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-28'::date, 1950.0,
    'La Vega', 'LA VEGA', 1015, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1016) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093527277' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-28'::date, 1950.0,
    'La Vega', 'LA VEGA', 1016, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1017) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093527277' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-28'::date, 1950.0,
    'La Vega', 'LA VEGA', 1017, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1018) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18497512516' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-01-28'::date, 1950.0,
    'Santo Domingo Esté', 'Santo Domingo', 1018, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1019) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299845843' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-29'::date, 1950.0,
    'Santo Domingo', 'Santo Domingo', 1019, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1020) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293122530' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-01-29'::date, 1950.0,
    'Veron', 'La altagracia', 1020, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1021) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092199482' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-01-30'::date, 1950.0,
    'Santo Domingo Este', 'Santo Domingo', 1021, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1022) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295567059' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-01-30'::date, 1950.0,
    'Santiago De Los Caballeros', 'Santiago', 1022, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1023) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098541232' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-01-31'::date, 1950.0,
    'Santo domingo', 'Distrito nacional', 1023, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1024) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18492512909' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-31'::date, 1950.0,
    'Boca de Cachón', 'Independencia', 1024, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1025) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094743296' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-01-31'::date, 1950.0,
    'Barahona', 'Barahona', 1025, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1026) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097587606' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-01'::date, 1950.0,
    'Sánchez', 'Samana', 1026, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1027) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092248867' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-01'::date, 1950.0,
    'Bonao', 'Monseñor Nouel', 1027, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1028) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099182254' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Báscula Inteligente') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-02-01'::date, 2925.0,
    'Puerto plata', 'Puerto plata', 1028, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 3900.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1029) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098528659' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luces LED Inteligentes (Pack 2 unidades)') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'TESTEO',
    true, '2026-02-04'::date, 2450.0,
    'Santo Domingo', 'Distrito Nacional', 1029, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4200.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1030) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18294234620' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luces LED Inteligentes (Pack 2 unidades)') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'TESTEO',
    true, '2026-02-04'::date, 2450.0,
    'San cristobal', 'San cristobal', 1030, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4200.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1031) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297306640' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luces LED Inteligentes (Pack 2 unidades)') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'TESTEO',
    true, '2026-02-05'::date, 3449.88,
    'Sanjuan de la maguana', 'Sanjuan de la maguana', 1031, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 6300.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1032) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097560758' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luces LED Inteligentes (Pack 2 unidades)') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'TESTEO',
    true, '2026-02-05'::date, 2450.0,
    'Santo Domingo', 'Santo Domingo, Distrito Nacional', 1032, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4200.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1033) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296328144' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luces LED Inteligentes (Pack 2 unidades)') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'TESTEO',
    true, '2026-02-05'::date, 3449.88,
    'San Pedro de Macoris', 'San Pedro de Macoris', 1033, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 6300.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1034) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296328144' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luces LED Inteligentes (Pack 2 unidades)') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'TESTEO',
    true, '2026-02-05'::date, 3450.0,
    'San Pedro de Macoris', 'San Pedro de Macoris', 1034, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 6300.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1035) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094952270' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luces LED Inteligentes (Pack 2 unidades)') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'TESTEO',
    true, '2026-02-05'::date, 3450.0,
    'La Vega', 'La Vega', 1035, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 6300.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1036) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296195465' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luces LED Inteligentes (Pack 2 unidades)') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'TESTEO',
    true, '2026-02-06'::date, 3450.0,
    'Pedro Corto', 'San Juan de maguana', 1036, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 6300.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1037) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097699414' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luces LED Inteligentes (Pack 2 unidades)') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'TESTEO',
    true, '2026-02-06'::date, 3450.0,
    'Santo Domingo', 'Distrito Nacional', 1037, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 6300.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1038) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299083824' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luces LED Inteligentes (Pack 2 unidades)') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'TESTEO',
    true, '2026-02-06'::date, 2100.0,
    'Santo Domingo Este', 'Santo Domingo', 1038, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2100.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1039) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293528523' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Cepillo Desenredante Hidratante 2-en-1 – Peina Sin Dolor y Reduce el Frizz') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-12'::date, 2950.0,
    'Santiago', 'Santiago', 1039, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 3900.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1040) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297761142' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Cepillo Desenredante Hidratante 2-en-1 – Peina Sin Dolor y Reduce el Frizz') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-12'::date, 1950.0,
    'Dajabon', 'Dajabon', 1040, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1041) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094986812' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Cepillo Desenredante Hidratante 2-en-1 – Peina Sin Dolor y Reduce el Frizz') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-12'::date, 1950.0,
    'San Cristóbal', 'San Cristóbal', 1041, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1042) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096938564' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Espejo LED Profesional Recargable con 3 Modos de Luz') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-14'::date, 2950.0,
    'Santos domingo', 'Santos domingo este', 1042, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 3900.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1043) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295709806' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-17'::date, 1950.0,
    'Santo Domingo Oeste', 'Santo Domingo Oeste', 1043, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1044) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098821680' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-17'::date, 1950.0,
    'La vega', 'La vega', 1044, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1045) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296806097' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-02-17'::date, 1950.0,
    'Prado las cañas de guerra', 'Santo Domingo', 1045, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1046) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298414298' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-17'::date, 3450.0,
    'Santo Domingo Oeste', 'SANTO DOMINGO ESTE', 1046, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 5850.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1047) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18292801375' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-02-18'::date, 3450.0,
    'San Francisco tenare Layaguiza', 'Duarte', 1047, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 5850.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1048) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18493501547' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-02-18'::date, 3450.0,
    'Santo Domingo Norte', 'SANTO DOMINGO NORTE', 1048, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 5850.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1049) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18495350922' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-18'::date, 3450.0,
    'Santo Domingo Este', 'Santo Domingo Este', 1049, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 5850.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1050) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298701111' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-18'::date, 3450.0,
    'San Juan', 'San Juan de la Maguana', 1050, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 5850.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1051) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297618450' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-19'::date, 3450.0,
    'Santiago', 'Santiago', 1051, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 5850.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1052) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098178550' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-02-19'::date, 1950.0,
    'Distrito Nacional', 'Santo domingo', 1052, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1053) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18095336510' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-19'::date, 3950.0,
    'Santo Domingo', 'Distrito nacional', 1053, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1054) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18492203518' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-19'::date, 3950.0,
    'Sto.Dgo. Este', 'Sto.Dgo.', 1054, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1055) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296390416' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-19'::date, 3950.0,
    'Tamboril', 'Santiago', 1055, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1056) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097655438' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-20'::date, 3950.0,
    'Puerto Plata', 'PUERTO PLATA', 1056, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1057) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296553562' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-20'::date, 3950.0,
    'Miches', 'El Seibo', 1057, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1058) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18495764163' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-20'::date, 3950.0,
    'Miches', 'SEIBO', 1058, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1059) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097591177' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-02-21'::date, 2450.0,
    'Jimaní', 'Independencia', 1059, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2450.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1060) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18493882716' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-21'::date, 2450.0,
    'BÁvaro', 'BÁVARO PUNTA CANA', 1060, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2450.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1061) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '14233135467' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-21'::date, 3950.0,
    'Santo domingo', 'Santos Domingo', 1061, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1062) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093236866' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-21'::date, 3950.0,
    'Santo Domingo este', 'SANTO DOMINGO este', 1062, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1063) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094381241' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-22'::date, 2450.0,
    'Bonao', 'Monseñor Noel', 1063, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2450.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1064) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18294281465' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-22'::date, 2450.0,
    'Sábana grande de boya', 'Monte plata', 1064, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2450.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1065) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298771983' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-22'::date, 3950.0,
    '165', 'DN', 1065, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1066) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099076173' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-22'::date, 3950.0,
    'Villa Vasque', 'Montecristi', 1066, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1067) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297564151' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-22'::date, 3950.0,
    'Nagua', 'María Trinidad Sánchez', 1067, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1068) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18294290249' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-23'::date, 3950.0,
    'Bonao', '-', 1068, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1069) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094327705' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-23'::date, 3950.0,
    'Santo Domingo Norte', '-', 1069, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1070) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18493519486' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-23'::date, 3950.0,
    'higuey', '-', 1070, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1071) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299252292' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-23'::date, 3950.0,
    'La Romana', '-', 1071, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1072) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096690797' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-23'::date, 3950.0,
    'Las Terrenas', '-', 1072, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1073) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093506933' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-24'::date, 3950.0,
    'Higuey', 'La Altagracia', 1073, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1074) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099620097' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-26'::date, 3950.0,
    'concepsio de la vega', 'La vega', 1074, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1075) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097864429' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-26'::date, 3950.0,
    'Higüey', 'La Altagracia', 1075, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1076) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293945204' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-27'::date, 3950.0,
    'Santo Domingo', 'C/HATILLO CHAMPAÑA NO 30', 1076, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1077) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096605900' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-02-27'::date, 3950.0,
    'Los ríos Neyba', 'Bahoruco', 1077, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1078) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296784731' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-27'::date, 3950.0,
    'Colonial', 'Santo Domingo', 1078, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1079) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298391017' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-02-27'::date, 3550.0,
    'HIGUEY (SALVALEÓN DE HIGUEY)', 'LA ALTAGRACIA', 1079, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4900.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1080) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093527370' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-02-27'::date, 3950.0,
    'SANTO DOMINGO OESTE', 'SANTO DOMINGO', 1080, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1081) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18292280113' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-28'::date, 1775.0,
    'HATO MAYOR (HATO MAYOR DEL REY)', 'HATO MAYOR', 1081, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4900.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1082) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18493305609' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-28'::date, 3950.0,
    'EL SEIBO (SANTA CRUZ DEL SEIBO)', 'EL SEIBO', 1082, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1083) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096547027' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-28'::date, 3950.0,
    'PUNTA CANA', 'LA ALTAGRACIA', 1083, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1084) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099234020' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-28'::date, 3950.0,
    'SAN CRISTOBAL', 'SAN CRISTOBAL', 1084, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1085) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293436439' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-02-28'::date, 3950.0,
    'LAS TERRENAS', 'SAMANÁ', 1085, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1086) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18294133206' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-01'::date, 2450.0,
    'SANTO DOMINGO', 'DISTRITO NACIONAL', 1086, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2450.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1087) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18294793809' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-01'::date, 3950.0,
    'LA OTRA BANDA (HIGUEY)', 'LA ALTAGRACIA', 1087, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1088) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18292130808' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-01'::date, 3950.0,
    'LA VEGA (CONCEPCIÓN DE LA VEGA)', 'LA VEGA', 1088, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1089) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099147713' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-01'::date, 3950.0,
    'SAN CRISTOBAL', 'SAN CRISTOBAL', 1089, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1090) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098633132' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-02'::date, 3950.0,
    'SANTIAGO DE LOS CABALLEROS', 'SANTIAGO', 1090, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1091) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295516193' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-02'::date, 3550.0,
    'BARAHONA (SANTA CRUZ DE BARAHONA)', 'BARAHONA', 1091, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4900.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1092) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098432424' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-02'::date, 3950.0,
    'BONAO', 'MONSEÑOR NOUEL', 1092, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1093) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494531910' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-02'::date, 2450.0,
    'SAN FRANCISCO DE MACORÍS', 'DUARTE', 1093, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2450.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1094) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092600999' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-03'::date, 3950.0,
    'San Cristóbal', 'San Cristóbal', 1094, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1095) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099622392' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-03'::date, 3950.0,
    'Sosúa', 'Puerto Plata', 1095, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1096) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298374740' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-04'::date, 3950.0,
    'Santo Domingo Este', 'Santo Domingo', 1096, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1097) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097492127' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-04'::date, 3550.0,
    'Punta Cana', 'La Altagracia', 1097, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4900.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1098) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097492127' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-04'::date, 3950.0,
    'Verón', 'La Altagracia', 1098, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1099) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099627510' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-04'::date, 3950.0,
    'Puerto Plata (San Felipe de Puerto Plata)', 'Puerto Plata', 1099, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1100) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296754307' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-04'::date, 3950.0,
    'Mao (Santa Cruz de Mao)', 'Valverde', 1100, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1101) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494275022' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-04'::date, 3950.0,
    'Quisqueya', 'San Pedro de Macorís', 1101, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1102) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096692780' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'ESPERA DE CONFIRMACION',
    false, '2026-03-04'::date, 3950.0,
    'Santo Domingo', 'Distrito Nacional', 1102, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1103) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293341414' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-04'::date, 3950.0,
    'San José de las Matas', 'Santiago', 1103, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1104) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18492468802' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-05'::date, 3550.0,
    'Santo Domingo', 'Distrito Nacional', 1104, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4900.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1105) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18495270722' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-05'::date, 3950.0,
    'Río Verde Arriba', 'La Vega', 1105, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1106) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298989177' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-05'::date, 3950.0,
    'Santo Domingo', 'Distrito Nacional', 1106, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1107) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18496550734' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-05'::date, 3950.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1107, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1108) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098416286' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-05'::date, 3950.0,
    'Partido', 'Dajabón', 1108, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1109) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096276877' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-05'::date, 3950.0,
    'Haina (Bajos de Haina)', 'San Cristóbal', 1109, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1110) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092238154' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-06'::date, 3950.0,
    'Baní', 'Peravia', 1110, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1111) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092238154' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-06'::date, 3950.0,
    'Baní', 'Peravia', 1111, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1112) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096677745' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-06'::date, 3950.0,
    'Santo Domingo Norte', 'Santo Domingo', 1112, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7350.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1113) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094882949' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-08'::date, 2595.0,
    'Santo Domingo Oeste', 'Santo Domingo', 1113, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2595.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1114) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092566799' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-09'::date, 3950.0,
    'El Seibo (Santa Cruz del Seibo)', 'El Seibo', 1114, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7785.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1115) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494781147' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-09'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1115, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1116) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094616236' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-10'::date, 3490.0,
    'Baní', 'Peravia', 1116, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1117) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094616236' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-10'::date, 3490.0,
    'Matanzas20', 'Peravia', 1117, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1118) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092078178' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-10'::date, 2390.0,
    'Dajabón', 'Dajabón', 1118, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2390.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1119) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18493520211' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-10'::date, 3490.0,
    'Santiago de los Caballeros', 'Santiago', 1119, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1120) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098564714' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-10'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1120, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1121) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098564714' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-10'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1121, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1122) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093908874' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-10'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1122, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1123) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093767066' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-10'::date, 4290.0,
    'Bávaro', 'La Altagracia', 1123, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 9560.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1124) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094903973' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-11'::date, 4290.0,
    'La Romana', 'La Romana', 1124, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1125) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297991120' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-11'::date, 3490.0,
    'Monte Cristi (San Fernando de Monte Cristi)', 'Monte Cristi', 1125, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1126) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18292735426' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-11'::date, 3490.0,
    'BOCA CHICA', 'SANTO DOMINGO', 1126, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1127) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092232991' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-11'::date, 3490.0,
    'Santiago de los Caballeros', 'Santiago', 1127, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1128) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '17188261828' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-12'::date, 3490.0,
    'Santiago de los Caballeros', 'Santiago', 1128, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1129) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296750278' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-12'::date, 4290.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1129, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 9560.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1130) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092823749' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-12'::date, 3490.0,
    'Las Lagunas de Nisibón (Higüey)', 'La Altagracia', 1130, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1131) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494409968' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-12'::date, 3490.0,
    'Punta Cana', 'La Altagracia', 1131, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1132) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093605881' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-12'::date, 3490.0,
    'El Seibo (Santa Cruz del Seibo)', 'El Seibo', 1132, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1133) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297921946' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-12'::date, 3490.0,
    'San Juan', 'San Juan', 1133, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1134) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096500077' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-12'::date, 3490.0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 1134, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1135) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296909898' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-12'::date, 3490.0,
    'Punta Cana', 'La Altagracia', 1135, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1136) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18496450115' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 2990.0,
    'Mao (Santa Cruz de Mao)', 'Valverde', 1136, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4780.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1137) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299121199' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1137, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1138) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295091551' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 3490.0,
    'Verón', 'La Altagracia', 1138, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1139) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297685662' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-13'::date, 3490.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1139, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1140) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '12155326857' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-13'::date, 3490.0,
    'La Mata', 'Sánchez Ramírez', 1140, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1141) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299227490' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 3490.0,
    'Los Alcarrizos', 'Santo Domingo', 1141, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1142) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096690450' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-13'::date, 2990.0,
    'La Mata', 'Sánchez Ramírez', 1142, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4780.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1143) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299581947' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1143, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1144) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099861297' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 4290.0,
    'Santo Domingo Norte', 'Santo Domingo', 1144, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 9560.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1145) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297079922' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-13'::date, 3490.0,
    'San Cristóbal', 'San Cristóbal', 1145, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1146) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18493522166' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-13'::date, 3490.0,
    'Verón', 'La Altagracia', 1146, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1147) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297228373' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-13'::date, 3490.0,
    'Puerto Plata (San Felipe de Puerto Plata)', 'Puerto Plata', 1147, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1148) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093714992' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-13'::date, 4290.0,
    'La Romana', 'La Romana', 1148, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 9560.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1149) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092247111' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-13'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1149, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1150) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097579949' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 3490.0,
    'Azua (Azua de Compostela)', 'Azua', 1150, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1151) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18294390905' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 3490.0,
    'Verón', 'La Altagracia', 1151, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1152) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18292748863' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-13'::date, 3490.0,
    'La Vega (Concepción de la Vega)', 'La Vega', 1152, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1153) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296766477' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 3490.0,
    'Santo Domingo Norte', 'Santo Domingo', 1153, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1154) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293280170' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 3490.0,
    'Monción', 'Santiago Rodríguez', 1154, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1155) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293383837' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-13'::date, 3490.0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 1155, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1156) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293691378' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 3490.0,
    'Bávaro', 'La Altagracia', 1156, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1157) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297098079' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-13'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1157, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1158) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293885300' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 2990.0,
    'Villa Hermosa', 'La Romana', 1158, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4780.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1159) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299079203' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 3490.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1159, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1160) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297073361' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 3490.0,
    'Puerto Plata (San Felipe de Puerto Plata)', 'Puerto Plata', 1160, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1161) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097741525' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-13'::date, 4290.0,
    'Punta Cana', 'La Altagracia', 1161, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 9560.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1162) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293383837' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-14'::date, 3490.0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 1162, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1163) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092231455' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-14'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1163, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1164) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298627648' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-14'::date, 3490.0,
    'JIMANÍ', 'INDEPENDENCIA', 1164, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1165) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295268109' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-14'::date, 3490.0,
    'Guayubín', 'Monte Cristi', 1165, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1166) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099163968' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-14'::date, 2990.0,
    'Juan de Herrera', 'San Juan', 1166, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4780.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1167) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098053532' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-14'::date, 3490.0,
    'Cevicos', 'Sánchez Ramírez', 1167, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1168) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296241810' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-14'::date, 3490.0,
    'Moca', 'Espaillat', 1168, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1169) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18492710145' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-14'::date, 3490.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1169, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1170) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299019693' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-14'::date, 3490.0,
    'Caleta', 'La Romana', 1170, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1171) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '14807575513' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-15'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1171, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1172) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099090997' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-15'::date, 4290.0,
    'Santo Domingo', 'Distrito Nacional', 1172, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 9560.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1173) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296296484' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-15'::date, 2990.0,
    'Santo Domingo', 'Distrito Nacional', 1173, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4780.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1174) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096097448' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-15'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1174, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1175) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298771983' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-15'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1175, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1176) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '17063068358' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-15'::date, 3490.0,
    'Jarabacoa', 'La Vega', 1176, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1177) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298682748' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-15'::date, 3490.0,
    'Río San Juan', 'Maria Trinidad Sanchez', 1177, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1178) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18498168953' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-15'::date, 3490.0,
    'Río San Juan', 'Maria Trinidad Sanchez', 1178, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1179) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094898149' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-15'::date, 5500.0,
    'Santo Domingo', 'Distrito Nacional', 1179, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 8, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1180) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096271100' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-15'::date, 3490.0,
    'Villa Altagracia', 'San Cristóbal', 1180, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1181) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293406323' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-15'::date, 2990.0,
    'SANTO DOMINGO', 'DISTRITO NACIONAL', 1181, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4780.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1182) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098051046' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-15'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1182, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1183) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096502079' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-15'::date, 3490.0,
    'SANTO DOMINGO', 'DISTRITO NACIONAL', 1183, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1184) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494565656' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-15'::date, 3490.0,
    'San Cristóbal', 'San Cristóbal', 1184, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1185) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097106150' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-15'::date, 1163.0,
    'San Juan', 'San Juan', 1185, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1186) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094497262' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-15'::date, 3490.0,
    'San Antonio de Guerra', 'Santo Domingo', 1186, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1187) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097121629' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-15'::date, 3490.0,
    'Pedro Brand', 'Santo Domingo', 1187, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1188) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18492590729' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-15'::date, 2990.0,
    'Azua (Azua de Compostela)', 'Azua', 1188, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4780.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1189) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18095075448' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-16'::date, 3490.0,
    'Baní', 'Peravia', 1189, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1190) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494760789' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-16'::date, 3490.0,
    'Villa Montellano', 'Puerto Plata', 1190, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1191) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494760789' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-16'::date, 3490.0,
    'Villa Montellano', 'Puerto Plata', 1191, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1192) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18095193436' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-16'::date, 3490.0,
    'Hato Mayor (Hato Mayor del Rey)', 'Hato Mayor', 1192, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1193) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18095193436' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-16'::date, 3490.0,
    'Hato Mayor (Hato Mayor del Rey)', 'Hato Mayor', 1193, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1194) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092039189' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-16'::date, 3490.0,
    'Jarabacoa', 'La Vega', 1194, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1195) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18294686298' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-16'::date, 2990.0,
    'La Caleta', 'Santo Domingo', 1195, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4780.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1196) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092325330' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-16'::date, 3490.0,
    'Piedra Blanca', 'Monseñor Nouel', 1196, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1197) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093947668' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-17'::date, 4290.0,
    'Santo Domingo', 'Santo Domingo', 1197, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 9560.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1198) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296476163' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-17'::date, 1495.0,
    'Las Matas de Farfán', 'San Juan', 1198, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4780.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1199) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298495030' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-17'::date, 3490.0,
    'San Cristóbal', 'San Cristóbal', 1199, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1200) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096943823' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-17'::date, 4290.0,
    'Bávaro', 'La Altagracia', 1200, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 9560.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1201) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299887033' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-17'::date, 2990.0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 1201, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 4780.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1202) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494495098' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-17'::date, 3490.0,
    'La Vega (Concepción de la Vega)', 'La Vega', 1202, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1203) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18292625101' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-17'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1203, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1204) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293755678' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-17'::date, 3490.0,
    'Las Charcas', 'Azua', 1204, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1205) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296060289' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-17'::date, 3490.0,
    'El Cercado', 'San Juan', 1205, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1206) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18292189286' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-17'::date, 3490.0,
    'Constanza', 'La Vega', 1206, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1207) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099957037' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-18'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1207, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1208) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093525711' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-18'::date, 3490.0,
    'Licey al Medio', 'Santiago', 1208, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1209) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18095072372' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-18'::date, 3490.0,
    'Santiago de los Caballeros', 'Santiago', 1209, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1210) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298867131' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-18'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1210, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1211) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297595637' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-18'::date, 3490.0,
    'Jarabacoa', 'La Vega', 1211, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1212) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296988062' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-18'::date, 3490.0,
    'San Francisco de Macorís', 'Duarte', 1212, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1213) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296988062' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-18'::date, 3490.0,
    'San Francisco de Macorís', 'Duarte', 1213, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1214) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293368714' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-18'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1214, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1215) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298478661' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-18'::date, 3490.0,
    'La Romana', 'La Romana', 1215, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 7170.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1216) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094543293' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-18'::date, 2990.0,
    'Las Terrenas', 'Samaná', 1216, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1217) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092090735' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-19'::date, 3490.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1217, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1218) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296339784' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-19'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1218, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1219) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296515268' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-19'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1219, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1220) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097754364' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-19'::date, 3490.0,
    'Comendador', 'Elías Piña', 1220, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1221) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296050915' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-19'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1221, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1222) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093913962' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-19'::date, 3490.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1222, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1223) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093913962' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-19'::date, 8970.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1223, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1224) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18292650497' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-19'::date, 4290.0,
    'Neiba', 'Bahoruco', 1224, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1225) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096134815' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-19'::date, 4290.0,
    'Barahona (Santa Cruz de Barahona)', 'Barahona', 1225, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 11960.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1226) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18495819167' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-19'::date, 3490.0,
    'Villa Tapia (La Jagua)', 'Hermanas Mirabal (Salcedo)', 1226, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1227) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297668764' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-19'::date, 2990.0,
    'Verón', 'La Altagracia', 1227, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1228) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298877337' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-19'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1228, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1229) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092242915' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-19'::date, 2990.0,
    'Puerto Plata (San Felipe de Puerto Plata)', 'Puerto Plata', 1229, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1230) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18292123367' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-20'::date, 3490.0,
    'La otra Banda (Higüey)', 'Santo Domingo', 1230, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1231) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18498039854' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-20'::date, 3490.0,
    'Los Alcarrizos', 'Santo Domingo', 1231, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1232) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18294216705' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'NOVEDAD',
    false, '2026-03-20'::date, 3490.0,
    'Santiago de los Caballeros', 'Santiago', 1232, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1233) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299148855' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-20'::date, 3490.0,
    'La Romana', 'La Romana', 1233, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1234) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298908451' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-20'::date, 3490.0,
    'Castañuelas', 'Monte Cristi', 1234, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1235) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093925008' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-20'::date, 3490.0,
    'Jaquimeyes', 'Barahona', 1235, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1236) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097141717' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-20'::date, 3490.0,
    'La Romana', 'La Romana', 1236, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1237) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18292124186' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-21'::date, 3490.0,
    'El Seibo (Santa Cruz del Seibo)', 'El Seibo', 1237, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1238) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18294527349' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-21'::date, 2990.0,
    'Moca', 'Espaillat', 1238, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1239) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299824907' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-21'::date, 3490.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1239, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1240) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297569280' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-21'::date, 3490.0,
    'Gaspar Hernández', 'Espaillat', 1240, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1241) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297300620' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-21'::date, 2990.0,
    'Santo Domingo Norte', 'Santo Domingo', 1241, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1242) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295085429' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-21'::date, 3490.0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 1242, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1243) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293514660' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-21'::date, 3490.0,
    'La otra Banda (Higüey)', 'La Altagracia', 1243, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1244) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097477468' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-21'::date, 3490.0,
    'San Cristóbal', 'San Cristóbal', 1244, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1245) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096502079' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-21'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1245, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1246) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096670441' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-21'::date, 3490.0,
    'San Francisco de Macorís', 'Duarte', 1246, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1247) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18496589066' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-21'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1247, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1248) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18493962388' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-21'::date, 4290.0,
    'Azua (Azua de Compostela)', 'Azua', 1248, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 11960.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1249) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099243141' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-22'::date, 3490.0,
    'La Vega (Concepción de la Vega)', 'La Vega', 1249, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1250) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293421937' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-22'::date, 2990.0,
    'Tenares', 'Hermanas Mirabal (Salcedo)', 1250, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1251) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093033786' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-22'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1251, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1252) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298167300' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-22'::date, 3490.0,
    'Punta Cana', 'La Altagracia', 1252, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1253) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295567809' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-22'::date, 3490.0,
    'Santiago de los Caballeros', 'Santiago', 1253, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1254) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097199920' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-22'::date, 3490.0,
    'El Naranjal', 'San José de Ocoa', 1254, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1255) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295631206' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-22'::date, 3490.0,
    'Santiago de los Caballeros', 'Santiago', 1255, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1256) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295505583' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-22'::date, 3290.0,
    'Bayahíbe (San Rafael del Yuma)', 'La Altagracia', 1256, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1257) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18095197969' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-22'::date, 2990.0,
    'Punta Cana', 'La Altagracia', 1257, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1258) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092090404' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-23'::date, 2990.0,
    'San Francisco de Macorís', 'Duarte', 1258, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1259) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099908003' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-23'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1259, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1260) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097071794' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-23'::date, 3490.0,
    'La Romana', 'La Romana', 1260, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1261) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '14074337209' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-23'::date, 2990.0,
    'Cotuí', 'Sánchez Ramírez', 1261, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1262) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '393318230557' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-23'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1262, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1263) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097717191' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-23'::date, 3490.0,
    'Tenares', 'Hermanas Mirabal (Salcedo)', 1263, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1264) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295546408' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-23'::date, 2990.0,
    'Santo Domingo Oeste', 'Santo Domingo', 1264, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1265) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098767442' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-23'::date, 3490.0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 1265, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1266) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093507553' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-23'::date, 3490.0,
    'Cabrera (Tres Amarras)', 'Maria Trinidad Sanchez', 1266, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1267) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096727400' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-23'::date, 2990.0,
    'Bávaro', 'La Altagracia', 1267, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1268) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297907362' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-24'::date, 3490.0,
    'Constanza', 'La Vega', 1268, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1269) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097560758' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-24'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1269, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1270) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096186841' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-24'::date, 3490.0,
    'San Juan', 'San Juan', 1270, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1271) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297061552' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-24'::date, 3490.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1271, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1272) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092507891' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-24'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1272, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1273) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097869410' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-24'::date, 3490.0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 1273, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1274) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18493801028' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-25'::date, 2990.0,
    'Cevicos', 'Sánchez Ramírez', 1274, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1275) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494696562' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-25'::date, 2990.0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 1275, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1276) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18492489978' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-25'::date, 3490.0,
    'La Vega (Concepción de la Vega)', 'La Vega', 1276, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1277) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297147901' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-25'::date, 4290.0,
    'San Juan', 'San Juan', 1277, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 11960.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1278) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092081135' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-25'::date, 3490.0,
    'Santo Domingo Norte', 'Santo Domingo', 1278, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1279) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295363411' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-25'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1279, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1280) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094866174' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-25'::date, 3490.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1280, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1281) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494016385' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-25'::date, 2990.0,
    'La Romana', 'La Romana', 1281, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1282) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293250923' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-25'::date, 3490.0,
    'Barahona (Santa Cruz de Barahona)', 'Barahona', 1282, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1283) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18292919115' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-25'::date, 3490.0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 1283, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1284) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18493415786' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-26'::date, 2990.0,
    'San Francisco de Macorís', 'Duarte', 1284, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1285) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296164753' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-26'::date, 3490.0,
    'Santiago de los Caballeros', 'Santiago', 1285, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1286) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295850251' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-26'::date, 3490.0,
    'Santiago de los Caballeros', 'Santiago', 1286, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1287) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099432899' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-26'::date, 4290.0,
    'Santo Domingo Norte', 'Santo Domingo', 1287, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 11960.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1288) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '14074337209' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-26'::date, 4290.0,
    'Cotuí', 'Sánchez Ramírez', 1288, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 11960.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1289) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299865999' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-26'::date, 3490.0,
    'Santiago de los Caballeros', 'Santiago', 1289, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1290) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094492880' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-26'::date, 3490.0,
    'La Salvia - Los Quemados', 'Monseñor Nouel', 1290, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1291) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299326650' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-27'::date, 3490.0,
    'Puerto Plata (San Felipe de Puerto Plata)', 'Puerto Plata', 1291, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1292) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297972567' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-27'::date, 4290.0,
    'Santiago de los Caballeros', 'Santiago', 1292, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 11960.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1293) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299783859' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-27'::date, 2990.0,
    'Bonao', 'Monseñor Nouel', 1293, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1294) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494480704' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-27'::date, 2990.0,
    'Santiago de los Caballeros', 'Santiago', 1294, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1295) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18496578337' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-27'::date, 3490.0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 1295, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1296) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296367726' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-27'::date, 3490.0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 1296, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1297) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097208730' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-27'::date, 3490.0,
    'Fantino', 'Sánchez Ramírez', 1297, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1298) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092817202' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-27'::date, 3490.0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 1298, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1299) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098904886' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-28'::date, 3490.0,
    'Sabaneta (San Ignacio de Sabaneta)', 'Santiago Rodríguez', 1299, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1300) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18096641095' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-28'::date, 3490.0,
    'Santiago de los Caballeros', 'Santiago', 1300, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1302) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293580236' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-28'::date, 3490.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1302, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1303) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098189221' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-28'::date, 3490.0,
    'La Romana', 'La Romana', 1303, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1304) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18095193725' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-28'::date, 3490.0,
    'Nigua (San Gregorio de Nigua)', 'San Cristóbal', 1304, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1305) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098851213' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-28'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1305, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1306) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298015429' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-28'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1306, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1307) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298015429' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-28'::date, 3490.0,
    'Santo Domingo', 'Distrito Nacional', 1307, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1308) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093999327' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-28'::date, 2990.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1308, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1309) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18298288801' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-28'::date, 3490.0,
    'San José de Ocoa', 'San José de Ocoa', 1309, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1310) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097055896' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'devuelto', 'DEVUELTO',
    false, '2026-03-29'::date, 3490.0,
    'Cotuí', 'Sánchez Ramírez', 1310, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1311) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293599082' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-29'::date, 2990.0,
    'Hato Mayor (Hato Mayor del Rey)', 'Hato Mayor', 1311, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1312) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297890139' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-29'::date, 4290.0,
    'Jarabacoa', 'La Vega', 1312, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 11960.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1313) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092129434' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-29'::date, 3490.0,
    'Haina (Bajos de Haina)', 'San Cristóbal', 1313, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1314) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18299318456' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-03-29'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1314, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1315) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097585780' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-03-29'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1315, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1316) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18493608700' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-04-05'::date, 2990.0,
    'Santiago de los Caballeros', 'Santiago', 1316, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1317) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297985334' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-04-05'::date, 3490.0,
    'Santiago de los Caballeros', 'Santiago', 1317, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1318) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295083273' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-04-05'::date, 2990.0,
    'Cotuí', 'Sánchez Ramírez', 1318, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 5980.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1319) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494705098' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-04-05'::date, 3490.0,
    'Las Lagunas de Nisibón (Higüey)', 'La Altagracia', 1319, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1320) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18494593629' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-04-05'::date, 3490.0,
    'San Juan', 'San Juan', 1320, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1321) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094155830' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-04-05'::date, 4290.0,
    'Bávaro', 'La Altagracia', 1321, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 11960.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1322) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18297731495' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-04-06'::date, 3490.0,
    'San Cristóbal', 'San Cristóbal', 1322, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1323) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18493900746' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-04-06'::date, 3490.0,
    'Licey al Medio', 'Santiago', 1323, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1324) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296509070' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-04-06'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1324, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1325) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296509070' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-04-06'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1325, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1326) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296412997' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-04-06'::date, 3490.0,
    'Cotuí', 'Sánchez Ramírez', 1326, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1327) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099868600' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-04-06'::date, 3490.0,
    'San Juan', 'San Juan', 1327, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1328) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093359154' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'pendiente', 'ESPERA DE CONFIRMACION',
    false, '2026-04-07'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1328, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1329) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18498848295' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-04-07'::date, 4290.0,
    'Santo Domingo Oeste', 'Santo Domingo', 1329, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 11960.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1330) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18292848411' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-04-07'::date, 3490.0,
    'Verón', 'La Altagracia', 1330, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1331) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18094478537' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-04-07'::date, 3490.0,
    'Santo Domingo Este', 'Santo Domingo', 1331, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1332) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18293200303' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'CANCELADO',
    false, '2026-04-08'::date, 3490.0,
    'La Vega (Concepción de la Vega)', 'La Vega', 1332, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1333) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099563946' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-04-08'::date, 3490.0,
    'Monte Plata', 'Monte Plata', 1333, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1334) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18493709428' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'entregado', 'ENTREGADO',
    false, '2026-04-08'::date, 3490.0,
    'Nagua', 'Maria Trinidad Sanchez', 1334, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 8970.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1336) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '13479610412' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'devuelto', 'DEVOLUCION MOTORIZADA',
    false, '2026-04-08'::date, 2990.0,
    'Santo Domingo Este', 'Santo Domingo', 1336, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 2990.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1337) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097131380' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'devuelto', 'DEVOLUCION AUREL',
    false, '2026-04-09'::date, 4290.0,
    'La otra Banda (Higüey)', 'La Altagracia', 1337, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 2990.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1338) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18099210560' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'entregado', 'COMPLETADO AUREL',
    false, '2026-04-09'::date, 4290.0,
    'Santiago de los Caballeros', 'Santiago', 1338, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 2990.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1339) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18295538987' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'entregado', 'COMPLETADO AUREL',
    false, '2026-04-09'::date, 4290.0,
    'Hato Mayor (Hato Mayor del Rey)', 'Hato Mayor', 1339, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 2990.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1341) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092995266' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'entregado', 'COMPLETADO AUREL',
    false, '2026-04-10'::date, 3490.0,
    'La Romana', 'La Romana', 1341, 'entregado 05/05'
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 2990.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1342) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296373315' LIMIT 1;

  -- Lookup courier
  -- no courier

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, NULL, 'cancelado', 'SIN COBERTURA',
    false, '2026-04-10'::date, 3490.0,
    'Yaguate (San Gregorio de Yaguate)', 'San Cristóbal', 1342, 'NO LLEGAMOS A YAGUATE'
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 2990.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1343) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18095197969' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'cancelado', 'CANCELADO',
    false, '2026-04-10'::date, 2990.0,
    'Punta Cana', 'La Altagracia', 1343, 'no preparado'
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 2990.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1347) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18093573814' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'entregado', 'COMPLETADO AUREL',
    false, '2026-04-11'::date, 1950.0,
    'Nagua', 'Maria Trinidad Sanchez', 1347, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 1, 2990.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1349) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18092563750' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz solar con sensor') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'cancelado', 'CONFIRMADO AUREL, Sin stock',
    false, '2026-04-12'::date, 3490.0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 1349, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 3, 2990.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1350) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18296311389' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz LED RGB - Recargable - Magnética') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'cancelado', 'CANCELADO',
    false, '2026-04-13'::date, 3390.0,
    'La Vega (Concepción de la Vega)', 'La Vega', 1350, '5 intentos de contacto sin respuesta'
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1352) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18097058923' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz LED RGB - Recargable - Magnética') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'entregado', 'COMPLETADO MOTORIZADO',
    false, '2026-04-14'::date, 2490.0,
    'Santo Domingo', 'Distrito Nacional', 1352, 'ACT EL 15-04 COMPLETADO'
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1353) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '12155432043' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz LED RGB - Recargable - Magnética') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'devuelto', 'DEVOLUCIÓN MOTORIZADO',
    false, '2026-04-14'::date, 1990.0,
    'Santo Domingo Este', 'Santo Domingo', 1353, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 2, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1354) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18492677744' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz LED RGB - Recargable - Magnética') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'cancelado', 'CANCELADO',
    false, '2026-04-14'::date, 2490.0,
    'Samaná (Santa Bárbara de Samaná)', 'Samaná', 1354, NULL
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1355) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18294616029' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Gintracom') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz LED RGB - Recargable - Magnética') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'devuelto', 'DEVOLUCIÓN MOTORIZADO',
    false, '2026-04-15'::date, 2490.0,
    'San Luis', 'Santo Domingo', 1355, 'cliente indica que si desea recibir el dia sabado, no tenia el dinero.'
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 1950.0);
  END IF;
END $$;

DO $$ DECLARE
  _pid uuid; _cid uuid; _prod_id uuid; _ccid uuid;
BEGIN
  -- Skip if already exists
  IF EXISTS (SELECT 1 FROM pedidos WHERE pedido_num = 1357) THEN RETURN; END IF;

  -- Lookup client by phone
  SELECT id INTO _cid FROM clientes WHERE telefono = '18098353450' LIMIT 1;

  -- Lookup courier
  SELECT id INTO _ccid FROM canales_cobro WHERE lower(nombre) = lower('Aurel') LIMIT 1;

  -- Lookup product
  SELECT id INTO _prod_id FROM productos WHERE lower(nombre) = lower('Luz LED RGB - Recargable - Magnética') LIMIT 1;

  -- Insert pedido
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, estado_original,
    es_testeo, fecha_pedido, precio_total,
    ciudad, provincia, pedido_num, notas
  ) VALUES (
    _cid, _ccid, 'devuelto', 'DEVOLUCION AUREL',
    false, '2026-04-15'::date, 2490.0,
    'Monte Plata', 'Monte Plata', 1357, 'PARA EL MARTES 21'
  ) RETURNING id INTO _pid;

  -- Insert item
  IF _prod_id IS NOT NULL THEN
    INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod_id, 4, 1950.0);
  END IF;
END $$;

-- ============================================================
-- 5. ACTUALIZAR ultimo_num_sincronizado
-- ============================================================

UPDATE sync_state SET ultimo_num_sincronizado = 1357 WHERE id = 1;

COMMIT;

-- Verificación: SELECT COUNT(*), MIN(pedido_num), MAX(pedido_num) FROM pedidos;
