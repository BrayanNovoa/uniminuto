---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA tb_tipo_preguntas
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE DATABASE db_caracterizacion;
USE db_caracterizacion;

---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------

CREATE TABLE tb_departamentos (
  departamento_id INT(3) NOT NULL AUTO_INCREMENT,
  departamento_cod VARCHAR(3) NOT NULL,
  departamento VARCHAR(45) NOT NULL,
  PRIMARY KEY (departamento_id),
  KEY departamento_cod(departamento_cod)
);

INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(05,'ANTIOQUIA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(08,'ATLANTICO');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(11,'BOGOTA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(13,'BOLIVAR');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(15,'BOYACA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(17,'CALDAS');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(18,'CAQUETA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(19,'CAUCA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(20,'CESAR');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(23,'CORDOBA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(25,'CUNDINAMARCA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(27,'CHOCO');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(41,'HUILA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(44,'LA GUAJIRA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(47,'MAGDALENA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(50,'META');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(52,'NARIÑO');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(54,'N. DE SANTANDER');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(63,'QUINDIO');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(66,'RISARALDA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(68,'SANTANDER');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(70,'SUCRE');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(73,'TOLIMA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(76,'VALLE DEL CAUCA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(81,'ARAUCA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(85,'CASANARE');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(86,'PUTUMAYO');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(88,'SAN ANDRES');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(91,'AMAZONAS');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(94,'GUAINIA');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(95,'GUAVIARE');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(97,'VAUPES');
INSERT INTO tb_departamentos (departamento_cod, departamento) VALUES(99,'VICHADA');


---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_ciudades (
	ciudad_id INT NOT NULL,
	departamento_cod VARCHAR(3) NOT NULL,
	ciudad VARCHAR(45) NOT NULL,
	ciudad_cod VARCHAR(3) NOT NULL,
	PRIMARY KEY (ciudad_id),
	INDEX departamento_ind (departamento_cod),
    FOREIGN KEY (departamento_cod) REFERENCES tb_departamentos(departamento_cod) ON DELETE CASCADE
);


INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1,'001','5','MEDELLIN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(2,'002','5','ABEJORRAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(3,'004','5','ABRIAQUI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(4,'021','5','ALEJANDRIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(5,'030','5','AMAGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(6,'031','5','AMALFI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(7,'034','5','ANDES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(8,'036','5','ANGELOPOLIS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(9,'038','5','ANGOSTURA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(10,'040','5','ANORI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(11,'042','5','SANTAFE DE ANTIOQUIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(12,'044','5','ANZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(13,'045','5','APARTADO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(14,'051','5','ARBOLETES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(15,'055','5','ARGELIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(16,'059','5','ARMENIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(17,'079','5','BARBOSA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(18,'086','5','BELMIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(19,'088','5','BELLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(20,'091','5','BETANIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(21,'093','5','BETULIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(22,'101','5','CIUDAD BOLIVAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(23,'107','5','BRICEÑO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(24,'113','5','BURITICA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(25,'120','5','CACERES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(26,'125','5','CAICEDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(27,'129','5','CALDAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(28,'134','5','CAMPAMENTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(29,'138','5','CAÑASGORDAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(30,'142','5','CARACOLI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(31,'145','5','CARAMANTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(32,'147','5','CAREPA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(33,'148','5','EL CARMEN DE VIBORAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(34,'150','5','CAROLINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(35,'154','5','CAUCASIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(36,'172','5','CHIGORODO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(37,'190','5','CISNEROS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(38,'197','5','COCORNA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(39,'206','5','CONCEPCION');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(40,'209','5','CONCORDIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(41,'212','5','COPACABANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(42,'234','5','DABEIBA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(43,'237','5','DON MATIAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(44,'240','5','EBEJICO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(45,'250','5','EL BAGRE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(46,'264','5','ENTRERRIOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(47,'266','5','ENVIGADO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(48,'282','5','FREDONIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(49,'284','5','FRONTINO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(50,'306','5','GIRALDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(51,'308','5','GIRARDOTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(52,'310','5','GOMEZ PLATA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(53,'313','5','GRANADA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(54,'315','5','GUADALUPE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(55,'318','5','GUARNE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(56,'321','5','GUATAPE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(57,'347','5','HELICONIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(58,'353','5','HISPANIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(59,'360','5','ITAGUI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(60,'361','5','ITUANGO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(61,'364','5','JARDIN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(62,'368','5','JERICO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(63,'376','5','LA CEJA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(64,'380','5','LA ESTRELLA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(65,'390','5','LA PINTADA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(66,'400','5','LA UNION');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(67,'411','5','LIBORINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(68,'425','5','MACEO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(69,'440','5','MARINILLA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(70,'467','5','MONTEBELLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(71,'475','5','MURINDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(72,'480','5','MUTATA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(73,'483','5','NARIÑO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(74,'490','5','NECOCLI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(75,'495','5','NECHI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(76,'501','5','OLAYA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(77,'541','5','PEÐOL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(78,'543','5','PEQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(79,'576','5','PUEBLORRICO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(80,'579','5','PUERTO BERRIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(81,'585','5','PUERTO NARE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(82,'591','5','PUERTO TRIUNFO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(83,'604','5','REMEDIOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(84,'607','5','RETIRO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(85,'615','5','RIONEGRO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(86,'628','5','SABANALARGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(87,'631','5','SABANETA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(88,'642','5','SALGAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(89,'647','5','SAN ANDRES DE CUERQUIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(90,'649','5','SAN CARLOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(91,'652','5','SAN FRANCISCO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(92,'656','5','SAN JERONIMO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(93,'658','5','SAN JOSE DE LA MONTAÑA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(94,'659','5','SAN JUAN DE URABA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(95,'660','5','SAN LUIS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(96,'664','5','SAN PEDRO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(97,'665','5','SAN PEDRO DE URABA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(98,'667','5','SAN RAFAEL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(99,'670','5','SAN ROQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(100,'674','5','SAN VICENTE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(101,'679','5','SANTA BARBARA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(102,'686','5','SANTA ROSA DE OSOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(103,'690','5','SANTO DOMINGO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(104,'697','5','EL SANTUARIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(105,'736','5','SEGOVIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(106,'756','5','SONSON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(107,'761','5','SOPETRAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(108,'789','5','TAMESIS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(109,'790','5','TARAZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(110,'792','5','TARSO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(111,'809','5','TITIRIBI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(112,'819','5','TOLEDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(113,'837','5','TURBO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(114,'842','5','URAMITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(115,'847','5','URRAO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(116,'854','5','VALDIVIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(117,'856','5','VALPARAISO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(118,'858','5','VEGACHI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(119,'861','5','VENECIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(120,'873','5','VIGIA DEL FUERTE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(121,'885','5','YALI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(122,'887','5','YARUMAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(123,'890','5','YOLOMBO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(124,'893','5','YONDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(125,'895','5','ZARAGOZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(126,'001','8','BARRANQUILLA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(127,'078','8','BARANOA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(128,'137','8','CAMPO DE LA CRUZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(129,'141','8','CANDELARIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(130,'296','8','GALAPA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(131,'372','8','JUAN DE ACOSTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(132,'421','8','LURUACO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(133,'433','8','MALAMBO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(134,'436','8','MANATI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(135,'520','8','PALMAR DE VARELA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(136,'549','8','PIOJO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(137,'558','8','POLONUEVO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(138,'560','8','PONEDERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(139,'573','8','PUERTO COLOMBIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(140,'606','8','REPELON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(141,'634','8','SABANAGRANDE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(142,'638','8','SABANALARGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(143,'675','8','SANTA LUCIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(144,'685','8','SANTO TOMAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(145,'758','8','SOLEDAD');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(146,'770','8','SUAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(147,'832','8','TUBARA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(148,'849','8','USIACURI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(149,'001','11','BOGOTA, D.C.');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(150,'001','13','CARTAGENA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(151,'006','13','ACHI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(152,'030','13','ALTOS DEL ROSARIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(153,'042','13','ARENAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(154,'052','13','ARJONA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(155,'062','13','ARROYOHONDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(156,'074','13','BARRANCO DE LOBA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(157,'140','13','CALAMAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(158,'160','13','CANTAGALLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(159,'188','13','CICUCO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(160,'212','13','CORDOBA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(161,'222','13','CLEMENCIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(162,'244','13','EL CARMEN DE BOLIVAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(163,'248','13','EL GUAMO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(164,'268','13','EL PEÑON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(165,'300','13','HATILLO DE LOBA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(166,'430','13','MAGANGUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(167,'433','13','MAHATES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(168,'440','13','MARGARITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(169,'442','13','MARIA LA BAJA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(170,'458','13','MONTECRISTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(171,'468','13','MOMPOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(172,'490','13','NOROSI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(173,'473','13','MORALES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(174,'549','13','PINILLOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(175,'580','13','REGIDOR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(176,'600','13','RIO VIEJO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(177,'620','13','SAN CRISTOBAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(178,'647','13','SAN ESTANISLAO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(179,'650','13','SAN FERNANDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(180,'654','13','SAN JACINTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(181,'655','13','SAN JACINTO DEL CAUCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(182,'657','13','SAN JUAN NEPOMUCENO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(183,'667','13','SAN MARTIN DE LOBA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(184,'670','13','SAN PABLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(185,'673','13','SANTA CATALINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(186,'683','13','SANTA ROSA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(187,'688','13','SANTA ROSA DEL SUR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(188,'744','13','SIMITI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(189,'760','13','SOPLAVIENTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(190,'780','13','TALAIGUA NUEVO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(191,'810','13','TIQUISIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(192,'836','13','TURBACO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(193,'838','13','TURBANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(194,'873','13','VILLANUEVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(195,'894','13','ZAMBRANO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(196,'001','15','TUNJA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(197,'022','15','ALMEIDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(198,'047','15','AQUITANIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(199,'051','15','ARCABUCO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(200,'087','15','BELEN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(201,'090','15','BERBEO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(202,'092','15','BETEITIVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(203,'097','15','BOAVITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(204,'104','15','BOYACA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(205,'106','15','BRICEÑO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(206,'109','15','BUENAVISTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(207,'114','15','BUSBANZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(208,'131','15','CALDAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(209,'135','15','CAMPOHERMOSO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(210,'162','15','CERINZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(211,'172','15','CHINAVITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(212,'176','15','CHIQUINQUIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(213,'180','15','CHISCAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(214,'183','15','CHITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(215,'185','15','CHITARAQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(216,'187','15','CHIVATA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(217,'189','15','CIENEGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(218,'204','15','COMBITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(219,'212','15','COPER');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(220,'215','15','CORRALES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(221,'218','15','COVARACHIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(222,'223','15','CUBARA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(223,'224','15','CUCAITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(224,'226','15','CUITIVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(225,'232','15','CHIQUIZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(226,'236','15','CHIVOR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(227,'238','15','DUITAMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(228,'244','15','EL COCUY');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(229,'248','15','EL ESPINO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(230,'272','15','FIRAVITOBA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(231,'276','15','FLORESTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(232,'293','15','GACHANTIVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(233,'296','15','GAMEZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(234,'299','15','GARAGOA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(235,'317','15','GUACAMAYAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(236,'322','15','GUATEQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(237,'325','15','GUAYATA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(238,'332','15','GsICAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(239,'362','15','IZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(240,'367','15','JENESANO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(241,'368','15','JERICO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(242,'377','15','LABRANZAGRANDE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(243,'380','15','LA CAPILLA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(244,'401','15','LA VICTORIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(245,'403','15','LA UVITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(246,'407','15','VILLA DE LEYVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(247,'425','15','MACANAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(248,'442','15','MARIPI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(249,'455','15','MIRAFLORES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(250,'464','15','MONGUA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(251,'466','15','MONGUI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(252,'469','15','MONIQUIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(253,'476','15','MOTAVITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(254,'480','15','MUZO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(255,'491','15','NOBSA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(256,'494','15','NUEVO COLON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(257,'500','15','OICATA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(258,'507','15','OTANCHE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(259,'511','15','PACHAVITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(260,'514','15','PAEZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(261,'516','15','PAIPA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(262,'518','15','PAJARITO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(263,'522','15','PANQUEBA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(264,'531','15','PAUNA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(265,'533','15','PAYA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(266,'537','15','PAZ DE RIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(267,'542','15','PESCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(268,'550','15','PISBA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(269,'572','15','PUERTO BOYACA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(270,'580','15','QUIPAMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(271,'599','15','RAMIRIQUI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(272,'600','15','RAQUIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(273,'621','15','RONDON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(274,'632','15','SABOYA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(275,'638','15','SACHICA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(276,'646','15','SAMACA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(277,'660','15','SAN EDUARDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(278,'664','15','SAN JOSE DE PARE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(279,'667','15','SAN LUIS DE GACENO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(280,'673','15','SAN MATEO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(281,'676','15','SAN MIGUEL DE SEMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(282,'681','15','SAN PABLO DE BORBUR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(283,'686','15','SANTANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(284,'690','15','SANTA MARIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(285,'693','15','SANTA ROSA DE VITERBO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(286,'696','15','SANTA SOFIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(287,'720','15','SATIVANORTE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(288,'723','15','SATIVASUR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(289,'740','15','SIACHOQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(290,'753','15','SOATA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(291,'755','15','SOCOTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(292,'757','15','SOCHA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(293,'759','15','SOGAMOSO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(294,'761','15','SOMONDOCO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(295,'762','15','SORA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(296,'763','15','SOTAQUIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(297,'764','15','SORACA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(298,'774','15','SUSACON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(299,'776','15','SUTAMARCHAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(300,'778','15','SUTATENZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(301,'790','15','TASCO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(302,'798','15','TENZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(303,'804','15','TIBANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(304,'806','15','TIBASOSA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(305,'808','15','TINJACA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(306,'810','15','TIPACOQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(307,'814','15','TOCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(308,'816','15','TOGsI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(309,'820','15','TOPAGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(310,'822','15','TOTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(311,'832','15','TUNUNGUA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(312,'835','15','TURMEQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(313,'837','15','TUTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(314,'839','15','TUTAZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(315,'842','15','UMBITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(316,'861','15','VENTAQUEMADA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(317,'879','15','VIRACACHA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(318,'897','15','ZETAQUIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(319,'001','17','MANIZALES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(320,'013','17','AGUADAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(321,'042','17','ANSERMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(322,'050','17','ARANZAZU');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(323,'088','17','BELALCAZAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(324,'174','17','CHINCHINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(325,'272','17','FILADELFIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(326,'380','17','LA DORADA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(327,'388','17','LA MERCED');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(328,'433','17','MANZANARES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(329,'442','17','MARMATO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(330,'444','17','MARQUETALIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(331,'446','17','MARULANDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(332,'486','17','NEIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(333,'495','17','NORCASIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(334,'513','17','PACORA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(335,'524','17','PALESTINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(336,'541','17','PENSILVANIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(337,'614','17','RIOSUCIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(338,'616','17','RISARALDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(339,'653','17','SALAMINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(340,'662','17','SAMANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(341,'665','17','SAN JOSE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(342,'777','17','SUPIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(343,'867','17','VICTORIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(344,'873','17','VILLAMARIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(345,'877','17','VITERBO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(346,'001','18','FLORENCIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(347,'029','18','ALBANIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(348,'094','18','BELEN DE LOS ANDAQUIES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(349,'150','18','CARTAGENA DEL CHAIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(350,'205','18','CURILLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(351,'247','18','EL DONCELLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(352,'256','18','EL PAUJIL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(353,'410','18','LA MONTAÑITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(354,'460','18','MILAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(355,'479','18','MORELIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(356,'592','18','PUERTO RICO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(357,'610','18','SAN JOSE DEL FRAGUA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(358,'753','18','SAN VICENTE DEL CAGUAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(359,'756','18','SOLANO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(360,'785','18','SOLITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(361,'860','18','VALPARAISO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(362,'001','19','POPAYAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(363,'022','19','ALMAGUER');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(364,'050','19','ARGELIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(365,'075','19','BALBOA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(366,'100','19','BOLIVAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(367,'110','19','BUENOS AIRES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(368,'130','19','CAJIBIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(369,'137','19','CALDONO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(370,'142','19','CALOTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(371,'212','19','CORINTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(372,'256','19','EL TAMBO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(373,'290','19','FLORENCIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(374,'300','19','GUACHENE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(375,'318','19','GUAPI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(376,'355','19','INZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(377,'364','19','JAMBALO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(378,'392','19','LA SIERRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(379,'397','19','LA VEGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(380,'418','19','LOPEZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(381,'450','19','MERCADERES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(382,'455','19','MIRANDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(383,'473','19','MORALES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(384,'513','19','PADILLA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(385,'517','19','PAEZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(386,'532','19','PATIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(387,'533','19','PIAMONTE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(388,'548','19','PIENDAMO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(389,'573','19','PUERTO TEJADA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(390,'585','19','PURACE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(391,'622','19','ROSAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(392,'693','19','SAN SEBASTIAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(393,'698','19','SANTANDER DE QUILICHAO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(394,'701','19','SANTA ROSA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(395,'743','19','SILVIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(396,'760','19','SOTARA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(397,'780','19','SUAREZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(398,'785','19','SUCRE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(399,'807','19','TIMBIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(400,'809','19','TIMBIQUI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(401,'821','19','TORIBIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(402,'824','19','TOTORO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(403,'845','19','VILLA RICA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(404,'001','20','VALLEDUPAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(405,'011','20','AGUACHICA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(406,'013','20','AGUSTIN CODAZZI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(407,'032','20','ASTREA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(408,'045','20','BECERRIL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(409,'060','20','BOSCONIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(410,'175','20','CHIMICHAGUA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(411,'178','20','CHIRIGUANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(412,'228','20','CURUMANI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(413,'238','20','EL COPEY');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(414,'250','20','EL PASO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(415,'295','20','GAMARRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(416,'310','20','GONZALEZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(417,'383','20','LA GLORIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(418,'400','20','LA JAGUA DE IBIRICO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(419,'443','20','MANAURE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(420,'517','20','PAILITAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(421,'550','20','PELAYA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(422,'570','20','PUEBLO BELLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(423,'614','20','RIO DE ORO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(424,'621','20','LA PAZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(425,'710','20','SAN ALBERTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(426,'750','20','SAN DIEGO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(427,'770','20','SAN MARTIN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(428,'787','20','TAMALAMEQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(429,'001','23','MONTERIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(430,'068','23','AYAPEL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(431,'079','23','BUENAVISTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(432,'090','23','CANALETE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(433,'162','23','CERETE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(434,'168','23','CHIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(435,'182','23','CHINU');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(436,'189','23','CIENAGA DE ORO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(437,'300','23','COTORRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(438,'350','23','LA APARTADA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(439,'417','23','LORICA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(440,'419','23','LOS CORDOBAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(441,'464','23','MOMIL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(442,'466','23','MONTELIBANO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(443,'500','23','MOÑITOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(444,'555','23','PLANETA RICA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(445,'570','23','PUEBLO NUEVO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(446,'574','23','PUERTO ESCONDIDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(447,'580','23','PUERTO LIBERTADOR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(448,'586','23','PURISIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(449,'660','23','SAHAGUN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(450,'670','23','SAN ANDRES SOTAVENTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(451,'672','23','SAN ANTERO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(452,'675','23','SAN BERNARDO DEL VIENTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(453,'678','23','SAN CARLOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(454,'686','23','SAN PELAYO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(455,'807','23','TIERRALTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(456,'855','23','VALENCIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(457,'001','25','AGUA DE DIOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(458,'019','25','ALBAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(459,'035','25','ANAPOIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(460,'040','25','ANOLAIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(461,'053','25','ARBELAEZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(462,'086','25','BELTRAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(463,'095','25','BITUIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(464,'099','25','BOJACA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(465,'120','25','CABRERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(466,'123','25','CACHIPAY');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(467,'126','25','CAJICA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(468,'148','25','CAPARRAPI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(469,'151','25','CAQUEZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(470,'154','25','CARMEN DE CARUPA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(471,'168','25','CHAGUANI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(472,'175','25','CHIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(473,'178','25','CHIPAQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(474,'181','25','CHOACHI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(475,'183','25','CHOCONTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(476,'200','25','COGUA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(477,'214','25','COTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(478,'224','25','CUCUNUBA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(479,'245','25','EL COLEGIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(480,'258','25','EL PEÑON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(481,'260','25','EL ROSAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(482,'269','25','FACATATIVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(483,'279','25','FOMEQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(484,'281','25','FOSCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(485,'286','25','FUNZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(486,'288','25','FUQUENE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(487,'290','25','FUSAGASUGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(488,'293','25','GACHALA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(489,'295','25','GACHANCIPA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(490,'297','25','GACHETA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(491,'299','25','GAMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(492,'307','25','GIRARDOT');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(493,'312','25','GRANADA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(494,'317','25','GUACHETA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(495,'320','25','GUADUAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(496,'322','25','GUASCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(497,'324','25','GUATAQUI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(498,'326','25','GUATAVITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(499,'328','25','GUAYABAL DE SIQUIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(500,'335','25','GUAYABETAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(501,'339','25','GUTIERREZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(502,'368','25','JERUSALEN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(503,'372','25','JUNIN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(504,'377','25','LA CALERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(505,'386','25','LA MESA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(506,'394','25','LA PALMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(507,'398','25','LA PEÑA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(508,'402','25','LA VEGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(509,'407','25','LENGUAZAQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(510,'426','25','MACHETA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(511,'430','25','MADRID');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(512,'436','25','MANTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(513,'438','25','MEDINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(514,'473','25','MOSQUERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(515,'483','25','NARIÑO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(516,'486','25','NEMOCON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(517,'488','25','NILO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(518,'489','25','NIMAIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(519,'491','25','NOCAIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(520,'506','25','VENECIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(521,'513','25','PACHO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(522,'518','25','PAIME');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(523,'524','25','PANDI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(524,'530','25','PARATEBUENO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(525,'535','25','PASCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(526,'572','25','PUERTO SALGAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(527,'580','25','PULI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(528,'592','25','QUEBRADANEGRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(529,'594','25','QUETAME');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(530,'596','25','QUIPILE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(531,'599','25','APULO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(532,'612','25','RICAURTE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(533,'645','25','SAN ANTONIO DEL TEQUENDAMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(534,'649','25','SAN BERNARDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(535,'653','25','SAN CAYETANO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(536,'658','25','SAN FRANCISCO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(537,'662','25','SAN JUAN DE RIO SECO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(538,'718','25','SASAIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(539,'736','25','SESQUILE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(540,'740','25','SIBATE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(541,'743','25','SILVANIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(542,'745','25','SIMIJACA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(543,'754','25','SOACHA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(544,'758','25','SOPO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(545,'769','25','SUBACHOQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(546,'772','25','SUESCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(547,'777','25','SUPATA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(548,'779','25','SUSA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(549,'781','25','SUTATAUSA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(550,'785','25','TABIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(551,'793','25','TAUSA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(552,'797','25','TENA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(553,'799','25','TENJO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(554,'805','25','TIBACUY');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(555,'807','25','TIBIRITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(556,'815','25','TOCAIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(557,'817','25','TOCANCIPA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(558,'823','25','TOPAIPI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(559,'839','25','UBALA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(560,'841','25','UBAQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(561,'843','25','VILLA DE SAN DIEGO DE UBATE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(562,'845','25','UNE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(563,'851','25','UTICA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(564,'862','25','VERGARA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(565,'867','25','VIANI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(566,'871','25','VILLAGOMEZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(567,'873','25','VILLAPINZON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(568,'875','25','VILLETA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(569,'878','25','VIOTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(570,'885','25','YACOPI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(571,'898','25','ZIPACON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(572,'899','25','ZIPAQUIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(573,'001','27','QUIBDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(574,'006','27','ACANDI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(575,'025','27','ALTO BAUDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(576,'050','27','ATRATO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(577,'073','27','BAGADO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(578,'075','27','BAHIA SOLANO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(579,'077','27','BAJO BAUDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(580,'099','27','BOJAYA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(581,'135','27','EL CANTON DEL SAN PABLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(582,'150','27','CARMEN DEL DARIEN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(583,'160','27','CERTEGUI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(584,'205','27','CONDOTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(585,'245','27','EL CARMEN DE ATRATO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(586,'250','27','EL LITORAL DEL SAN JUAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(587,'361','27','ISTMINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(588,'372','27','JURADO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(589,'413','27','LLORO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(590,'425','27','MEDIO ATRATO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(591,'430','27','MEDIO BAUDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(592,'450','27','MEDIO SAN JUAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(593,'491','27','NOVITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(594,'495','27','NUQUI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(595,'580','27','RIO IRO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(596,'600','27','RIO QUITO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(597,'615','27','RIOSUCIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(598,'660','27','SAN JOSE DEL PALMAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(599,'745','27','SIPI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(600,'787','27','TADO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(601,'800','27','UNGUIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(602,'810','27','UNION PANAMERICANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(603,'001','41','NEIVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(604,'006','41','ACEVEDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(605,'013','41','AGRADO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(606,'016','41','AIPE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(607,'020','41','ALGECIRAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(608,'026','41','ALTAMIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(609,'078','41','BARAYA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(610,'132','41','CAMPOALEGRE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(611,'206','41','COLOMBIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(612,'244','41','ELIAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(613,'298','41','GARZON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(614,'306','41','GIGANTE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(615,'319','41','GUADALUPE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(616,'349','41','HOBO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(617,'357','41','IQUIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(618,'359','41','ISNOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(619,'378','41','LA ARGENTINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(620,'396','41','LA PLATA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(621,'483','41','NATAGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(622,'503','41','OPORAPA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(623,'518','41','PAICOL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(624,'524','41','PALERMO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(625,'530','41','PALESTINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(626,'548','41','PITAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(627,'551','41','PITALITO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(628,'615','41','RIVERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(629,'660','41','SALADOBLANCO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(630,'668','41','SAN AGUSTIN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(631,'676','41','SANTA MARIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(632,'770','41','SUAZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(633,'791','41','TARQUI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(634,'797','41','TESALIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(635,'799','41','TELLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(636,'801','41','TERUEL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(637,'807','41','TIMANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(638,'872','41','VILLAVIEJA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(639,'885','41','YAGUARA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(640,'001','44','RIOHACHA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(641,'035','44','ALBANIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(642,'078','44','BARRANCAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(643,'090','44','DIBULLA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(644,'098','44','DISTRACCION');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(645,'110','44','EL MOLINO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(646,'279','44','FONSECA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(647,'378','44','HATONUEVO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(648,'420','44','LA JAGUA DEL PILAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(649,'430','44','MAICAO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(650,'560','44','MANAURE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(651,'650','44','SAN JUAN DEL CESAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(652,'847','44','URIBIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(653,'855','44','URUMITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(654,'874','44','VILLANUEVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(655,'001','47','SANTA MARTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(656,'030','47','ALGARROBO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(657,'053','47','ARACATACA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(658,'058','47','ARIGUANI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(659,'161','47','CERRO SAN ANTONIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(660,'170','47','CHIBOLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(661,'189','47','CIENAGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(662,'205','47','CONCORDIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(663,'245','47','EL BANCO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(664,'258','47','EL PIÑON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(665,'268','47','EL RETEN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(666,'288','47','FUNDACION');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(667,'318','47','GUAMAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(668,'460','47','NUEVA GRANADA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(669,'541','47','PEDRAZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(670,'545','47','PIJIÑO DEL CARMEN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(671,'551','47','PIVIJAY');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(672,'555','47','PLATO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(673,'570','47','PUEBLOVIEJO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(674,'605','47','REMOLINO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(675,'660','47','SABANAS DE SAN ANGEL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(676,'675','47','SALAMINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(677,'692','47','SAN SEBASTIAN DE BUENAVISTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(678,'703','47','SAN ZENON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(679,'707','47','SANTA ANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(680,'720','47','SANTA BARBARA DE PINTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(681,'745','47','SITIONUEVO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(682,'798','47','TENERIFE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(683,'960','47','ZAPAYAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(684,'980','47','ZONA BANANERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(685,'001','50','VILLAVICENCIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(686,'006','50','ACACIAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(687,'110','50','BARRANCA DE UPIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(688,'124','50','CABUYARO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(689,'150','50','CASTILLA LA NUEVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(690,'223','50','CUBARRAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(691,'226','50','CUMARAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(692,'245','50','EL CALVARIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(693,'251','50','EL CASTILLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(694,'270','50','EL DORADO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(695,'287','50','FUENTE DE ORO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(696,'313','50','GRANADA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(697,'318','50','GUAMAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(698,'325','50','MAPIRIPAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(699,'330','50','MESETAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(700,'350','50','LA MACARENA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(701,'370','50','URIBE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(702,'400','50','LEJANIAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(703,'450','50','PUERTO CONCORDIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(704,'568','50','PUERTO GAITAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(705,'573','50','PUERTO LOPEZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(706,'577','50','PUERTO LLERAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(707,'590','50','PUERTO RICO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(708,'606','50','RESTREPO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(709,'680','50','SAN CARLOS DE GUAROA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(710,'683','50','SAN JUAN DE ARAMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(711,'686','50','SAN JUANITO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(712,'689','50','SAN MARTIN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(713,'711','50','VISTAHERMOSA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(714,'001','52','PASTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(715,'019','52','ALBAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(716,'022','52','ALDANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(717,'036','52','ANCUYA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(718,'051','52','ARBOLEDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(719,'079','52','BARBACOAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(720,'083','52','BELEN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(721,'110','52','BUESACO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(722,'203','52','COLON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(723,'207','52','CONSACA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(724,'210','52','CONTADERO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(725,'215','52','CORDOBA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(726,'224','52','CUASPUD');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(727,'227','52','CUMBAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(728,'233','52','CUMBITARA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(729,'240','52','CHACHAGsI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(730,'250','52','EL CHARCO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(731,'254','52','EL PEÑOL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(732,'256','52','EL ROSARIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(733,'258','52','EL TABLON DE GOMEZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(734,'260','52','EL TAMBO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(735,'287','52','FUNES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(736,'317','52','GUACHUCAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(737,'320','52','GUAITARILLA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(738,'323','52','GUALMATAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(739,'352','52','ILES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(740,'354','52','IMUES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(741,'356','52','IPIALES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(742,'378','52','LA CRUZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(743,'381','52','LA FLORIDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(744,'385','52','LA LLANADA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(745,'390','52','LA TOLA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(746,'399','52','LA UNION');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(747,'405','52','LEIVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(748,'411','52','LINARES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(749,'418','52','LOS ANDES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(750,'427','52','MAGsI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(751,'435','52','MALLAMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(752,'473','52','MOSQUERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(753,'480','52','NARIÑO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(754,'490','52','OLAYA HERRERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(755,'506','52','OSPINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(756,'520','52','FRANCISCO PIZARRO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(757,'540','52','POLICARPA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(758,'560','52','POTOSI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(759,'565','52','PROVIDENCIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(760,'573','52','PUERRES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(761,'585','52','PUPIALES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(762,'612','52','RICAURTE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(763,'621','52','ROBERTO PAYAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(764,'678','52','SAMANIEGO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(765,'683','52','SANDONA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(766,'685','52','SAN BERNARDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(767,'687','52','SAN LORENZO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(768,'693','52','SAN PABLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(769,'694','52','SAN PEDRO DE CARTAGO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(770,'696','52','SANTA BARBARA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(771,'699','52','SANTACRUZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(772,'720','52','SAPUYES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(773,'786','52','TAMINANGO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(774,'788','52','TANGUA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(775,'835','52','SAN ANDRES DE TUMACO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(776,'838','52','TUQUERRES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(777,'885','52','YACUANQUER');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(778,'001','54','CUCUTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(779,'003','54','ABREGO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(780,'051','54','ARBOLEDAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(781,'099','54','BOCHALEMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(782,'109','54','BUCARASICA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(783,'125','54','CACOTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(784,'128','54','CACHIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(785,'172','54','CHINACOTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(786,'174','54','CHITAGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(787,'206','54','CONVENCION');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(788,'223','54','CUCUTILLA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(789,'239','54','DURANIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(790,'245','54','EL CARMEN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(791,'250','54','EL TARRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(792,'261','54','EL ZULIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(793,'313','54','GRAMALOTE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(794,'344','54','HACARI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(795,'347','54','HERRAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(796,'377','54','LABATECA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(797,'385','54','LA ESPERANZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(798,'398','54','LA PLAYA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(799,'405','54','LOS PATIOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(800,'418','54','LOURDES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(801,'480','54','MUTISCUA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(802,'498','54','OCAÑA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(803,'518','54','PAMPLONA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(804,'520','54','PAMPLONITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(805,'553','54','PUERTO SANTANDER');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(806,'599','54','RAGONVALIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(807,'660','54','SALAZAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(808,'670','54','SAN CALIXTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(809,'673','54','SAN CAYETANO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(810,'680','54','SANTIAGO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(811,'720','54','SARDINATA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(812,'743','54','SILOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(813,'800','54','TEORAMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(814,'810','54','TIBU');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(815,'820','54','TOLEDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(816,'871','54','VILLA CARO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(817,'874','54','VILLA DEL ROSARIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(818,'001','63','ARMENIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(819,'111','63','BUENAVISTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(820,'130','63','CALARCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(821,'190','63','CIRCASIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(822,'212','63','CORDOBA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(823,'272','63','FILANDIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(824,'302','63','GENOVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(825,'401','63','LA TEBAIDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(826,'470','63','MONTENEGRO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(827,'548','63','PIJAO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(828,'594','63','QUIMBAYA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(829,'690','63','SALENTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(830,'001','66','PEREIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(831,'045','66','APIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(832,'075','66','BALBOA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(833,'088','66','BELEN DE UMBRIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(834,'170','66','DOSQUEBRADAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(835,'318','66','GUATICA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(836,'383','66','LA CELIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(837,'400','66','LA VIRGINIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(838,'440','66','MARSELLA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(839,'456','66','MISTRATO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(840,'572','66','PUEBLO RICO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(841,'594','66','QUINCHIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(842,'682','66','SANTA ROSA DE CABAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(843,'687','66','SANTUARIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(844,'001','68','BUCARAMANGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(845,'013','68','AGUADA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(846,'020','68','ALBANIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(847,'051','68','ARATOCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(848,'077','68','BARBOSA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(849,'079','68','BARICHARA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(850,'081','68','BARRANCABERMEJA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(851,'092','68','BETULIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(852,'101','68','BOLIVAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(853,'121','68','CABRERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(854,'132','68','CALIFORNIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(855,'147','68','CAPITANEJO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(856,'152','68','CARCASI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(857,'160','68','CEPITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(858,'162','68','CERRITO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(859,'167','68','CHARALA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(860,'169','68','CHARTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(861,'176','68','CHIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(862,'179','68','CHIPATA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(863,'190','68','CIMITARRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(864,'207','68','CONCEPCION');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(865,'209','68','CONFINES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(866,'211','68','CONTRATACION');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(867,'217','68','COROMORO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(868,'229','68','CURITI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(869,'235','68','EL CARMEN DE CHUCURI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(870,'245','68','EL GUACAMAYO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(871,'250','68','EL PEÑON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(872,'255','68','EL PLAYON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(873,'264','68','ENCINO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(874,'266','68','ENCISO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(875,'271','68','FLORIAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(876,'276','68','FLORIDABLANCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(877,'296','68','GALAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(878,'298','68','GAMBITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(879,'307','68','GIRON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(880,'318','68','GUACA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(881,'320','68','GUADALUPE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(882,'322','68','GUAPOTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(883,'324','68','GUAVATA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(884,'327','68','GsEPSA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(885,'344','68','HATO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(886,'368','68','JESUS MARIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(887,'370','68','JORDAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(888,'377','68','LA BELLEZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(889,'385','68','LANDAZURI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(890,'397','68','LA PAZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(891,'406','68','LEBRIJA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(892,'418','68','LOS SANTOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(893,'425','68','MACARAVITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(894,'432','68','MALAGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(895,'444','68','MATANZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(896,'464','68','MOGOTES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(897,'468','68','MOLAGAVITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(898,'498','68','OCAMONTE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(899,'500','68','OIBA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(900,'502','68','ONZAGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(901,'522','68','PALMAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(902,'524','68','PALMAS DEL SOCORRO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(903,'533','68','PARAMO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(904,'547','68','PIEDECUESTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(905,'549','68','PINCHOTE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(906,'572','68','PUENTE NACIONAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(907,'573','68','PUERTO PARRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(908,'575','68','PUERTO WILCHES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(909,'615','68','RIONEGRO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(910,'655','68','SABANA DE TORRES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(911,'669','68','SAN ANDRES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(912,'673','68','SAN BENITO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(913,'679','68','SAN GIL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(914,'682','68','SAN JOAQUIN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(915,'684','68','SAN JOSE DE MIRANDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(916,'686','68','SAN MIGUEL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(917,'689','68','SAN VICENTE DE CHUCURI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(918,'705','68','SANTA BARBARA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(919,'720','68','SANTA HELENA DEL OPON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(920,'745','68','SIMACOTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(921,'755','68','SOCORRO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(922,'770','68','SUAITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(923,'773','68','SUCRE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(924,'780','68','SURATA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(925,'820','68','TONA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(926,'855','68','VALLE DE SAN JOSE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(927,'861','68','VELEZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(928,'867','68','VETAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(929,'872','68','VILLANUEVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(930,'895','68','ZAPATOCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(931,'001','70','SINCELEJO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(932,'110','70','BUENAVISTA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(933,'124','70','CAIMITO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(934,'204','70','COLOSO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(935,'215','70','COROZAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(936,'221','70','COVEÑAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(937,'230','70','CHALAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(938,'233','70','EL ROBLE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(939,'235','70','GALERAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(940,'265','70','GUARANDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(941,'400','70','LA UNION');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(942,'418','70','LOS PALMITOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(943,'429','70','MAJAGUAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(944,'473','70','MORROA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(945,'508','70','OVEJAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(946,'523','70','PALMITO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(947,'670','70','SAMPUES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(948,'678','70','SAN BENITO ABAD');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(949,'702','70','SAN JUAN DE BETULIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(950,'708','70','SAN MARCOS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(951,'713','70','SAN ONOFRE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(952,'717','70','SAN PEDRO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(953,'742','70','SAN LUIS DE SINCE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(954,'771','70','SUCRE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(955,'820','70','SANTIAGO DE TOLU');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(956,'823','70','TOLU VIEJO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(957,'001','73','IBAGUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(958,'024','73','ALPUJARRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(959,'026','73','ALVARADO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(960,'030','73','AMBALEMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(961,'043','73','ANZOATEGUI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(962,'055','73','ARMERO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(963,'067','73','ATACO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(964,'124','73','CAJAMARCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(965,'148','73','CARMEN DE APICALA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(966,'152','73','CASABIANCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(967,'168','73','CHAPARRAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(968,'200','73','COELLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(969,'217','73','COYAIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(970,'226','73','CUNDAY');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(971,'236','73','DOLORES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(972,'268','73','ESPINAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(973,'270','73','FALAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(974,'275','73','FLANDES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(975,'283','73','FRESNO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(976,'319','73','GUAMO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(977,'347','73','HERVEO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(978,'349','73','HONDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(979,'352','73','ICONONZO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(980,'408','73','LERIDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(981,'411','73','LIBANO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(982,'443','73','MARIQUITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(983,'449','73','MELGAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(984,'461','73','MURILLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(985,'483','73','NATAGAIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(986,'504','73','ORTEGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(987,'520','73','PALOCABILDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(988,'547','73','PIEDRAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(989,'555','73','PLANADAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(990,'563','73','PRADO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(991,'585','73','PURIFICACION');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(992,'616','73','RIOBLANCO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(993,'622','73','RONCESVALLES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(994,'624','73','ROVIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(995,'671','73','SALDAÑA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(996,'675','73','SAN ANTONIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(997,'678','73','SAN LUIS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(998,'686','73','SANTA ISABEL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(999,'770','73','SUAREZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1000,'854','73','VALLE DE SAN JUAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1001,'861','73','VENADILLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1002,'870','73','VILLAHERMOSA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1003,'873','73','VILLARRICA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1004,'001','76','CALI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1005,'020','76','ALCALA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1006,'036','76','ANDALUCIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1007,'041','76','ANSERMANUEVO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1008,'054','76','ARGELIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1009,'100','76','BOLIVAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1010,'109','76','BUENAVENTURA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1011,'111','76','GUADALAJARA DE BUGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1012,'113','76','BUGALAGRANDE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1013,'122','76','CAICEDONIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1014,'126','76','CALIMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1015,'130','76','CANDELARIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1016,'147','76','CARTAGO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1017,'233','76','DAGUA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1018,'243','76','EL AGUILA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1019,'246','76','EL CAIRO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1020,'248','76','EL CERRITO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1021,'250','76','EL DOVIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1022,'275','76','FLORIDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1023,'306','76','GINEBRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1024,'318','76','GUACARI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1025,'364','76','JAMUNDI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1026,'377','76','LA CUMBRE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1027,'400','76','LA UNION');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1028,'403','76','LA VICTORIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1029,'497','76','OBANDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1030,'520','76','PALMIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1031,'563','76','PRADERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1032,'606','76','RESTREPO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1033,'616','76','RIOFRIO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1034,'622','76','ROLDANILLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1035,'670','76','SAN PEDRO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1036,'736','76','SEVILLA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1037,'823','76','TORO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1038,'828','76','TRUJILLO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1039,'834','76','TULUA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1040,'845','76','ULLOA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1041,'863','76','VERSALLES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1042,'869','76','VIJES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1043,'890','76','YOTOCO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1044,'892','76','YUMBO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1045,'895','76','ZARZAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1046,'001','81','ARAUCA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1047,'065','81','ARAUQUITA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1048,'220','81','CRAVO NORTE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1049,'300','81','FORTUL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1050,'591','81','PUERTO RONDON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1051,'736','81','SARAVENA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1052,'794','81','TAME');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1053,'001','85','YOPAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1054,'010','85','AGUAZUL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1055,'015','85','CHAMEZA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1056,'125','85','HATO COROZAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1057,'136','85','LA SALINA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1058,'139','85','MANI');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1059,'162','85','MONTERREY');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1060,'225','85','NUNCHIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1061,'230','85','OROCUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1062,'250','85','PAZ DE ARIPORO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1063,'263','85','PORE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1064,'279','85','RECETOR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1065,'300','85','SABANALARGA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1066,'315','85','SACAMA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1067,'325','85','SAN LUIS DE PALENQUE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1068,'400','85','TAMARA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1069,'410','85','TAURAMENA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1070,'430','85','TRINIDAD');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1071,'440','85','VILLANUEVA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1072,'001','86','MOCOA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1073,'219','86','COLON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1074,'320','86','ORITO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1075,'568','86','PUERTO ASIS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1076,'569','86','PUERTO CAICEDO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1077,'571','86','PUERTO GUZMAN');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1078,'573','86','LEGUIZAMO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1079,'749','86','SIBUNDOY');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1080,'755','86','SAN FRANCISCO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1081,'757','86','SAN MIGUEL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1082,'760','86','SANTIAGO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1083,'865','86','VALLE DEL GUAMUEZ');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1084,'885','86','VILLAGARZON');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1085,'001','88','SAN ANDRES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1086,'564','88','PROVIDENCIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1087,'001','91','LETICIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1088,'263','91','EL ENCANTO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1089,'405','91','LA CHORRERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1090,'407','91','LA PEDRERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1091,'430','91','LA VICTORIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1092,'460','91','MIRITI - PARANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1093,'530','91','PUERTO ALEGRIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1094,'536','91','PUERTO ARICA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1095,'540','91','PUERTO NARIÑO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1096,'669','91','PUERTO SANTANDER');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1097,'798','91','TARAPACA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1098,'001','94','INIRIDA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1099,'343','94','BARRANCO MINAS');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1100,'663','94','MAPIRIPANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1101,'883','94','SAN FELIPE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1102,'884','94','PUERTO COLOMBIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1103,'885','94','LA GUADALUPE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1104,'886','94','CACAHUAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1105,'887','94','PANA PANA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1106,'888','94','MORICHAL');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1107,'001','95','SAN JOSE DEL GUAVIARE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1108,'015','95','CALAMAR');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1109,'025','95','EL RETORNO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1110,'200','95','MIRAFLORES');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1111,'001','97','MITU');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1112,'161','97','CARURU');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1113,'511','97','PACOA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1114,'666','97','TARAIRA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1115,'777','97','PAPUNAUA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1116,'889','97','YAVARATE');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1117,'001','99','PUERTO CARREÑO');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1118,'524','99','LA PRIMAVERA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1119,'624','99','SANTA ROSALIA');
INSERT INTO tb_ciudades (ciudad_id, ciudad_cod, departamento_cod, ciudad) VALUES(1120,'773','99','CUMARIBO');


-- Ejemplo de una consulta que obtiene la ciudad correspondiente

SELECT ciudad FROM tb_ciudades WHERE departamento_cod IN (SELECT departamento_cod FROM tb_departamentos  WHERE departamento = 'META' );



---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------

CREATE TABLE tb_roles(
	rol_id INT(3) NOT NULL AUTO_INCREMENT,
	rol_nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY(rol_id)
);

INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(1,'Administrador general');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(2,'Coordinador Estudiantes');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(3,'Coordinador Bienestar');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(4,'Estudiante');
INSERT INTO tb_roles(rol_id, rol_nombre) VALUES(5,'Soporte');


---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_permisos(
	permiso_id INT(3) NOT NULL AUTO_INCREMENT,
	rol_id INT(3) NOT NULL,
	INDEX rol_ind (rol_id),
	FOREIGN KEY(rol_id) REFERENCES tb_roles(rol_id) ON DELETE CASCADE,
	permiso_nombre VARCHAR(50)NOT NULL,
	PRIMARY KEY(permiso_id)
);

INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(1,1,'Administrar DB');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(2,1,'Agregar Periodos Académicos');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(3,1,'Agregar Facultades');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(4,1,'Agregar Programas Académicos');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(5,1,'Agregar Usuarios');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(6,1,'Asignar Permisos');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(7,2,'Agregar Estudiantes');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(8,3,'Generar Reportes');
INSERT INTO tb_permisos(permiso_id, rol_id, permiso_nombre) VALUES(9,4,'Llenar Encuestas');



---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_roles_permisos(
	roles_permisos_id INT(10) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(roles_permisos_id),
	rol_id INT(3) NOT NULL,
	INDEX rol_ind (rol_id),
	FOREIGN KEY(rol_id) REFERENCES tb_roles(rol_id) ON DELETE CASCADE,
	permiso_id INT(3) NOT NULL,
	INDEX permiso_ind (permiso_id),
	FOREIGN KEY(permiso_id) REFERENCES tb_permisos(permiso_id) ON DELETE CASCADE
);




---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_periodos(
	periodo_id INT NOT NULL AUTO_INCREMENT,
	agno INT(4) NOT NULL,
	semestre INT(1)NOT NULL,
	periodo VARCHAR(20) NOT NULL,
	PRIMARY KEY(periodo_id)
);

INSERT INTO tb_periodos(periodo_id, agno, semestre, periodo) VALUES(1,2016,1,'2016-1');
INSERT INTO tb_periodos(periodo_id, agno, semestre, periodo) VALUES(2,2016,2,'2016-2');
INSERT INTO tb_periodos(periodo_id, agno, semestre, periodo) VALUES(3,2017,1,'2017-a');
INSERT INTO tb_periodos(periodo_id, agno, semestre, periodo) VALUES(4,2017,2,'2017-b');
INSERT INTO tb_periodos(periodo_id, agno, semestre, periodo) VALUES(5,2018,1,'201810');
INSERT INTO tb_periodos(periodo_id, agno, semestre, periodo) VALUES(6,2018,2,'201820');


SELECT periodo_id FROM tb_periodos WHERE periodo ='201820';


DROP TABLE tb_programas;

DROP TABLE tb_facultades;

DROP TABLE tb_sedes;

DROP TABLE tb_rectorias;




---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_rectorias(
	rectoria_id INT(3) NOT NULL AUTO_INCREMENT,
	rectoria VARCHAR(50) NOT NULL,
	PRIMARY KEY(rectoria_id)
);
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(1,'Antioquia Y Eje Cafetero');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(2,'Sede Principal');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(3,'Sede Principal Virtual y a Distancia');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(4,'Bogotá Sur');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(5,'Cundinamarca');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(6,'Nariño');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(7,'Neiva');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(8,'Villavicencio');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(9,'Norte de Santander');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(11,'Bucaramanga');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(12,'Ibagué');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(13,'Cali');
INSERT INTO tb_rectorias(rectoria_id, rectoria) VALUES(14,'Atlántico');

INSERT INTO `tb_rectorias` (`rectoria_id`, `rectoria`) VALUES
(1, 'Antioquia Y Eje Cafetero'),
(2, 'Sede Principal'),
(3, 'Sede Principal Virtual y a Distancia'),
(4, 'Bogotá Sur'),
(5, 'Cundinamarca'),
(6, 'Nariño'),
(7, 'Neiva'),
(8, 'Villavicencio'),
(9, 'Norte de Santander'),
(11, 'Bucaramanga'),
(12, 'Ibagué'),
(13, 'Cali'),
(14, 'Atlántico');




---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_sedes(
	sede_id INT(3) NOT NULL AUTO_INCREMENT,
	rectoria_id INT(3) NOT NULL,
	INDEX rectoria_ind (rectoria_id),
	FOREIGN KEY(rectoria_id) REFERENCES tb_rectorias(rectoria_id) ON DELETE CASCADE,
	sede VARCHAR(50) NOT NULL,
	PRIMARY KEY(sede_id)
);

INSERT INTO tb_sedes(sede_id, rectoria_id, sede) VALUES(1,8,'Sede Principal - Administrativa');
INSERT INTO tb_sedes(sede_id, rectoria_id, sede) VALUES(2,8,'Mitú');
INSERT INTO tb_sedes(sede_id, rectoria_id, sede) VALUES(3,8,'Puerto Carreño Vichada');
INSERT INTO tb_sedes(sede_id, rectoria_id, sede) VALUES(4,8,'Orocué');

SELECT sede FROM tb_sedes WHERE rectoria_id IN (SELECT rectoria_id FROM tb_rectorias WHERE rectoria_id = 8);
SELECT sede FROM tb_sedes WHERE rectoria_id IN (SELECT rectoria_id FROM tb_rectorias WHERE rectoria = 'Villavicencio');



---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_facultades(
	facultad_id INT(3) NOT NULL AUTO_INCREMENT,
	sede_id INT(3) NOT NULL,
	INDEX sede_ind (sede_id),
	FOREIGN KEY(sede_id) REFERENCES tb_sedes(sede_id) ON DELETE CASCADE,
	facultad VARCHAR(50) NOT NULL,
	PRIMARY KEY(facultad_id)
);

INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(1,1,'Ingeniería Y Ciencias Básicas');
INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(2,1,'Administración');
INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(3,1,'Psicología');
INSERT INTO tb_facultades(facultad_id, sede_id, facultad)VALUES(4,1,'Comunicación');


SELECT facultad FROM tb_facultades WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede_id = 1);
SELECT facultad FROM tb_facultades WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa');

SELECT facultad FROM tb_facultades WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa');


---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_programas(
	programa_id INT(3) NOT NULL AUTO_INCREMENT,
	facultad_id INT(3) NOT NULL,
	INDEX facultad_ind (facultad_id),
	FOREIGN KEY(facultad_id) REFERENCES tb_facultades(facultad_id) ON DELETE CASCADE,
	programa VARCHAR(50) NOT NULL,
	PRIMARY KEY(programa_id)
);

INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(1,1,'Tecnología en Desarrollo de Software');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(2,1,'Redes de Computadoras');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(3,1,'Tecnología en Informática');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(4,1,'Ingeniría Ambiental');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(5,2,'Administración de empresas');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(6,3,'Psicología');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(7,3,'Pedagogía Infantil');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(8,4,'Cominicación Social');
INSERT INTO tb_programas (programa_id, facultad_id, programa) VALUES(9,4,'Cominicación Gráfica');

---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_usuarios(
	usuario_id INT(3) NOT NULL AUTO_INCREMENT,
	usuario VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL,
	sede_id INT(3) NOT NULL,
	INDEX sede_ind2 (sede_id),
	FOREIGN KEY(sede_id) REFERENCES tb_sedes(sede_id) ON DELETE CASCADE,
	rol_id INT(3) NOT NULL,
	INDEX rol_ind2 (rol_id),
	FOREIGN KEY(rol_id) REFERENCES tb_roles(rol_id) ON DELETE CASCADE,
	PRIMARY KEY (usuario_id)
);




INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id, rol_id) VALUES (1,'martha.jaime@uniminuto.edu','1234567',1,1);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id, rol_id) VALUES (2,'bnovoasalaz@uniminuto.edu.co','1234567',1,1);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id, rol_id) VALUES (3,'jchave13@uniminuto.edu.co','1234567',1,1);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id, rol_id) VALUES (4,'dgarcia6@uniminuto.edu.co','1234567',1,1);
INSERT INTO tb_usuarios (usuario_id, usuario, password, sede_id, rol_id) VALUES (5,'magutierrezc.admin@uniminuto.edu.co','1234567',1,1);


--CONSULTAS RELACIONADAS A LA TABLA: tb_usuarios

SELECT rol_id FROM tb_usuarios WHERE usuario ='bnovoa.linux@gmail.com' AND password = '1234567' AND sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa');
SELECT rol_id FROM tb_usuarios WHERE usuario ='"+usuario+"' AND password = '"+password+"' AND sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = '"+sede+"');
SELECT rol_id FROM tb_usuarios WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = '"+Sede Principal - Administrativa+"');
SELECT rol_id FROM tb_usuarios WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa');
--CONSULTA REALIZADA POR EL USUARIO PARA EL INICI DE SESIÓN
SELECT usuario, password FROM tb_usuarios WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = '"+Sede Principal - Administrativa+"');
SELECT usuario, password FROM tb_usuarios WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = '"+Sede Principal - Administrativa+"');
SELECT facultad FROM tb_facultades WHERE sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa');





DROP TABLE tb_estudiantes IF EXIST;
---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_estudiantes(
	estudiante_id INT(11) NOT NULL AUTO_INCREMENT,
	programa_id INT(3) NOT NULL,
	INDEX programa_ind(programa_id),
	FOREIGN KEY(programa_id) REFERENCES tb_programas(programa_id) ON DELETE CASCADE,
	periodo_id INT(3) NOT NULL,
	INDEX periodo_ind(periodo_id),
	FOREIGN KEY(periodo_id) REFERENCES tb_periodos(periodo_id) ON DELETE CASCADE,
	estudiante VARCHAR(20) NOT NULL UNIQUE,
	rol_id INT(3) NOT NULL,
	INDEX rol_ind3 (rol_id),
	FOREIGN KEY(rol_id) REFERENCES tb_roles(rol_id) ON DELETE CASCADE,
	PRIMARY KEY(estudiante_id)
);

INSERT INTO tb_estudiantes (programa_id, periodo_id, rol_id, estudiante) VALUES
(1, 6, '000324471',4);
(1, 6, '000121312',4);



--CONSULTA QUE SE REALIZA PARA LA INSERCIÓN DE ESTUDIANTES CON SU  RESPECTIVO
-- PROGRAMA, PERIODO, ROL Y ID DEL ESTUSIANTE
INSERT INTO tb_estudiantes (programa_id, periodo_id, rol_id, estudiante) VALUES((SELECT programa_id FROM tb_programas WHERE programa= 'Tecnología en Desarrollo de Software'),(SELECT periodo_id FROM tb_periodos WHERE periodo ='2016-1'),4,'000324471');

SELECT rol_id FROM tb_usuarios WHERE usuario ='bnovoa.linux@gmail.com' AND password = '1234567' AND sede_id IN (SELECT sede_id FROM tb_sedes WHERE sede = 'Sede Principal - Administrativa');



---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA tb_encuestas
--
-- Descripción: Se utiliza para almacenar las diferentes encuestas 
-- necesarias para el proceso de caractyerización de los estudiantes
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------

CREATE TABLE tb_encuestas(
encuesta_id int(11) NOT NULL AUTO_INCREMENT,
encuesta VARCHAR(50) NOT NULL,
descripcion VARCHAR(50) NOT NULL,
PRIMARY KEY(encuesta_id)
);

INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('DATOS GENERALES','Información de registro del estudiante');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('DATOS BÁSICOS','Información personal del estudiante');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('SECTOR SALUD','Información del sector Salud');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('SECTOR VIVIENDA','Información del sector Vivienda');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('CONTACTO','Información del sector Contacto');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('SECTOR SOCIOECONOMICO','Información del sector Socioeconómico');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('REDES DE APOYO','Información de las Redes de Apoyo');
INSERT INTO tb_encuestas (encuesta, descripcion) VALUES ('SECTOR FAMILIAR','Información del sector Familiar');


---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA tb_tipo_preguntas
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_tipo_preguntas(
tipo_pregunta_id INT(11) NOT NULL AUTO_INCREMENT,
tipo_pregunta VARCHAR(45)NOT NULL,
tipo_preg_desc VARCHAR(200)NOT NULL,
PRIMARY KEY(tipo_pregunta_id)
);
---------------------------------------------------------------------
-- ESTRUCTURA BASE DE LA CONSULTA QUE INSERTA UNA PREGUNTA
-- Y SU DESCRIPCIÓN
-- INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('', '');
---------------------------------------------------------------------
INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('ARCHIVO', 'Este dato se obtiene de un archivo .CSV que contenga la información.');
INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('TEXTO', 'Sirve para almacenar cualquier tipo de dato en formato de texto. se recomienda para almacenar cifras numéricas que no requieren ningún tipo de operaciónes matemáticas.');
INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('DESPLEGABLE', 'Permite al estudiante seleccionar una sola opción posible de una lista desplegable.');
INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('MULTIPLE', 'Se usa para permitir al estudiante seleccionar varias posibles respuestas para una misma pregunta.');
INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('NUMERO', 'Se usa para almacenar valores numéricos solo en caso de ser requeridos para realizar operaciones matemáticas.');
INSERT INTO tb_tipo_preguntas(tipo_pregunta, tipo_preg_desc) VALUES('RANGO', 'Se usa para guardar valores entre un rango preestablecidos.');

---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_preguntas(
pregunta_id INT(11) NOT NULL AUTO_INCREMENT,
encuesta_id INT(11) NOT NULL,
INDEX encuesta_ind1 (encuesta_id),
FOREIGN KEY (encuesta_id) REFERENCES tb_encuestas(encuesta_id) ON DELETE CASCADE,
tipo_pregunta_id INT(11) NOT NULL,
INDEX tipo_pregunta_ind1 (tipo_pregunta_id),
FOREIGN KEY (tipo_pregunta_id) REFERENCES tb_tipo_preguntas(tipo_pregunta_id) ON DELETE CASCADE,
pregunta VARCHAR(45),
PRIMARY KEY(pregunta_id)
);




ALTER TABLE tb_preguntas ADD INDEX(encuesta_id);
ALTER TABLE tb_preguntas ADD FOREIGN KEY (encuesta_id) REFERENCES tb_encuestas(id) ON DELETE RESTRICT ON UPDATE RESTRICT ;

ALTER TABLE tb_preguntas ADD COLUMN tipo_pregunta_id INT(11) NOT NULL AFTER encuesta_id;
ALTER TABLE tb_preguntas ADD INDEX(tipo_pregunta_id);
ALTER TABLE tb_preguntas ADD FOREIGN KEY (tipo_pregunta_id) REFERENCES tb_tipo_preguntas(tipo_pregunta_id) ON DELETE CASCADE ON UPDATE CASCADE ;


--
--
--  Preguntas de la encuesta:
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS GENERALES'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'SEDE');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS GENERALES'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'Número de Documento de Identidad (solo el número)');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS GENERALES'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'Programa al que pertenece');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS GENERALES'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Si selecciono otro por favor Explique');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS GENERALES'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='ARCHIVO'), 'Modalidad de estudio');
--  Preguntas de la encuesta:
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Nombres');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Apellidos');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Departamento de Nacimiento');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Lugar de Nacimiento');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Sexo');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Edad');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='DATOS BÁSICOS'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Tipo de sangre');
--  Preguntas de la encuesta:
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), '¿Pertenece a SISBEN?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), '¿Está afiliado a EPS?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), '¿Presenta algún  problema de salud o enfermedad crónica?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Pertenece usted a alguna de las siguientes poblaciones especiales');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Manifiesta algún tipo de dificultad que pueda afectar su vida académica universitaria?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Si consume bebidas alcohólica, por favor indique la frecuencia');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SALUD'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Si fuma por favor indique la frecuencia');
--  Preguntas de la encuesta:
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Su vivienda es');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), '¿Vive en sector rural o urbano?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Estrato Socioeconómico');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Lugar de Vivienda');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Ciudad');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Localidad');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Barrio');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR VIVIENDA'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Dirección de residencia');
--  Preguntas de la encuesta:
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='CONTACTO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Teléfono fijo');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='CONTACTO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Teléfono celular');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='CONTACTO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Correo electrónico');
--  Preguntas de la encuesta:
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Medios de pago de la matrícula:');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), '¿Quién paga la matrícula?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), '¿Actualmente se encuentra laborando?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Sector al que pertenece su trabajo');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'trabaja como idependiente o empleado');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Ingreso mensual suyo');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR SOCIOECONOMICO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Ingreso mensual de su familia');
--  Preguntas de la encuesta:
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Usted vive actualmente con');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Estado civil');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Número de hermanos');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), '¿Qué lugar ocupa entre los hermanos?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Se encuentra en estado de embarazo?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'En qué mes de embarazo se encuentra.');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='REDES DE APOYO'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), '¿Sus padres comparten vivienda con sus abuelos?');
--  Preguntas de la encuesta:
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR FAMILIAR'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), '¿Tiene hijos?');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR FAMILIAR'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Es madre cabeza de familia');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR FAMILIAR'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Número de hijos');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR FAMILIAR'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Edad de los hijos');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR FAMILIAR'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Escolaridad del padre');
INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES((SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='SECTOR FAMILIAR'), (SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta ='TEXTO'), 'Escolaridad de la madre');



-- INSTRUCCIÓN QUE SETEA EL NUMERO SIGUIENTE DE SU ID INCREMENTAL

ALTER TABLE `tb_encuestas` AUTO_INCREMENT =7;



SELECT pregunta, tipo_pregunta FROM tb_preguntas AS P, tb_tipo_preguntas AS TP WHERE encuesta_id IN(
	SELECT encuesta_id FROM tb_encuestas WHERE encuesta='DATOS GENERALES'
	)AND
	TP.tipo_pregunta_id=P.tipo_pregunta_id
;

SELECT pregunta, tipo_pregunta FROM tb_preguntas AS P, tb_tipo_preguntas AS TP WHERE encuesta_id IN(
	SELECT encuesta_id FROM tb_encuestas WHERE encuesta='SECTOR FAMILIAR'
	)AND
	TP.tipo_pregunta_id=P.tipo_pregunta_id
;





INSERT INTO tb_preguntas (encuesta_id, tipo_pregunta_id, pregunta) VALUES(
	(SELECT encuesta_id FROM tb_encuestas WHERE encuesta ='encuesta'),
	(SELECT tipo_pregunta_id FROM tb_tipo_preguntas WHERE tipo_pregunta = 'tipoPregunta'),
	'pregunta'
	)
;













---------------------------------------------------------------------
-- CREACIÓN DE LA TABLA 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE TABLE tb_respuestas(
	respuesta_id INT(11) NOT NULL AUTO_INCREMENT;
	encuesta_id INT(11) NOT NULL,
	pregunta_id INT(11) NOT NULL,
	estudiante_id INT(11) NOT NULL,
	respuesta VARCHAR(50),
	PRIMARY KEY(respuesta_id)
);



CREATE TABLE tb_();
CREATE TABLE tb_();




---------------------------------------------------------------------
------------------- INICIO DE LOS PROCEDIMIENTOS --------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
-- CREACIÓN DEL PROCEDIMIENTO 
--
-- Descripción: Se utiliza para almacenar
-- 
-- Responsable: Brayan Novoa. ID: 000344471
---------------------------------------------------------------------
CREATE PROCEDURE proc_sacar_estudiantes (IN id_estudiante INT)
 BEGIN
 SELECT * FROM tb_estudiantes WHERE tipo = tipoCliente;
END

CREATE PROCEDURE proc_sacar_encuesta (IN encuesta INT)
 BEGIN
 SELECT * FROM tb_encuestas WHERE id = encuesta
END

CALL proc_sacar_clientes_tipo(1);


DELIMITER $$
DROP PROCEDURE IF EXIST proc_sacar_encuesta$$
CREATE PROCEDURE proc_sacar_encuesta (IN encuesta INT(11))
BEGIN
/*DECLARE nombre varchar(45)*/
SELECT * FROM tb_encuestas WHERE encuesta = id;
END $$
DELIMITER ;

CALL proc_sacar_encuesta(1);

---- FIN DE LOS PROCEDIMIENTOS



------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
-------------------------INICIO DE LAS CONSULTAS DEL ESTUDIANTE---------------------
------------------------------------------------------------------------------------





-- OBTENE EL NÚMERO DE PREGUNTAS QUE TIENE UNA ENCUESTA POR EL ID DE LA MISMA
SELECT COUNT(id) FROM tb_preguntas WHERE encuesta_id = 1;
-- OBTIENE LA LISTA DE PREGUNTAS DE UNA ENCUESTA POR SU ID
SELECT pregunta FROM tb_preguntas WHERE encuesta_id = 1;

SELECT encuesta_id FROM tb_preguntas GROUP BY encuesta_id;







