-- ════════════════════════════════════════════════════════
-- Migración de pedidos DT Shop — generado automáticamente
-- ════════════════════════════════════════════════════════
BEGIN;

-- ── Clientes ─────────────────────────────────────────
CREATE TEMP TABLE _clientes_map (key text PRIMARY KEY, id uuid);

DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dariel Tejada', '+18496300294') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dariel Tejada||+18496300294', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Félix larrion', '+18494591102') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Félix larrion||+18494591102', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yowanda -', '+18094959187') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yowanda -||+18094959187', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Joel villaman', '+14807575513') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Joel villaman||+14807575513', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Edward -', '+18495838302') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Edward -||+18495838302', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Josué Jimenez', '+18294953501') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Josué Jimenez||+18294953501', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Reymond Ledesma', '+18298384097') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Reymond Ledesma||+18298384097', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Francisco -', '+18298897861') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Francisco -||+18298897861', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Adriana -', '+18093527277') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Adriana -||+18093527277', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Maria Esther', '+18497512516') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Maria Esther||+18497512516', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yasmiri -', '+18299845843') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yasmiri -||+18299845843', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Stalyn -', '+18293122530') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Stalyn -||+18293122530', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wascar -', '+18092199482') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wascar -||+18092199482', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Luceliz -', '+18295567059') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Luceliz -||+18295567059', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jose R', '+18098541232') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jose R||+18098541232', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Melkys M. Novas F.', '+18492512909') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Melkys M. Novas F.||+18492512909', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yadara gonzalez', '+18094743296') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yadara gonzalez||+18094743296', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Eriana -', '+18097587606') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Eriana -||+18097587606', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Kilsis Gonzalez', '+18092248867') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Kilsis Gonzalez||+18092248867', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Vinicio gonzalez', '+18099182254') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Vinicio gonzalez||+18099182254', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jose Reyes', '+18098528659') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jose Reyes||+18098528659', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Alberto aquino', '+18294234620') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Alberto aquino||+18294234620', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Cristal -', '+18297306640') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Cristal -||+18297306640', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Martha Santana', '+18097560758') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Martha Santana||+18097560758', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Noemí Fani Ladoo FÍGARO de Devers', '+18296328144') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Noemí Fani Ladoo FÍGARO de Devers||+18296328144', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Noemí Ladoo', '+18296328144') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Noemí Ladoo||+18296328144', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yasmín reyes', '+18094952270') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yasmín reyes||+18094952270', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Fidias Mateo', '+18296195465') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Fidias Mateo||+18296195465', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Támara Rome', '+18097699414') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Támara Rome||+18097699414', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Manuel E Sánchez Díaz', '+18299083824') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Manuel E Sánchez Díaz||+18299083824', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dolores Luna', '+18293528523') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dolores Luna||+18293528523', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Anyelani franco', '+18297761142') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Anyelani franco||+18297761142', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Kailis inoska', '+18094986812') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Kailis inoska||+18094986812', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ramón -', '+18096938564') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ramón -||+18096938564', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rafael Cuello', '+18295709806') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rafael Cuello||+18295709806', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Hirquin -', '+18098821680') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Hirquin -||+18098821680', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Alexis Ramírez', '+18296806097') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Alexis Ramírez||+18296806097', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Danilo de los santos', '+18298414298') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Danilo de los santos||+18298414298', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Kelvin -', '+18292801375') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Kelvin -||+18292801375', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Roberto -', '+18493501547') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Roberto -||+18493501547', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Antonio Melican', '+18495350922') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Antonio Melican||+18495350922', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jose Farias', '+18298701111') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jose Farias||+18298701111', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Cheferson -', '+18297618450') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Cheferson -||+18297618450', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Luis -', '+18098178550') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Luis -||+18098178550', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rolando Calderon', '+18095336510') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rolando Calderon||+18095336510', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Alfredo mariot', '+18492203518') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Alfredo mariot||+18492203518', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('eduard taveras', '+18296390416') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('eduard taveras||+18296390416', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dindo -', '+18097655438') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dindo -||+18097655438', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Noelia -', '+18296553562') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Noelia -||+18296553562', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Daniel reyes', '+18495764163') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Daniel reyes||+18495764163', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dafi Guzmán HerediaelE', '+18097591177') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dafi Guzmán HerediaelE||+18097591177', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Phito -', '+18493882716') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Phito -||+18493882716', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Isidora abreu ventura', '+14233135467') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Isidora abreu ventura||+14233135467', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yeremy Perez', '+18093236866') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yeremy Perez||+18093236866', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carlos -', '+18094381241') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carlos -||+18094381241', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Joel santos', '+18294281465') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Joel santos||+18294281465', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Elizabeth -', '+18298771983') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Elizabeth -||+18298771983', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Uilton Rodríguez', '+18099076173') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Uilton Rodríguez||+18099076173', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Juan Alberto Muñoz Duarte', '+18297564151') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Juan Alberto Muñoz Duarte||+18297564151', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Diego Henríquez', '18294290249') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Diego Henríquez||18294290249', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Summer -', '18094327705') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Summer -||18094327705', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wilfredo rafael', '18493519486') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wilfredo rafael||18493519486', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Moreno -', '18299252292') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Moreno -||18299252292', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Félix Santana', '18096690797') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Félix Santana||18096690797', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Roberto -', '18093506933') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Roberto -||18093506933', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('caridad gutierrez', '18099620097') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('caridad gutierrez||18099620097', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jose -', '18097864429') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jose -||18097864429', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Juan Antonio De La Cruz Rosario', '18293945204') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Juan Antonio De La Cruz Rosario||18293945204', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Marcet -', '18096605900') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Marcet -||18096605900', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Mike lombardini', '18296784731') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Mike lombardini||18296784731', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Antonio -', '18298391017') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Antonio -||18298391017', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Toni -', '18093527370') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Toni -||18093527370', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Aury Moralez de la rosa', '18292280113') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Aury Moralez de la rosa||18292280113', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Kelvin Santana', '18493305609') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Kelvin Santana||18493305609', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Andy de Jesús peña', '18096547027') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Andy de Jesús peña||18096547027', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rosa Mateo', '18099234020') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rosa Mateo||18099234020', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Osvaldo Cross', '18293436439') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Osvaldo Cross||18293436439', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Victor -', '18294133206') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Victor -||18294133206', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Diefet Yambati', '18294793809') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Diefet Yambati||18294793809', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Lidia Pacheco', '18292130808') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Lidia Pacheco||18292130808', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Manuel -', '18099147713') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Manuel -||18099147713', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Mirtha Crisóstomo', '18098633132') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Mirtha Crisóstomo||18098633132', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yoryi jose', '18295516193') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yoryi jose||18295516193', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Cesar peña Z', '18098432424') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Cesar peña Z||18098432424', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Danilo Monegro', '18494531910') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Danilo Monegro||18494531910', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Domingo Melenciano De La Cruz', '18092600999') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Domingo Melenciano De La Cruz||18092600999', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Estefany -', '18099622392') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Estefany -||18099622392', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Doohan -', '18298374740') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Doohan -||18298374740', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Pedro Romero', '18097492127') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Pedro Romero||18097492127', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Robinson mata', '18099627510') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Robinson mata||18099627510', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carmen Balbuena', '18296754307') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carmen Balbuena||18296754307', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Luis Manuel', '18494275022') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Luis Manuel||18494275022', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jose n', '18096692780') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jose n||18096692780', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carolin -', '18293341414') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carolin -||18293341414', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Alejandro -', '18492468802') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Alejandro -||18492468802', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Cocina -', '18495270722') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Cocina -||18495270722', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ronald Tejeda', '18298989177') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ronald Tejeda||18298989177', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('VALENTINA  MERCEDES b -', '18496550734') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('VALENTINA  MERCEDES b -||18496550734', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Manuela -', '18098416286') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Manuela -||18098416286', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Andrés Contreras', '18096276877') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Andrés Contreras||18096276877', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Mirna ortiz', '18092238154') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Mirna ortiz||18092238154', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Teresa Sánchez', '18096677745') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Teresa Sánchez||18096677745', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Clásico flow', '18094882949') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Clásico flow||18094882949', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Tomas -', '18092566799') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Tomas -||18092566799', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Emil Liriano', '18494781147') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Emil Liriano||18494781147', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('raphael castillo', '18094616236') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('raphael castillo||18094616236', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Raphael castillo', '18094616236') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Raphael castillo||18094616236', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('joseph  prophil -', '18092078178') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('joseph  prophil -||18092078178', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Pacifico ayres', '18493520211') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Pacifico ayres||18493520211', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Aquilina.alcequiez. -', '18098564714') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Aquilina.alcequiez. -||18098564714', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Aquilina Alcequiez', '18098564714') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Aquilina Alcequiez||18098564714', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rolando rosado', '18093908874') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rolando rosado||18093908874', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wilbert Geffrard', '18093767066') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wilbert Geffrard||18093767066', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dolores acosta s', '18094903973') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dolores acosta s||18094903973', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Johairis -', '18297991120') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Johairis -||18297991120', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Julio -', '18292735426') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Julio -||18292735426', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Hugo Badia', '18092232991') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Hugo Badia||18092232991', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('ANA TINEO', '17188261828') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('ANA TINEO||17188261828', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wascarnicolaspolancogarcia -', '18296750278') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wascarnicolaspolancogarcia -||18296750278', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nicola de la cruz', '18092823749') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nicola de la cruz||18092823749', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yvrose gedeus gedeusyvrose21@gmail.com', '18494409968') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yvrose gedeus gedeusyvrose21@gmail.com||18494409968', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Francisco -', '18093605881') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Francisco -||18093605881', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Daniel duversaint', '18297921946') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Daniel duversaint||18297921946', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Alfredo Belén', '18096500077') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Alfredo Belén||18096500077', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jeisson Gabriel', '18296909898') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jeisson Gabriel||18296909898', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ejemplo -', '18496450115') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ejemplo -||18496450115', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Bernardo Calletano', '18299121199') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Bernardo Calletano||18299121199', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Leonor -', '18295091551') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Leonor -||18295091551', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Luis Enrique Sanchez Suarez', '18297685662') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Luis Enrique Sanchez Suarez||18297685662', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Eladio Díaz', '12155326857') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Eladio Díaz||12155326857', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ederson frias de los santos', '18299227490') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ederson frias de los santos||18299227490', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Leonela peña', '18096690450') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Leonela peña||18096690450', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Enrique -', '18299581947') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Enrique -||18299581947', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('jose -', '18099861297') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('jose -||18099861297', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Luís manual Santana', '18297079922') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Luís manual Santana||18297079922', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Josué -', '18493522166') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Josué -||18493522166', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Juan lantigua', '18297228373') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Juan lantigua||18297228373', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Francis soler', '18093714992') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Francis soler||18093714992', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Isis bautista', '18092247111') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Isis bautista||18092247111', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Doneisy Bertre', '18097579949') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Doneisy Bertre||18097579949', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wilson Luciano adames', '18294390905') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wilson Luciano adames||18294390905', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('JUANCARLOS -', '18292748863') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('JUANCARLOS -||18292748863', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Guadalupe Cruz Mota', '18296766477') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Guadalupe Cruz Mota||18296766477', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jose -', '18293280170') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jose -||18293280170', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nancy santana', '18293383837') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nancy santana||18293383837', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ángel Polanco', '18293691378') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ángel Polanco||18293691378', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rafael nova', '18297098079') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rafael nova||18297098079', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wander García Santana', '18293885300') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wander García Santana||18293885300', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Aracelis Altagracia', '18299079203') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Aracelis Altagracia||18299079203', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yudy silverio', '18297073361') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yudy silverio||18297073361', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ania Sugey', '18097741525') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ania Sugey||18097741525', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nancy Santana', '18293383837') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nancy Santana||18293383837', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jose cruz809 223 1455', '18092231455') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jose cruz809 223 1455||18092231455', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Angela Del Rosario Florian Trinidad', '18298627648') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Angela Del Rosario Florian Trinidad||18298627648', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('David vialet', '18295268109') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('David vialet||18295268109', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Octavio meran', '18099163968') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Octavio meran||18099163968', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Mirian de leon', '18098053532') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Mirian de leon||18098053532', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carlos Jose', '18296241810') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carlos Jose||18296241810', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Amable frías', '18492710145') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Amable frías||18492710145', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wenceslao de la cruz de León', '18299019693') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wenceslao de la cruz de León||18299019693', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Joel villaman', '14807575513') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Joel villaman||14807575513', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Francisco Dominguez', '18099090997') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Francisco Dominguez||18099090997', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Josefina -', '18296296484') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Josefina -||18296296484', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ronald -', '18096097448') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ronald -||18096097448', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Elizabeth -', '18298771983') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Elizabeth -||18298771983', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Sujey pina nuñez', '17063068358') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Sujey pina nuñez||17063068358', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Alan Checo.', '18298682748') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Alan Checo.||18298682748', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Juan Ramírez', '18498168953') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Juan Ramírez||18498168953', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rafael Díaz Filpo', '18094898149') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rafael Díaz Filpo||18094898149', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Elvio -', '18096271100') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Elvio -||18096271100', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Gerardo -', '18293406323') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Gerardo -||18293406323', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Maria -', '18098051046') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Maria -||18098051046', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('audy -', '18096502079') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('audy -||18096502079', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ezequiel soriano', '18494565656') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ezequiel soriano||18494565656', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Francisco Mora Valenzuela', '18097106150') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Francisco Mora Valenzuela||18097106150', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Natanael javier', '18094497262') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Natanael javier||18094497262', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Daniel Nuñez', '18097121629') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Daniel Nuñez||18097121629', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('José Pérez', '18492590729') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('José Pérez||18492590729', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Michael Aybar', '18095075448') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Michael Aybar||18095075448', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ingrid Ramírez', '18494760789') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ingrid Ramírez||18494760789', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Pedro Reyes', '18095193436') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Pedro Reyes||18095193436', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Kirsy  de la cruz -', '18092039189') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Kirsy  de la cruz -||18092039189', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Franck melvin', '18294686298') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Franck melvin||18294686298', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Maria -', '18092325330') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Maria -||18092325330', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Juan Antonio', '18093947668') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Juan Antonio||18093947668', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Estarlin Rodríguez bido', '18296476163') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Estarlin Rodríguez bido||18296476163', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Andrés encarnación Soriano', '18298495030') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Andrés encarnación Soriano||18298495030', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Damari uben zapata', '18096943823') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Damari uben zapata||18096943823', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Caren de Jesús', '18292625101') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Caren de Jesús||18292625101', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Lucy -', '18299887033') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Lucy -||18299887033', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Mario mena', '18494495098') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Mario mena||18494495098', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wilton -', '18293755678') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wilton -||18293755678', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Edward Montero', '18296060289') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Edward Montero||18296060289', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Paulina perez', '18292189286') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Paulina perez||18292189286', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carmen Elizabeth Peña Santos', '18099957037') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carmen Elizabeth Peña Santos||18099957037', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Adelso -', '18093525711') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Adelso -||18093525711', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ana Francisco', '18095072372') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ana Francisco||18095072372', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('María Alvarez', '18298867131') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('María Alvarez||18298867131', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Sonia santos', '18297595637') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Sonia santos||18297595637', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Aracelis Rosario', '18296988062') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Aracelis Rosario||18296988062', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Esteban Vasquez', '18293368714') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Esteban Vasquez||18293368714', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Elías -', '18298478661') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Elías -||18298478661', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Alexandra de los Santos', '18094543293') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Alexandra de los Santos||18094543293', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Diogenes del rosario', '18092090735') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Diogenes del rosario||18092090735', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Richard Freites', '18296339784') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Richard Freites||18296339784', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Estela acevedo', '18296515268') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Estela acevedo||18296515268', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yrene Beaubrun', '18097754364') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yrene Beaubrun||18097754364', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wilson Rodríguez', '18296050915') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wilson Rodríguez||18296050915', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Victor sanchez', '18093913962') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Victor sanchez||18093913962', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Guarionex Acosta', '18292650497') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Guarionex Acosta||18292650497', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Hilario -', '18096134815') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Hilario -||18096134815', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jose -', '18495819167') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jose -||18495819167', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ramona -', '18297668764') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ramona -||18297668764', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Aracelis gonzales de perez', '18298877337') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Aracelis gonzales de perez||18298877337', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jesús Lantigua', '18092242915') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jesús Lantigua||18092242915', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Julio perez', '18292123367') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Julio perez||18292123367', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yoeli de la rosa', '18498039854') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yoeli de la rosa||18498039854', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Feliciano peralta', '18294216705') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Feliciano peralta||18294216705', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Socrates Morel', '18299148855') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Socrates Morel||18299148855', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Benancia santos', '18298908451') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Benancia santos||18298908451', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Gerson Escanio matos', '18093925008') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Gerson Escanio matos||18093925008', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Patricia Inoa', '18097141717') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Patricia Inoa||18097141717', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yanirys francois', '18292124186') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yanirys francois||18292124186', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dilcia -', '18294527349') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dilcia -||18294527349', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yokasta carrion', '18299824907') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yokasta carrion||18299824907', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yessica Eridania', '18297569280') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yessica Eridania||18297569280', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yannely -', '18297300620') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yannely -||18297300620', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Zuleika altagracia Santana casado', '18295085429') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Zuleika altagracia Santana casado||18295085429', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Joel Joseph', '18293514660') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Joel Joseph||18293514660', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Onasi -', '18097477468') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Onasi -||18097477468', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('José frias', '18096670441') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('José frias||18096670441', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jesus -', '18496589066') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jesus -||18496589066', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yomery -', '18493962388') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yomery -||18493962388', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Martin López', '18099243141') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Martin López||18099243141', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Altagracia Hidalgo', '18293421937') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Altagracia Hidalgo||18293421937', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ana -', '18093033786') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ana -||18093033786', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('La gorda rd', '18298167300') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('La gorda rd||18298167300', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Daniel perdomo', '18295567809') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Daniel perdomo||18295567809', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yenli Blue', '18097199920') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yenli Blue||18097199920', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Alejandro Fermín', '18295631206') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Alejandro Fermín||18295631206', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nelson Martínez', '18295505583') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nelson Martínez||18295505583', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ysabel  Contreras -', '18095197969') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ysabel  Contreras -||18095197969', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Junior Valentín', '18092090404') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Junior Valentín||18092090404', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ana -', '18099908003') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ana -||18099908003', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yoel Mejía', '18097071794') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yoel Mejía||18097071794', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ada almanzar', '14074337209') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ada almanzar||14074337209', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Estela Mendez', '393318230557') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Estela Mendez||393318230557', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yudelky paulino', '18097717191') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yudelky paulino||18097717191', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carolina -', '18295546408') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carolina -||18295546408', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Domingo Alexander vanterpool', '18098767442') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Domingo Alexander vanterpool||18098767442', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Gustavo cid', '18093507553') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Gustavo cid||18093507553', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Francis -', '18096727400') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Francis -||18096727400', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Andres Capellan', '18297907362') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Andres Capellan||18297907362', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Martha Santana', '18097560758') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Martha Santana||18097560758', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Freddy baez', '18096186841') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Freddy baez||18096186841', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nector Rosario', '18297061552') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nector Rosario||18297061552', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('José Alberto Santos', '18092507891') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('José Alberto Santos||18092507891', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Olga Lidia', '18097869410') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Olga Lidia||18097869410', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Claudia rosario diaz', '18493801028') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Claudia rosario diaz||18493801028', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Junior reyes', '18494696562') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Junior reyes||18494696562', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yajaira Robles', '18492489978') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yajaira Robles||18492489978', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yesenia  pinales -', '18297147901') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yesenia  pinales -||18297147901', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Juan -', '18092081135') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Juan -||18092081135', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Odanel Zabala', '18295363411') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Odanel Zabala||18295363411', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jesús castillo', '18094866174') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jesús castillo||18094866174', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jaice ruiz', '18494016385') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jaice ruiz||18494016385', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Manuela cespedes', '18293250923') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Manuela cespedes||18293250923', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wilfrido -', '18292919115') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wilfrido -||18292919115', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Cristian cuevas', '18493415786') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Cristian cuevas||18493415786', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yuby Ureña', '18296164753') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yuby Ureña||18296164753', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jon -', '18295850251') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jon -||18295850251', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Leonardo Rojas', '18099432899') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Leonardo Rojas||18099432899', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ada Almánzar', '14074337209') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ada Almánzar||14074337209', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Julio M Bonnelly T', '18299865999') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Julio M Bonnelly T||18299865999', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Fausto -', '18094492880') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Fausto -||18094492880', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yasmin genao', '18299326650') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yasmin genao||18299326650', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wilkin Pujols Mendez', '18297972567') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wilkin Pujols Mendez||18297972567', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Adalberto polanco', '18299783859') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Adalberto polanco||18299783859', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carlos Agramonte', '18494480704') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carlos Agramonte||18494480704', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Francisco Alberto paredes', '18496578337') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Francisco Alberto paredes||18496578337', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Deybi Ramirez', '18296367726') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Deybi Ramirez||18296367726', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yamilex concepcion', '18097208730') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yamilex concepcion||18097208730', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rudy de la cruz', '18092817202') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rudy de la cruz||18092817202', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Faustin François', '18098904886') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Faustin François||18098904886', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('José Vargas', '18096641095') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('José Vargas||18096641095', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Argenis Rosado', '18293488010') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Argenis Rosado||18293488010', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Johana -', '18293580236') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Johana -||18293580236', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Alphi Ruiz', '18098189221') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Alphi Ruiz||18098189221', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Mauricio de jesus', '18095193725') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Mauricio de jesus||18095193725', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('José Manuel Bichara', '18098851213') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('José Manuel Bichara||18098851213', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Claudia Soto', '18298015429') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Claudia Soto||18298015429', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Helen -', '18093999327') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Helen -||18093999327', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Victor Alcantara', '18298288801') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Victor Alcantara||18298288801', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carlos -', '18097055896') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carlos -||18097055896', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jimena foxan', '18293599082') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jimena foxan||18293599082', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Edinson Ureña', '18297890139') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Edinson Ureña||18297890139', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('cesar martinez', '18092129434') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('cesar martinez||18092129434', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Franklin de lima', '18299318456') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Franklin de lima||18299318456', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Miguel Angel garcias', '18097585780') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Miguel Angel garcias||18097585780', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nicolino Loche', '18493608700') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nicolino Loche||18493608700', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Selenia -', '18297985334') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Selenia -||18297985334', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Juan marte', '18295083273') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Juan marte||18295083273', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jorge -', '18494705098') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jorge -||18494705098', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Poli -', '18494593629') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Poli -||18494593629', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Miguel angel frías Cruz', '18094155830') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Miguel angel frías Cruz||18094155830', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('La Para De La', '18297731495') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('La Para De La||18297731495', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rafael pajero Beato', '18493900746') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rafael pajero Beato||18493900746', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Kelvin Alcántara', '18296509070') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Kelvin Alcántara||18296509070', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('José Antonio Acosta Jiménez', '18296412997') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('José Antonio Acosta Jiménez||18296412997', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('HECTOR MONTERO', '18099868600') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('HECTOR MONTERO||18099868600', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dominica Rosario', '18093359154') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dominica Rosario||18093359154', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dione Cubilete Díaz', '18498848295') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dione Cubilete Díaz||18498848295', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Joan pilier', '18292848411') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Joan pilier||18292848411', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Juan Antonio Mejia Ruiz', '18094478537') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Juan Antonio Mejia Ruiz||18094478537', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('George Rivas', '18293200303') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('George Rivas||18293200303', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Uver -', '18099563946') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Uver -||18099563946', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Cecilin maria', '18493709428') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Cecilin maria||18493709428', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dariel Tejada', '18496300294') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dariel Tejada||18496300294', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Robert -', '13479610412') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Robert -||13479610412', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yoly Reyes', '18099210560') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yoly Reyes||18099210560', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Joanna Martínez', '18097131380') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Joanna Martínez||18097131380', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Leonel de la cruz', '18295538987') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Leonel de la cruz||18295538987', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('ARISMENDY López', '18092995266') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('ARISMENDY López||18092995266', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wislet Carismene', '18296373315') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wislet Carismene||18296373315', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Marina cueva', '18294100274') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Marina cueva||18294100274', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Prueba -', '18496300294') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Prueba -||18496300294', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Osiris sanchez', '18298774824') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Osiris sanchez||18298774824', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ambiorys -', '18099811378') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ambiorys -||18099811378', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jorge Luis Jorge cabrera', '18093573814') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jorge Luis Jorge cabrera||18093573814', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nelson Fernández', '18298699028') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nelson Fernández||18298699028', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ana g Duluc', '18092563750') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ana g Duluc||18092563750', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Sócrates  ramirez -', '18296311389') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Sócrates  ramirez -||18296311389', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Juan Carlos Zamora', '18092640135') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Juan Carlos Zamora||18092640135', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Blas Abreu', '18097058923') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Blas Abreu||18097058923', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Kelele Ninja', '12155432043') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Kelele Ninja||12155432043', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Enyel Diaz', '18492677744') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Enyel Diaz||18492677744', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wilkin Sanche', '18294616029') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wilkin Sanche||18294616029', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Amer -', '18293187523') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Amer -||18293187523', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Robert De paula', '18098353450') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Robert De paula||18098353450', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jefferson Baptiste', '18295179182') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jefferson Baptiste||18295179182', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Faury -', '18294570284') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Faury -||18294570284', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Massiel Mercedes', '18494260991') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Massiel Mercedes||18494260991', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Daniel tejada', '18296618503') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Daniel tejada||18296618503', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Daneivis Lissett', '18095162284') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Daneivis Lissett||18095162284', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Orlando -', '18495859023') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Orlando -||18495859023', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Suleny Cabrera', '18493547090') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Suleny Cabrera||18493547090', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Lisane -', '18099198355') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Lisane -||18099198355', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Mafeo12 -', '18293328024') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Mafeo12 -||18293328024', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Francisco -', '18097621908') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Francisco -||18097621908', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yunior -', '18493931822') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yunior -||18493931822', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dahiana Reyes', '18294375038') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dahiana Reyes||18294375038', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Papito almanzar', '18293121305') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Papito almanzar||18293121305', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Madeline Etienne', '18292963172') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Madeline Etienne||18292963172', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rita -', '18293425814') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rita -||18293425814', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ado -', '18299218283') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ado -||18299218283', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Luis reyes', '18097088918') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Luis reyes||18097088918', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Briank -', '18095132845') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Briank -||18095132845', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Juleisi piña moreno', '18493934011') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Juleisi piña moreno||18493934011', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Edwin ambiori', '18298274138') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Edwin ambiori||18298274138', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nelvi Felix', '18492753234') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nelvi Felix||18492753234', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Bronw -', '18299933261') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Bronw -||18299933261', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Banesa Vargas', '18293011999') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Banesa Vargas||18293011999', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Sarah Gonzalez', '18293421155') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Sarah Gonzalez||18293421155', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Anne rose', '18099176522') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Anne rose||18099176522', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Arawak Gonzalez', '18098415781') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Arawak Gonzalez||18098415781', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rose belon', '18099094172') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rose belon||18099094172', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Felicia Reyes', '18099235058') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Felicia Reyes||18099235058', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Felícita -', '18295862696') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Felícita -||18295862696', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ana -', '18298028521') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ana -||18298028521', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Aney Diaz rojas', '18292977552') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Aney Diaz rojas||18292977552', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yvelisse Almanzar', '18093109330') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yvelisse Almanzar||18093109330', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carmen de la cruz', '18097579441') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carmen de la cruz||18097579441', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yajaira -', '18493825212') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yajaira -||18493825212', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nerys Martinez', '18097060121') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nerys Martinez||18097060121', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Miguelina Fernández', '18298637370') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Miguelina Fernández||18298637370', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Lissette Ubiera Rivera', '18098766087') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Lissette Ubiera Rivera||18098766087', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Leidy -', '18292137363') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Leidy -||18292137363', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carmen de los santos', '18498896129') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carmen de los santos||18498896129', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Bladimir -', '18497974636') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Bladimir -||18497974636', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Miguel de peña', '18098018929') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Miguel de peña||18098018929', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Támara Rome', '18097699414') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Támara Rome||18097699414', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yoselyn -', '18093509463') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yoselyn -||18093509463', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Luis Rosario', '18096971722') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Luis Rosario||18096971722', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ana belkys berroa payano', '18498796478') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ana belkys berroa payano||18498796478', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Noelia suero', '18099831423') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Noelia suero||18099831423', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Morena Stephan', '18297236177') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Morena Stephan||18297236177', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jhonny peralta santos', '18098274553') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jhonny peralta santos||18098274553', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Deivi -', '18292801583') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Deivi -||18292801583', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Francisco Méndez', '18299227346') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Francisco Méndez||18299227346', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Massiel -', '18099160837') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Massiel -||18099160837', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yenny -', '18492098954') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yenny -||18492098954', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Mary Laura', '18494641949') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Mary Laura||18494641949', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Daysi Medina', '18292579997') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Daysi Medina||18292579997', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dayana -', '18299898171') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dayana -||18299898171', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Hugo paula', '18095430732') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Hugo paula||18095430732', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Sujey Martínez', '18092999286') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Sujey Martínez||18092999286', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Manolo Divalon', '18093967246') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Manolo Divalon||18093967246', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yaquelin  salcedo -', '18292627281') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yaquelin  salcedo -||18292627281', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nilda  Calderon -', '18293955778') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nilda  Calderon -||18293955778', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Héctor Lebron', '18094445203') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Héctor Lebron||18094445203', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rosa moris', '18099733321') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rosa moris||18099733321', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rafael -', '18293879062') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rafael -||18293879062', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ana Sarita', '18295681486') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ana Sarita||18295681486', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ruth Suero', '18498769480') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ruth Suero||18498769480', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('José esteves', '18292229192') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('José esteves||18292229192', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Lisbeth -', '18295897092') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Lisbeth -||18295897092', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Celia Morales', '18297417289') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Celia Morales||18297417289', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Mayi -', '18092659212') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Mayi -||18092659212', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ana medina', '18494464960') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ana medina||18494464960', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('José augusto nuñez', '18095139156') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('José augusto nuñez||18095139156', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Luisana -', '18492804533') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Luisana -||18492804533', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ana Contreras', '18098475258') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ana Contreras||18098475258', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('David Corniel', '18298629661') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('David Corniel||18298629661', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carlos jimenez', '8098474966') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carlos jimenez||8098474966', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Michel Jeff', '8492437530') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Michel Jeff||8492437530', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ana rosario', '8294561625') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ana rosario||8294561625', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Miguel De Peña Antonio', '8098018929') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Miguel De Peña Antonio||8098018929', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Woolendele -', '8097752138') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Woolendele -||8097752138', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yajaira -', '8299738278') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yajaira -||8299738278', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yulys marquez', '8299873084') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yulys marquez||8299873084', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Angélica María frias', '8293904586') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Angélica María frias||8293904586', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jose lopez', '8297647180') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jose lopez||8297647180', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Maribel Tejeda', '8493762434') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Maribel Tejeda||8493762434', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Estefany rosario', '8299371166') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Estefany rosario||8299371166', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Magdelyn  Sánchez -', '8493300335') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Magdelyn  Sánchez -||8493300335', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Katherine -', '8495771314') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Katherine -||8495771314', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Grey -', '8299329761') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Grey -||8299329761', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Maryest Nuñez', '8496525163') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Maryest Nuñez||8496525163', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Solanyi díaz', '8096675356') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Solanyi díaz||8096675356', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Evelyn -', '8099522126') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Evelyn -||8099522126', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ambar Castro', '8096761626') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ambar Castro||8096761626', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Natalie Bonifacio', '8296602823') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Natalie Bonifacio||8296602823', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Danerlly Encarnacion', '8294623584') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Danerlly Encarnacion||8294623584', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Steisy Pimentel', '8097744652') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Steisy Pimentel||8097744652', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yasury Picon feliz', '8292337202') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yasury Picon feliz||8292337202', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Solange santana', '8298851510') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Solange santana||8298851510', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Lívida -', '8097044919') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Lívida -||8097044919', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Gisselle -', '8494381109') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Gisselle -||8494381109', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Elina sánchez', '8097828894') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Elina sánchez||8097828894', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carolina -', '8298205364') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carolina -||8298205364', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Fernando Tiquitik', '8095562341') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Fernando Tiquitik||8095562341', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Alexandra Rodriguez', '8292590343') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Alexandra Rodriguez||8292590343', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Susan Robert', '8493535301') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Susan Robert||8493535301', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Biannely -', '8492640096') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Biannely -||8492640096', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Maria Paulina Rodriguez', '8297946895') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Maria Paulina Rodriguez||8297946895', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rosa Morales', '8099780805') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rosa Morales||8099780805', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Gomez -', '8097092008') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Gomez -||8097092008', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yandelson -', '8296503796') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yandelson -||8296503796', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wanda -', '8297564439') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wanda -||8297564439', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Roberta Almonte Rodriguez', '8295709600') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Roberta Almonte Rodriguez||8295709600', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Osmeldi -', '8097084334') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Osmeldi -||8097084334', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dasca Joseph', '8296183104') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dasca Joseph||8296183104', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Maria -', '8295989358') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Maria -||8295989358', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Katherine Romero', '8294828815') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Katherine Romero||8294828815', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Lisseth -', '8097654627') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Lisseth -||8097654627', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dilenia -', '8295487779') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dilenia -||8295487779', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ashlyt vanessa', '8096975969') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ashlyt vanessa||8096975969', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yeleini Pujols', '8099319691') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yeleini Pujols||8099319691', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Claudia Rodríguez', '8098277992') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Claudia Rodríguez||8098277992', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Katerin Gomez', '8494652204') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Katerin Gomez||8494652204', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Noemi -', '8292332100') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Noemi -||8292332100', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jessica -', '8492074977') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jessica -||8492074977', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('María Teresa Perez', '8493773063') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('María Teresa Perez||8493773063', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Prieba -', '8496300294') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Prieba -||8496300294', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Luisa Sterling', '8295347586') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Luisa Sterling||8295347586', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Magdelyn Sánchez', '8493300335') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Magdelyn Sánchez||8493300335', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Winton -', '8296198086') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Winton -||8296198086', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rubens Sanchez', '8498822785') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rubens Sanchez||8498822785', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ingrid Ramírez', '8494760789') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ingrid Ramírez||8494760789', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yaritza Gomez', '8099621266') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yaritza Gomez||8099621266', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Isa -', '8098630590') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Isa -||8098630590', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wendely Díaz', '8093438667') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wendely Díaz||8093438667', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nayi torres', '8483651595') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nayi torres||8483651595', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wanda ESMERLIN', '8098270453') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wanda ESMERLIN||8098270453', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Luis Martinez', '8294481626') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Luis Martinez||8294481626', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Magaly guzman', '8493586508') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Magaly guzman||8493586508', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Kenia Berenice', '8294652349') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Kenia Berenice||8294652349', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Efrain Díaz', '7874108976') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Efrain Díaz||7874108976', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Zuleyky Guzmán', '8492495911') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Zuleyky Guzmán||8492495911', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Erick Pérez', '8296935857') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Erick Pérez||8296935857', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Valentina castro', '8297120871') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Valentina castro||8297120871', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('María Santana', '8096775094') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('María Santana||8096775094', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Liliana viola', '8099946210') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Liliana viola||8099946210', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Angela Del Rosario', '8298627648') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Angela Del Rosario||8298627648', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Anna -', '8297874975') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Anna -||8297874975', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Massiel -', '8493606212') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Massiel -||8493606212', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Kenia -', '8495425353') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Kenia -||8495425353', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Deyanira -', '2039421948') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Deyanira -||2039421948', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Marvelin Ovalle Guzmán', '8297514060') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Marvelin Ovalle Guzmán||8297514060', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Janice Vasquez', '8492030626') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Janice Vasquez||8492030626', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Julio Vallejo', '8092324975') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Julio Vallejo||8092324975', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nelson Mercedes', '8098415123') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nelson Mercedes||8098415123', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Isaac Ogando Rojas', '8092308451') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Isaac Ogando Rojas||8092308451', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Deyani Santana', '8099099352') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Deyani Santana||8099099352', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Carlos Ferreras', '8092702369') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Carlos Ferreras||8092702369', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Jennifer Jean Louis', '8293549511') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Jennifer Jean Louis||8293549511', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Julio Gómez', '8297626778') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Julio Gómez||8297626778', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Luis moises vanderhorst García', '8098674587') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Luis moises vanderhorst García||8098674587', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Manuela Gómez', '8297880131') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Manuela Gómez||8297880131', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ignaqui Estevez', '8092237592') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ignaqui Estevez||8092237592', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Nayeli Mora', '8496523069') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Nayeli Mora||8496523069', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Genesis Mejía', '8295809754') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Genesis Mejía||8295809754', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yesenia Hernández', '8297561981') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yesenia Hernández||8297561981', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Sires y encarnacion jaquez', '8092080883') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Sires y encarnacion jaquez||8092080883', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Robeli morel', '8296374877') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Robeli morel||8296374877', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Maria del pilar hernandez', '8493527346') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Maria del pilar hernandez||8493527346', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Sheila Maria Ciscal Almaguer', '8495818159') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Sheila Maria Ciscal Almaguer||8495818159', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('francis rosario', '8093033305') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('francis rosario||8093033305', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Arlene Faneyte', '8092584145') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Arlene Faneyte||8092584145', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Altagracia De Pimentel', '8298755544') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Altagracia De Pimentel||8298755544', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Wismehylin geronimo', '8495297930') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Wismehylin geronimo||8495297930', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Samira santana', '8096091142') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Samira santana||8096091142', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('𝑀𝒶𝓇𝓎 -', '8296642030') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('𝑀𝒶𝓇𝓎 -||8296642030', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Miguel Angel Domínguez', '8298852219') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Miguel Angel Domínguez||8298852219', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Anabel -', '8098734510') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Anabel -||8098734510', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Adilca -', '8293034232') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Adilca -||8293034232', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rosa miguelina', '8292082581') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rosa miguelina||8292082581', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('AzLIM MAICA', '8292974315') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('AzLIM MAICA||8292974315', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Manuela -', '8292603526') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Manuela -||8292603526', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Rachel -', '8094601929') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Rachel -||8094601929', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Katherine Sánchez', '8096379236') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Katherine Sánchez||8096379236', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dinelys -', '8295639307') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dinelys -||8295639307', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Dessire Taveras', '8492624904') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Dessire Taveras||8492624904', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Maricela cruz', '8299801716') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Maricela cruz||8299801716', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Prueba -', '8496300294') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Prueba -||8496300294', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Maria orquidea franco', '8293362430') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Maria orquidea franco||8293362430', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Madelyn carela', '8292203816') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Madelyn carela||8292203816', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('JoséFrancisco -', '8299227346') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('JoséFrancisco -||8299227346', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ebony Rivera severino', '8492453912') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ebony Rivera severino||8492453912', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yuniffer Viloria', '8296525265') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yuniffer Viloria||8296525265', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Xiomara -', '8299322055') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Xiomara -||8299322055', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yelixfer -', '4802384270') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yelixfer -||4802384270', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yesenia García', '8296497684') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yesenia García||8296497684', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ruhaiddy -', '8494545779') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ruhaiddy -||8494545779', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Danna yibelis', '8295742430') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Danna yibelis||8295742430', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Raquel -', '8293273843') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Raquel -||8293273843', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Tomairy Ramirez Delgadillo', '8495262164') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Tomairy Ramirez Delgadillo||8495262164', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Mileidys segura', '8097814639') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Mileidys segura||8097814639', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Estefany Paulino', '8498597684') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Estefany Paulino||8498597684', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('sagrario isabel', '8098350530') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('sagrario isabel||8098350530', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Anabell -', '8093862130') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Anabell -||8093862130', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('María Pimentel', '8098932150') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('María Pimentel||8098932150', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Luzbiliana -', '8297551124') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Luzbiliana -||8297551124', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Aracelis -', '8298530501') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Aracelis -||8298530501', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Janna Delgado', '8292525114') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Janna Delgado||8292525114', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Miliangela Veliz', '8494497873') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Miliangela Veliz||8494497873', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Daniela espallat', '8094609908') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Daniela espallat||8094609908', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Cristal veloz', '8296616755') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Cristal veloz||8296616755', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Paulina -', '8292083525') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Paulina -||8292083525', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Anyela María', '8293758025') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Anyela María||8293758025', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Lissette Vásquez', '8298650850') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Lissette Vásquez||8298650850', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Laysha aracena', '8296025625') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Laysha aracena||8296025625', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Eliusy garcia', '8296462717') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Eliusy garcia||8296462717', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Elgin Alberto Richiez', '8093505632') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Elgin Alberto Richiez||8093505632', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Ysmeli Mendoza', '8098531287') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Ysmeli Mendoza||8098531287', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Yulisa de oleo', '8492018121') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Yulisa de oleo||8492018121', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Virgey Mateo Tavarez', '8494561968') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Virgey Mateo Tavarez||8494561968', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Juan Carlos', '8495761702') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Juan Carlos||8495761702', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Julia Hernandez', '8098992101') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Julia Hernandez||8098992101', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Juana -', '8295271780') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Juana -||8295271780', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Evangeline Janice', '8299124056') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Evangeline Janice||8299124056', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Sugeiry magdalin', '8295508009') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Sugeiry magdalin||8295508009', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Anabelis -', '8293844745') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Anabelis -||8293844745', _id);
END $$;
DO $$ DECLARE _id uuid; BEGIN
  INSERT INTO clientes (nombre, telefono) VALUES ('Julieta jiemenez Martinez', '8296348505') RETURNING id INTO _id;
  INSERT INTO _clientes_map VALUES ('Julieta jiemenez Martinez||8296348505', _id);
END $$;

-- ── Couriers ─────────────────────────────────────────
CREATE TEMP TABLE _couriers_map (nombre text PRIMARY KEY, id uuid);

INSERT INTO canales_cobro (nombre, tipo_comision) VALUES ('GINTRACOM', 'ninguno')
  ON CONFLICT (nombre) DO NOTHING;
INSERT INTO _couriers_map VALUES ('GINTRACOM', (SELECT id FROM canales_cobro WHERE nombre = 'GINTRACOM'));

INSERT INTO canales_cobro (nombre, tipo_comision) VALUES ('MOTORIZADO', 'ninguno')
  ON CONFLICT (nombre) DO NOTHING;
INSERT INTO _couriers_map VALUES ('MOTORIZADO', (SELECT id FROM canales_cobro WHERE nombre = 'MOTORIZADO'));

INSERT INTO canales_cobro (nombre, tipo_comision) VALUES ('AUREL', 'ninguno')
  ON CONFLICT (nombre) DO NOTHING;
INSERT INTO _couriers_map VALUES ('AUREL', (SELECT id FROM canales_cobro WHERE nombre = 'AUREL'));

-- ── Productos ────────────────────────────────────────
CREATE TEMP TABLE _productos_map (nombre text PRIMARY KEY, id uuid);

DO $$ DECLARE _id uuid; BEGIN
  SELECT id INTO _id FROM productos WHERE nombre = 'Báscula Digital' LIMIT 1;
  IF _id IS NULL THEN
    INSERT INTO productos (nombre, precio_venta) VALUES ('Báscula Digital', 0) RETURNING id INTO _id;
  END IF;
  INSERT INTO _productos_map VALUES ('Báscula Digital', _id) ON CONFLICT DO NOTHING;
END $$;

DO $$ DECLARE _id uuid; BEGIN
  SELECT id INTO _id FROM productos WHERE nombre = 'Báscula Inteligente' LIMIT 1;
  IF _id IS NULL THEN
    INSERT INTO productos (nombre, precio_venta) VALUES ('Báscula Inteligente', 0) RETURNING id INTO _id;
  END IF;
  INSERT INTO _productos_map VALUES ('Báscula Inteligente', _id) ON CONFLICT DO NOTHING;
END $$;

DO $$ DECLARE _id uuid; BEGIN
  SELECT id INTO _id FROM productos WHERE nombre = 'Luces LED Inteligentes (Pack 2 unidades)' LIMIT 1;
  IF _id IS NULL THEN
    INSERT INTO productos (nombre, precio_venta) VALUES ('Luces LED Inteligentes (Pack 2 unidades)', 0) RETURNING id INTO _id;
  END IF;
  INSERT INTO _productos_map VALUES ('Luces LED Inteligentes (Pack 2 unidades)', _id) ON CONFLICT DO NOTHING;
END $$;

DO $$ DECLARE _id uuid; BEGIN
  SELECT id INTO _id FROM productos WHERE nombre = 'Cepillo Desenredante Hidratante 2-en-1 – Peina Sin Dolor y Reduce el Frizz' LIMIT 1;
  IF _id IS NULL THEN
    INSERT INTO productos (nombre, precio_venta) VALUES ('Cepillo Desenredante Hidratante 2-en-1 – Peina Sin Dolor y Reduce el Frizz', 0) RETURNING id INTO _id;
  END IF;
  INSERT INTO _productos_map VALUES ('Cepillo Desenredante Hidratante 2-en-1 – Peina Sin Dolor y Reduce el Frizz', _id) ON CONFLICT DO NOTHING;
END $$;

DO $$ DECLARE _id uuid; BEGIN
  SELECT id INTO _id FROM productos WHERE nombre = 'Espejo LED Profesional Recargable con 3 Modos de Luz' LIMIT 1;
  IF _id IS NULL THEN
    INSERT INTO productos (nombre, precio_venta) VALUES ('Espejo LED Profesional Recargable con 3 Modos de Luz', 0) RETURNING id INTO _id;
  END IF;
  INSERT INTO _productos_map VALUES ('Espejo LED Profesional Recargable con 3 Modos de Luz', _id) ON CONFLICT DO NOTHING;
END $$;

DO $$ DECLARE _id uuid; BEGIN
  SELECT id INTO _id FROM productos WHERE nombre = 'Luz solar con sensor' LIMIT 1;
  IF _id IS NULL THEN
    INSERT INTO productos (nombre, precio_venta) VALUES ('Luz solar con sensor', 0) RETURNING id INTO _id;
  END IF;
  INSERT INTO _productos_map VALUES ('Luz solar con sensor', _id) ON CONFLICT DO NOTHING;
END $$;

DO $$ DECLARE _id uuid; BEGIN
  SELECT id INTO _id FROM productos WHERE nombre = 'Luz LED RGB - Recargable - Magnética' LIMIT 1;
  IF _id IS NULL THEN
    INSERT INTO productos (nombre, precio_venta) VALUES ('Luz LED RGB - Recargable - Magnética', 0) RETURNING id INTO _id;
  END IF;
  INSERT INTO _productos_map VALUES ('Luz LED RGB - Recargable - Magnética', _id) ON CONFLICT DO NOTHING;
END $$;

DO $$ DECLARE _id uuid; BEGIN
  SELECT id INTO _id FROM productos WHERE nombre = 'Aceite Facial de Limpieza Profunda' LIMIT 1;
  IF _id IS NULL THEN
    INSERT INTO productos (nombre, precio_venta) VALUES ('Aceite Facial de Limpieza Profunda', 0) RETURNING id INTO _id;
  END IF;
  INSERT INTO _productos_map VALUES ('Aceite Facial de Limpieza Profunda', _id) ON CONFLICT DO NOTHING;
END $$;

DO $$ DECLARE _id uuid; BEGIN
  SELECT id INTO _id FROM productos WHERE nombre = 'Corrector de Cicatrices' LIMIT 1;
  IF _id IS NULL THEN
    INSERT INTO productos (nombre, precio_venta) VALUES ('Corrector de Cicatrices', 0) RETURNING id INTO _id;
  END IF;
  INSERT INTO _productos_map VALUES ('Corrector de Cicatrices', _id) ON CONFLICT DO NOTHING;
END $$;

DO $$ DECLARE _id uuid; BEGIN
  SELECT id INTO _id FROM productos WHERE nombre = 'Almohadillas Coreanas Anti Manchas' LIMIT 1;
  IF _id IS NULL THEN
    INSERT INTO productos (nombre, precio_venta) VALUES ('Almohadillas Coreanas Anti Manchas', 0) RETURNING id INTO _id;
  END IF;
  INSERT INTO _productos_map VALUES ('Almohadillas Coreanas Anti Manchas', _id) ON CONFLICT DO NOTHING;
END $$;

DO $$ DECLARE _id uuid; BEGIN
  SELECT id INTO _id FROM productos WHERE nombre = 'Parches para Ojeras y Bolsas Bajo los Ojos' LIMIT 1;
  IF _id IS NULL THEN
    INSERT INTO productos (nombre, precio_venta) VALUES ('Parches para Ojeras y Bolsas Bajo los Ojos', 0) RETURNING id INTO _id;
  END IF;
  INSERT INTO _productos_map VALUES ('Parches para Ojeras y Bolsas Bajo los Ojos', _id) ON CONFLICT DO NOTHING;
END $$;

DO $$ DECLARE _id uuid; BEGIN
  SELECT id INTO _id FROM productos WHERE nombre = 'Meno Vitamina' LIMIT 1;
  IF _id IS NULL THEN
    INSERT INTO productos (nombre, precio_venta) VALUES ('Meno Vitamina', 0) RETURNING id INTO _id;
  END IF;
  INSERT INTO _productos_map VALUES ('Meno Vitamina', _id) ON CONFLICT DO NOTHING;
END $$;

-- ── Pedidos ──────────────────────────────────────────
DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dariel Tejada||+18496300294';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-25', NULL, 2000,
    false, false, 'CANCELADO', 0,
    'Sabana Larga', 'Mao', 'PENDIENTE', NULL, 1
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Digital';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2000);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dariel Tejada||+18496300294';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-25', NULL, 2000,
    false, false, 'CANCELADO', 0,
    'Sabana Larga', 'Mao', 'PENDIENTE', NULL, 2
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Digital';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2000);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dariel Tejada||+18496300294';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-25', NULL, 2000,
    false, false, 'CANCELADO', 0,
    'Sabana Larga', 'Mao', 'PENDIENTE', NULL, 3
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Digital';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2000);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Félix larrion||+18494591102';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-01-27', '2026-01-27', 2300,
    false, false, 'COMPLETADO', 500,
    'Hotel excellence del carmen', 'Vabaro', 'RECAUDADO', '2026-01-27', 4
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2300);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2300, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yowanda -||+18094959187';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-01-27', '2026-01-27', 1950,
    false, false, 'COMPLETADO', 500,
    'Calle luperon', 'Nagua', 'RECAUDADO', '2026-01-27', 5
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Joel villaman||+14807575513';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-01-28', '2026-01-28', 1950,
    false, false, 'COMPLETADO', 500,
    'Calls interior H 15', 'Santo Domingo', 'RECAUDADO', '2026-01-28', 6
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Edward -||+18495838302';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-28', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Monte Cristi barrio nuevo km 14 el duro', 'Monte Cristi', 'PENDIENTE', NULL, 7
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Josué Jimenez||+18294953501';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-28', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Hermanas mirabal', 'República Dominicana', 'PENDIENTE', NULL, 8
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Reymond Ledesma||+18298384097';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-28', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Calle Girsol #10, sector Jardines del Norte', 'Distrito Nacional', 'PENDIENTE', NULL, 9
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Francisco -||+18298897861';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-28', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'CONSTRUSAND', 'Santo domingo', 'PENDIENTE', NULL, 10
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Adriana -||+18093527277';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-28', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'La vega', 'La Vega', 'PENDIENTE', NULL, 11
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Adriana -||+18093527277';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-28', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'La vega', 'La Vega', 'PENDIENTE', NULL, 12
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Adriana -||+18093527277';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-28', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'La vega', 'La Vega', 'PENDIENTE', NULL, 13
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Maria Esther||+18497512516';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-01-28', '2026-01-28', 1950,
    false, false, 'COMPLETADO', 500,
    'Avenida ecológica residencial vista ecológica', 'Santo Domingo Esté', 'RECAUDADO', '2026-01-28', 14
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yasmiri -||+18299845843';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-29', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Bellavista mall', 'Santo Domingo', 'PENDIENTE', NULL, 15
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Stalyn -||+18293122530';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-01-29', '2026-01-29', 1950,
    false, false, 'COMPLETADO', 500,
    'En trada de villa lafe calle maría veron', 'Veron', 'RECAUDADO', '2026-01-29', 16
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wascar -||+18092199482';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-01-30', NULL, 1950,
    false, false, 'DEVOLUCION', 400,
    'Av. Charles de Gaulle no. 66 justo al lado de la sirena', 'Santo Domingo Este', 'PENDIENTE', NULL, 17
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Luceliz -||+18295567059';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-01-30', '2026-01-30', 1950,
    false, false, 'COMPLETADO', 500,
    'Embrujo 3 calle Ana Jiménez residencial balcones universitarios 3 apto o1', 'Santiago De Los Caballeros', 'RECAUDADO', '2026-01-30', 18
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jose R||+18098541232';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-01-31', '2026-01-31', 1950,
    false, false, 'COMPLETADO', 500,
    'Ministerio Relaciones Exteriores, ave. Independencia #752, Hacienda San Geronimo, al lado banco agricola', 'Santo domingo', 'RECAUDADO', '2026-01-31', 19
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Melkys M. Novas F.||+18492512909';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-31', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Calle hicotea #16, nuevo Boca de Cachón, Independencia', 'Boca de Cachón', 'PENDIENTE', NULL, 20
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yadara gonzalez||+18094743296';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-01-31', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Frente a la escuela vocacional', 'Barahona', 'PENDIENTE', NULL, 21
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Eriana -||+18097587606';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-01', '2026-02-01', 1950,
    false, false, 'COMPLETADO', 500,
    'Calle Mella 33', 'Sánchez', 'RECAUDADO', '2026-02-01', 22
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Kilsis Gonzalez||+18092248867';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-01', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Calle pedernales', 'Bonao', 'PENDIENTE', NULL, 23
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Vinicio gonzalez||+18099182254';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-02-01', NULL, 2925,
    false, false, 'DEVOLUCION', 400,
    'La mercedes calle 8 casa 17', 'Puerto plata', 'PENDIENTE', NULL, 24
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Báscula Inteligente';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jose Reyes||+18098528659';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-02-04', NULL, 2450,
    true, false, 'TESTEO', 0,
    'Julio Postigo 6', 'Santo Domingo', 'PENDIENTE', NULL, 25
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luces LED Inteligentes (Pack 2 unidades)';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4200);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Alberto aquino||+18294234620';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-02-04', NULL, 2450,
    true, false, 'TESTEO', 0,
    'Residencial las palmera 1 madre vieja sur', 'San cristobal', 'PENDIENTE', NULL, 26
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luces LED Inteligentes (Pack 2 unidades)';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4200);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Cristal -||+18297306640';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-02-05', NULL, 3449.88,
    true, false, 'TESTEO', 0,
    'Villa Ofelia zoilo mesa #9', 'Sanjuan de la maguana', 'PENDIENTE', NULL, 27
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luces LED Inteligentes (Pack 2 unidades)';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 6300);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Martha Santana||+18097560758';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-02-05', NULL, 2450,
    true, false, 'TESTEO', 0,
    'Calle Las Marias 2 C, ALFIMAR', 'Santo Domingo', 'PENDIENTE', NULL, 28
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luces LED Inteligentes (Pack 2 unidades)';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4200);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Noemí Fani Ladoo FÍGARO de Devers||+18296328144';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-02-05', NULL, 3449.88,
    true, false, 'TESTEO', 0,
    'Emilio morel #44', 'San Pedro de Macoris', 'PENDIENTE', NULL, 29
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luces LED Inteligentes (Pack 2 unidades)';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 6300);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Noemí Ladoo||+18296328144';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-02-05', NULL, 3450,
    true, false, 'TESTEO', 0,
    'Calle  Emilio morel #44', 'San Pedro de Macoris', 'PENDIENTE', NULL, 30
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luces LED Inteligentes (Pack 2 unidades)';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 6300);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yasmín reyes||+18094952270';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-02-05', NULL, 3450,
    true, false, 'TESTEO', 0,
    'Autopista Duarte km 12 la penda', 'La Vega', 'PENDIENTE', NULL, 31
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luces LED Inteligentes (Pack 2 unidades)';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 6300);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Fidias Mateo||+18296195465';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-02-06', NULL, 3450,
    true, false, 'TESTEO', 0,
    'Pedro Corto', 'Pedro Corto', 'PENDIENTE', NULL, 32
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luces LED Inteligentes (Pack 2 unidades)';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 6300);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Támara Rome||+18097699414';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-02-06', NULL, 3450,
    true, false, 'TESTEO', 0,
    'Av Pedro Henriquez Ureña No 135 Torre Tellium II apto 1102 La Esperilla', 'Santo Domingo', 'PENDIENTE', NULL, 33
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luces LED Inteligentes (Pack 2 unidades)';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 6300);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Manuel E Sánchez Díaz||+18299083824';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-02-06', NULL, 2100,
    true, false, 'TESTEO', 0,
    'La margarita num.15 Almirante caña', 'Santo Domingo Este', 'PENDIENTE', NULL, 34
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luces LED Inteligentes (Pack 2 unidades)';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2100);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dolores Luna||+18293528523';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-12', NULL, 2950,
    false, false, 'CANCELADO', 0,
    'Calle España Edificio 6 Apartamento 2-2 El Congo', 'Santiago', 'PENDIENTE', NULL, 35
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Cepillo Desenredante Hidratante 2-en-1 – Peina Sin Dolor y Reduce el Frizz';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Anyelani franco||+18297761142';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-12', NULL, 1950,
    false, false, 'CANCELADO', 0,
    '27 de febrero #55 Benito moncion', 'Dajabon', 'PENDIENTE', NULL, 36
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Cepillo Desenredante Hidratante 2-en-1 – Peina Sin Dolor y Reduce el Frizz';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Kailis inoska||+18094986812';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-12', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Avenida constitución #95', 'San Cristóbal', 'PENDIENTE', NULL, 37
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Cepillo Desenredante Hidratante 2-en-1 – Peina Sin Dolor y Reduce el Frizz';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ramón -||+18096938564';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-14', NULL, 2950,
    false, false, 'CANCELADO', 0,
    'Los fraile segundo', 'Santos domingo', 'PENDIENTE', NULL, 38
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Espejo LED Profesional Recargable con 3 Modos de Luz';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rafael Cuello||+18295709806';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-02-17', '2026-02-17', 1950,
    false, false, 'COMPLETADO', 416,
    'Res. Alameda Este , Santo Domingo Oeste', 'Santo Domingo Oeste', 'RECAUDADO', '2026-02-17', 39
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Hirquin -||+18098821680';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-17', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Lo varrancone depue de conani', 'La vega', 'PENDIENTE', NULL, 40
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Alexis Ramírez||+18296806097';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-02-17', NULL, 1950,
    false, false, 'DEVOLUCION', 400,
    'Prado las  cañas de guerra entrando por el pleys de mioki', 'Prado las cañas de guerra', 'PENDIENTE', NULL, 41
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Danilo de los santos||+18298414298';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-17', NULL, 3450,
    false, false, 'CANCELADO', 0,
    'Cabilma del este calle paseo 12 de enero', 'Santo Domingo Oeste', 'PENDIENTE', NULL, 42
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 5850);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Kelvin -||+18292801375';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-02-18', NULL, 3450,
    false, false, 'DEVOLUCION', 400,
    'Carretera San Francisco tenare Layaguiza', 'San Francisco tenare Layaguiza', 'PENDIENTE', NULL, 43
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 5850);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Roberto -||+18493501547';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-02-18', NULL, 3450,
    false, false, 'DEVOLUCION', 400,
    'Calle las flores', 'Santo Domingo Norte', 'PENDIENTE', NULL, 44
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 5850);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Antonio Melican||+18495350922';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-02-18', '2026-02-18', 3450,
    false, false, 'COMPLETADO', 416,
    'Calle playa punta icaco 19 en Los Corales de SAN Luis Santo Domingo Este', 'Santo Domingo Este', 'RECAUDADO', '2026-02-18', 45
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 5850);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3450, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jose Farias||+18298701111';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-18', '2026-02-18', 3450,
    false, false, 'COMPLETADO', 444,
    'Otilio Mendez # 14', 'San Juan', 'RECAUDADO', '2026-02-18', 46
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 5850);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3450, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Cheferson -||+18297618450';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-19', '2026-02-19', 3450,
    false, false, 'COMPLETADO', 444,
    'Calle casa n2 cerro alto Santiago', 'Santiago', 'RECAUDADO', '2026-02-19', 47
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 5850);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3450, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Luis -||+18098178550';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-02-19', NULL, 1950,
    false, false, 'DEVOLUCION', 400,
    'Francisco Villa espesa #240 ensanche la fe', 'Distrito Nacional', 'PENDIENTE', NULL, 48
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rolando Calderon||+18095336510';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-02-19', '2026-02-19', 3950,
    false, false, 'COMPLETADO', 416,
    'Av.jose Contreras no.99 edificio empresarial Calderón', 'Santo Domingo', 'RECAUDADO', '2026-02-19', 49
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Alfredo mariot||+18492203518';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-02-19', '2026-02-19', 3950,
    false, false, 'COMPLETADO', 650,
    'C/ antonio guzman fernandez # 47', 'Sto.Dgo. Este', 'RECAUDADO', '2026-02-19', 50
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'eduard taveras||+18296390416';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-19', '2026-02-19', 3950,
    false, false, 'COMPLETADO', 499,
    'Tamboril Santiago', 'Tamboril', 'RECAUDADO', '2026-02-19', 51
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dindo -||+18097655438';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-20', '2026-02-20', 3950,
    false, false, 'COMPLETADO', 345,
    'Urbanización la Estancia # 5', 'Puerto Plata', 'RECAUDADO', '2026-02-20', 52
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Noelia -||+18296553562';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-20', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Santa Cruz el seibo', 'Miches', 'PENDIENTE', NULL, 53
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Daniel reyes||+18495764163';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-20', '2026-02-20', 3950,
    false, false, 'COMPLETADO', 464,
    'Cuerpo d bomberos d miches.  Serca d caribe express', 'Miches', 'RECAUDADO', '2026-02-20', 54
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dafi Guzmán HerediaelE||+18097591177';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-02-21', NULL, 2450,
    false, false, 'DEVOLUCION', 400,
    'El limón de jimaní', 'Jimaní', 'PENDIENTE', NULL, 55
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2450);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Phito -||+18493882716';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-21', NULL, 2450,
    false, false, 'CANCELADO', 0,
    'Frente del cuartel punta cana', 'BÁvaro', 'PENDIENTE', NULL, 56
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2450);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Isidora abreu ventura||+14233135467';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'cancelado', '2026-02-21', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Calle Santa Cruz de tenerife Parmal mirador #48 hondura Republica Dominicana', 'Santo domingo', 'PENDIENTE', NULL, 57
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yeremy Perez||+18093236866';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'cancelado', '2026-02-21', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Calle oeste número 65 los frailes 1', 'Santo Domingo este', 'PENDIENTE', NULL, 58
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carlos -||+18094381241';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-22', NULL, 2450,
    false, false, 'CANCELADO', 0,
    'Benito moncion', 'Bonao', 'PENDIENTE', NULL, 59
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2450);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Joel santos||+18294281465';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-22', NULL, 2450,
    false, false, 'CANCELADO', 0,
    'Sábana grande de boya', 'Sábana grande de boya', 'PENDIENTE', NULL, 60
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2450);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Elizabeth -||+18298771983';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'cancelado', '2026-02-22', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Barbarin Mojica número uno mejoramiento social', '165.0', 'PENDIENTE', NULL, 61
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Uilton Rodríguez||+18099076173';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-22', '2026-02-22', 3950,
    false, false, 'COMPLETADO', 499,
    'Villa Vasque Montecristo', 'Villa Vasque', 'RECAUDADO', '2026-02-22', 62
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Juan Alberto Muñoz Duarte||+18297564151';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-22', '2026-02-22', 3950,
    false, false, 'COMPLETADO', 499,
    'José Francisco peña Gómez km3', 'Nagua', 'RECAUDADO', '2026-02-22', 63
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Diego Henríquez||18294290249';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-23', '2026-02-23', 3950,
    false, false, 'COMPLETADO', 464,
    'C/ chachito Díaz 137 boca de juma', 'Bonao', 'RECAUDADO', '2026-02-23', 64
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Summer -||18094327705';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-23', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Colina de la Riviera edificio E apt 3', 'Santo Domingo Norte', 'PENDIENTE', NULL, 65
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wilfredo rafael||18493519486';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-23', '2026-02-23', 3950,
    false, false, 'COMPLETADO', 464,
    'Agustín guerrero #26', 'higuey', 'RECAUDADO', '2026-02-23', 66
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Moreno -||18299252292';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-23', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Villa verde', 'La Romana', 'PENDIENTE', NULL, 67
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Félix Santana||18096690797';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-23', '2026-02-23', 3950,
    false, false, 'COMPLETADO', 464,
    'Las Terrenas calle bulevar el portillo rotonda', 'Las Terrenas', 'RECAUDADO', '2026-02-23', 68
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Roberto -||18093506933';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'cancelado', '2026-02-24', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Higuey los morales', 'Higuey', 'PENDIENTE', NULL, 69
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'caridad gutierrez||18099620097';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-26', '2026-02-26', 3950,
    false, false, 'COMPLETADO', 464,
    'calle los fallos av. pedro Rivera taller gutierrez', 'concepsio de la vega', 'RECAUDADO', '2026-02-26', 70
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jose -||18097864429';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-26', '2026-02-26', 3950,
    false, false, 'COMPLETADO', 464,
    'Calle Antonio Valdez Hijo', 'Higüey', 'RECAUDADO', '2026-02-26', 71
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Juan Antonio De La Cruz Rosario||18293945204';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-02-27', '2026-02-27', 3950,
    false, false, 'COMPLETADO', 400,
    'HATILLO SHAMPAÑA NO 60,SANTO DOMINGO OESTE', 'Santo Domingo', 'RECAUDADO', '2026-02-27', 72
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Marcet -||18096605900';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-02-27', NULL, 3950,
    false, false, 'DEVOLUCION', 400,
    'Restauración 64', 'Los ríos Neyba', 'PENDIENTE', NULL, 73
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Mike lombardini||18296784731';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-02-27', '2026-02-27', 3950,
    false, false, 'COMPLETADO', 400,
    'Calle hostos 2', 'Colonial', 'RECAUDADO', '2026-02-27', 74
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Antonio -||18298391017';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-02-27', NULL, 3550,
    false, false, 'DEVOLUCION', 400,
    'Dionisio mejía', 'HIGUEY (SALVALEÓN DE HIGUEY)', 'PENDIENTE', NULL, 75
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Toni -||18093527370';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-02-27', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Los frailes primero', 'SANTO DOMINGO OESTE', 'PENDIENTE', NULL, 76
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Aury Moralez de la rosa||18292280113';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-28', '2026-02-28', 0,
    false, false, 'COMPLETADO', 400,
    'Juan José mota # 42', 'HATO MAYOR (HATO MAYOR DEL REY)', 'RECAUDADO', '2026-02-28', 77
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4900);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      0, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Kelvin Santana||18493305609';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-28', '2026-02-28', 3950,
    false, false, 'COMPLETADO', 464,
    'Respaldo avenida manuela diez jimenes los cajuiles', 'EL SEIBO (SANTA CRUZ DEL SEIBO)', 'RECAUDADO', '2026-02-28', 78
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Andy de Jesús peña||18096547027';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-28', '2026-02-28', 3950,
    false, false, 'COMPLETADO', 464,
    'Carretera Verón Punta cana # 23 urbanización lantigua', 'PUNTA CANA', 'RECAUDADO', '2026-02-28', 79
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rosa Mateo||18099234020';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-02-28', '2026-02-28', 3950,
    false, false, 'COMPLETADO', 350,
    'Residencial III y IV 181 Madre Vieja Sur  SC', 'SAN CRISTOBAL', 'RECAUDADO', '2026-02-28', 80
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Osvaldo Cross||18293436439';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-02-28', '2026-02-28', 3950,
    false, false, 'COMPLETADO', 464,
    'Calle Gregorio Luperon No.33', 'LAS TERRENAS', 'RECAUDADO', '2026-02-28', 81
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Victor -||18294133206';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-01', NULL, 2450,
    false, false, 'CANCELADO', 0,
    'Calle 31 esquina2² san Felipe villa mella', 'SANTO DOMINGO', 'PENDIENTE', NULL, 82
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2450);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Diefet Yambati||18294793809';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-01', '2026-03-01', 3950,
    false, false, 'COMPLETADO', 499,
    'Calle San Miguel', 'LA OTRA BANDA (HIGUEY)', 'RECAUDADO', '2026-03-01', 83
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Lidia Pacheco||18292130808';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'cancelado', '2026-03-01', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Federico Basilis', 'LA VEGA (CONCEPCIÓN DE LA VEGA)', 'PENDIENTE', NULL, 84
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Manuel -||18099147713';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-01', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Madre vieja sur', 'SAN CRISTOBAL', 'PENDIENTE', NULL, 85
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Mirtha Crisóstomo||18098633132';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-02', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Calle 20 gurabo', 'SANTIAGO DE LOS CABALLEROS', 'PENDIENTE', NULL, 86
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yoryi jose||18295516193';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-02', NULL, 3550,
    false, false, 'DEVOLUCION', 400,
    'Avenida luperon en la rotonda de pueblo nuevo donde yoryi moloy', 'BARAHONA (SANTA CRUZ DE BARAHONA)', 'PENDIENTE', NULL, 87
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Cesar peña Z||18098432424';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-02', '2026-03-02', 3950,
    false, false, 'COMPLETADO', 464,
    'Dirección regional Cibao sur policía', 'BONAO', 'RECAUDADO', '2026-03-02', 88
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Danilo Monegro||18494531910';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-02', NULL, 2450,
    false, false, 'DEVOLUCION', 400,
    'Calle pilar Taveras 56, Sector Santa Ana', 'SAN FRANCISCO DE MACORÍS', 'PENDIENTE', NULL, 89
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2450);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Domingo Melenciano De La Cruz||18092600999';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-03', '2026-03-03', 3950,
    false, false, 'COMPLETADO', 600,
    'Rumaldo solano #5 Sabaneta El Carril Haina', 'San Cristóbal', 'RECAUDADO', '2026-03-03', 90
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Estefany -||18099622392';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-03', '2026-03-03', 3950,
    false, false, 'COMPLETADO', 464,
    'Los Castillo', 'Sosúa', 'RECAUDADO', '2026-03-03', 91
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Doohan -||18298374740';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-04', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Chivg', 'Santo Domingo Este', 'PENDIENTE', NULL, 92
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Pedro Romero||18097492127';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-04', NULL, 3550,
    false, false, 'DEVOLUCION', 0,
    'Residencial punta bavaro', 'Punta Cana', 'PENDIENTE', NULL, 93
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Pedro Romero||18097492127';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-04', NULL, 3950,
    false, false, 'DEVOLUCION', 400,
    'Residencial punta bávaro 6', 'Verón', 'PENDIENTE', NULL, 94
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Robinson mata||18099627510';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-04', '2026-03-04', 3950,
    false, false, 'COMPLETADO', 464,
    'Urbanización atlantica calle # 1 , casa # 5 puerto plata', 'Puerto Plata (San Felipe de Puerto Plata)', 'RECAUDADO', '2026-03-04', 95
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carmen Balbuena||18296754307';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-04', '2026-03-04', 3950,
    false, false, 'COMPLETADO', 464,
    'Calle las flores 27', 'Mao (Santa Cruz de Mao)', 'RECAUDADO', '2026-03-04', 96
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Luis Manuel||18494275022';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-04', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Calle 26 casa número 12', 'Quisqueya', 'PENDIENTE', NULL, 97
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jose n||18096692780';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-03-04', NULL, 3950,
    false, false, 'EN ESPERA', 0,
    'Rafael Hernández 16 B naco', 'Santo Domingo', 'PENDIENTE', NULL, 98
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carolin -||18293341414';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-04', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Cuesta abajo', 'San José de las Matas', 'PENDIENTE', NULL, 99
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Alejandro -||18492468802';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-05', NULL, 3550,
    false, false, 'CANCELADO', 0,
    'Villa mella', 'Santo Domingo', 'PENDIENTE', NULL, 100
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Cocina -||18495270722';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-05', NULL, 3950,
    false, false, 'CANCELADO', 0,
    '144 Manga Larga', 'Río Verde Arriba', 'PENDIENTE', NULL, 101
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ronald Tejeda||18298989177';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-05', '2026-03-05', 3950,
    false, false, 'COMPLETADO', 250,
    'Diagonal B #20 renacimiento', 'Santo Domingo', 'RECAUDADO', '2026-03-05', 102
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'VALENTINA  MERCEDES b -||18496550734';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-05', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Villa cerro la pangolaj  Orlando  martinez 30', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 103
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Manuela -||18098416286';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-05', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Frente al Play Municipal', 'Partido', 'PENDIENTE', NULL, 104
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Andrés Contreras||18096276877';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-05', '2026-03-05', 3950,
    false, false, 'COMPLETADO', 250,
    'Calle la torre barrio gringo #23', 'Haina (Bajos de Haina)', 'RECAUDADO', '2026-03-05', 105
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Mirna ortiz||18092238154';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-06', '2026-03-06', 3950,
    false, false, 'COMPLETADO', 400,
    '16 de agosto no. 11', 'Baní', 'RECAUDADO', '2026-03-06', 106
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Mirna ortiz||18092238154';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-06', '2026-03-06', 3950,
    false, false, 'COMPLETADO', 400,
    '16 de agosto no. 11', 'Baní', 'RECAUDADO', '2026-03-06', 107
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Teresa Sánchez||18096677745';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'cancelado', '2026-03-06', NULL, 3950,
    false, false, 'CANCELADO', 0,
    'Calle Duarte #18,sector la Carolina,  Hacienda Estrella', 'Santo Domingo Norte', 'PENDIENTE', NULL, 108
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7350);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Clásico flow||18094882949';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-08', NULL, 2595,
    false, false, 'CANCELADO', 0,
    'Quita sueño de Haina', 'Santo Domingo Oeste', 'PENDIENTE', NULL, 109
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2595);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Tomas -||18092566799';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-09', NULL, 3950,
    false, false, 'DEVOLUCION', 400,
    'Los Cajules el Seibo  casa # 19', 'El Seibo (Santa Cruz del Seibo)', 'PENDIENTE', NULL, 110
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7785);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Emil Liriano||18494781147';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-09', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Av Sabana Larga esquina Bonaire Alma Rosa I', 'Santo Domingo Este', 'PENDIENTE', NULL, 111
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'raphael castillo||18094616236';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-10', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Duarte #30,,bocacanasta ,bani', 'Baní', 'PENDIENTE', NULL, 112
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Raphael castillo||18094616236';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-10', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Municipio LAS TABLAS,,calle principal,,sin número de casa,,cerca del cementerio y colmado los nietos', 'Matanzas20', 'PENDIENTE', NULL, 113
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'joseph  prophil -||18092078178';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-10', NULL, 2390,
    false, false, 'CANCELADO', 0,
    'Sabana larga frente el mercado binacional', 'Dajabón', 'PENDIENTE', NULL, 114
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2390);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Pacifico ayres||18493520211';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-10', '2026-03-10', 3490,
    false, false, 'COMPLETADO', 473,
    '12#16 villa. Olga', 'Santiago de los Caballeros', 'RECAUDADO', '2026-03-10', 115
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Aquilina.alcequiez. -||18098564714';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-10', '2026-03-10', 3490,
    false, false, 'COMPLETADO', 400,
    'ManzanaF #4 Residencial Gacela.', 'Santo Domingo', 'RECAUDADO', '2026-03-10', 116
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Aquilina Alcequiez||18098564714';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-10', '2026-03-10', 3490,
    false, false, 'COMPLETADO', 400,
    'Mazana F#4 Residencial Gscela.', 'Santo Domingo', 'RECAUDADO', '2026-03-10', 117
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rolando rosado||18093908874';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-10', '2026-03-10', 3490,
    false, false, 'COMPLETADO', 300,
    'Av jimenez moya #4 bella vista', 'Santo Domingo', 'RECAUDADO', '2026-03-10', 118
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wilbert Geffrard||18093767066';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-10', NULL, 4290,
    false, false, 'DEVOLUCION', 400,
    'Calle circunvalación B #4 Villa Francés ( Súper Mercado Olé', 'Bávaro', 'PENDIENTE', NULL, 119
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 9560);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dolores acosta s||18094903973';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-11', '2026-03-11', 4290,
    false, false, 'COMPLETADO', 505,
    'Chicago calle primera #980', 'La Romana', 'RECAUDADO', '2026-03-11', 120
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Johairis -||18297991120';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-11', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle proyecto', 'Monte Cristi (San Fernando de Monte Cristi)', 'PENDIENTE', NULL, 121
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Julio -||18292735426';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-11', NULL, 3490,
    false, false, 'DEVOLUCION', 400,
    'Boca chica', 'BOCA CHICA', 'PENDIENTE', NULL, 122
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Hugo Badia||18092232991';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-11', '2026-03-11', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle 7 casa 117  jardines del este', 'Santiago de los Caballeros', 'RECAUDADO', '2026-03-11', 123
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'ANA TINEO||17188261828';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-12', '2026-03-12', 3490,
    false, false, 'COMPLETADO', 473,
    'Valle berde 2 calle 5 casa 2', 'Santiago de los Caballeros', 'RECAUDADO', '2026-03-12', 124
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wascarnicolaspolancogarcia -||18296750278';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-12', '2026-03-12', 4290,
    false, false, 'COMPLETADO', 505,
    'Monte verde 30b', 'Higüey (Salvaleón de Higüey)', 'RECAUDADO', '2026-03-12', 125
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 9560);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nicola de la cruz||18092823749';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-12', NULL, 3490,
    false, false, 'DEVOLUCION', 400,
    'Via prinsipal', 'Las Lagunas de Nisibón (Higüey)', 'PENDIENTE', NULL, 126
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yvrose gedeus gedeusyvrose21@gmail.com||18494409968';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-12', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Fruisa Bavalo République Dominicaine Punta cana', 'Punta Cana', 'PENDIENTE', NULL, 127
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Francisco -||18093605881';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-12', '2026-03-12', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle asomante #41', 'El Seibo (Santa Cruz del Seibo)', 'RECAUDADO', '2026-03-12', 128
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Daniel duversaint||18297921946';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-12', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle #12 laurca', 'San Juan', 'PENDIENTE', NULL, 129
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Alfredo Belén||18096500077';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-12', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle 2da #3 proyecto Ana Gabriela santa fez próximo a la oficina de medio ambiente', 'San Pedro de Macorís', 'PENDIENTE', NULL, 130
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jeisson Gabriel||18296909898';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-12', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Avenida estado unidos frente a iberia', 'Punta Cana', 'PENDIENTE', NULL, 131
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ejemplo -||18496450115';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Bajando', 'Mao (Santa Cruz de Mao)', 'PENDIENTE', NULL, 132
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4780);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Bernardo Calletano||18299121199';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Gregorio luperon 6 el almirante', 'Santo Domingo Este', 'PENDIENTE', NULL, 133
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Leonor -||18295091551';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Pueblo bavaro calle principal', 'Verón', 'PENDIENTE', NULL, 134
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Luis Enrique Sanchez Suarez||18297685662';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-13', '2026-03-13', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle los locutores Chilo poeriet', 'Higüey (Salvaleón de Higüey)', 'RECAUDADO', '2026-03-13', 135
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Eladio Díaz||12155326857';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-13', NULL, 3490,
    false, false, 'DEVOLUCION', 400,
    'Calle 2 barrio indri', 'La Mata', 'PENDIENTE', NULL, 136
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ederson frias de los santos||18299227490';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'La Mercede', 'Los Alcarrizos', 'PENDIENTE', NULL, 137
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Leonela peña||18096690450';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-13', '2026-03-13', 2990,
    false, false, 'COMPLETADO', 454,
    'Calle José Francisco peña Gómez  barrio manteadentro', 'La Mata', 'RECAUDADO', '2026-03-13', 138
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4780);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Enrique -||18299581947';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'La gualliga pedro bran', 'Santo Domingo', 'PENDIENTE', NULL, 139
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'jose -||18099861297';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 4290,
    false, false, 'CANCELADO', 0,
    'jacobo', 'Santo Domingo Norte', 'PENDIENTE', NULL, 140
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 9560);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Luís manual Santana||18297079922';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-13', '2026-03-13', 3490,
    false, false, 'COMPLETADO', 500,
    '6 de noviembre#24', 'San Cristóbal', 'RECAUDADO', '2026-03-13', 141
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Josué -||18493522166';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-13', '2026-03-13', 3490,
    false, false, 'COMPLETADO', 500,
    'Primera', 'Verón', 'RECAUDADO', '2026-03-13', 142
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Juan lantigua||18297228373';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-13', '2026-03-13', 3490,
    false, false, 'COMPLETADO', 473,
    'Los reyes calle 2 ed.18 apt 1.', 'Puerto Plata (San Felipe de Puerto Plata)', 'RECAUDADO', '2026-03-13', 143
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Francis soler||18093714992';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-13', '2026-03-13', 4290,
    false, false, 'COMPLETADO', 505,
    'Mercado nuevo', 'La Romana', 'RECAUDADO', '2026-03-13', 144
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 9560);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Isis bautista||18092247111';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-13', '2026-03-13', 3490,
    false, false, 'COMPLETADO', 300,
    'Ave. Abraham Lincoln 962 edificio Osiris', 'Santo Domingo', 'RECAUDADO', '2026-03-13', 145
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Doneisy Bertre||18097579949';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Salome Ureña =23', 'Azua (Azua de Compostela)', 'PENDIENTE', NULL, 146
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wilson Luciano adames||18294390905';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Casita linda Villa Europa #3 colmado Valdez', 'Verón', 'PENDIENTE', NULL, 147
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'JUANCARLOS -||18292748863';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-13', '2026-03-13', 3490,
    false, false, 'COMPLETADO', 473,
    'Lotificacion don oxiris calle primera # 4', 'La Vega (Concepción de la Vega)', 'RECAUDADO', '2026-03-13', 148
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Guadalupe Cruz Mota||18296766477';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Coronel melcado', 'Santo Domingo Norte', 'PENDIENTE', NULL, 149
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jose -||18293280170';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Colmado duran', 'Monción', 'PENDIENTE', NULL, 150
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nancy santana||18293383837';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-13', '2026-03-13', 3490,
    false, false, 'COMPLETADO', 473,
    'Residencial las palmas manzana 9 casa número 5', 'San Pedro de Macorís', 'RECAUDADO', '2026-03-13', 151
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ángel Polanco||18293691378';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle guayacan Prollerto sol de bavaro', 'Bávaro', 'PENDIENTE', NULL, 152
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rafael nova||18297098079';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-13', '2026-03-13', 3490,
    false, false, 'COMPLETADO', 400,
    'Kilómetro 12 las Américas calle segunda casa número 27', 'Santo Domingo Este', 'RECAUDADO', '2026-03-13', 153
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wander García Santana||18293885300';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Villa hermosa', 'Villa Hermosa', 'PENDIENTE', NULL, 154
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4780);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Aracelis Altagracia||18299079203';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Cayemariamonte#26losoto arriba', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 155
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yudy silverio||18297073361';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'El javillar calle príncipipal 50', 'Puerto Plata (San Felipe de Puerto Plata)', 'PENDIENTE', NULL, 156
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ania Sugey||18097741525';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-13', NULL, 4290,
    false, false, 'CANCELADO', 0,
    'Cooperativa', 'Punta Cana', 'PENDIENTE', NULL, 157
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 9560);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nancy Santana||18293383837';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-14', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Residencial las palmas manzana 9 casa número 5', 'San Pedro de Macorís', 'PENDIENTE', NULL, 158
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jose cruz809 223 1455||18092231455';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-14', '2026-03-14', 3490,
    false, false, 'COMPLETADO', 400,
    'C/ ir mirador del arroyo casa #6 urb ladera  de Arroyo hondo', 'Santo Domingo', 'RECAUDADO', '2026-03-14', 159
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Angela Del Rosario Florian Trinidad||18298627648';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-14', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Juan Ruperto Polanco casa 11A La Descuebierta', 'JIMANÍ', 'PENDIENTE', NULL, 160
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'David vialet||18295268109';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-14', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'El pocito calle San Rafae', 'Guayubín', 'PENDIENTE', NULL, 161
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Octavio meran||18099163968';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-14', '2026-03-14', 2990,
    false, false, 'COMPLETADO', 480,
    'Santa Lucía #2', 'Juan de Herrera', 'RECAUDADO', '2026-03-14', 162
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4780);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Mirian de leon||18098053532';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-14', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Detrás de la cancha de la cueva de cevicos', 'Cevicos', 'PENDIENTE', NULL, 163
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carlos Jose||18296241810';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-14', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Moca', 'Moca', 'PENDIENTE', NULL, 164
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Amable frías||18492710145';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-14', '2026-03-14', 0,
    false, false, 'COMPLETADO', 473,
    'La malena', 'Higüey (Salvaleón de Higüey)', 'RECAUDADO', '2026-03-14', 165
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      0, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wenceslao de la cruz de León||18299019693';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-14', '2026-03-14', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle 13 casa #1 caleta', 'Caleta', 'RECAUDADO', '2026-03-14', 166
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Joel villaman||14807575513';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-15', '2026-03-15', 3490,
    false, false, 'COMPLETADO', 400,
    'C/ hermanas mirabal 33 cancino', 'Santo Domingo', 'RECAUDADO', '2026-03-15', 167
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Francisco Dominguez||18099090997';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-15', NULL, 4290,
    false, false, 'CANCELADO', 0,
    'Calle F No8  residencia don Bolívar', 'Santo Domingo', 'PENDIENTE', NULL, 168
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 9560);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Josefina -||18296296484';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-15', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Calle 30 Mata de los Indios', 'Santo Domingo', 'PENDIENTE', NULL, 169
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4780);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ronald -||18096097448';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-15', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Ernesto de la massa 104', 'Santo Domingo', 'PENDIENTE', NULL, 170
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Elizabeth -||18298771983';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-15', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Barbarin Mojica número 1 mejoramiento social', 'Santo Domingo Este', 'PENDIENTE', NULL, 171
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Sujey pina nuñez||17063068358';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-15', '2026-03-15', 3490,
    false, false, 'COMPLETADO', 500,
    'Calle la joya #53', 'Jarabacoa', 'RECAUDADO', '2026-03-15', 172
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Alan Checo.||18298682748';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-15', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle Duarte #6', 'Río San Juan', 'PENDIENTE', NULL, 173
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Juan Ramírez||18498168953';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-15', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle capotillo no. 4 detrás de ferreteria agrofer', 'Río San Juan', 'PENDIENTE', NULL, 174
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rafael Díaz Filpo||18094898149';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-15', '2026-03-15', 5500,
    false, false, 'COMPLETADO', 250,
    'Torre Sherry', 'Santo Domingo', 'RECAUDADO', '2026-03-15', 175
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 8, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      5500, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Elvio -||18096271100';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-15', '2026-03-15', 3490,
    false, false, 'COMPLETADO', 500,
    'Calle belén #3 bario 5to centenario', 'Villa Altagracia', 'RECAUDADO', '2026-03-15', 176
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Gerardo -||18293406323';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-15', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Francisco bido 3', 'SANTO DOMINGO', 'PENDIENTE', NULL, 177
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4780);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Maria -||18098051046';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-15', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Nunez de Caceres 110, plaza mirador', 'Santo Domingo', 'PENDIENTE', NULL, 178
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'audy -||18096502079';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-15', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'ave  lincoln , plaza francesa', 'SANTO DOMINGO', 'PENDIENTE', NULL, 179
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ezequiel soriano||18494565656';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-15', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle 5  no 59 las palmeras 3 y 4 madre vieja sur san cristobal', 'San Cristóbal', 'PENDIENTE', NULL, 180
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Francisco Mora Valenzuela||18097106150';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-15', '2026-03-15', 1163,
    false, false, 'COMPLETADO', 473,
    'Calle2da # 3', 'San Juan', 'RECAUDADO', '2026-03-15', 181
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      1163, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Natanael javier||18094497262';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-15', '2026-03-15', 3490,
    false, false, 'COMPLETADO', 450,
    'C/ Carlos Manuel pumarol km 4 frente al complejo deportivo Ray de Tampa bay', 'San Antonio de Guerra', 'RECAUDADO', '2026-03-15', 182
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Daniel Nuñez||18097121629';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-15', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Manzana R24', 'Pedro Brand', 'PENDIENTE', NULL, 183
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'José Pérez||18492590729';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-15', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Sánchez', 'Azua (Azua de Compostela)', 'PENDIENTE', NULL, 184
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4780);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Michael Aybar||18095075448';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-16', '2026-03-16', 3490,
    false, false, 'COMPLETADO', 473,
    'Avenida Fabio Herrera Residencial Don Marcelo #44 sector Bocacanasta', 'Baní', 'RECAUDADO', '2026-03-16', 185
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ingrid Ramírez||18494760789';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-16', '2026-03-16', 3490,
    false, false, 'COMPLETADO', 400,
    'Calle flamboyanes', 'Villa Montellano', 'RECAUDADO', '2026-03-16', 186
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ingrid Ramírez||18494760789';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-16', '2026-03-16', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle flamboyanes montebravo', 'Villa Montellano', 'RECAUDADO', '2026-03-16', 187
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Pedro Reyes||18095193436';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'cancelado', '2026-03-16', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle Manuel de Jesús Silverio #62', 'Hato Mayor (Hato Mayor del Rey)', 'PENDIENTE', NULL, 188
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Pedro Reyes||18095193436';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'cancelado', '2026-03-16', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle Manuel de Jesús Silverio #62', 'Hato Mayor (Hato Mayor del Rey)', 'PENDIENTE', NULL, 189
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Kirsy  de la cruz -||18092039189';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-16', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Piedra blanca del salto después del campo de golf', 'Jarabacoa', 'PENDIENTE', NULL, 190
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Franck melvin||18294686298';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-16', '2026-03-16', 2990,
    false, false, 'COMPLETADO', 450,
    'Calles 20 casa #17', 'La Caleta', 'RECAUDADO', '2026-03-16', 191
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4780);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Maria -||18092325330';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-16', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'La colonia', 'Piedra Blanca', 'PENDIENTE', NULL, 192
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Juan Antonio||18093947668';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-17', '2026-03-17', 4290,
    false, false, 'COMPLETADO', 400,
    'Aguas Buenas No. 18', 'Santo Domingo', 'RECAUDADO', '2026-03-17', 193
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 9560);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Estarlin Rodríguez bido||18296476163';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-17', '2026-03-17', 1495,
    false, false, 'COMPLETADO', 453,
    '19 de marzo #43', 'Las Matas de Farfán', 'RECAUDADO', '2026-03-17', 194
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4780);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      1495, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Andrés encarnación Soriano||18298495030';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-03-17', NULL, 3490,
    false, false, 'DEVOLUCION', 0,
    'C p no 52 bendaño atiyo', 'San Cristóbal', 'PENDIENTE', NULL, 195
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Damari uben zapata||18096943823';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-17', NULL, 4290,
    false, false, 'DEVOLUCION', 400,
    'Vista cana paseo del cendero lake paradise villa 2', 'Bávaro', 'PENDIENTE', NULL, 196
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 9560);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Caren de Jesús||18292625101';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-17', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle 1ra #24 Isabelita. Casi frente a escuela primaria Escolástica Paez', 'Santo Domingo Este', 'PENDIENTE', NULL, 197
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Lucy -||18299887033';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-17', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Av. Mauricio baez #57', 'San Pedro de Macorís', 'PENDIENTE', NULL, 198
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4780);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Mario mena||18494495098';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-17', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Carretera el morro presa de tabera', 'La Vega (Concepción de la Vega)', 'PENDIENTE', NULL, 199
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wilton -||18293755678';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-17', '2026-03-17', 3490,
    false, false, 'COMPLETADO', 500,
    'José Francisco Peña gomes', 'Las Charcas', 'RECAUDADO', '2026-03-17', 200
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Edward Montero||18296060289';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-17', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'C/General Cabral #77', 'El Cercado', 'PENDIENTE', NULL, 201
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Paulina perez||18292189286';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-17', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Carretera,José Duran', 'Constanza', 'PENDIENTE', NULL, 202
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carmen Elizabeth Peña Santos||18099957037';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-18', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'la pared de jarna', 'Santo Domingo Este', 'PENDIENTE', NULL, 203
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Adelso -||18093525711';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-18', '2026-03-18', 3490,
    false, false, 'COMPLETADO', 500,
    'C/ Jesús Diplan #45', 'Licey al Medio', 'RECAUDADO', '2026-03-18', 204
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ana Francisco||18095072372';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-18', '2026-03-18', 3490,
    false, false, 'COMPLETADO', 500,
    'Calle 41 esq 2 del invi las colinas', 'Santiago de los Caballeros', 'RECAUDADO', '2026-03-18', 205
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'María Alvarez||18298867131';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-18', '2026-03-18', 3490,
    false, false, 'COMPLETADO', 300,
    'Calle la vaguada  9 colina de los rios', 'Santo Domingo', 'RECAUDADO', '2026-03-18', 206
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Sonia santos||18297595637';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-18', '2026-03-18', 3490,
    false, false, 'COMPLETADO', 500,
    'Calle colibrí casa ##2 residencial la herencia', 'Jarabacoa', 'RECAUDADO', '2026-03-18', 207
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Aracelis Rosario||18296988062';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-18', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle castillo 62', 'San Francisco de Macorís', 'PENDIENTE', NULL, 208
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Aracelis Rosario||18296988062';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-18', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle castillo 62', 'San Francisco de Macorís', 'PENDIENTE', NULL, 209
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Esteban Vasquez||18293368714';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-18', '2026-03-18', 3490,
    false, false, 'COMPLETADO', 400,
    'La carrera #20 agua loca km15.5de las américas', 'Santo Domingo Este', 'RECAUDADO', '2026-03-18', 210
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Elías -||18298478661';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-18', '2026-03-18', 3490,
    false, false, 'COMPLETADO', 473,
    'C. Máximo Gómez #47 - Villa Verde', 'La Romana', 'RECAUDADO', '2026-03-18', 211
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 7170);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Alexandra de los Santos||18094543293';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-18', '2026-03-18', 2990,
    false, false, 'COMPLETADO', 453,
    'Barrio hoyo del cacao, sector la bujuquera, colmado Alvarez', 'Las Terrenas', 'RECAUDADO', '2026-03-18', 212
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Diogenes del rosario||18092090735';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-19', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Pepe Santana', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 213
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Richard Freites||18296339784';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-19', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle central #11 bellas colinas, San Miguel de manoguayabo. Santo Domingo oeste', 'Santo Domingo', 'PENDIENTE', NULL, 214
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Estela acevedo||18296515268';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-19', '2026-03-19', 3490,
    false, false, 'COMPLETADO', 400,
    'Saturno 13A sol de luz villa mella', 'Santo Domingo', 'RECAUDADO', '2026-03-19', 215
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yrene Beaubrun||18097754364';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-19', '2026-03-19', 3490,
    false, false, 'COMPLETADO', 473,
    'Luz celeste Lara', 'Comendador', 'RECAUDADO', '2026-03-19', 216
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wilson Rodríguez||18296050915';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-03-19', NULL, 3490,
    false, false, 'DEVOLUCION', 0,
    'Calle progreso número 9 brisas del este', 'Santo Domingo Este', 'PENDIENTE', NULL, 217
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Victor sanchez||18093913962';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'cancelado', '2026-03-19', NULL, 3490,
    false, false, 'CANCELADO', 0,
    '21 de enero', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 218
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Victor sanchez||18093913962';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'cancelado', '2026-03-19', NULL, 8970,
    false, false, 'CANCELADO', 0,
    '21 de enero', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 219
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Guarionex Acosta||18292650497';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-19', '2026-03-19', 4290,
    false, false, 'COMPLETADO', 505,
    'Calle Enrriquillo #6 , centro ciudad  .', 'Neiba', 'RECAUDADO', '2026-03-19', 220
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Hilario -||18096134815';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-19', '2026-03-19', 4290,
    false, false, 'COMPLETADO', 505,
    'Miguel de regla mota #1 urbanización blanquizales', 'Barahona (Santa Cruz de Barahona)', 'RECAUDADO', '2026-03-19', 221
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 11960);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jose -||18495819167';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-19', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Pepe herr', 'Villa Tapia (La Jagua)', 'PENDIENTE', NULL, 222
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ramona -||18297668764';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-19', '2026-03-19', 2990,
    false, false, 'COMPLETADO', 480,
    'La circunvalación', 'Verón', 'RECAUDADO', '2026-03-19', 223
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Aracelis gonzales de perez||18298877337';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-03-19', NULL, 3490,
    false, false, 'DEVOLUCION', 0,
    'Calle 12numero 2 ponce los giaricano', 'Santo Domingo', 'PENDIENTE', NULL, 224
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jesús Lantigua||18092242915';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-19', '2026-03-19', 2990,
    false, false, 'COMPLETADO', 483,
    'Calle Duarte esquina padre castellanos (segunda planta edificio circuito Musa)', 'Puerto Plata (San Felipe de Puerto Plata)', 'RECAUDADO', '2026-03-19', 225
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Julio perez||18292123367';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-20', '2026-03-20', 3490,
    false, false, 'COMPLETADO', 500,
    'Super Mercado Ole, La Caleta', 'La otra Banda (Higüey)', 'RECAUDADO', '2026-03-20', 226
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yoeli de la rosa||18498039854';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-20', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle 37, número 6, barrio 24 de abrir, los alcarrizos', 'Los Alcarrizos', 'PENDIENTE', NULL, 227
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Feliciano peralta||18294216705';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-03-20', NULL, 3490,
    false, false, 'NOVEDAD', 0,
    'Calle principal #30 cerro del castillo la trinitaria', 'Santiago de los Caballeros', 'PENDIENTE', NULL, 228
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Socrates Morel||18299148855';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-20', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Kilómetros 10 de Cumayasa', 'La Romana', 'PENDIENTE', NULL, 229
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Benancia santos||18298908451';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-20', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle el pley casa 26', 'Castañuelas', 'PENDIENTE', NULL, 230
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Gerson Escanio matos||18093925008';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-20', '2026-03-20', 3490,
    false, false, 'COMPLETADO', 500,
    'Distrito municipal de palo alto', 'Jaquimeyes', 'RECAUDADO', '2026-03-20', 231
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Patricia Inoa||18097141717';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-20', '2026-03-20', 3490,
    false, false, 'COMPLETADO', 473,
    'Ave Los Roboes #401, Buena Vista Norte', 'La Romana', 'RECAUDADO', '2026-03-20', 232
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yanirys francois||18292124186';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-21', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Carretera Seibo km9', 'El Seibo (Santa Cruz del Seibo)', 'PENDIENTE', NULL, 233
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dilcia -||18294527349';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-21', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Presidente Vásquez', 'Moca', 'PENDIENTE', NULL, 234
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yokasta carrion||18299824907';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-21', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Duarte esquina colon#53', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 235
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yessica Eridania||18297569280';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-21', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Rincón de Veragua', 'Gaspar Hernández', 'PENDIENTE', NULL, 236
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yannely -||18297300620';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-21', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Carmen Celia Balaguer #3 el millón', 'Santo Domingo Norte', 'PENDIENTE', NULL, 237
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Zuleika altagracia Santana casado||18295085429';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-21', '2026-03-21', 3490,
    false, false, 'COMPLETADO', 473,
    'Ingenio santafe barrio buenos aires, calle Lluis Felipe de aza . Casa número 6+', 'San Pedro de Macorís', 'RECAUDADO', '2026-03-21', 238
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Joel Joseph||18293514660';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-21', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'La seiba del salado', 'La otra Banda (Higüey)', 'PENDIENTE', NULL, 239
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Onasi -||18097477468';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-21', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Canasta', 'San Cristóbal', 'PENDIENTE', NULL, 240
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'audy -||18096502079';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-21', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'ave abraham lincoln plaza francesa 331', 'Santo Domingo', 'PENDIENTE', NULL, 241
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'José frias||18096670441';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-21', '2026-03-21', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle sanche númer 4nunmercado nuevo frente a donde venden los plátanos en nuestro negocio', 'San Francisco de Macorís', 'RECAUDADO', '2026-03-21', 242
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jesus -||18496589066';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-21', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle 9, #24, residencial Santo Domingo', 'Santo Domingo', 'PENDIENTE', NULL, 243
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yomery -||18493962388';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-21', '2026-03-21', 4290,
    false, false, 'COMPLETADO', 505,
    'Calle López de Vega #34, proyecto 2c', 'Azua (Azua de Compostela)', 'RECAUDADO', '2026-03-21', 244
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 11960);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Martin López||18099243141';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-22', '2026-03-22', 3490,
    false, false, 'COMPLETADO', 473,
    'Los Guallos', 'La Vega (Concepción de la Vega)', 'RECAUDADO', '2026-03-22', 245
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Altagracia Hidalgo||18293421937';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-22', NULL, 2990,
    false, false, 'DEVOLUCION', 400,
    'Los pomos tenares', 'Tenares', 'PENDIENTE', NULL, 246
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ana -||18093033786';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-22', '2026-03-22', 3490,
    false, false, 'COMPLETADO', 300,
    'Fantino falco 43 edificio naco real apto 1bn Frente al salón palacio de la belleza', 'Santo Domingo', 'RECAUDADO', '2026-03-22', 247
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'La gorda rd||18298167300';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-22', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'La seiba del salado', 'Punta Cana', 'PENDIENTE', NULL, 248
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Daniel perdomo||18295567809';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-22', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'acto de rafey sona franca etapa 5', 'Santiago de los Caballeros', 'PENDIENTE', NULL, 249
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yenli Blue||18097199920';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-22', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'La Ciénaga, frente a la agroquímica La Fiera', 'El Naranjal', 'PENDIENTE', NULL, 250
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Alejandro Fermín||18295631206';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-22', '2026-03-22', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle 9 número 24 las Antillas', 'Santiago de los Caballeros', 'RECAUDADO', '2026-03-22', 251
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nelson Martínez||18295505583';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-22', NULL, 3290,
    false, false, 'DEVOLUCION', 400,
    'Benerito por el colmadon', 'Bayahíbe (San Rafael del Yuma)', 'PENDIENTE', NULL, 252
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ysabel  Contreras -||18095197969';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-22', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Ciudad las palmas', 'Punta Cana', 'PENDIENTE', NULL, 253
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Junior Valentín||18092090404';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-23', NULL, 2990,
    false, false, 'DEVOLUCION', 400,
    'Torre Río, tercer nivel, suite 306', 'San Francisco de Macorís', 'PENDIENTE', NULL, 254
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ana -||18099908003';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-23', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Esta es la ubicación:   C/ Dr. Nuñez y Dominguez #28 Torre Marevento , La Julia', 'Santo Domingo', 'PENDIENTE', NULL, 255
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yoel Mejía||18097071794';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-23', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Padre Abreu 96', 'La Romana', 'PENDIENTE', NULL, 256
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ada almanzar||14074337209';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-23', '2026-03-23', 2990,
    false, false, 'COMPLETADO', 453,
    'Urbanización maría cristina #3', 'Cotuí', 'RECAUDADO', '2026-03-23', 257
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Estela Mendez||393318230557';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-23', '2026-03-23', 3490,
    false, false, 'COMPLETADO', 350,
    'Principe negro #20 sector El Rosal', 'Santo Domingo Este', 'RECAUDADO', '2026-03-23', 258
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yudelky paulino||18097717191';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-23', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Doctor tejada florentino floristería yanil tenares', 'Tenares', 'PENDIENTE', NULL, 259
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carolina -||18295546408';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-23', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Calle Omar torrijo 4 ballona', 'Santo Domingo Oeste', 'PENDIENTE', NULL, 260
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Domingo Alexander vanterpool||18098767442';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-23', '2026-03-23', 3490,
    false, false, 'COMPLETADO', 473,
    'Santa Fe villa blanca en el parquesito', 'San Pedro de Macorís', 'RECAUDADO', '2026-03-23', 261
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Gustavo cid||18093507553';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-23', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Prinvipal', 'Cabrera (Tres Amarras)', 'PENDIENTE', NULL, 262
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Francis -||18096727400';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-23', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Complejo Iberostar Bavaro', 'Bávaro', 'PENDIENTE', NULL, 263
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Andres Capellan||18297907362';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-24', '2026-03-24', 3490,
    false, false, 'COMPLETADO', 300,
    'Constanza', 'Constanza', 'RECAUDADO', '2026-03-24', 264
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Martha Santana||18097560758';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-24', '2026-03-24', 3490,
    false, false, 'COMPLETADO', 300,
    'Calle Las Marias 2 C, ALFIMAR', 'Santo Domingo', 'RECAUDADO', '2026-03-24', 265
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Freddy baez||18096186841';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-24', '2026-03-24', 3490,
    false, false, 'COMPLETADO', 473,
    'Abigail 10 Cristo rey dan juan', 'San Juan', 'RECAUDADO', '2026-03-24', 266
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nector Rosario||18297061552';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-24', NULL, 3490,
    false, false, 'DEVOLUCION', 400,
    'C/ Principal Anamuya #29', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 267
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'José Alberto Santos||18092507891';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-24', '2026-03-24', 3490,
    false, false, 'COMPLETADO', 350,
    'C/ interior B14, Alma Rosa Segunda', 'Santo Domingo Este', 'RECAUDADO', '2026-03-24', 268
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Olga Lidia||18097869410';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-24', '2026-03-24', 3490,
    false, false, 'COMPLETADO', 473,
    'C/ L #35, Villa Progreso / San Pedro de Macorís', 'San Pedro de Macorís', 'RECAUDADO', '2026-03-24', 269
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Claudia rosario diaz||18493801028';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-25', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Calle ernesto chequevara 10 al lado de la gallera', 'Cevicos', 'PENDIENTE', NULL, 270
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Junior reyes||18494696562';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-25', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Av francisco alberto caamoño barrio blanc los multis', 'San Pedro de Macorís', 'PENDIENTE', NULL, 271
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yajaira Robles||18492489978';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-25', '2026-03-25', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle 4 de marzo  casa 7', 'La Vega (Concepción de la Vega)', 'RECAUDADO', '2026-03-25', 272
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yesenia  pinales -||18297147901';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-25', '2026-03-25', 4290,
    false, false, 'COMPLETADO', 505,
    'Viya liberación manzana 19 casa 37 b', 'San Juan', 'RECAUDADO', '2026-03-25', 273
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 11960);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Juan -||18092081135';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-25', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'La victoria', 'Santo Domingo Norte', 'PENDIENTE', NULL, 274
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Odanel Zabala||18295363411';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-03-25', NULL, 3490,
    false, false, 'DEVOLUCION', 0,
    'Calle c # 32  el perla antillana', 'Santo Domingo Este', 'PENDIENTE', NULL, 275
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jesús castillo||18094866174';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-25', '2026-03-25', 3490,
    false, false, 'COMPLETADO', 473,
    'Brisa del llano, próximo a la villa de Alondra', 'Higüey (Salvaleón de Higüey)', 'RECAUDADO', '2026-03-25', 276
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jaice ruiz||18494016385';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-25', NULL, 2990,
    false, false, 'CANCELADO', 0,
    '99 santa rosa', 'La Romana', 'PENDIENTE', NULL, 277
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Manuela cespedes||18293250923';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-25', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'El casique barahona', 'Barahona (Santa Cruz de Barahona)', 'PENDIENTE', NULL, 278
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wilfrido -||18292919115';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-25', '2026-03-25', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle principal #4/ Batey Olivares', 'San Pedro de Macorís', 'RECAUDADO', '2026-03-25', 279
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Cristian cuevas||18493415786';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-26', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Manolo Tavares justo', 'San Francisco de Macorís', 'PENDIENTE', NULL, 280
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yuby Ureña||18296164753';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-26', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Carretera Don Pedro', 'Santiago de los Caballeros', 'PENDIENTE', NULL, 281
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jon -||18295850251';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-26', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Los tocones', 'Santiago de los Caballeros', 'PENDIENTE', NULL, 282
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Leonardo Rojas||18099432899';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-26', '2026-03-26', 4290,
    false, false, 'COMPLETADO', 350,
    'Constructora AMRZ', 'Santo Domingo Norte', 'RECAUDADO', '2026-03-26', 283
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 11960);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ada Almánzar||14074337209';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-26', '2026-03-26', 4290,
    false, false, 'COMPLETADO', 505,
    'Urbanización maría cristina #3', 'Cotuí', 'RECAUDADO', '2026-03-26', 284
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 11960);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Julio M Bonnelly T||18299865999';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-26', '2026-03-26', 3490,
    false, false, 'COMPLETADO', 473,
    'Carretera Don Pedro Residencial Las Mercedes', 'Santiago de los Caballeros', 'RECAUDADO', '2026-03-26', 285
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Fausto -||18094492880';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-26', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Hotel Rancho Guacamayo', 'La Salvia - Los Quemados', 'PENDIENTE', NULL, 286
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yasmin genao||18299326650';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-27', '2026-03-27', 3490,
    false, false, 'COMPLETADO', 473,
    'Calles las sombrillas', 'Puerto Plata (San Felipe de Puerto Plata)', 'RECAUDADO', '2026-03-27', 287
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wilkin Pujols Mendez||18297972567';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-27', '2026-03-27', 4290,
    false, false, 'COMPLETADO', 505,
    'Av. República de Argentina, Resid. Argelin el embrujo 1 - Apt 2-A', 'Santiago de los Caballeros', 'RECAUDADO', '2026-03-27', 288
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 11960);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Adalberto polanco||18299783859';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-27', '2026-03-27', 2990,
    false, false, 'COMPLETADO', 453,
    'C/ Pablo néruda # 1', 'Bonao', 'RECAUDADO', '2026-03-27', 289
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carlos Agramonte||18494480704';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-27', NULL, 2990,
    false, false, 'DEVOLUCION', 400,
    'Calle A  número 98 sector las callenas santiago entrando por tanu.', 'Santiago de los Caballeros', 'PENDIENTE', NULL, 290
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Francisco Alberto paredes||18496578337';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-27', '2026-03-27', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle Pérez marque', 'San Pedro de Macorís', 'RECAUDADO', '2026-03-27', 291
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Deybi Ramirez||18296367726';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-27', '2026-03-27', 3490,
    false, false, 'COMPLETADO', 473,
    'Principal villa visan', 'San Pedro de Macorís', 'RECAUDADO', '2026-03-27', 292
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yamilex concepcion||18097208730';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-27', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Fantino frente al parque', 'Fantino', 'PENDIENTE', NULL, 293
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rudy de la cruz||18092817202';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-27', '2026-03-27', 3490,
    false, false, 'COMPLETADO', 473,
    'Los indios 48 barrio lindo', 'San Pedro de Macorís', 'RECAUDADO', '2026-03-27', 294
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Faustin François||18098904886';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-28', '2026-03-28', 3490,
    false, false, 'COMPLETADO', 473,
    'Detrás escuela en la Sánchez', 'Sabaneta (San Ignacio de Sabaneta)', 'RECAUDADO', '2026-03-28', 295
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'José Vargas||18096641095';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-28', '2026-03-28', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle 14, edeificio Mariela, número 15, cerro don Antonio, santiago', 'Santiago de los Caballeros', 'RECAUDADO', '2026-03-28', 296
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Argenis Rosado||18293488010';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-28', '2026-03-28', 3490,
    false, false, 'COMPLETADO', 500,
    'La colonia', 'Jarabacoa', 'RECAUDADO', '2026-03-28', 297
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Johana -||18293580236';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-28', NULL, 3490,
    false, false, 'DEVOLUCION', 400,
    'Barrio San Pedro', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 298
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Alphi Ruiz||18098189221';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-28', '2026-03-28', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle segunda, edificio H&S 2 apartamento 203, detrás de repuesto sandro', 'La Romana', 'RECAUDADO', '2026-03-28', 299
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Mauricio de jesus||18095193725';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-28', '2026-03-28', 3490,
    false, false, 'COMPLETADO', 530,
    'Darío franco', 'Nigua (San Gregorio de Nigua)', 'RECAUDADO', '2026-03-28', 300
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'José Manuel Bichara||18098851213';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-28', '2026-03-28', 3490,
    false, false, 'COMPLETADO', 450,
    'Calle Juan Goico Alix #57, Ensanchez ozama', 'Santo Domingo Este', 'RECAUDADO', '2026-03-28', 301
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Claudia Soto||18298015429';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'cancelado', '2026-03-28', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle máximo Cabral #4 Gazcue', 'Santo Domingo', 'PENDIENTE', NULL, 302
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Claudia Soto||18298015429';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'cancelado', '2026-03-28', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle máximo Cabral #4 Gazcue', 'Santo Domingo', 'PENDIENTE', NULL, 303
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Helen -||18093999327';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-28', '2026-03-28', 2990,
    false, false, 'COMPLETADO', 453,
    'Carretera Higüey , yuma km 1 , Auto Haus , a Higüey , la Altagracua', 'Higüey (Salvaleón de Higüey)', 'RECAUDADO', '2026-03-28', 304
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Victor Alcantara||18298288801';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-28', '2026-03-28', 3490,
    false, false, 'COMPLETADO', 453,
    'Calle principal #38 los parmarito', 'San José de Ocoa', 'RECAUDADO', '2026-03-28', 305
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carlos -||18097055896';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-03-29', NULL, 3490,
    false, false, 'DEVOLUCION', 400,
    'Mella  número 106 frénateal banco de reservas', 'Cotuí', 'PENDIENTE', NULL, 306
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jimena foxan||18293599082';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-29', '2026-03-29', 2990,
    false, false, 'COMPLETADO', 453,
    'Bario puerto rico a 5 casa del colmado julio', 'Hato Mayor (Hato Mayor del Rey)', 'RECAUDADO', '2026-03-29', 307
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Edinson Ureña||18297890139';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-03-29', '2026-03-29', 4290,
    false, false, 'COMPLETADO', 532,
    'Pinar quemado', 'Jarabacoa', 'RECAUDADO', '2026-03-29', 308
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 11960);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'cesar martinez||18092129434';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-29', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'callé circunvalación', 'Haina (Bajos de Haina)', 'PENDIENTE', NULL, 309
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Franklin de lima||18299318456';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-03-29', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'María Trinidad Sánchez k/17 las americas sector nuevos amanecer', 'Santo Domingo Este', 'PENDIENTE', NULL, 310
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Miguel Angel garcias||18097585780';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-03-29', '2026-03-29', 3490,
    false, false, 'COMPLETADO', 400,
    'Calle pupito peguero # 11', 'Santo Domingo Este', 'RECAUDADO', '2026-03-29', 311
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nicolino Loche||18493608700';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-04-05', '2026-04-05', 2990,
    false, false, 'COMPLETADO', 453,
    'En los jardines metropolitanos calle 1.', 'Santiago de los Caballeros', 'RECAUDADO', '2026-04-05', 312
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Selenia -||18297985334';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-05', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Don jaime', 'Santiago de los Caballeros', 'PENDIENTE', NULL, 313
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Juan marte||18295083273';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-05', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Los tocone', 'Cotuí', 'PENDIENTE', NULL, 314
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jorge -||18494705098';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-05', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Los callenes', 'Las Lagunas de Nisibón (Higüey)', 'PENDIENTE', NULL, 315
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Poli -||18494593629';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-05', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Poli', 'San Juan', 'PENDIENTE', NULL, 316
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Miguel angel frías Cruz||18094155830';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-04-05', '2026-04-05', 4290,
    false, false, 'COMPLETADO', 532,
    'Avenida España, Lobato  de Friusa y yo', 'Bávaro', 'RECAUDADO', '2026-04-05', 317
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 11960);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'La Para De La||18297731495';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-06', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'San Cristóbal', 'San Cristóbal', 'PENDIENTE', NULL, 318
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rafael pajero Beato||18493900746';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-06', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Callejón Los Espinales, C. Parada Vieja 77', 'Licey al Medio', 'PENDIENTE', NULL, 319
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Kelvin Alcántara||18296509070';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-06', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Residencial palmera oriental etapa 4 edificio k 103', 'Santo Domingo Este', 'PENDIENTE', NULL, 320
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Kelvin Alcántara||18296509070';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-06', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Residencial palmera oriental etapa 4 edificio k 103 autopista de san Isidro', 'Santo Domingo Este', 'PENDIENTE', NULL, 321
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'José Antonio Acosta Jiménez||18296412997';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-04-06', '2026-04-06', 3490,
    false, false, 'COMPLETADO', 473,
    'Prolongación hostos sector Juan Pablo Duarte justo detrás de la fortaleza', 'Cotuí', 'RECAUDADO', '2026-04-06', 322
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'HECTOR MONTERO||18099868600';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-04-06', '2026-04-06', 3490,
    false, false, 'COMPLETADO', 473,
    'Edifico 5 apto D, manzana 4, Villa Liberación', 'San Juan', 'RECAUDADO', '2026-04-06', 323
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dominica Rosario||18093359154';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-04-07', NULL, 3490,
    false, false, 'EN ESPERA', 0,
    'Km 19 las Américas en el sector La Ureña', 'Santo Domingo Este', 'PENDIENTE', NULL, 324
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dione Cubilete Díaz||18498848295';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-04-07', '2026-04-07', 4290,
    false, false, 'COMPLETADO', 400,
    'Sector km.12 de Haina, Autopista 30 de Mayo B/Guzman, C/ 1ra. #37', 'Santo Domingo Oeste', 'RECAUDADO', '2026-04-07', 325
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 11960);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Joan pilier||18292848411';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-04-07', NULL, 3490,
    false, false, 'EN RUTA', 0,
    'Ciudad del sol 318', 'Verón', 'PENDIENTE', NULL, 326
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Juan Antonio Mejia Ruiz||18094478537';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-04-07', '2026-04-07', 3490,
    false, false, 'COMPLETADO', 400,
    'Calle 2da. NO. 8,URB.MRRBELLA 2DA.LOS FRAILES ll', 'Santo Domingo Este', 'RECAUDADO', '2026-04-07', 327
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'George Rivas||18293200303';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-08', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'San Antonio, calle primera casa número 26', 'La Vega (Concepción de la Vega)', 'PENDIENTE', NULL, 328
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Uver -||18099563946';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-04-08', '2026-04-08', 3490,
    false, false, 'COMPLETADO', 473,
    'Calle Antonio Guzmán', 'Monte Plata', 'RECAUDADO', '2026-04-08', 329
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Cecilin maria||18493709428';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-04-08', '2026-04-08', 3490,
    false, false, 'COMPLETADO', 473,
    'Matancitas, al lado de la escuela primaria clara brens', 'Nagua', 'RECAUDADO', '2026-04-08', 330
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dariel Tejada||18496300294';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-04-08', NULL, 3490,
    false, false, 'LLAMAR', 0,
    'Sabana Larga', 'Mao (Santa Cruz de Mao)', 'PENDIENTE', NULL, 331
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Robert -||13479610412';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-08', NULL, 2990,
    false, false, 'DEVOLUCION', 0,
    'Calle Puerto Rico número 44 de Sánchez Ozama', 'Santo Domingo Este', 'PENDIENTE', NULL, 332
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yoly Reyes||18099210560';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-09', '2026-04-09', 4290,
    false, false, 'COMPLETADO', 350,
    'C/6#25 resd. Brisas del Valle las charcas', 'Santiago de los Caballeros', 'RECAUDADO', '2026-04-09', 333
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 11960);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Joanna Martínez||18097131380';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'devuelto', '2026-04-09', NULL, 4290,
    false, false, 'DEVOLUCION', 0,
    'Calle Plácida del Río 3', 'La otra Banda (Higüey)', 'PENDIENTE', NULL, 334
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 11960);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Leonel de la cruz||18295538987';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-09', '2026-04-09', 4290,
    false, false, 'COMPLETADO', 350,
    'Viya nabarro', 'Hato Mayor (Hato Mayor del Rey)', 'RECAUDADO', '2026-04-09', 335
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 11960);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dariel Tejada||18496300294';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-09', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Sabana Larga', 'Mao (Santa Cruz de Mao)', 'PENDIENTE', NULL, 336
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'ARISMENDY López||18092995266';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-10', '2026-04-10', 3490,
    false, false, 'COMPLETADO', 350,
    'Presidencial, La Palma, calle Palma, Real, esquina, licuada número uno', 'La Romana', 'RECAUDADO', '2026-04-10', 337
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wislet Carismene||18296373315';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-10', NULL, 3490,
    false, false, 'SIN COBERTURA', 0,
    'Calle principal número 1', 'Yaguate (San Gregorio de Yaguate)', 'PENDIENTE', NULL, 338
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ysabel  Contreras -||18095197969';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'cancelado', '2026-04-10', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Ciudad las palmas', 'Punta Cana', 'PENDIENTE', NULL, 339
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 5980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Marina cueva||18294100274';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-10', NULL, 4118.2,
    false, false, 'SIN COBERTURA', 0,
    'cabarete, casa67 atras de electromueble mario', 'sosua', 'PENDIENTE', NULL, 340
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Prueba -||18496300294';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-10', NULL, 3490,
    false, true, 'PRUEBA', 0,
    'Prueba', 'Santo Domingo', 'PENDIENTE', NULL, 341
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Osiris sanchez||18298774824';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'cancelado', '2026-04-10', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Circunvalación veron', 'Punta Cana', 'PENDIENTE', NULL, 342
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ambiorys -||18099811378';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'cancelado', '2026-04-11', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'C1era.31, San Antonio', 'Laguna Salada', 'PENDIENTE', NULL, 343
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jorge Luis Jorge cabrera||18093573814';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-11', '2026-04-11', 1950,
    false, false, 'COMPLETADO', 350,
    'Calle Altagracia esquina luperon plaza empire local  #5', 'Nagua', 'RECAUDADO', '2026-04-11', 344
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2990);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nelson Fernández||18298699028';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'cancelado', '2026-04-11', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Hermano buenas', 'Azua (Azua de Compostela)', 'PENDIENTE', NULL, 345
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ana g Duluc||18092563750';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'cancelado', '2026-04-12', NULL, 3490,
    false, false, 'CONFIRMADO  SIN STOCK', 0,
    'ALTAGRACIA #69', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 346
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 8970);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Sócrates  ramirez -||18296311389';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-13', NULL, 3390,
    false, false, 'CANCELADO', 0,
    '6omelia', 'La Vega (Concepción de la Vega)', 'PENDIENTE', NULL, 347
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Juan Carlos Zamora||18092640135';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-13', '2026-04-13', 4290,
    false, false, 'COMPLETADO', 350,
    'Res. Don Julián #22. Sector La Villa; C/Los Santos.', 'Bonao', 'RECAUDADO', '2026-04-13', 348
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 11700);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      4290, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Blas Abreu||18097058923';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-04-14', '2026-04-14', 2490,
    false, false, 'COMPLETADO', 400,
    'Av Romulo Betancourt No. 1149, Plaza Daviana, Mirador Norte', 'Santo Domingo', 'RECAUDADO', '2026-04-14', 349
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Kelele Ninja||12155432043';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-14', NULL, 1990,
    false, false, 'DEVOLUCIÓN', 0,
    'San isidro', 'Santo Domingo Este', 'PENDIENTE', NULL, 350
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Enyel Diaz||18492677744';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'cancelado', '2026-04-14', NULL, 2490,
    false, false, 'CANCELADO', 0,
    'Avenida del Francisco Sanchez', 'Samaná (Santa Bárbara de Samaná)', 'PENDIENTE', NULL, 351
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wilkin Sanche||18294616029';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-15', NULL, 2490,
    false, false, 'DEVOLUCIÓN', 0,
    'La balsa', 'San Luis', 'PENDIENTE', NULL, 352
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Amer -||18293187523';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-15', NULL, 2490,
    false, false, 'CANCELADO', 0,
    'Próximo al parque', 'Juan Santiago', 'PENDIENTE', NULL, 353
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Robert De paula||18098353450';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'devuelto', '2026-04-15', NULL, 2490,
    false, false, 'DEVOLUCION', 370,
    'Principal', 'Monte Plata', 'PENDIENTE', NULL, 354
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jefferson Baptiste||18295179182';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-15', NULL, 2490,
    false, false, 'CANCELADO', 0,
    'Domingo mais', 'Verón', 'PENDIENTE', NULL, 355
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Faury -||18294570284';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-15', NULL, 2490,
    false, false, 'DEVOLUCIÓN', 0,
    'Buena vista primera calle 36 8', 'Santo Domingo Norte', 'PENDIENTE', NULL, 356
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Massiel Mercedes||18494260991';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-15', NULL, 3190,
    false, false, 'CANCELADO', 0,
    'Boulevard turístico del este friusa', 'Punta Cana', 'PENDIENTE', NULL, 357
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 11700);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Daniel tejada||18296618503';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-15', '2026-04-15', 2938.2,
    false, false, 'COMPLETADO', 350,
    'barrio carlos daniel, calle Simon Bolivar 34', 'mao', 'RECAUDADO', '2026-04-15', 358
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2938.2, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Daneivis Lissett||18095162284';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-16', NULL, 2490,
    false, false, 'DEVOLUCIÓN', 0,
    'Cjon B, Av. México 50', 'Santo Domingo Oeste', 'PENDIENTE', NULL, 359
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Orlando -||18495859023';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-16', NULL, 1990,
    false, false, 'CANCELADO', 400,
    'Calle higuera esquina carambola', 'Puerto Plata (San Felipe de Puerto Plata)', 'PENDIENTE', NULL, 360
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Suleny Cabrera||18493547090';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-04-17', NULL, 2390,
    true, false, 'TESTEO EN ESPERA', 0,
    'Nordesa 111 calle d 64', 'Santo Domingo Este', 'PENDIENTE', NULL, 361
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Aceite Facial de Limpieza Profunda';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2390);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Lisane -||18099198355';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-04-17', NULL, 2390,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Torre real II apt G5', 'Santiago de los Caballeros', 'PENDIENTE', NULL, 362
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Aceite Facial de Limpieza Profunda';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2390);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Mafeo12 -||18293328024';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-17', NULL, 2490,
    false, false, 'DEVOLUCIÓN', 0,
    'Betty palave', 'Santo Domingo', 'PENDIENTE', NULL, 363
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Francisco -||18097621908';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-17', NULL, 2490,
    false, false, 'SIN COBERTURA', 0,
    'C/ Duarte  34', 'Villa Isabela', 'PENDIENTE', NULL, 364
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yunior -||18493931822';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-04-17', '2026-04-17', 2490,
    false, false, 'COMPLETADO', 400,
    'Villa juana', 'Santo Domingo Norte', 'RECAUDADO', '2026-04-17', 365
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dahiana Reyes||18294375038';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-18', '2026-04-18', 2490,
    false, false, 'COMPLETADO', 350,
    'Calle 9 esq niño rizek', 'San Francisco de Macorís', 'RECAUDADO', '2026-04-18', 366
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Papito almanzar||18293121305';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'devuelto', '2026-04-18', NULL, 2490,
    false, false, 'DEVOLUCION', 0,
    'Detra de los bombero', 'Salcedo (Juana Núñez)', 'PENDIENTE', NULL, 367
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Madeline Etienne||18292963172';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-18', '2026-04-18', 3190,
    false, false, 'COMPLETADO', 350,
    'Las Palomas carretera sabaneta, Residencial Ciprés', 'Las Palomas', 'RECAUDADO', '2026-04-18', 368
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 11700);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      3190, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rita -||18293425814';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-18', '2026-04-18', 2490,
    false, false, 'COMPLETADO', 350,
    'Azucena 111 Apto E-401 El portal al lado de Pricesmart', 'Santiago de los Caballeros', 'RECAUDADO', '2026-04-18', 369
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ado -||18299218283';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-19', NULL, 2490,
    false, false, 'DEVOLUCIÓN', 0,
    'Timoteo ogando numero 31 san geronimonimo', 'Santo Domingo', 'PENDIENTE', NULL, 370
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Luis reyes||18097088918';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-19', NULL, 1990,
    false, false, 'DEVOLUCION', 0,
    'Juan Gomez', 'Santo Domingo Este', 'PENDIENTE', NULL, 371
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Briank -||18095132845';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-04-19', NULL, 3190,
    false, false, 'SIN WHATSAP', 0,
    'Joaquín Balaguer / villa cerro #16', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 372
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 11700);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Juleisi piña moreno||18493934011';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-20', NULL, 2490,
    false, false, 'CANCELADO', 0,
    'Hectáreas p.quezada #1', 'La Romana', 'PENDIENTE', NULL, 373
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Edwin ambiori||18298274138';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-20', '2026-04-20', 2490,
    false, false, 'COMPLETADO', 350,
    'Carretera Sánchez salida Azúa San Juan', 'Azua (Azua de Compostela)', 'RECAUDADO', '2026-04-20', 374
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nelvi Felix||18492753234';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-21', '2026-04-21', 1990,
    false, false, 'COMPLETADO', 350,
    'Primera complejo deportivo', 'San Pedro de Macorís', 'RECAUDADO', '2026-04-21', 375
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      1990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Bronw -||18299933261';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-21', NULL, 2490,
    false, false, 'SIN COBERTURA', 0,
    '102 av francisco rosario', 'Juan Santiago', 'PENDIENTE', NULL, 376
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Banesa Vargas||18293011999';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-04-22', NULL, 2500,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Coronel Rafael Thomas Fernandez Domínguez Cayenas 3 Edf G 304', 'Santo Domingo Este', 'PENDIENTE', NULL, 377
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Sarah Gonzalez||18293421155';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'confirmado', '2026-04-22', NULL, 1950,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Miguel Ángel Monclus #72, Torre Kairos III, mirador norte (cerca de la Núñez de Cáceres)', 'Santo Domingo', 'PENDIENTE', NULL, 378
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Anne rose||18099176522';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-04-22', NULL, 2500,
    true, false, 'TESTEO', 0,
    'Santiago', 'Santiago de los Caballeros', 'PENDIENTE', NULL, 379
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Arawak Gonzalez||18098415781';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-04-22', NULL, 1950,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Escribir Antes De Entregar', 'Puerto Plata (San Felipe de Puerto Plata)', 'PENDIENTE', NULL, 380
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rose belon||18099094172';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-04-22', NULL, 2500,
    true, false, 'TESTEO', 0,
    'Cambelen', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 381
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Felicia Reyes||18099235058';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-04-23', NULL, 2500,
    true, false, 'TESTEO', 0,
    'Ave. Caonabo #10 torre Taurus III, apartamento 3A', 'Santo Domingo', 'PENDIENTE', NULL, 382
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Felícita -||18295862696';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-04-23', NULL, 2500,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Calle Manuela diez edificio L apto 306', 'Santo Domingo', 'PENDIENTE', NULL, 383
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ana -||18298028521';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-04-23', NULL, 2900,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Charle de gol brisa los palmarés', 'Santo Domingo', 'PENDIENTE', NULL, 384
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 5850);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Aney Diaz rojas||18292977552';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-04-23', NULL, 2500,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Pueblo bavaro las palma 21', 'Verón', 'PENDIENTE', NULL, 385
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yvelisse Almanzar||18093109330';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-04-23', NULL, 2500,
    true, false, 'TESTEO', 0,
    'Calla Plutón no 9 Residencial Galaxia', 'Santo Domingo Oeste', 'PENDIENTE', NULL, 386
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carmen de la cruz||18097579441';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'cancelado', '2026-04-23', NULL, 2490,
    false, false, 'CANCELADO', 0,
    'Calle colonia 94', 'San Francisco de Macorís', 'PENDIENTE', NULL, 387
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yajaira -||18493825212';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-23', '2026-04-23', 2490,
    false, false, 'COMPLETADO', 350,
    'Calle meran Villa Mercedes Madrevieja sur', 'San Cristóbal', 'RECAUDADO', '2026-04-23', 388
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nerys Martinez||18097060121';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-23', '2026-04-23', 2490,
    false, false, 'COMPLETADO', 350,
    'Carretera Jacagua No 65, Los ciruelitos Yadira Center Transmisión', 'Santiago de los Caballeros', 'RECAUDADO', '2026-04-23', 389
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Miguelina Fernández||18298637370';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-23', NULL, 2490,
    false, false, 'DEVOLUCION', 0,
    'Residencial Amarilys 3, Manzana F #3, Pista San Isidro', 'Santo Domingo Este', 'PENDIENTE', NULL, 390
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Lissette Ubiera Rivera||18098766087';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-04-23', NULL, 2500,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Cámara junior 6, barrio los maestros', 'San Pedro de Macorís', 'PENDIENTE', NULL, 391
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Leidy -||18292137363';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-04-24', NULL, 2900,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Próceres de la Restauración #168', 'Sabaneta (San Ignacio de Sabaneta)', 'PENDIENTE', NULL, 392
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 5850);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carmen de los santos||18498896129';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-04-24', NULL, 2500,
    true, false, 'TESTEO EN ESPERA', 0,
    'Calle caracol #15 Andrés Boca Chica', 'Boca Chica', 'PENDIENTE', NULL, 393
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Bladimir -||18497974636';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-04-24', NULL, 1950,
    true, false, 'TESTEO EN ESPERA', 0,
    'María Mercedes calle D #23', 'Santo Domingo Este', 'PENDIENTE', NULL, 394
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Miguel de peña||18098018929';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-24', '2026-04-24', 2490,
    false, false, 'COMPLETADO', 350,
    'García Godoy 60 Suite 107', 'La Vega (Concepción de la Vega)', 'RECAUDADO', '2026-04-24', 395
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Támara Rome||18097699414';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-24', NULL, 3190,
    false, false, 'DEVOLUCION', 0,
    'Av Pedro Henriquez Ureña No 135 Torre Tellium II apto 1102', 'Santo Domingo', 'PENDIENTE', NULL, 396
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 11700);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rose belon||18099094172';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-04-24', NULL, 2500,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Cambelen', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 397
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yoselyn -||18093509463';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-24', '2026-04-24', 2490,
    false, false, 'COMPLETADO', 350,
    'Yunbo', 'La Vega (Concepción de la Vega)', 'RECAUDADO', '2026-04-24', 398
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Luis Rosario||18096971722';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-04-24', '2026-04-24', 3190,
    false, false, 'COMPLETADO', 400,
    'Calle puerto Rico edificio patricia apartamento 4c', 'Santo Domingo', 'RECAUDADO', '2026-04-24', 399
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 11700);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3190, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ana belkys berroa payano||18498796478';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-24', NULL, 2490,
    false, false, 'SIN COBERTURA', 0,
    'Los 4 caminos de miches', 'Miches (El Jovero)', 'PENDIENTE', NULL, 400
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Noelia suero||18099831423';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-24', NULL, 1990,
    false, false, 'SIN COBERTURA', 0,
    'La unión', 'Sosúa', 'PENDIENTE', NULL, 401
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3900);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Sarah Gonzalez||18293421155';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-04-24', NULL, 1950,
    true, false, 'TESTEO', 0,
    'Miguel Ángel Monclus #72, Torre Kairos III, mirador norte (cerca Núñez de Cáceres)', 'Santo Domingo', 'PENDIENTE', NULL, 402
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Corrector de Cicatrices';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Morena Stephan||18297236177';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-24', NULL, 2490,
    false, false, 'CANCELADO', 0,
    'Paraíso calle Ortiz #3', 'Barahona (Santa Cruz de Barahona)', 'PENDIENTE', NULL, 403
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jhonny peralta santos||18098274553';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-25', '2026-04-25', 2490,
    false, false, 'COMPLETADO', 350,
    'Costambar calle gurabito condominio luperon edf#7 apto #1', 'Puerto Plata (San Felipe de Puerto Plata)', 'RECAUDADO', '2026-04-25', 404
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Deivi -||18292801583';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-25', NULL, 2490,
    false, false, 'SIN COBERTURA', 0,
    '18#44', 'Quisqueya', 'PENDIENTE', NULL, 405
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Francisco Méndez||18299227346';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-04-25', NULL, 2490,
    false, false, 'LLAMAR', 0,
    'Calle republica de colombia alto de arroyo  homdo', 'Santo Domingo', 'PENDIENTE', NULL, 406
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Massiel -||18099160837';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-25', '2026-04-25', 2490,
    false, false, 'COMPLETADO', 350,
    'Mercado publico bonao', 'Bonao', 'RECAUDADO', '2026-04-25', 407
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yenny -||18492098954';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'devuelto', '2026-04-26', NULL, 2490,
    false, false, 'DEVOLUCION', 0,
    'Avenida Mario concepción edificio cornelio apto 4a los robles la 3', 'La Vega (Concepción de la Vega)', 'PENDIENTE', NULL, 408
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Mary Laura||18494641949';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-26', '2026-04-26', 2490,
    false, false, 'COMPLETADO', 350,
    'Urbanización Hidalgo, entrando por el Dealer papi motor, edificio nirvana 4 apartamento 201', 'San Francisco de Macorís', 'RECAUDADO', '2026-04-26', 409
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Daysi Medina||18292579997';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-26', NULL, 2490,
    false, false, 'DEVOLUCION', 0,
    'Calle Juan de la Cruz Alvarez no. 1 edificio Reynita Linda', 'Santo Domingo', 'PENDIENTE', NULL, 410
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dayana -||18299898171';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-26', NULL, 2490,
    false, false, 'DEVOLUCION', 0,
    'Independiente', 'Santo Domingo', 'PENDIENTE', NULL, 411
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carolin -||18293341414';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-26', NULL, 2490,
    false, false, 'SIN COBERTURA', 0,
    'La barranquita', 'Santiago de los Caballeros', 'PENDIENTE', NULL, 412
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Hugo paula||18095430732';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-26', NULL, 3190,
    false, false, 'CANCELADO', 0,
    'Avenida libertad #06', 'San Francisco de Macorís', 'PENDIENTE', NULL, 413
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 11700);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Sujey Martínez||18092999286';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-26', NULL, 2490,
    false, false, 'SIN COBERTURA', 0,
    'Calle mella #83nizao', 'Nizao', 'PENDIENTE', NULL, 414
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Manolo Divalon||18093967246';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'devuelto', '2026-04-26', NULL, 2490,
    false, false, 'DEVOLUCION', 400,
    'calle los maestro 13', 'Villa Hermosa', 'PENDIENTE', NULL, 415
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yaquelin  salcedo -||18292627281';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-26', '2026-04-26', 2490,
    false, false, 'COMPLETADO', 350,
    'Federico de Jesús garcia #85', 'Villa Vásquez (Santa Ana, Villa Isabel)', 'RECAUDADO', '2026-04-26', 416
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nilda  Calderon -||18293955778';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'devuelto', '2026-04-27', NULL, 2490,
    false, false, 'DEVOLUCION', 0,
    '6 de noviembre Sajuor', 'Higüey (Salvaleón de Higüey)', 'PENDIENTE', NULL, 417
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Héctor Lebron||18094445203';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-27', NULL, 2490,
    false, false, 'DEVOLUCION', 0,
    'Av. Máximo Gomez ministerio de educación', 'Santo Domingo', 'PENDIENTE', NULL, 418
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rosa moris||18099733321';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-27', NULL, 2490,
    false, false, 'SIN COBERTURA', 0,
    'Calle Sanchez  #24', 'Miches (El Jovero)', 'PENDIENTE', NULL, 419
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rafael -||18293879062';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-04-27', '2026-04-27', 2490,
    false, false, 'COMPLETADO', 400,
    'Av. Jacobo majluta #23', 'Santo Domingo Norte', 'RECAUDADO', '2026-04-27', 420
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ana Sarita||18295681486';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'devuelto', '2026-04-27', NULL, 2490,
    false, false, 'DEVOLUCION', 0,
    'Calle de la cancha callejón aridio casa de dos niveles al lado de Elias y foco', 'Sosúa', 'PENDIENTE', NULL, 421
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ruth Suero||18498769480';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-04-27', '2026-04-27', 2490,
    false, false, 'COMPLETADO', 350,
    'Manuel Emilio Perdomo #12. Naco', 'Santo Domingo', 'RECAUDADO', '2026-04-27', 422
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'José esteves||18292229192';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-04-27', '2026-04-27', 3190,
    false, false, 'COMPLETADO', 400,
    '27 de febrero 346 mirador norte', 'Santo Domingo', 'RECAUDADO', '2026-04-27', 423
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 11700);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      3190, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Lisbeth -||18295897092';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'devuelto', '2026-04-27', NULL, 2490,
    false, false, 'DEVOLUCION', 0,
    'Avenida aniana Vargas', 'Bonao', 'PENDIENTE', NULL, 424
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Celia Morales||18297417289';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-04-27', '2026-04-27', 2490,
    false, false, 'COMPLETADO', 400,
    'Ave. Independencia 608, Residencial Yaris', 'Santo Domingo', 'RECAUDADO', '2026-04-27', 425
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Papito almanzar||18293121305';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-28', '2026-04-28', 2490,
    false, false, 'COMPLETADO', 350,
    'Calle A detra de los bomberos en salcedo', 'Salcedo (Juana Núñez)', 'RECAUDADO', '2026-04-28', 426
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Mayi -||18092659212';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'devuelto', '2026-04-23', NULL, 2938.2,
    false, false, 'DEVOLUCION', 0,
    '-', 'Licey al Medio', 'PENDIENTE', NULL, 427
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ana medina||18494464960';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-04-28', '2026-04-28', 2490,
    false, false, 'COMPLETADO', 400,
    'Orlando Martínez', 'Sabana Larga', 'RECAUDADO', '2026-04-28', 428
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'José augusto nuñez||18095139156';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-04-28', '2026-04-28', 2490,
    false, false, 'COMPLETADO', 460,
    'Lo ciruelo montellano', 'Villa Montellano', 'RECAUDADO', '2026-04-28', 429
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Luisana -||18492804533';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-04-28', NULL, 2490,
    false, false, 'DEVOLUCION', 0,
    'Amalia', 'Santo Domingo Este', 'PENDIENTE', NULL, 430
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ana Contreras||18098475258';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-04-28', '2026-04-28', 2490,
    false, false, 'COMPLETADO', 400,
    'Cul de sac 12 colina de los Ríos', 'Santo Domingo', 'RECAUDADO', '2026-04-28', 431
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'David Corniel||18298629661';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-28', NULL, 2490,
    false, false, 'SIN COBERTURA', 0,
    'La Yautia, La Vega, Jarabacoa', 'Jarabacoa', 'PENDIENTE', NULL, 432
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carlos jimenez||8098474966';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-04-24', '2026-04-24', 2938.2,
    false, false, 'COMPLETADO', 350,
    'carrer veron punta cana plaza coral hotel local#6', 'Punta Cana', 'RECAUDADO', '2026-04-24', 433
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2938.2, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Michel Jeff||8492437530';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-04-16', NULL, 2490,
    false, false, 'SIN COBERTURA', 0,
    'Colmado', 'Sosúa', 'PENDIENTE', NULL, 436
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ana rosario||8294561625';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-05-02', NULL, 2690,
    false, false, 'CANCELADO', 0,
    'Los jardines Santiago plaza don pino', 'Santiago de los Caballeros', 'PENDIENTE', NULL, 437
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Miguel De Peña Antonio||8098018929';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'devuelto', '2026-05-02', NULL, 2690,
    false, false, 'DEVOLUCION', 0,
    'García Godoy 60 Suite 107', 'La Vega (Concepción de la Vega)', 'PENDIENTE', NULL, 439
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Woolendele -||8097752138';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-05-02', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Calle #6', 'Santo Domingo Este', 'PENDIENTE', NULL, 440
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 11700);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yajaira -||8299738278';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'para_devolucion', '2026-04-28', NULL, 2938.2,
    false, false, 'PARA DEVOLUCION', 0,
    'los cocos calle 7', 'Puerto Plata (San Felipe de Puerto Plata)', 'PENDIENTE', NULL, 441
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yulys marquez||8299873084';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-05-02', '2026-05-02', 2690,
    false, false, 'COMPLETADO', 300,
    'Banco bhd frente al parque independencia', 'Santo Domingo', 'RECAUDADO', '2026-05-02', 442
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2690, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Angélica María frias||8293904586';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'para_devolucion', '2026-05-02', NULL, 2690,
    false, false, 'PARA DEVOLUCION', 0,
    'La Jolla', 'Jarabacoa', 'PENDIENTE', NULL, 443
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jose lopez||8297647180';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'cancelado', '2026-05-03', NULL, 3174.2,
    false, false, 'CANCELADO', 0,
    '-', 'Santo Domingo', 'PENDIENTE', NULL, 444
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Maribel Tejeda||8493762434';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'cancelado', '2026-05-03', NULL, 3174.2,
    false, false, 'CANCELADO', 0,
    '-', 'Sosúa', 'PENDIENTE', NULL, 445
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 7800);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Estefany rosario||8299371166';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-05-09', NULL, 3190,
    false, false, 'CANCELADO', 0,
    'Interiol sol 20 el radiante Villa mella', 'Santo Domingo', 'PENDIENTE', NULL, 446
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Magdelyn  Sánchez -||8493300335';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-05-09', NULL, 3190,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Arenoso. La vega. Residencial Don Rafael', 'La Vega (Concepción de la Vega)', 'PENDIENTE', NULL, 447
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Katherine -||8495771314';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-05-09', NULL, 3190,
    false, false, 'SIN COBERTURA', 0,
    'Calle Miguel mercado #17( calle de Santiago)', 'Villa Bisonó (Navarrete)', 'PENDIENTE', NULL, 448
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 4980);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Grey -||8299329761';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-05-09', NULL, 2490,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Calle inviviendad proyecto', 'Santo Domingo Este', 'PENDIENTE', NULL, 449
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Maryest Nuñez||8496525163';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-05-09', NULL, 3190,
    false, false, 'CANCELADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 450
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3190);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Solanyi díaz||8096675356';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'cancelado', '2026-05-10', NULL, 3190,
    false, false, 'CANCELADO', 0,
    'San Cristóbal', 'San Cristóbal', 'PENDIENTE', NULL, 451
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3190);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Evelyn -||8099522126';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-05-10', NULL, 2490,
    false, false, 'NUEVO', 0,
    'Santo Domingo Este', 'Santo Domingo', 'PENDIENTE', NULL, 452
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ambar Castro||8096761626';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'cancelado', '2026-05-10', NULL, 3190,
    false, false, 'CANCELADO', 0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 'PENDIENTE', NULL, 453
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3190);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Natalie Bonifacio||8296602823';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-05-10', NULL, 3890,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Jarabacoa', 'La Vega', 'PENDIENTE', NULL, 454
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 3890);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Danerlly Encarnacion||8294623584';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-05-10', NULL, 2490,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 'PENDIENTE', NULL, 455
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Steisy Pimentel||8097744652';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'cancelado', '2026-05-10', NULL, 2490,
    false, false, 'CANCELADO', 0,
    'Santo Domingo Este', 'Santo Domingo', 'PENDIENTE', NULL, 456
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yasury Picon feliz||8292337202';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-05-10', NULL, 2490,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Barahona (Santa Cruz de Barahona)', 'Barahona', 'PENDIENTE', NULL, 457
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Solange santana||8298851510';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-05-10', NULL, 3890,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Santiago de los Caballeros', 'Santiago', 'PENDIENTE', NULL, 458
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 3890);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Lívida -||8097044919';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-05-11', NULL, 2490,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 459
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Gisselle -||8494381109';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-05-11', NULL, 2490,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Puerto Plata (San Felipe de Puerto Plata)', 'Puerto Plata', 'PENDIENTE', NULL, 460
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Elina sánchez||8097828894';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-05-11', NULL, 2490,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Santiago de los Caballeros', 'Santiago', 'PENDIENTE', NULL, 461
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carolina -||8298205364';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-05-11', NULL, 2490,
    false, false, 'CANCELADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 462
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Fernando Tiquitik||8095562341';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-05-11', NULL, 3890,
    false, false, 'DUPLICADO SIN WHATSAP', 0,
    'El Pino', 'Dajabón', 'PENDIENTE', NULL, 463
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 3890);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Fernando Tiquitik||8095562341';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-05-11', NULL, 2490,
    false, false, 'DUPLICADO SIN WHATSAP', 0,
    'Cañongo', 'Dajabón', 'PENDIENTE', NULL, 464
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Fernando Tiquitik||8095562341';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-05-11', NULL, 2490,
    false, false, 'DUPLICADO SIN WHATSAP', 0,
    'Dajabón', 'Dajabón', 'PENDIENTE', NULL, 465
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Alexandra Rodriguez||8292590343';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-05-11', NULL, 3190,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 466
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3190);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Susan Robert||8493535301';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-05-11', NULL, 3190,
    false, false, 'CANCELADO', 0,
    'Santo Domingo Norte', 'Santo Domingo', 'PENDIENTE', NULL, 467
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3190);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Biannely -||8492640096';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-05-11', NULL, 3190,
    true, false, 'TESTEO CONFIRMADO', 0,
    'La Vega (Concepción de la Vega)', 'La Vega', 'PENDIENTE', NULL, 468
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3190);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Maria Paulina Rodriguez||8297946895';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-05-11', NULL, 2490,
    false, false, 'SIN COBERTURA', 0,
    'Peralvillo', 'Monte Plata', 'PENDIENTE', NULL, 469
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rosa Morales||8099780805';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'pendiente', '2026-05-11', NULL, 3190,
    true, false, 'TESTEO', 0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 'PENDIENTE', NULL, 470
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 3190);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Gomez -||8097092008';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-06-05', NULL, 2199,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 471
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Parches para Ojeras y Bolsas Bajo los Ojos';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2199);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Gomez -||8097092008';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-06-11', NULL, 2199,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 472
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Parches para Ojeras y Bolsas Bajo los Ojos';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2199);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Lívida -||8097044919';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-06-11', NULL, 2490,
    false, false, 'DEVOLUCION', 400,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 473
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yandelson -||8296503796';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-06-11', '2026-06-13', 2490,
    false, false, 'COMPLETADO', 300,
    'Santo Domingo', 'Distrito Nacional', 'RECAUDADO', '2026-06-13', 474
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Evelyn -||8099522126';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'devuelto', '2026-06-11', NULL, 2490,
    false, false, 'DEVOLUCION', 400,
    'Santo Domingo Este', 'Santo Domingo', 'PENDIENTE', NULL, 475
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Natalie Bonifacio||8296602823';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-11', '2026-06-16', 3890,
    false, false, 'COMPLETADO', 350,
    'Jarabacoa', 'La Vega', 'RECAUDADO', '2026-06-16', 476
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 3890);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      3890, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yasury Picon feliz||8292337202';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-06-11', '2026-06-22', 2490,
    false, false, 'COMPLETADO', 435,
    'Barahona (Santa Cruz de Barahona)', 'Barahona', 'RECAUDADO', '2026-06-22', 477
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 2490);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Solange santana||8298851510';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-11', '2026-06-23', 3890,
    false, false, 'COMPLETADO', 350,
    'Santiago de los Caballeros', 'Santiago', 'RECAUDADO', '2026-06-23', 478
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 3890);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      3890, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wanda -||8297564439';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-06-13', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 'PENDIENTE', NULL, 479
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Roberta Almonte Rodriguez||8295709600';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'cancelado', '2026-06-13', NULL, 2650,
    false, false, 'SIN COBERTURA', 0,
    'Sosúa', 'Puerto Plata', 'PENDIENTE', NULL, 480
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Osmeldi -||8097084334';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-13', '2026-06-23', 2650,
    false, false, 'COMPLETADO', 350,
    'Moca', 'Espaillat', 'RECAUDADO', '2026-06-23', 481
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2650, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dasca Joseph||8296183104';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-06-13', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Las Terrenas', 'Samaná', 'PENDIENTE', NULL, 482
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Maria -||8295989358';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-06-13', '2026-06-16', 2650,
    false, false, 'COMPLETADO', 300,
    'Santo Domingo Oeste', 'Santo Domingo', 'RECAUDADO', '2026-06-16', 483
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2650, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Katherine Romero||8294828815';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-06-13', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Moca', 'Espaillat', 'PENDIENTE', NULL, 484
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Lisseth -||8097654627';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-06-13', '2026-06-17', 2650,
    false, false, 'COMPLETADO', 300,
    'Santo Domingo', 'Distrito Nacional', 'RECAUDADO', '2026-06-17', 485
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2650, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dilenia -||8295487779';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-14', '2026-06-20', 1950,
    false, false, 'COMPLETADO', 350,
    'Moca', 'Espaillat', 'RECAUDADO', '2026-06-20', 486
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ashlyt vanessa||8096975969';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-06-14', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Bávaro', 'La Altagracia', 'PENDIENTE', NULL, 487
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yeleini Pujols||8099319691';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-06-14', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Bávaro', 'La Altagracia', 'PENDIENTE', NULL, 488
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Claudia Rodríguez||8098277992';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-06-14', '2026-06-17', 1950,
    false, false, 'COMPLETADO', 300,
    'Santo Domingo', 'Distrito Nacional', 'RECAUDADO', '2026-06-17', 489
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Katerin Gomez||8494652204';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'para_devolucion', '2026-06-14', NULL, 1950,
    false, false, 'PARA DEVOLUCION', 400,
    'Villa Los Almácigos', 'Santiago Rodríguez', 'PENDIENTE', NULL, 490
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Noemi -||8292332100';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-06-14', NULL, 2650,
    false, false, 'EN RUTA', 0,
    'Las Terrenas', 'Samaná', 'PENDIENTE', NULL, 491
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jessica -||8492074977';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-14', '2026-06-23', 1950,
    false, false, 'COMPLETADO', 350,
    'Bávaro', 'La Altagracia', 'RECAUDADO', '2026-06-23', 492
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'María Teresa Perez||8493773063';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'confirmado', '2026-06-15', NULL, 2650,
    false, false, 'EN RUTA', 400,
    'Neiba', 'Bahoruco', 'PENDIENTE', NULL, 493
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Prieba -||8496300294';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-15', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Bávaro', 'La Altagracia', 'PENDIENTE', NULL, 494
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Luisa Sterling||8295347586';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-16', NULL, 1950,
    false, false, 'SIN COBERTURA', 0,
    'Mao (Santa Cruz de Mao)', 'Valverde', 'PENDIENTE', NULL, 495
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Magdelyn Sánchez||8493300335';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-16', '2026-06-23', 2990,
    false, false, 'COMPLETADO', 350,
    'La Vega (Concepción de la Vega)', 'La Vega', 'RECAUDADO', '2026-06-23', 496
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Winton -||8296198086';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-16', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Bayaguana', 'Monte Plata', 'PENDIENTE', NULL, 497
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rubens Sanchez||8498822785';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-16', NULL, 2390,
    false, false, 'CONFIRMADO', 0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 'PENDIENTE', NULL, 498
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2390);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ingrid Ramírez||8494760789';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'GINTRACOM';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
    'entregado', '2026-06-16', '2026-06-22', 2650,
    false, false, 'COMPLETADO', 466,
    'Villa Montellano', 'Puerto Plata', 'RECAUDADO', '2026-06-22', 499
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'GINTRACOM'),
      2650, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yaritza Gomez||8099621266';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-16', '2026-06-23', 1950,
    false, false, 'COMPLETADO', 350,
    'Villa Hermosa', 'La Romana', 'RECAUDADO', '2026-06-23', 500
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Isa -||8098630590';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'para_devolucion', '2026-06-16', NULL, 1950,
    false, false, 'PARA DEVOLUCION', 0,
    'San Cristóbal', 'San Cristóbal', 'PENDIENTE', NULL, 501
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wendely Díaz||8093438667';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'confirmado', '2026-06-16', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Bávaro', 'La Altagracia', 'PENDIENTE', NULL, 502
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nayi torres||8483651595';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-17', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Santo Domingo Este', 'Santo Domingo', 'PENDIENTE', NULL, 503
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wanda ESMERLIN||8098270453';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-17', NULL, 2650,
    false, false, 'SIN COBERTURA', 0,
    'Castillo', 'Duarte', 'PENDIENTE', NULL, 504
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Luis Martinez||8294481626';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-17', NULL, 2990,
    false, false, 'EN RUTA', 0,
    'Maimón', 'Monseñor Nouel', 'PENDIENTE', NULL, 505
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Magaly guzman||8493586508';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-17', '2026-06-25', 2650,
    false, false, 'COMPLETADO', 350,
    'Moca', 'Espaillat', 'RECAUDADO', '2026-06-25', 506
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2650, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Kenia Berenice||8294652349';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-17', NULL, 2650,
    false, false, 'EN RUTA', 0,
    'Canca La Reina', 'Espaillat', 'PENDIENTE', NULL, 507
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Efrain Díaz||7874108976';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-17', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 508
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Zuleyky Guzmán||8492495911';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-18', '2026-06-25', 1950,
    false, false, 'COMPLETADO', 350,
    'Moca', 'Espaillat', 'RECAUDADO', '2026-06-25', 509
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Erick Pérez||8296935857';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-18', NULL, 3490,
    false, false, 'EN RUTA', 0,
    'Cabral', 'Barahona', 'PENDIENTE', NULL, 510
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 3490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Efrain Díaz||7874108976';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-17', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 511
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Valentina castro||8297120871';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-18', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Cotuí', 'Sánchez Ramírez', 'PENDIENTE', NULL, 513
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Erick Pérez||8296935857';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-18', NULL, 3490,
    false, false, 'EN RUTA', 0,
    'Cabral', 'Barahona', 'PENDIENTE', NULL, 514
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 3490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Valentina castro||8297120871';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-18', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Cotuí', 'Sánchez Ramírez', 'PENDIENTE', NULL, 515
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'María Santana||8096775094';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-18', '2026-06-25', 2650,
    false, false, 'COMPLETADO', 350,
    'Santiago de los Caballeros', 'Santiago', 'RECAUDADO', '2026-06-25', 516
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2650, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Liliana viola||8099946210';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-18', '2026-06-23', 1950,
    false, false, 'COMPLETADO', 350,
    'San Juan', 'San Juan', 'RECAUDADO', '2026-06-23', 517
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Angela Del Rosario||8298627648';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-18', NULL, 2990,
    false, false, 'EN RUTA', 0,
    'Jimaní', 'Independencia', 'PENDIENTE', NULL, 518
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Anna -||8297874975';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'devuelto', '2026-06-18', NULL, 1950,
    false, false, 'DEVOLUCION', 0,
    'Santo Domingo Oeste', 'Santo Domingo', 'PENDIENTE', NULL, 519
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Massiel -||8493606212';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-18', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'San Francisco de Macorís', 'Duarte', 'PENDIENTE', NULL, 520
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Kenia -||8495425353';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'entregado', '2026-06-18', NULL, 2650,
    false, false, 'COMPLETADO', 0,
    'Santo Domingo Este', 'Santo Domingo', 'PENDIENTE', NULL, 521
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Deyanira -||2039421948';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-18', NULL, 2650,
    false, false, 'EN RUTA', 0,
    'Bávaro', 'La Altagracia', 'PENDIENTE', NULL, 522
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Marvelin Ovalle Guzmán||8297514060';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'entregado', '2026-06-18', NULL, 2650,
    false, false, 'COMPLETADO', 0,
    'San Francisco de Macorís', 'Duarte', 'PENDIENTE', NULL, 523
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Janice Vasquez||8492030626';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-18', '2026-06-23', 1950,
    false, false, 'COMPLETADO', 350,
    'Puerto Plata (San Felipe de Puerto Plata)', 'Puerto Plata', 'RECAUDADO', '2026-06-23', 524
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Julio Vallejo||8092324975';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-18', '2026-06-25', 3490,
    false, false, 'COMPLETADO', 350,
    'Santo Domingo Este', 'Santo Domingo', 'RECAUDADO', '2026-06-25', 525
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 3490);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      3490, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nelson Mercedes||8098415123';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-18', '2026-06-26', 2990,
    false, false, 'COMPLETADO', 350,
    'Gaspar Hernández', 'Espaillat', 'RECAUDADO', '2026-06-26', 526
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Isaac Ogando Rojas||8092308451';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'entregado', '2026-06-18', NULL, 2990,
    false, false, 'COMPLETADO', 0,
    'Bayaguana', 'Monte Plata', 'PENDIENTE', NULL, 527
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Deyani Santana||8099099352';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-18', '2026-06-23', 2650,
    false, false, 'COMPLETADO', 350,
    'La Romana', 'La Romana', 'RECAUDADO', '2026-06-23', 528
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2650, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Carlos Ferreras||8092702369';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-18', NULL, 2390,
    false, false, 'SIN COBERTURA', 0,
    'Los Ríos', 'Bahoruco', 'PENDIENTE', NULL, 529
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2390);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Jennifer Jean Louis||8293549511';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-18', NULL, 2650,
    false, false, 'SIN COBERTURA', 0,
    'Cabrera (Tres Amarras)', 'Maria Trinidad Sanchez', 'PENDIENTE', NULL, 530
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Julio Gómez||8297626778';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-18', NULL, 2990,
    false, false, 'EN RUTA', 0,
    'Santo Domingo Oeste', 'Santo Domingo', 'PENDIENTE', NULL, 531
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Luis moises vanderhorst García||8098674587';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-18', '2026-06-26', 2990,
    false, false, 'COMPLETADO', 350,
    'Las Terrenas', 'Samaná', 'RECAUDADO', '2026-06-26', 532
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      2990, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Manuela Gómez||8297880131';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'para_devolucion', '2026-06-19', NULL, 2650,
    false, false, 'PARA DEVOLUCION', 0,
    'Santiago de los Caballeros', 'Santiago', 'PENDIENTE', NULL, 533
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ignaqui Estevez||8092237592';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-19', '2026-06-26', 1950,
    false, false, 'COMPLETADO', 350,
    'La Vega (Concepción de la Vega)', 'La Vega', 'RECAUDADO', '2026-06-26', 534
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Nayeli Mora||8496523069';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-19', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Santiago de los Caballeros', 'Santiago', 'PENDIENTE', NULL, 535
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Genesis Mejía||8295809754';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-19', NULL, 2650,
    false, false, 'EN RUTA', 0,
    'Constanza', 'La Vega', 'PENDIENTE', NULL, 536
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yesenia Hernández||8297561981';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-19', NULL, 2650,
    false, false, 'SIN COBERTURA', 0,
    'San José de las Matas', 'Santiago', 'PENDIENTE', NULL, 537
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Sires y encarnacion jaquez||8092080883';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-19', NULL, 3490,
    false, false, 'CANCELADO', 0,
    'Comendador', 'Elías Piña', 'PENDIENTE', NULL, 538
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz solar con sensor';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 4, 3490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Robeli morel||8296374877';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'AUREL';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
    'entregado', '2026-06-19', '2026-06-26', 1950,
    false, false, 'COMPLETADO', 350,
    'Las Terrenas', 'Samaná', 'RECAUDADO', '2026-06-26', 539
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'AUREL'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Maria del pilar hernandez||8493527346';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-06-19', '2026-06-20', 2650,
    false, false, 'COMPLETADO', 300,
    'Santo Domingo', 'Distrito Nacional', 'RECAUDADO', '2026-06-20', 540
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2650, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Sheila Maria Ciscal Almaguer||8495818159';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-20', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Bávaro', 'La Altagracia', 'PENDIENTE', NULL, 541
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'francis rosario||8093033305';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-06-20', '2026-06-20', 2650,
    false, false, 'COMPLETADO', 350,
    'Santo Domingo Este', 'Santo Domingo', 'RECAUDADO', '2026-06-20', 542
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2650, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Arlene Faneyte||8092584145';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-06-20', '2026-06-20', 1950,
    false, false, 'COMPLETADO', 300,
    'Santo Domingo', 'Distrito Nacional', 'RECAUDADO', '2026-06-20', 543
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Altagracia De Pimentel||8298755544';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-06-20', '2026-06-23', 1950,
    false, false, 'COMPLETADO', 300,
    'Santo Domingo', 'Distrito Nacional', 'RECAUDADO', '2026-06-23', 544
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      1950, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Wismehylin geronimo||8495297930';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-20', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Santo Domingo Este', 'Santo Domingo', 'PENDIENTE', NULL, 545
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Samira santana||8096091142';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-06-20', '2026-06-23', 2650,
    false, false, 'COMPLETADO', 300,
    'Santo Domingo', 'Distrito Nacional', 'RECAUDADO', '2026-06-23', 546
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2650, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = '𝑀𝒶𝓇𝓎 -||8296642030';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-20', NULL, 2650,
    false, false, 'CANCELADO', 0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 'PENDIENTE', NULL, 547
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Miguel Angel Domínguez||8298852219';
  SELECT id INTO _prod FROM _couriers_map WHERE nombre = 'MOTORIZADO';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
    'entregado', '2026-06-20', '2026-06-23', 2190,
    false, false, 'COMPLETADO', 300,
    'Santo Domingo', 'Distrito Nacional', 'RECAUDADO', '2026-06-23', 548
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2190);
  INSERT INTO cuentas_por_cobrar_pedido (pedido_id, courier_id, monto, estado)
    VALUES (_pid, (SELECT id FROM _couriers_map WHERE nombre = 'MOTORIZADO'),
      2190, 'liquidado');
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Anabel -||8098734510';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-20', NULL, 3690,
    false, false, 'EN RUTA', 0,
    'Santo Domingo Este', 'Santo Domingo', 'PENDIENTE', NULL, 549
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 3690);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Adilca -||8293034232';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'entregado', '2026-06-20', NULL, 1950,
    false, false, 'COMPLETADO', 0,
    'Santiago de los Caballeros', 'Santiago', 'PENDIENTE', NULL, 550
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rosa miguelina||8292082581';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-20', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Bonao', 'Monseñor Nouel', 'PENDIENTE', NULL, 551
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'AzLIM MAICA||8292974315';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-21', NULL, 2650,
    false, false, 'SIN COBERTURA', 0,
    'Guayubín', 'Monte Cristi', 'PENDIENTE', NULL, 552
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Manuela -||8292603526';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-21', NULL, 2650,
    false, false, 'EN RUTA', 0,
    'San Juan', 'San Juan', 'PENDIENTE', NULL, 553
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Rachel -||8094601929';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-21', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'San Pedro de Macorís', 'San Pedro de Macorís', 'PENDIENTE', NULL, 554
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Katherine Sánchez||8096379236';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-21', NULL, 2650,
    false, false, 'EN RUTA', 0,
    'Bávaro', 'La Altagracia', 'PENDIENTE', NULL, 555
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dinelys -||8295639307';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-21', NULL, 2650,
    false, false, 'SIN COBERTURA', 0,
    'Las Matas de Farfán', 'San Juan', 'PENDIENTE', NULL, 556
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Dessire Taveras||8492624904';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-21', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'San Francisco de Macorís', 'Duarte', 'PENDIENTE', NULL, 557
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Maricela cruz||8299801716';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'entregado', '2026-06-21', NULL, 2650,
    false, false, 'COMPLETADO', 0,
    'Santiago de los Caballeros', 'Santiago', 'PENDIENTE', NULL, 558
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Prueba -||8496300294';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-22', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Azua (Azua de Compostela)', 'Azua', 'PENDIENTE', NULL, 559
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Maria orquidea franco||8293362430';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-22', NULL, 1950,
    false, false, 'SIN COBERTURA', 0,
    'Sabana Iglesia', 'Santiago', 'PENDIENTE', NULL, 560
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Madelyn carela||8292203816';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-22', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Guayabal', 'Santiago', 'PENDIENTE', NULL, 561
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'JoséFrancisco -||8299227346';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-22', NULL, 2990,
    false, false, 'CANCELADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 562
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ebony Rivera severino||8492453912';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-23', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Santo Domingo Este', 'Santo Domingo', 'PENDIENTE', NULL, 563
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yuniffer Viloria||8296525265';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-23', NULL, 2650,
    false, false, 'EN RUTA', 0,
    'Santiago de los Caballeros', 'Santiago', 'PENDIENTE', NULL, 564
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Xiomara -||8299322055';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'entregado', '2026-06-23', NULL, 2650,
    false, false, 'COMPLETADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 565
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yelixfer -||4802384270';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-23', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Santo Domingo Oeste', 'Santo Domingo', 'PENDIENTE', NULL, 566
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yesenia García||8296497684';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-23', NULL, 2650,
    false, false, 'CANCELADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 567
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ruhaiddy -||8494545779';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-23', NULL, 2650,
    false, false, 'CANCELADO', 0,
    'Santo Domingo Norte', 'Santo Domingo', 'PENDIENTE', NULL, 568
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Danna yibelis||8295742430';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-23', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Jarabacoa', 'La Vega', 'PENDIENTE', NULL, 569
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Raquel -||8293273843';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-23', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Santiago de los Caballeros', 'Santiago', 'PENDIENTE', NULL, 570
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Tomairy Ramirez Delgadillo||8495262164';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-23', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Azua (Azua de Compostela)', 'Azua', 'PENDIENTE', NULL, 571
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Mileidys segura||8097814639';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-24', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Bávaro', 'La Altagracia', 'PENDIENTE', NULL, 572
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Estefany Paulino||8498597684';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-24', NULL, 1950,
    false, false, 'CONFIRMADO EXPRESS', 0,
    'Santo Domingo Oeste', 'Santo Domingo', 'PENDIENTE', NULL, 573
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'sagrario isabel||8098350530';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-24', NULL, 2490,
    true, false, 'TESTEO CONFIRMADO', 0,
    'San Francisco de Macorís', 'Duarte', 'PENDIENTE', NULL, 574
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Meno Vitamina';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Anabell -||8093862130';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-24', NULL, 2490,
    true, false, 'TESTEO CONFIRMADO', 0,
    'Santo Domingo Este', 'Santo Domingo', 'PENDIENTE', NULL, 575
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Meno Vitamina';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'María Pimentel||8098932150';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-24', NULL, 2650,
    false, false, 'CANCELADO', 0,
    'Villa Bisonó (Navarrete)', 'Santiago', 'PENDIENTE', NULL, 576
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Luzbiliana -||8297551124';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-24', NULL, 2650,
    false, false, 'EN RUTA', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 577
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Aracelis -||8298530501';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-24', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Tenares', 'Hermanas Mirabal (Salcedo)', 'PENDIENTE', NULL, 578
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Janna Delgado||8292525114';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'entregado', '2026-06-24', NULL, 2650,
    false, false, 'COMPLETADO', 0,
    'La Vega (Concepción de la Vega)', 'La Vega', 'PENDIENTE', NULL, 579
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2650);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Miliangela Veliz||8494497873';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-24', NULL, 1950,
    false, false, 'CONFIRMADO SIN STOCK', 0,
    'Verón', 'La Altagracia', 'PENDIENTE', NULL, 580
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Daniela espallat||8094609908';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-24', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Santo Domingo Oeste', 'Santo Domingo', 'PENDIENTE', NULL, 581
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Cristal veloz||8296616755';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-24', NULL, 1950,
    false, false, 'EN RUTA', 0,
    'Cotuí', 'Sánchez Ramírez', 'PENDIENTE', NULL, 582
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Paulina -||8292083525';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-24', NULL, 1950,
    false, false, 'CANCELADO', 0,
    'Santo Domingo Este', 'Santo Domingo', 'PENDIENTE', NULL, 583
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1950);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Anyela María||8293758025';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-24', NULL, 1990,
    false, false, 'EN RUTA', 0,
    'Santiago de los Caballeros', 'Santiago', 'PENDIENTE', NULL, 584
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Lissette Vásquez||8298650850';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'entregado', '2026-06-25', NULL, 2690,
    false, false, 'COMPLETADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 585
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2690);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Laysha aracena||8296025625';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-25', NULL, 1990,
    false, false, 'CONFIRMADO', 0,
    'Jarabacoa', 'La Vega', 'PENDIENTE', NULL, 586
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 1, 1990);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Eliusy garcia||8296462717';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'entregado', '2026-06-25', NULL, 2690,
    false, false, 'COMPLETADO', 0,
    'Santo Domingo Este', 'Santo Domingo', 'PENDIENTE', NULL, 587
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2690);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Elgin Alberto Richiez||8093505632';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-25', NULL, 3840,
    false, false, 'EN RUTA', 0,
    'La Romana', 'La Romana', 'PENDIENTE', NULL, 588
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 3840);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Ysmeli Mendoza||8098531287';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-25', NULL, 2690,
    false, false, 'CONFIRMADO SIN STOCK', 0,
    'Cotuí', 'Sánchez Ramírez', 'PENDIENTE', NULL, 589
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2690);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Yulisa de oleo||8492018121';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-25', NULL, 2690,
    false, false, 'EN RUTA', 0,
    'Los Alcarrizos', 'Santo Domingo', 'PENDIENTE', NULL, 590
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Almohadillas Coreanas Anti Manchas';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 2, 2690);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Virgey Mateo Tavarez||8494561968';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-25', NULL, 3690,
    false, false, 'EN RUTA', 0,
    'La Romana', 'La Romana', 'PENDIENTE', NULL, 591
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 3690);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Juan Carlos||8495761702';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-25', NULL, 2490,
    false, false, 'EN RUTA', 0,
    'Santo Domingo Este', 'Santo Domingo', 'PENDIENTE', NULL, 592
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Julia Hernandez||8098992101';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-25', NULL, 2490,
    false, false, 'EN RUTA', 0,
    'Santiago de los Caballeros', 'Santiago', 'PENDIENTE', NULL, 593
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Juana -||8295271780';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'confirmado', '2026-06-25', NULL, 2490,
    false, false, 'EN RUTA', 0,
    'Esperanza', 'Valverde', 'PENDIENTE', NULL, 594
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Evangeline Janice||8299124056';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'entregado', '2026-06-25', NULL, 2490,
    false, false, 'COMPLETADO', 0,
    'Santo Domingo', 'Distrito Nacional', 'PENDIENTE', NULL, 595
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Sugeiry magdalin||8295508009';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-25', NULL, 3690,
    false, false, 'CANCELADO', 0,
    'Santiago de los Caballeros', 'Santiago', 'PENDIENTE', NULL, 596
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 6, 3690);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Anabelis -||8293844745';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-25', NULL, 2490,
    false, false, 'CANCELADO', 0,
    'Higüey (Salvaleón de Higüey)', 'La Altagracia', 'PENDIENTE', NULL, 597
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2490);
END $$;

DO $$ DECLARE _pid uuid; _cid uuid; _prod uuid; BEGIN
  SELECT id INTO _cid FROM _clientes_map WHERE key = 'Julieta jiemenez Martinez||8296348505';
  INSERT INTO pedidos (
    cliente_id, canal_cobro_id, estado, fecha_pedido, fecha_entrega, precio_total,
    es_testeo, es_prueba_interna, estado_original, costo_envio,
    ciudad, provincia, recaudo_estado, recaudo_fecha, pedido_num
  ) VALUES (
    _cid,
    NULL,
    'cancelado', '2026-06-26', NULL, 2490,
    false, false, 'CANCELADO', 0,
    'Santiago de los Caballeros', 'Santiago', 'PENDIENTE', NULL, 598
  ) RETURNING id INTO _pid;
  SELECT id INTO _prod FROM _productos_map WHERE nombre = 'Luz LED RGB - Recargable - Magnética';
  INSERT INTO pedido_items (pedido_id, producto_id, cantidad, precio_unitario)
    VALUES (_pid, _prod, 3, 2490);
END $$;

-- Limpieza de tablas temporales
DROP TABLE IF EXISTS _clientes_map, _couriers_map, _productos_map;

COMMIT;

-- ── Verificación ─────────────────────────────────────
SELECT 'pedidos' AS tabla, COUNT(*) FROM pedidos
UNION ALL SELECT 'clientes', COUNT(*) FROM clientes
UNION ALL SELECT 'productos', COUNT(*) FROM productos
UNION ALL SELECT 'pedido_items', COUNT(*) FROM pedido_items
UNION ALL SELECT 'cuentas_por_cobrar_pedido', COUNT(*) FROM cuentas_por_cobrar_pedido;