-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 30, 2018 at 10:23 AM
-- Server version: 5.5.60-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_caracterizacion`
--
CREATE DATABASE IF NOT EXISTS `db_caracterizacion` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_caracterizacion`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_sacar_encuesta`(IN encuesta INT(11))
BEGIN

SELECT * FROM tb_encuestas WHERE encuesta = id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `repo_estudiantes`
--

CREATE TABLE IF NOT EXISTS `repo_estudiantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellido1` varchar(45) DEFAULT NULL,
  `apellido2` varchar(45) DEFAULT NULL,
  `sede` varchar(45) DEFAULT NULL,
  `programa` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=331128 ;

--
-- Dumping data for table `repo_estudiantes`
--

INSERT INTO `repo_estudiantes` (`id`, `nombres`, `apellido1`, `apellido2`, `sede`, `programa`, `correo`) VALUES
(123456, 'Derly Carolina', 'Campos', 'Lopez', 'Llanos', 'Tecnología en Desarrollo de Software', 'dcamposlope@uniminuto.edu.co'),
(146623, 'Shirley Julieth', 'Suarez', 'Sanchez', 'Llanos', 'Lic. en Ciencias Naturales', 'shijusu@uniminuto.edu.co'),
(268779, 'Yolima Solange', 'Pachon', 'Acuña', 'Llanos', 'Psicología', 'yosopa@uniminuto.edu.co'),
(322255, 'Lorena', 'Zapata', 'Castro', 'Llanos', 'Comunicación Social Y Periodismo', 'lorzaca@uniminuto.edu.co'),
(324471, 'Brayan Mauricio', 'Novoa', 'Salazar', 'Llanos', 'Tecnología en Desarrollo de Software', 'bnovoasalaz@uniminuto.edu.co'),
(331127, 'Jonathan Adolfo', 'Martinez', 'Leon', 'Llanos', 'Administración de Empresas', 'jadolfo@uniminuto.edu.co');

-- --------------------------------------------------------

--
-- Table structure for table `repo_gestantes`
--

CREATE TABLE IF NOT EXISTS `repo_gestantes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellido1` varchar(45) DEFAULT NULL,
  `edad` int(2) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `sede` varchar(45) DEFAULT NULL,
  `programa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `repo_gestantes`
--

INSERT INTO `repo_gestantes` (`id`, `nombres`, `apellido1`, `edad`, `telefono`, `sede`, `programa`) VALUES
(198453, 'Ruth Angélica', 'Barreto', 23, '3143224565', 'Llanos', 'Psicología'),
(233223, 'Laura Alejandra', 'Moreno', 19, '3230097863', 'Llanos', 'Comunicación Social y Periodismo'),
(332455, 'Paola Andrea', 'Dorado', 21, '3123647823', 'Llanos', 'Comunicación Gráfica'),
(342565, 'María del Pilar', 'Fajardo', 18, '3108799856', 'Llanos', 'Administración Financiera'),
(345523, 'Liz Johana', 'Vargas', 24, '3193372198', 'Llanos', 'Psicología'),
(764573, 'Angie Tatiana', 'Bello', 22, '3133442345', 'Llanos', 'Pedagogía');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ciudades`
--

CREATE TABLE IF NOT EXISTS `tb_ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `id_departamento` varchar(3) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `cod_ciudad` int(11) NOT NULL,
  PRIMARY KEY (`id_ciudad`,`id_departamento`),
  KEY `fk_tb_ciudades_tb_departamentos1_idx` (`id_departamento`),
  KEY `id_ciudad` (`id_ciudad`),
  KEY `id_ciudad_2` (`id_ciudad`),
  KEY `id_ciudad_3` (`id_ciudad`),
  KEY `cod_ciudad` (`cod_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_ciudades`
--

INSERT INTO `tb_ciudades` (`id_ciudad`, `id_departamento`, `nombre`, `cod_ciudad`) VALUES
(1, '5', 'MEDELLIN', 1),
(2, '5', 'ABEJORRAL', 2),
(3, '5', 'ABRIAQUI', 4),
(4, '5', 'ALEJANDRIA', 21),
(5, '5', 'AMAGA', 30),
(6, '5', 'AMALFI', 31),
(7, '5', 'ANDES', 34),
(8, '5', 'ANGELOPOLIS', 36),
(9, '5', 'ANGOSTURA', 38),
(10, '5', 'ANORI', 40),
(11, '5', 'SANTAFE DE ANTIOQUIA', 42),
(12, '5', 'ANZA', 44),
(13, '5', 'APARTADO', 45),
(14, '5', 'ARBOLETES', 51),
(15, '5', 'ARGELIA', 55),
(16, '5', 'ARMENIA', 59),
(17, '5', 'BARBOSA', 79),
(18, '5', 'BELMIRA', 86),
(19, '5', 'BELLO', 88),
(20, '5', 'BETANIA', 91),
(21, '5', 'BETULIA', 93),
(22, '5', 'CIUDAD BOLIVAR', 101),
(23, '5', 'BRICEÑO', 107),
(24, '5', 'BURITICA', 113),
(25, '5', 'CACERES', 120),
(26, '5', 'CAICEDO', 125),
(27, '5', 'CALDAS', 129),
(28, '5', 'CAMPAMENTO', 134),
(29, '5', 'CAÑASGORDAS', 138),
(30, '5', 'CARACOLI', 142),
(31, '5', 'CARAMANTA', 145),
(32, '5', 'CAREPA', 147),
(33, '5', 'EL CARMEN DE VIBORAL', 148),
(34, '5', 'CAROLINA', 150),
(35, '5', 'CAUCASIA', 154),
(36, '5', 'CHIGORODO', 172),
(37, '5', 'CISNEROS', 190),
(38, '5', 'COCORNA', 197),
(39, '5', 'CONCEPCION', 206),
(40, '5', 'CONCORDIA', 209),
(41, '5', 'COPACABANA', 212),
(42, '5', 'DABEIBA', 234),
(43, '5', 'DON MATIAS', 237),
(44, '5', 'EBEJICO', 240),
(45, '5', 'EL BAGRE', 250),
(46, '5', 'ENTRERRIOS', 264),
(47, '5', 'ENVIGADO', 266),
(48, '5', 'FREDONIA', 282),
(49, '5', 'FRONTINO', 284),
(50, '5', 'GIRALDO', 306),
(51, '5', 'GIRARDOTA', 308),
(52, '5', 'GOMEZ PLATA', 310),
(53, '5', 'GRANADA', 313),
(54, '5', 'GUADALUPE', 315),
(55, '5', 'GUARNE', 318),
(56, '5', 'GUATAPE', 321),
(57, '5', 'HELICONIA', 347),
(58, '5', 'HISPANIA', 353),
(59, '5', 'ITAGUI', 360),
(60, '5', 'ITUANGO', 361),
(61, '5', 'JARDIN', 364),
(62, '5', 'JERICO', 368),
(63, '5', 'LA CEJA', 376),
(64, '5', 'LA ESTRELLA', 380),
(65, '5', 'LA PINTADA', 390),
(66, '5', 'LA UNION', 400),
(67, '5', 'LIBORINA', 411),
(68, '5', 'MACEO', 425),
(69, '5', 'MARINILLA', 440),
(70, '5', 'MONTEBELLO', 467),
(71, '5', 'MURINDO', 475),
(72, '5', 'MUTATA', 480),
(73, '5', 'NARIÑO', 483),
(74, '5', 'NECOCLI', 490),
(75, '5', 'NECHI', 495),
(76, '5', 'OLAYA', 501),
(77, '5', 'PEÐOL', 541),
(78, '5', 'PEQUE', 543),
(79, '5', 'PUEBLORRICO', 576),
(80, '5', 'PUERTO BERRIO', 579),
(81, '5', 'PUERTO NARE', 585),
(82, '5', 'PUERTO TRIUNFO', 591),
(83, '5', 'REMEDIOS', 604),
(84, '5', 'RETIRO', 607),
(85, '5', 'RIONEGRO', 615),
(86, '5', 'SABANALARGA', 628),
(87, '5', 'SABANETA', 631),
(88, '5', 'SALGAR', 642),
(89, '5', 'SAN ANDRES DE CUERQUIA', 647),
(90, '5', 'SAN CARLOS', 649),
(91, '5', 'SAN FRANCISCO', 652),
(92, '5', 'SAN JERONIMO', 656),
(93, '5', 'SAN JOSE DE LA MONTAÑA', 658),
(94, '5', 'SAN JUAN DE URABA', 659),
(95, '5', 'SAN LUIS', 660),
(96, '5', 'SAN PEDRO', 664),
(97, '5', 'SAN PEDRO DE URABA', 665),
(98, '5', 'SAN RAFAEL', 667),
(99, '5', 'SAN ROQUE', 670),
(100, '5', 'SAN VICENTE', 674),
(101, '5', 'SANTA BARBARA', 679),
(102, '5', 'SANTA ROSA DE OSOS', 686),
(103, '5', 'SANTO DOMINGO', 690),
(104, '5', 'EL SANTUARIO', 697),
(105, '5', 'SEGOVIA', 736),
(106, '5', 'SONSON', 756),
(107, '5', 'SOPETRAN', 761),
(108, '5', 'TAMESIS', 789),
(109, '5', 'TARAZA', 790),
(110, '5', 'TARSO', 792),
(111, '5', 'TITIRIBI', 809),
(112, '5', 'TOLEDO', 819),
(113, '5', 'TURBO', 837),
(114, '5', 'URAMITA', 842),
(115, '5', 'URRAO', 847),
(116, '5', 'VALDIVIA', 854),
(117, '5', 'VALPARAISO', 856),
(118, '5', 'VEGACHI', 858),
(119, '5', 'VENECIA', 861),
(120, '5', 'VIGIA DEL FUERTE', 873),
(121, '5', 'YALI', 885),
(122, '5', 'YARUMAL', 887),
(123, '5', 'YOLOMBO', 890),
(124, '5', 'YONDO', 893),
(125, '5', 'ZARAGOZA', 895),
(126, '8', 'BARRANQUILLA', 1),
(127, '8', 'BARANOA', 78),
(128, '8', 'CAMPO DE LA CRUZ', 137),
(129, '8', 'CANDELARIA', 141),
(130, '8', 'GALAPA', 296),
(131, '8', 'JUAN DE ACOSTA', 372),
(132, '8', 'LURUACO', 421),
(133, '8', 'MALAMBO', 433),
(134, '8', 'MANATI', 436),
(135, '8', 'PALMAR DE VARELA', 520),
(136, '8', 'PIOJO', 549),
(137, '8', 'POLONUEVO', 558),
(138, '8', 'PONEDERA', 560),
(139, '8', 'PUERTO COLOMBIA', 573),
(140, '8', 'REPELON', 606),
(141, '8', 'SABANAGRANDE', 634),
(142, '8', 'SABANALARGA', 638),
(143, '8', 'SANTA LUCIA', 675),
(144, '8', 'SANTO TOMAS', 685),
(145, '8', 'SOLEDAD', 758),
(146, '8', 'SUAN', 770),
(147, '8', 'TUBARA', 832),
(148, '8', 'USIACURI', 849),
(149, '11', 'BOGOTA, D.C.', 1),
(150, '13', 'CARTAGENA', 1),
(151, '13', 'ACHI', 6),
(152, '13', 'ALTOS DEL ROSARIO', 30),
(153, '13', 'ARENAL', 42),
(154, '13', 'ARJONA', 52),
(155, '13', 'ARROYOHONDO', 62),
(156, '13', 'BARRANCO DE LOBA', 74),
(157, '13', 'CALAMAR', 140),
(158, '13', 'CANTAGALLO', 160),
(159, '13', 'CICUCO', 188),
(160, '13', 'CORDOBA', 212),
(161, '13', 'CLEMENCIA', 222),
(162, '13', 'EL CARMEN DE BOLIVAR', 244),
(163, '13', 'EL GUAMO', 248),
(164, '13', 'EL PEÑON', 268),
(165, '13', 'HATILLO DE LOBA', 300),
(166, '13', 'MAGANGUE', 430),
(167, '13', 'MAHATES', 433),
(168, '13', 'MARGARITA', 440),
(169, '13', 'MARIA LA BAJA', 442),
(170, '13', 'MONTECRISTO', 458),
(171, '13', 'MOMPOS', 468),
(172, '13', 'NOROSI', 490),
(173, '13', 'MORALES', 473),
(174, '13', 'PINILLOS', 549),
(175, '13', 'REGIDOR', 580),
(176, '13', 'RIO VIEJO', 600),
(177, '13', 'SAN CRISTOBAL', 620),
(178, '13', 'SAN ESTANISLAO', 647),
(179, '13', 'SAN FERNANDO', 650),
(180, '13', 'SAN JACINTO', 654),
(181, '13', 'SAN JACINTO DEL CAUCA', 655),
(182, '13', 'SAN JUAN NEPOMUCENO', 657),
(183, '13', 'SAN MARTIN DE LOBA', 667),
(184, '13', 'SAN PABLO', 670),
(185, '13', 'SANTA CATALINA', 673),
(186, '13', 'SANTA ROSA', 683),
(187, '13', 'SANTA ROSA DEL SUR', 688),
(188, '13', 'SIMITI', 744),
(189, '13', 'SOPLAVIENTO', 760),
(190, '13', 'TALAIGUA NUEVO', 780),
(191, '13', 'TIQUISIO', 810),
(192, '13', 'TURBACO', 836),
(193, '13', 'TURBANA', 838),
(194, '13', 'VILLANUEVA', 873),
(195, '13', 'ZAMBRANO', 894),
(196, '15', 'TUNJA', 1),
(197, '15', 'ALMEIDA', 22),
(198, '15', 'AQUITANIA', 47),
(199, '15', 'ARCABUCO', 51),
(200, '15', 'BELEN', 87),
(201, '15', 'BERBEO', 90),
(202, '15', 'BETEITIVA', 92),
(203, '15', 'BOAVITA', 97),
(204, '15', 'BOYACA', 104),
(205, '15', 'BRICEÑO', 106),
(206, '15', 'BUENAVISTA', 109),
(207, '15', 'BUSBANZA', 114),
(208, '15', 'CALDAS', 131),
(209, '15', 'CAMPOHERMOSO', 135),
(210, '15', 'CERINZA', 162),
(211, '15', 'CHINAVITA', 172),
(212, '15', 'CHIQUINQUIRA', 176),
(213, '15', 'CHISCAS', 180),
(214, '15', 'CHITA', 183),
(215, '15', 'CHITARAQUE', 185),
(216, '15', 'CHIVATA', 187),
(217, '15', 'CIENEGA', 189),
(218, '15', 'COMBITA', 204),
(219, '15', 'COPER', 212),
(220, '15', 'CORRALES', 215),
(221, '15', 'COVARACHIA', 218),
(222, '15', 'CUBARA', 223),
(223, '15', 'CUCAITA', 224),
(224, '15', 'CUITIVA', 226),
(225, '15', 'CHIQUIZA', 232),
(226, '15', 'CHIVOR', 236),
(227, '15', 'DUITAMA', 238),
(228, '15', 'EL COCUY', 244),
(229, '15', 'EL ESPINO', 248),
(230, '15', 'FIRAVITOBA', 272),
(231, '15', 'FLORESTA', 276),
(232, '15', 'GACHANTIVA', 293),
(233, '15', 'GAMEZA', 296),
(234, '15', 'GARAGOA', 299),
(235, '15', 'GUACAMAYAS', 317),
(236, '15', 'GUATEQUE', 322),
(237, '15', 'GUAYATA', 325),
(238, '15', 'GsICAN', 332),
(239, '15', 'IZA', 362),
(240, '15', 'JENESANO', 367),
(241, '15', 'JERICO', 368),
(242, '15', 'LABRANZAGRANDE', 377),
(243, '15', 'LA CAPILLA', 380),
(244, '15', 'LA VICTORIA', 401),
(245, '15', 'LA UVITA', 403),
(246, '15', 'VILLA DE LEYVA', 407),
(247, '15', 'MACANAL', 425),
(248, '15', 'MARIPI', 442),
(249, '15', 'MIRAFLORES', 455),
(250, '15', 'MONGUA', 464),
(251, '15', 'MONGUI', 466),
(252, '15', 'MONIQUIRA', 469),
(253, '15', 'MOTAVITA', 476),
(254, '15', 'MUZO', 480),
(255, '15', 'NOBSA', 491),
(256, '15', 'NUEVO COLON', 494),
(257, '15', 'OICATA', 500),
(258, '15', 'OTANCHE', 507),
(259, '15', 'PACHAVITA', 511),
(260, '15', 'PAEZ', 514),
(261, '15', 'PAIPA', 516),
(262, '15', 'PAJARITO', 518),
(263, '15', 'PANQUEBA', 522),
(264, '15', 'PAUNA', 531),
(265, '15', 'PAYA', 533),
(266, '15', 'PAZ DE RIO', 537),
(267, '15', 'PESCA', 542),
(268, '15', 'PISBA', 550),
(269, '15', 'PUERTO BOYACA', 572),
(270, '15', 'QUIPAMA', 580),
(271, '15', 'RAMIRIQUI', 599),
(272, '15', 'RAQUIRA', 600),
(273, '15', 'RONDON', 621),
(274, '15', 'SABOYA', 632),
(275, '15', 'SACHICA', 638),
(276, '15', 'SAMACA', 646),
(277, '15', 'SAN EDUARDO', 660),
(278, '15', 'SAN JOSE DE PARE', 664),
(279, '15', 'SAN LUIS DE GACENO', 667),
(280, '15', 'SAN MATEO', 673),
(281, '15', 'SAN MIGUEL DE SEMA', 676),
(282, '15', 'SAN PABLO DE BORBUR', 681),
(283, '15', 'SANTANA', 686),
(284, '15', 'SANTA MARIA', 690),
(285, '15', 'SANTA ROSA DE VITERBO', 693),
(286, '15', 'SANTA SOFIA', 696),
(287, '15', 'SATIVANORTE', 720),
(288, '15', 'SATIVASUR', 723),
(289, '15', 'SIACHOQUE', 740),
(290, '15', 'SOATA', 753),
(291, '15', 'SOCOTA', 755),
(292, '15', 'SOCHA', 757),
(293, '15', 'SOGAMOSO', 759),
(294, '15', 'SOMONDOCO', 761),
(295, '15', 'SORA', 762),
(296, '15', 'SOTAQUIRA', 763),
(297, '15', 'SORACA', 764),
(298, '15', 'SUSACON', 774),
(299, '15', 'SUTAMARCHAN', 776),
(300, '15', 'SUTATENZA', 778),
(301, '15', 'TASCO', 790),
(302, '15', 'TENZA', 798),
(303, '15', 'TIBANA', 804),
(304, '15', 'TIBASOSA', 806),
(305, '15', 'TINJACA', 808),
(306, '15', 'TIPACOQUE', 810),
(307, '15', 'TOCA', 814),
(308, '15', 'TOGsI', 816),
(309, '15', 'TOPAGA', 820),
(310, '15', 'TOTA', 822),
(311, '15', 'TUNUNGUA', 832),
(312, '15', 'TURMEQUE', 835),
(313, '15', 'TUTA', 837),
(314, '15', 'TUTAZA', 839),
(315, '15', 'UMBITA', 842),
(316, '15', 'VENTAQUEMADA', 861),
(317, '15', 'VIRACACHA', 879),
(318, '15', 'ZETAQUIRA', 897),
(319, '17', 'MANIZALES', 1),
(320, '17', 'AGUADAS', 13),
(321, '17', 'ANSERMA', 42),
(322, '17', 'ARANZAZU', 50),
(323, '17', 'BELALCAZAR', 88),
(324, '17', 'CHINCHINA', 174),
(325, '17', 'FILADELFIA', 272),
(326, '17', 'LA DORADA', 380),
(327, '17', 'LA MERCED', 388),
(328, '17', 'MANZANARES', 433),
(329, '17', 'MARMATO', 442),
(330, '17', 'MARQUETALIA', 444),
(331, '17', 'MARULANDA', 446),
(332, '17', 'NEIRA', 486),
(333, '17', 'NORCASIA', 495),
(334, '17', 'PACORA', 513),
(335, '17', 'PALESTINA', 524),
(336, '17', 'PENSILVANIA', 541),
(337, '17', 'RIOSUCIO', 614),
(338, '17', 'RISARALDA', 616),
(339, '17', 'SALAMINA', 653),
(340, '17', 'SAMANA', 662),
(341, '17', 'SAN JOSE', 665),
(342, '17', 'SUPIA', 777),
(343, '17', 'VICTORIA', 867),
(344, '17', 'VILLAMARIA', 873),
(345, '17', 'VITERBO', 877),
(346, '18', 'FLORENCIA', 1),
(347, '18', 'ALBANIA', 29),
(348, '18', 'BELEN DE LOS ANDAQUIES', 94),
(349, '18', 'CARTAGENA DEL CHAIRA', 150),
(350, '18', 'CURILLO', 205),
(351, '18', 'EL DONCELLO', 247),
(352, '18', 'EL PAUJIL', 256),
(353, '18', 'LA MONTAÑITA', 410),
(354, '18', 'MILAN', 460),
(355, '18', 'MORELIA', 479),
(356, '18', 'PUERTO RICO', 592),
(357, '18', 'SAN JOSE DEL FRAGUA', 610),
(358, '18', 'SAN VICENTE DEL CAGUAN', 753),
(359, '18', 'SOLANO', 756),
(360, '18', 'SOLITA', 785),
(361, '18', 'VALPARAISO', 860),
(362, '19', 'POPAYAN', 1),
(363, '19', 'ALMAGUER', 22),
(364, '19', 'ARGELIA', 50),
(365, '19', 'BALBOA', 75),
(366, '19', 'BOLIVAR', 100),
(367, '19', 'BUENOS AIRES', 110),
(368, '19', 'CAJIBIO', 130),
(369, '19', 'CALDONO', 137),
(370, '19', 'CALOTO', 142),
(371, '19', 'CORINTO', 212),
(372, '19', 'EL TAMBO', 256),
(373, '19', 'FLORENCIA', 290),
(374, '19', 'GUACHENE', 300),
(375, '19', 'GUAPI', 318),
(376, '19', 'INZA', 355),
(377, '19', 'JAMBALO', 364),
(378, '19', 'LA SIERRA', 392),
(379, '19', 'LA VEGA', 397),
(380, '19', 'LOPEZ', 418),
(381, '19', 'MERCADERES', 450),
(382, '19', 'MIRANDA', 455),
(383, '19', 'MORALES', 473),
(384, '19', 'PADILLA', 513),
(385, '19', 'PAEZ', 517),
(386, '19', 'PATIA', 532),
(387, '19', 'PIAMONTE', 533),
(388, '19', 'PIENDAMO', 548),
(389, '19', 'PUERTO TEJADA', 573),
(390, '19', 'PURACE', 585),
(391, '19', 'ROSAS', 622),
(392, '19', 'SAN SEBASTIAN', 693),
(393, '19', 'SANTANDER DE QUILICHAO', 698),
(394, '19', 'SANTA ROSA', 701),
(395, '19', 'SILVIA', 743),
(396, '19', 'SOTARA', 760),
(397, '19', 'SUAREZ', 780),
(398, '19', 'SUCRE', 785),
(399, '19', 'TIMBIO', 807),
(400, '19', 'TIMBIQUI', 809),
(401, '19', 'TORIBIO', 821),
(402, '19', 'TOTORO', 824),
(403, '19', 'VILLA RICA', 845),
(404, '20', 'VALLEDUPAR', 1),
(405, '20', 'AGUACHICA', 11),
(406, '20', 'AGUSTIN CODAZZI', 13),
(407, '20', 'ASTREA', 32),
(408, '20', 'BECERRIL', 45),
(409, '20', 'BOSCONIA', 60),
(410, '20', 'CHIMICHAGUA', 175),
(411, '20', 'CHIRIGUANA', 178),
(412, '20', 'CURUMANI', 228),
(413, '20', 'EL COPEY', 238),
(414, '20', 'EL PASO', 250),
(415, '20', 'GAMARRA', 295),
(416, '20', 'GONZALEZ', 310),
(417, '20', 'LA GLORIA', 383),
(418, '20', 'LA JAGUA DE IBIRICO', 400),
(419, '20', 'MANAURE', 443),
(420, '20', 'PAILITAS', 517),
(421, '20', 'PELAYA', 550),
(422, '20', 'PUEBLO BELLO', 570),
(423, '20', 'RIO DE ORO', 614),
(424, '20', 'LA PAZ', 621),
(425, '20', 'SAN ALBERTO', 710),
(426, '20', 'SAN DIEGO', 750),
(427, '20', 'SAN MARTIN', 770),
(428, '20', 'TAMALAMEQUE', 787),
(429, '23', 'MONTERIA', 1),
(430, '23', 'AYAPEL', 68),
(431, '23', 'BUENAVISTA', 79),
(432, '23', 'CANALETE', 90),
(433, '23', 'CERETE', 162),
(434, '23', 'CHIMA', 168),
(435, '23', 'CHINU', 182),
(436, '23', 'CIENAGA DE ORO', 189),
(437, '23', 'COTORRA', 300),
(438, '23', 'LA APARTADA', 350),
(439, '23', 'LORICA', 417),
(440, '23', 'LOS CORDOBAS', 419),
(441, '23', 'MOMIL', 464),
(442, '23', 'MONTELIBANO', 466),
(443, '23', 'MOÑITOS', 500),
(444, '23', 'PLANETA RICA', 555),
(445, '23', 'PUEBLO NUEVO', 570),
(446, '23', 'PUERTO ESCONDIDO', 574),
(447, '23', 'PUERTO LIBERTADOR', 580),
(448, '23', 'PURISIMA', 586),
(449, '23', 'SAHAGUN', 660),
(450, '23', 'SAN ANDRES SOTAVENTO', 670),
(451, '23', 'SAN ANTERO', 672),
(452, '23', 'SAN BERNARDO DEL VIENTO', 675),
(453, '23', 'SAN CARLOS', 678),
(454, '23', 'SAN PELAYO', 686),
(455, '23', 'TIERRALTA', 807),
(456, '23', 'VALENCIA', 855),
(457, '25', 'AGUA DE DIOS', 1),
(458, '25', 'ALBAN', 19),
(459, '25', 'ANAPOIMA', 35),
(460, '25', 'ANOLAIMA', 40),
(461, '25', 'ARBELAEZ', 53),
(462, '25', 'BELTRAN', 86),
(463, '25', 'BITUIMA', 95),
(464, '25', 'BOJACA', 99),
(465, '25', 'CABRERA', 120),
(466, '25', 'CACHIPAY', 123),
(467, '25', 'CAJICA', 126),
(468, '25', 'CAPARRAPI', 148),
(469, '25', 'CAQUEZA', 151),
(470, '25', 'CARMEN DE CARUPA', 154),
(471, '25', 'CHAGUANI', 168),
(472, '25', 'CHIA', 175),
(473, '25', 'CHIPAQUE', 178),
(474, '25', 'CHOACHI', 181),
(475, '25', 'CHOCONTA', 183),
(476, '25', 'COGUA', 200),
(477, '25', 'COTA', 214),
(478, '25', 'CUCUNUBA', 224),
(479, '25', 'EL COLEGIO', 245),
(480, '25', 'EL PEÑON', 258),
(481, '25', 'EL ROSAL', 260),
(482, '25', 'FACATATIVA', 269),
(483, '25', 'FOMEQUE', 279),
(484, '25', 'FOSCA', 281),
(485, '25', 'FUNZA', 286),
(486, '25', 'FUQUENE', 288),
(487, '25', 'FUSAGASUGA', 290),
(488, '25', 'GACHALA', 293),
(489, '25', 'GACHANCIPA', 295),
(490, '25', 'GACHETA', 297),
(491, '25', 'GAMA', 299),
(492, '25', 'GIRARDOT', 307),
(493, '25', 'GRANADA', 312),
(494, '25', 'GUACHETA', 317),
(495, '25', 'GUADUAS', 320),
(496, '25', 'GUASCA', 322),
(497, '25', 'GUATAQUI', 324),
(498, '25', 'GUATAVITA', 326),
(499, '25', 'GUAYABAL DE SIQUIMA', 328),
(500, '25', 'GUAYABETAL', 335),
(501, '25', 'GUTIERREZ', 339),
(502, '25', 'JERUSALEN', 368),
(503, '25', 'JUNIN', 372),
(504, '25', 'LA CALERA', 377),
(505, '25', 'LA MESA', 386),
(506, '25', 'LA PALMA', 394),
(507, '25', 'LA PEÑA', 398),
(508, '25', 'LA VEGA', 402),
(509, '25', 'LENGUAZAQUE', 407),
(510, '25', 'MACHETA', 426),
(511, '25', 'MADRID', 430),
(512, '25', 'MANTA', 436),
(513, '25', 'MEDINA', 438),
(514, '25', 'MOSQUERA', 473),
(515, '25', 'NARIÑO', 483),
(516, '25', 'NEMOCON', 486),
(517, '25', 'NILO', 488),
(518, '25', 'NIMAIMA', 489),
(519, '25', 'NOCAIMA', 491),
(520, '25', 'VENECIA', 506),
(521, '25', 'PACHO', 513),
(522, '25', 'PAIME', 518),
(523, '25', 'PANDI', 524),
(524, '25', 'PARATEBUENO', 530),
(525, '25', 'PASCA', 535),
(526, '25', 'PUERTO SALGAR', 572),
(527, '25', 'PULI', 580),
(528, '25', 'QUEBRADANEGRA', 592),
(529, '25', 'QUETAME', 594),
(530, '25', 'QUIPILE', 596),
(531, '25', 'APULO', 599),
(532, '25', 'RICAURTE', 612),
(533, '25', 'SAN ANTONIO DEL TEQUENDAMA', 645),
(534, '25', 'SAN BERNARDO', 649),
(535, '25', 'SAN CAYETANO', 653),
(536, '25', 'SAN FRANCISCO', 658),
(537, '25', 'SAN JUAN DE RIO SECO', 662),
(538, '25', 'SASAIMA', 718),
(539, '25', 'SESQUILE', 736),
(540, '25', 'SIBATE', 740),
(541, '25', 'SILVANIA', 743),
(542, '25', 'SIMIJACA', 745),
(543, '25', 'SOACHA', 754),
(544, '25', 'SOPO', 758),
(545, '25', 'SUBACHOQUE', 769),
(546, '25', 'SUESCA', 772),
(547, '25', 'SUPATA', 777),
(548, '25', 'SUSA', 779),
(549, '25', 'SUTATAUSA', 781),
(550, '25', 'TABIO', 785),
(551, '25', 'TAUSA', 793),
(552, '25', 'TENA', 797),
(553, '25', 'TENJO', 799),
(554, '25', 'TIBACUY', 805),
(555, '25', 'TIBIRITA', 807),
(556, '25', 'TOCAIMA', 815),
(557, '25', 'TOCANCIPA', 817),
(558, '25', 'TOPAIPI', 823),
(559, '25', 'UBALA', 839),
(560, '25', 'UBAQUE', 841),
(561, '25', 'VILLA DE SAN DIEGO DE UBATE', 843),
(562, '25', 'UNE', 845),
(563, '25', 'UTICA', 851),
(564, '25', 'VERGARA', 862),
(565, '25', 'VIANI', 867),
(566, '25', 'VILLAGOMEZ', 871),
(567, '25', 'VILLAPINZON', 873),
(568, '25', 'VILLETA', 875),
(569, '25', 'VIOTA', 878),
(570, '25', 'YACOPI', 885),
(571, '25', 'ZIPACON', 898),
(572, '25', 'ZIPAQUIRA', 899),
(573, '27', 'QUIBDO', 1),
(574, '27', 'ACANDI', 6),
(575, '27', 'ALTO BAUDO', 25),
(576, '27', 'ATRATO', 50),
(577, '27', 'BAGADO', 73),
(578, '27', 'BAHIA SOLANO', 75),
(579, '27', 'BAJO BAUDO', 77),
(580, '27', 'BOJAYA', 99),
(581, '27', 'EL CANTON DEL SAN PABLO', 135),
(582, '27', 'CARMEN DEL DARIEN', 150),
(583, '27', 'CERTEGUI', 160),
(584, '27', 'CONDOTO', 205),
(585, '27', 'EL CARMEN DE ATRATO', 245),
(586, '27', 'EL LITORAL DEL SAN JUAN', 250),
(587, '27', 'ISTMINA', 361),
(588, '27', 'JURADO', 372),
(589, '27', 'LLORO', 413),
(590, '27', 'MEDIO ATRATO', 425),
(591, '27', 'MEDIO BAUDO', 430),
(592, '27', 'MEDIO SAN JUAN', 450),
(593, '27', 'NOVITA', 491),
(594, '27', 'NUQUI', 495),
(595, '27', 'RIO IRO', 580),
(596, '27', 'RIO QUITO', 600),
(597, '27', 'RIOSUCIO', 615),
(598, '27', 'SAN JOSE DEL PALMAR', 660),
(599, '27', 'SIPI', 745),
(600, '27', 'TADO', 787),
(601, '27', 'UNGUIA', 800),
(602, '27', 'UNION PANAMERICANA', 810),
(603, '41', 'NEIVA', 1),
(604, '41', 'ACEVEDO', 6),
(605, '41', 'AGRADO', 13),
(606, '41', 'AIPE', 16),
(607, '41', 'ALGECIRAS', 20),
(608, '41', 'ALTAMIRA', 26),
(609, '41', 'BARAYA', 78),
(610, '41', 'CAMPOALEGRE', 132),
(611, '41', 'COLOMBIA', 206),
(612, '41', 'ELIAS', 244),
(613, '41', 'GARZON', 298),
(614, '41', 'GIGANTE', 306),
(615, '41', 'GUADALUPE', 319),
(616, '41', 'HOBO', 349),
(617, '41', 'IQUIRA', 357),
(618, '41', 'ISNOS', 359),
(619, '41', 'LA ARGENTINA', 378),
(620, '41', 'LA PLATA', 396),
(621, '41', 'NATAGA', 483),
(622, '41', 'OPORAPA', 503),
(623, '41', 'PAICOL', 518),
(624, '41', 'PALERMO', 524),
(625, '41', 'PALESTINA', 530),
(626, '41', 'PITAL', 548),
(627, '41', 'PITALITO', 551),
(628, '41', 'RIVERA', 615),
(629, '41', 'SALADOBLANCO', 660),
(630, '41', 'SAN AGUSTIN', 668),
(631, '41', 'SANTA MARIA', 676),
(632, '41', 'SUAZA', 770),
(633, '41', 'TARQUI', 791),
(634, '41', 'TESALIA', 797),
(635, '41', 'TELLO', 799),
(636, '41', 'TERUEL', 801),
(637, '41', 'TIMANA', 807),
(638, '41', 'VILLAVIEJA', 872),
(639, '41', 'YAGUARA', 885),
(640, '44', 'RIOHACHA', 1),
(641, '44', 'ALBANIA', 35),
(642, '44', 'BARRANCAS', 78),
(643, '44', 'DIBULLA', 90),
(644, '44', 'DISTRACCION', 98),
(645, '44', 'EL MOLINO', 110),
(646, '44', 'FONSECA', 279),
(647, '44', 'HATONUEVO', 378),
(648, '44', 'LA JAGUA DEL PILAR', 420),
(649, '44', 'MAICAO', 430),
(650, '44', 'MANAURE', 560),
(651, '44', 'SAN JUAN DEL CESAR', 650),
(652, '44', 'URIBIA', 847),
(653, '44', 'URUMITA', 855),
(654, '44', 'VILLANUEVA', 874),
(655, '47', 'SANTA MARTA', 1),
(656, '47', 'ALGARROBO', 30),
(657, '47', 'ARACATACA', 53),
(658, '47', 'ARIGUANI', 58),
(659, '47', 'CERRO SAN ANTONIO', 161),
(660, '47', 'CHIBOLO', 170),
(661, '47', 'CIENAGA', 189),
(662, '47', 'CONCORDIA', 205),
(663, '47', 'EL BANCO', 245),
(664, '47', 'EL PIÑON', 258),
(665, '47', 'EL RETEN', 268),
(666, '47', 'FUNDACION', 288),
(667, '47', 'GUAMAL', 318),
(668, '47', 'NUEVA GRANADA', 460),
(669, '47', 'PEDRAZA', 541),
(670, '47', 'PIJIÑO DEL CARMEN', 545),
(671, '47', 'PIVIJAY', 551),
(672, '47', 'PLATO', 555),
(673, '47', 'PUEBLOVIEJO', 570),
(674, '47', 'REMOLINO', 605),
(675, '47', 'SABANAS DE SAN ANGEL', 660),
(676, '47', 'SALAMINA', 675),
(677, '47', 'SAN SEBASTIAN DE BUENAVISTA', 692),
(678, '47', 'SAN ZENON', 703),
(679, '47', 'SANTA ANA', 707),
(680, '47', 'SANTA BARBARA DE PINTO', 720),
(681, '47', 'SITIONUEVO', 745),
(682, '47', 'TENERIFE', 798),
(683, '47', 'ZAPAYAN', 960),
(684, '47', 'ZONA BANANERA', 980),
(685, '50', 'VILLAVICENCIO', 1),
(686, '50', 'ACACIAS', 6),
(687, '50', 'BARRANCA DE UPIA', 110),
(688, '50', 'CABUYARO', 124),
(689, '50', 'CASTILLA LA NUEVA', 150),
(690, '50', 'CUBARRAL', 223),
(691, '50', 'CUMARAL', 226),
(692, '50', 'EL CALVARIO', 245),
(693, '50', 'EL CASTILLO', 251),
(694, '50', 'EL DORADO', 270),
(695, '50', 'FUENTE DE ORO', 287),
(696, '50', 'GRANADA', 313),
(697, '50', 'GUAMAL', 318),
(698, '50', 'MAPIRIPAN', 325),
(699, '50', 'MESETAS', 330),
(700, '50', 'LA MACARENA', 350),
(701, '50', 'URIBE', 370),
(702, '50', 'LEJANIAS', 400),
(703, '50', 'PUERTO CONCORDIA', 450),
(704, '50', 'PUERTO GAITAN', 568),
(705, '50', 'PUERTO LOPEZ', 573),
(706, '50', 'PUERTO LLERAS', 577),
(707, '50', 'PUERTO RICO', 590),
(708, '50', 'RESTREPO', 606),
(709, '50', 'SAN CARLOS DE GUAROA', 680),
(710, '50', 'SAN JUAN DE ARAMA', 683),
(711, '50', 'SAN JUANITO', 686),
(712, '50', 'SAN MARTIN', 689),
(713, '50', 'VISTAHERMOSA', 711),
(714, '52', 'PASTO', 1),
(715, '52', 'ALBAN', 19),
(716, '52', 'ALDANA', 22),
(717, '52', 'ANCUYA', 36),
(718, '52', 'ARBOLEDA', 51),
(719, '52', 'BARBACOAS', 79),
(720, '52', 'BELEN', 83),
(721, '52', 'BUESACO', 110),
(722, '52', 'COLON', 203),
(723, '52', 'CONSACA', 207),
(724, '52', 'CONTADERO', 210),
(725, '52', 'CORDOBA', 215),
(726, '52', 'CUASPUD', 224),
(727, '52', 'CUMBAL', 227),
(728, '52', 'CUMBITARA', 233),
(729, '52', 'CHACHAGsI', 240),
(730, '52', 'EL CHARCO', 250),
(731, '52', 'EL PEÑOL', 254),
(732, '52', 'EL ROSARIO', 256),
(733, '52', 'EL TABLON DE GOMEZ', 258),
(734, '52', 'EL TAMBO', 260),
(735, '52', 'FUNES', 287),
(736, '52', 'GUACHUCAL', 317),
(737, '52', 'GUAITARILLA', 320),
(738, '52', 'GUALMATAN', 323),
(739, '52', 'ILES', 352),
(740, '52', 'IMUES', 354),
(741, '52', 'IPIALES', 356),
(742, '52', 'LA CRUZ', 378),
(743, '52', 'LA FLORIDA', 381),
(744, '52', 'LA LLANADA', 385),
(745, '52', 'LA TOLA', 390),
(746, '52', 'LA UNION', 399),
(747, '52', 'LEIVA', 405),
(748, '52', 'LINARES', 411),
(749, '52', 'LOS ANDES', 418),
(750, '52', 'MAGsI', 427),
(751, '52', 'MALLAMA', 435),
(752, '52', 'MOSQUERA', 473),
(753, '52', 'NARIÑO', 480),
(754, '52', 'OLAYA HERRERA', 490),
(755, '52', 'OSPINA', 506),
(756, '52', 'FRANCISCO PIZARRO', 520),
(757, '52', 'POLICARPA', 540),
(758, '52', 'POTOSI', 560),
(759, '52', 'PROVIDENCIA', 565),
(760, '52', 'PUERRES', 573),
(761, '52', 'PUPIALES', 585),
(762, '52', 'RICAURTE', 612),
(763, '52', 'ROBERTO PAYAN', 621),
(764, '52', 'SAMANIEGO', 678),
(765, '52', 'SANDONA', 683),
(766, '52', 'SAN BERNARDO', 685),
(767, '52', 'SAN LORENZO', 687),
(768, '52', 'SAN PABLO', 693),
(769, '52', 'SAN PEDRO DE CARTAGO', 694),
(770, '52', 'SANTA BARBARA', 696),
(771, '52', 'SANTACRUZ', 699),
(772, '52', 'SAPUYES', 720),
(773, '52', 'TAMINANGO', 786),
(774, '52', 'TANGUA', 788),
(775, '52', 'SAN ANDRES DE TUMACO', 835),
(776, '52', 'TUQUERRES', 838),
(777, '52', 'YACUANQUER', 885),
(778, '54', 'CUCUTA', 1),
(779, '54', 'ABREGO', 3),
(780, '54', 'ARBOLEDAS', 51),
(781, '54', 'BOCHALEMA', 99),
(782, '54', 'BUCARASICA', 109),
(783, '54', 'CACOTA', 125),
(784, '54', 'CACHIRA', 128),
(785, '54', 'CHINACOTA', 172),
(786, '54', 'CHITAGA', 174),
(787, '54', 'CONVENCION', 206),
(788, '54', 'CUCUTILLA', 223),
(789, '54', 'DURANIA', 239),
(790, '54', 'EL CARMEN', 245),
(791, '54', 'EL TARRA', 250),
(792, '54', 'EL ZULIA', 261),
(793, '54', 'GRAMALOTE', 313),
(794, '54', 'HACARI', 344),
(795, '54', 'HERRAN', 347),
(796, '54', 'LABATECA', 377),
(797, '54', 'LA ESPERANZA', 385),
(798, '54', 'LA PLAYA', 398),
(799, '54', 'LOS PATIOS', 405),
(800, '54', 'LOURDES', 418),
(801, '54', 'MUTISCUA', 480),
(802, '54', 'OCAÑA', 498),
(803, '54', 'PAMPLONA', 518),
(804, '54', 'PAMPLONITA', 520),
(805, '54', 'PUERTO SANTANDER', 553),
(806, '54', 'RAGONVALIA', 599),
(807, '54', 'SALAZAR', 660),
(808, '54', 'SAN CALIXTO', 670),
(809, '54', 'SAN CAYETANO', 673),
(810, '54', 'SANTIAGO', 680),
(811, '54', 'SARDINATA', 720),
(812, '54', 'SILOS', 743),
(813, '54', 'TEORAMA', 800),
(814, '54', 'TIBU', 810),
(815, '54', 'TOLEDO', 820),
(816, '54', 'VILLA CARO', 871),
(817, '54', 'VILLA DEL ROSARIO', 874),
(818, '63', 'ARMENIA', 1),
(819, '63', 'BUENAVISTA', 111),
(820, '63', 'CALARCA', 130),
(821, '63', 'CIRCASIA', 190),
(822, '63', 'CORDOBA', 212),
(823, '63', 'FILANDIA', 272),
(824, '63', 'GENOVA', 302),
(825, '63', 'LA TEBAIDA', 401),
(826, '63', 'MONTENEGRO', 470),
(827, '63', 'PIJAO', 548),
(828, '63', 'QUIMBAYA', 594),
(829, '63', 'SALENTO', 690),
(830, '66', 'PEREIRA', 1),
(831, '66', 'APIA', 45),
(832, '66', 'BALBOA', 75),
(833, '66', 'BELEN DE UMBRIA', 88),
(834, '66', 'DOSQUEBRADAS', 170),
(835, '66', 'GUATICA', 318),
(836, '66', 'LA CELIA', 383),
(837, '66', 'LA VIRGINIA', 400),
(838, '66', 'MARSELLA', 440),
(839, '66', 'MISTRATO', 456),
(840, '66', 'PUEBLO RICO', 572),
(841, '66', 'QUINCHIA', 594),
(842, '66', 'SANTA ROSA DE CABAL', 682),
(843, '66', 'SANTUARIO', 687),
(844, '68', 'BUCARAMANGA', 1),
(845, '68', 'AGUADA', 13),
(846, '68', 'ALBANIA', 20),
(847, '68', 'ARATOCA', 51),
(848, '68', 'BARBOSA', 77),
(849, '68', 'BARICHARA', 79),
(850, '68', 'BARRANCABERMEJA', 81),
(851, '68', 'BETULIA', 92),
(852, '68', 'BOLIVAR', 101),
(853, '68', 'CABRERA', 121),
(854, '68', 'CALIFORNIA', 132),
(855, '68', 'CAPITANEJO', 147),
(856, '68', 'CARCASI', 152),
(857, '68', 'CEPITA', 160),
(858, '68', 'CERRITO', 162),
(859, '68', 'CHARALA', 167),
(860, '68', 'CHARTA', 169),
(861, '68', 'CHIMA', 176),
(862, '68', 'CHIPATA', 179),
(863, '68', 'CIMITARRA', 190),
(864, '68', 'CONCEPCION', 207),
(865, '68', 'CONFINES', 209),
(866, '68', 'CONTRATACION', 211),
(867, '68', 'COROMORO', 217),
(868, '68', 'CURITI', 229),
(869, '68', 'EL CARMEN DE CHUCURI', 235),
(870, '68', 'EL GUACAMAYO', 245),
(871, '68', 'EL PEÑON', 250),
(872, '68', 'EL PLAYON', 255),
(873, '68', 'ENCINO', 264),
(874, '68', 'ENCISO', 266),
(875, '68', 'FLORIAN', 271),
(876, '68', 'FLORIDABLANCA', 276),
(877, '68', 'GALAN', 296),
(878, '68', 'GAMBITA', 298),
(879, '68', 'GIRON', 307),
(880, '68', 'GUACA', 318),
(881, '68', 'GUADALUPE', 320),
(882, '68', 'GUAPOTA', 322),
(883, '68', 'GUAVATA', 324),
(884, '68', 'GsEPSA', 327),
(885, '68', 'HATO', 344),
(886, '68', 'JESUS MARIA', 368),
(887, '68', 'JORDAN', 370),
(888, '68', 'LA BELLEZA', 377),
(889, '68', 'LANDAZURI', 385),
(890, '68', 'LA PAZ', 397),
(891, '68', 'LEBRIJA', 406),
(892, '68', 'LOS SANTOS', 418),
(893, '68', 'MACARAVITA', 425),
(894, '68', 'MALAGA', 432),
(895, '68', 'MATANZA', 444),
(896, '68', 'MOGOTES', 464),
(897, '68', 'MOLAGAVITA', 468),
(898, '68', 'OCAMONTE', 498),
(899, '68', 'OIBA', 500),
(900, '68', 'ONZAGA', 502),
(901, '68', 'PALMAR', 522),
(902, '68', 'PALMAS DEL SOCORRO', 524),
(903, '68', 'PARAMO', 533),
(904, '68', 'PIEDECUESTA', 547),
(905, '68', 'PINCHOTE', 549),
(906, '68', 'PUENTE NACIONAL', 572),
(907, '68', 'PUERTO PARRA', 573),
(908, '68', 'PUERTO WILCHES', 575),
(909, '68', 'RIONEGRO', 615),
(910, '68', 'SABANA DE TORRES', 655),
(911, '68', 'SAN ANDRES', 669),
(912, '68', 'SAN BENITO', 673),
(913, '68', 'SAN GIL', 679),
(914, '68', 'SAN JOAQUIN', 682),
(915, '68', 'SAN JOSE DE MIRANDA', 684),
(916, '68', 'SAN MIGUEL', 686),
(917, '68', 'SAN VICENTE DE CHUCURI', 689),
(918, '68', 'SANTA BARBARA', 705),
(919, '68', 'SANTA HELENA DEL OPON', 720),
(920, '68', 'SIMACOTA', 745),
(921, '68', 'SOCORRO', 755),
(922, '68', 'SUAITA', 770),
(923, '68', 'SUCRE', 773),
(924, '68', 'SURATA', 780),
(925, '68', 'TONA', 820),
(926, '68', 'VALLE DE SAN JOSE', 855),
(927, '68', 'VELEZ', 861),
(928, '68', 'VETAS', 867),
(929, '68', 'VILLANUEVA', 872),
(930, '68', 'ZAPATOCA', 895),
(931, '70', 'SINCELEJO', 1),
(932, '70', 'BUENAVISTA', 110),
(933, '70', 'CAIMITO', 124),
(934, '70', 'COLOSO', 204),
(935, '70', 'COROZAL', 215),
(936, '70', 'COVEÑAS', 221),
(937, '70', 'CHALAN', 230),
(938, '70', 'EL ROBLE', 233),
(939, '70', 'GALERAS', 235),
(940, '70', 'GUARANDA', 265),
(941, '70', 'LA UNION', 400),
(942, '70', 'LOS PALMITOS', 418),
(943, '70', 'MAJAGUAL', 429),
(944, '70', 'MORROA', 473),
(945, '70', 'OVEJAS', 508),
(946, '70', 'PALMITO', 523),
(947, '70', 'SAMPUES', 670),
(948, '70', 'SAN BENITO ABAD', 678),
(949, '70', 'SAN JUAN DE BETULIA', 702),
(950, '70', 'SAN MARCOS', 708),
(951, '70', 'SAN ONOFRE', 713),
(952, '70', 'SAN PEDRO', 717),
(953, '70', 'SAN LUIS DE SINCE', 742),
(954, '70', 'SUCRE', 771),
(955, '70', 'SANTIAGO DE TOLU', 820),
(956, '70', 'TOLU VIEJO', 823),
(957, '73', 'IBAGUE', 1),
(958, '73', 'ALPUJARRA', 24),
(959, '73', 'ALVARADO', 26),
(960, '73', 'AMBALEMA', 30),
(961, '73', 'ANZOATEGUI', 43),
(962, '73', 'ARMERO', 55),
(963, '73', 'ATACO', 67),
(964, '73', 'CAJAMARCA', 124),
(965, '73', 'CARMEN DE APICALA', 148),
(966, '73', 'CASABIANCA', 152),
(967, '73', 'CHAPARRAL', 168),
(968, '73', 'COELLO', 200),
(969, '73', 'COYAIMA', 217),
(970, '73', 'CUNDAY', 226),
(971, '73', 'DOLORES', 236),
(972, '73', 'ESPINAL', 268),
(973, '73', 'FALAN', 270),
(974, '73', 'FLANDES', 275),
(975, '73', 'FRESNO', 283),
(976, '73', 'GUAMO', 319),
(977, '73', 'HERVEO', 347),
(978, '73', 'HONDA', 349),
(979, '73', 'ICONONZO', 352),
(980, '73', 'LERIDA', 408),
(981, '73', 'LIBANO', 411),
(982, '73', 'MARIQUITA', 443),
(983, '73', 'MELGAR', 449),
(984, '73', 'MURILLO', 461),
(985, '73', 'NATAGAIMA', 483),
(986, '73', 'ORTEGA', 504),
(987, '73', 'PALOCABILDO', 520),
(988, '73', 'PIEDRAS', 547),
(989, '73', 'PLANADAS', 555),
(990, '73', 'PRADO', 563),
(991, '73', 'PURIFICACION', 585),
(992, '73', 'RIOBLANCO', 616),
(993, '73', 'RONCESVALLES', 622),
(994, '73', 'ROVIRA', 624),
(995, '73', 'SALDAÑA', 671),
(996, '73', 'SAN ANTONIO', 675),
(997, '73', 'SAN LUIS', 678),
(998, '73', 'SANTA ISABEL', 686),
(999, '73', 'SUAREZ', 770),
(1000, '73', 'VALLE DE SAN JUAN', 854),
(1001, '73', 'VENADILLO', 861),
(1002, '73', 'VILLAHERMOSA', 870),
(1003, '73', 'VILLARRICA', 873),
(1004, '76', 'CALI', 1),
(1005, '76', 'ALCALA', 20),
(1006, '76', 'ANDALUCIA', 36),
(1007, '76', 'ANSERMANUEVO', 41),
(1008, '76', 'ARGELIA', 54),
(1009, '76', 'BOLIVAR', 100),
(1010, '76', 'BUENAVENTURA', 109),
(1011, '76', 'GUADALAJARA DE BUGA', 111),
(1012, '76', 'BUGALAGRANDE', 113),
(1013, '76', 'CAICEDONIA', 122),
(1014, '76', 'CALIMA', 126),
(1015, '76', 'CANDELARIA', 130),
(1016, '76', 'CARTAGO', 147),
(1017, '76', 'DAGUA', 233),
(1018, '76', 'EL AGUILA', 243),
(1019, '76', 'EL CAIRO', 246),
(1020, '76', 'EL CERRITO', 248),
(1021, '76', 'EL DOVIO', 250),
(1022, '76', 'FLORIDA', 275),
(1023, '76', 'GINEBRA', 306),
(1024, '76', 'GUACARI', 318),
(1025, '76', 'JAMUNDI', 364),
(1026, '76', 'LA CUMBRE', 377),
(1027, '76', 'LA UNION', 400),
(1028, '76', 'LA VICTORIA', 403),
(1029, '76', 'OBANDO', 497),
(1030, '76', 'PALMIRA', 520),
(1031, '76', 'PRADERA', 563),
(1032, '76', 'RESTREPO', 606),
(1033, '76', 'RIOFRIO', 616),
(1034, '76', 'ROLDANILLO', 622),
(1035, '76', 'SAN PEDRO', 670),
(1036, '76', 'SEVILLA', 736),
(1037, '76', 'TORO', 823),
(1038, '76', 'TRUJILLO', 828),
(1039, '76', 'TULUA', 834),
(1040, '76', 'ULLOA', 845),
(1041, '76', 'VERSALLES', 863),
(1042, '76', 'VIJES', 869),
(1043, '76', 'YOTOCO', 890),
(1044, '76', 'YUMBO', 892),
(1045, '76', 'ZARZAL', 895),
(1046, '81', 'ARAUCA', 1),
(1047, '81', 'ARAUQUITA', 65),
(1048, '81', 'CRAVO NORTE', 220),
(1049, '81', 'FORTUL', 300),
(1050, '81', 'PUERTO RONDON', 591),
(1051, '81', 'SARAVENA', 736),
(1052, '81', 'TAME', 794),
(1053, '85', 'YOPAL', 1),
(1054, '85', 'AGUAZUL', 10),
(1055, '85', 'CHAMEZA', 15),
(1056, '85', 'HATO COROZAL', 125),
(1057, '85', 'LA SALINA', 136),
(1058, '85', 'MANI', 139),
(1059, '85', 'MONTERREY', 162),
(1060, '85', 'NUNCHIA', 225),
(1061, '85', 'OROCUE', 230),
(1062, '85', 'PAZ DE ARIPORO', 250),
(1063, '85', 'PORE', 263),
(1064, '85', 'RECETOR', 279),
(1065, '85', 'SABANALARGA', 300),
(1066, '85', 'SACAMA', 315),
(1067, '85', 'SAN LUIS DE PALENQUE', 325),
(1068, '85', 'TAMARA', 400),
(1069, '85', 'TAURAMENA', 410),
(1070, '85', 'TRINIDAD', 430),
(1071, '85', 'VILLANUEVA', 440),
(1072, '86', 'MOCOA', 1),
(1073, '86', 'COLON', 219),
(1074, '86', 'ORITO', 320),
(1075, '86', 'PUERTO ASIS', 568),
(1076, '86', 'PUERTO CAICEDO', 569),
(1077, '86', 'PUERTO GUZMAN', 571),
(1078, '86', 'LEGUIZAMO', 573),
(1079, '86', 'SIBUNDOY', 749),
(1080, '86', 'SAN FRANCISCO', 755),
(1081, '86', 'SAN MIGUEL', 757),
(1082, '86', 'SANTIAGO', 760),
(1083, '86', 'VALLE DEL GUAMUEZ', 865),
(1084, '86', 'VILLAGARZON', 885),
(1085, '88', 'SAN ANDRES', 1),
(1086, '88', 'PROVIDENCIA', 564),
(1087, '91', 'LETICIA', 1),
(1088, '91', 'EL ENCANTO', 263),
(1089, '91', 'LA CHORRERA', 405),
(1090, '91', 'LA PEDRERA', 407),
(1091, '91', 'LA VICTORIA', 430),
(1092, '91', 'MIRITI - PARANA', 460),
(1093, '91', 'PUERTO ALEGRIA', 530),
(1094, '91', 'PUERTO ARICA', 536),
(1095, '91', 'PUERTO NARIÑO', 540),
(1096, '91', 'PUERTO SANTANDER', 669),
(1097, '91', 'TARAPACA', 798),
(1098, '94', 'INIRIDA', 1),
(1099, '94', 'BARRANCO MINAS', 343),
(1100, '94', 'MAPIRIPANA', 663),
(1101, '94', 'SAN FELIPE', 883),
(1102, '94', 'PUERTO COLOMBIA', 884),
(1103, '94', 'LA GUADALUPE', 885),
(1104, '94', 'CACAHUAL', 886),
(1105, '94', 'PANA PANA', 887),
(1106, '94', 'MORICHAL', 888),
(1107, '95', 'SAN JOSE DEL GUAVIARE', 1),
(1108, '95', 'CALAMAR', 15),
(1109, '95', 'EL RETORNO', 25),
(1110, '95', 'MIRAFLORES', 200),
(1111, '97', 'MITU', 1),
(1112, '97', 'CARURU', 161),
(1113, '97', 'PACOA', 511),
(1114, '97', 'TARAIRA', 666),
(1115, '97', 'PAPUNAUA', 777),
(1116, '97', 'YAVARATE', 889),
(1117, '99', 'PUERTO CARREÑO', 1),
(1118, '99', 'LA PRIMAVERA', 524),
(1119, '99', 'SANTA ROSALIA', 624),
(1120, '99', 'CUMARIBO', 773);

-- --------------------------------------------------------

--
-- Table structure for table `tb_contactos`
--

CREATE TABLE IF NOT EXISTS `tb_contactos` (
  `id_estudiante` int(9) NOT NULL,
  `tel_fijo` varchar(45) DEFAULT NULL,
  `tel_celular` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`),
  KEY `fk_tb_contactos_tb_estudiantes1_idx` (`id_estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_contactos`
--

INSERT INTO `tb_contactos` (`id_estudiante`, `tel_fijo`, `tel_celular`, `correo`) VALUES
(1234, '1234', '1234', '1234'),
(12345, '12345', '12345', '12345'),
(324471, '6848008', '3197467681', 'bnovoa.linux@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_departamentos`
--

CREATE TABLE IF NOT EXISTS `tb_departamentos` (
  `id_departamento` varchar(3) NOT NULL COMMENT '	',
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_departamentos`
--

INSERT INTO `tb_departamentos` (`id_departamento`, `nombre`) VALUES
('11', 'BOGOTA'),
('13', 'BOLIVAR'),
('15', 'BOYACA'),
('17', 'CALDAS'),
('18', 'CAQUETA'),
('19', 'CAUCA'),
('20', 'CESAR'),
('23', 'CORDOBA'),
('25', 'CUNDINAMARCA'),
('27', 'CHOCO'),
('41', 'HUILA'),
('44', 'LA GUAJIRA'),
('47', 'MAGDALENA'),
('5', 'ANTIOQUIA'),
('50', 'META'),
('52', 'NARIÑO'),
('54', 'N. DE SANTANDER'),
('63', 'QUINDIO'),
('66', 'RISARALDA'),
('68', 'SANTANDER'),
('70', 'SUCRE'),
('73', 'TOLIMA'),
('76', 'VALLE DEL CAUCA'),
('8', 'ATLANTICO'),
('81', 'ARAUCA'),
('85', 'CASANARE'),
('86', 'PUTUMAYO'),
('88', 'SAN ANDRES'),
('91', 'AMAZONAS'),
('94', 'GUAINIA'),
('95', 'GUAVIARE'),
('97', 'VAUPES'),
('99', 'VICHADA');

-- --------------------------------------------------------

--
-- Table structure for table `tb_encuestas`
--

CREATE TABLE IF NOT EXISTS `tb_encuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_encuesta` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tb_encuestas`
--

INSERT INTO `tb_encuestas` (`id`, `nombre_encuesta`, `descripcion`) VALUES
(1, 'Datos básicos', 'Contiene la información personal del estudiante'),
(2, 'Información de contacto', 'Contiene la información'),
(3, 'Información de vivienda', 'Contiene la información'),
(4, 'Información de salud', 'Contiene la información'),
(5, 'Información financiera', 'Contiene la información'),
(6, 'Información familiar', 'Contiene la información'),
(7, 'Estudios Anteriores', 'Estudios anteriores a ingresar a Uniminuto.'),
(8, 'Prueba desde Java', 'Prueba desde Java'),
(9, 'Prueba desde Java', 'Prueba desde Java');

-- --------------------------------------------------------

--
-- Table structure for table `tb_estudiantes`
--

CREATE TABLE IF NOT EXISTS `tb_estudiantes` (
  `id_estudiante` int(9) NOT NULL,
  `pass_user` varchar(25) NOT NULL,
  `correo_inst` varchar(50) NOT NULL,
  PRIMARY KEY (`id_estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_estudiantes`
--

INSERT INTO `tb_estudiantes` (`id_estudiante`, `pass_user`, `correo_inst`) VALUES
(1234, '1234', '1234@uniminuto.udu.co'),
(12345, '12345', '12345'),
(123456, '123456', '123456@uniminuto.edu.co'),
(324471, 'novoa', 'bnovoasalaz@uniminuto.edu.co'),
(544541, '12345', 'crodrigu303@uniminuto.edu.co'),
(1234567, '1234567', '1234567@uniminuto.edu.co'),
(12345678, '12345678', '12345678@uniminuto.edu.co');

-- --------------------------------------------------------

--
-- Table structure for table `tb_facultades`
--

CREATE TABLE IF NOT EXISTS `tb_facultades` (
  `facultad_id` int(3) NOT NULL AUTO_INCREMENT,
  `sede_id` int(3) NOT NULL,
  `facultad` varchar(50) NOT NULL,
  PRIMARY KEY (`facultad_id`),
  KEY `sede_ind` (`sede_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_facultades`
--

INSERT INTO `tb_facultades` (`facultad_id`, `sede_id`, `facultad`) VALUES
(1, 1, 'Ingeniería Y Ciencias Básicas'),
(2, 1, 'Administración'),
(3, 1, 'Psicología'),
(4, 1, 'Comunicación');

-- --------------------------------------------------------

--
-- Table structure for table `tb_informacion_personal`
--

CREATE TABLE IF NOT EXISTS `tb_informacion_personal` (
  `id_estudiante` int(9) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellido1` varchar(45) NOT NULL,
  `apellido2` varchar(45) NOT NULL,
  `documento` varchar(45) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `edad` varchar(2) NOT NULL,
  `id_departamento` varchar(3) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_rh` varchar(25) NOT NULL,
  PRIMARY KEY (`id_estudiante`),
  UNIQUE KEY `Documento_UNIQUE` (`documento`),
  UNIQUE KEY `tb_estudiantes_id_estudiante_UNIQUE` (`id_estudiante`),
  KEY `fk_Informacion_personal_tb_rh_idx` (`id_rh`),
  KEY `fk_Informacion_personal_tb_estudiantes1_idx` (`id_estudiante`),
  KEY `fk_Informacion_personal_tb_ciudades1_idx` (`id_ciudad`,`id_departamento`),
  KEY `id_estudiante` (`id_estudiante`),
  KEY `id_departamento` (`id_departamento`),
  KEY `id_ciudad` (`id_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_informacion_personal`
--

INSERT INTO `tb_informacion_personal` (`id_estudiante`, `nombres`, `apellido1`, `apellido2`, `documento`, `sexo`, `edad`, `id_departamento`, `id_ciudad`, `id_rh`) VALUES
(1234, '1234', '1234', '1234', '1234', 'M', '27', '50', 685, 'O+'),
(12345, 'Nombre', 'Apellido1', 'Apellido2', '12345', 'M', '22', '50', 685, 'O'),
(123456, '123456', '123456', '123456', '123456', 'M', '27', '50', 685, 'O+'),
(324471, 'Brayan Mauricio', 'Novoa', 'Salazar', '1121871348', 'M', '27', '50', 685, 'O+');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_familiar`
--

CREATE TABLE IF NOT EXISTS `tb_info_familiar` (
  `id_estudiante` int(9) NOT NULL,
  `vive_con` varchar(45) DEFAULT NULL,
  `estado_civil` varchar(45) DEFAULT NULL,
  `num_hermanos` varchar(2) DEFAULT NULL,
  `lugar_hermanos` varchar(45) DEFAULT NULL,
  `padres_viven_con_abuelos` varchar(45) DEFAULT NULL,
  `embarazo` varchar(45) DEFAULT NULL,
  `mes_embarazo` varchar(45) DEFAULT NULL,
  `cabeza_familia` varchar(2) NOT NULL,
  `hijos` varchar(45) DEFAULT NULL,
  `num_hijos` varchar(45) DEFAULT NULL,
  `edad_hijos` varchar(45) NOT NULL,
  `escolaridad_padre` varchar(45) DEFAULT NULL,
  `escolaridad_madre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_info_familiar`
--

INSERT INTO `tb_info_familiar` (`id_estudiante`, `vive_con`, `estado_civil`, `num_hermanos`, `lugar_hermanos`, `padres_viven_con_abuelos`, `embarazo`, `mes_embarazo`, `cabeza_familia`, `hijos`, `num_hijos`, `edad_hijos`, `escolaridad_padre`, `escolaridad_madre`) VALUES
(1234, '1234', '1234', '1', '2', 'NO', 'NULL', 'NULL', 'NO', 'NO', 'o', 'o', '1234', '1234'),
(324471, 'Padres', 'Soltero', '1', '2', 'NO', 'NULL', 'NULL', 'NO', 'NO', '0', 'NULL', 'Bachiller', 'Tecnología');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_financiera`
--

CREATE TABLE IF NOT EXISTS `tb_info_financiera` (
  `id_estudiante` int(9) NOT NULL,
  `medio_pago` varchar(45) DEFAULT NULL,
  `quien_paga` varchar(45) DEFAULT NULL,
  `situacion_laboral` varchar(45) DEFAULT NULL,
  `sector_laboral` varchar(45) DEFAULT NULL,
  `tipo_trabajo` varchar(45) DEFAULT NULL,
  `ingreso_personal` varchar(45) DEFAULT NULL,
  `ingreso_familiar` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_info_financiera`
--

INSERT INTO `tb_info_financiera` (`id_estudiante`, `medio_pago`, `quien_paga`, `situacion_laboral`, `sector_laboral`, `tipo_trabajo`, `ingreso_personal`, `ingreso_familiar`) VALUES
(1234, '1234', '1234', '1234', NULL, '1234', '1234', '1234'),
(324471, 'Contado', 'Familia', 'Trabaja', 'Desarrollo de software', 'Independiente', '1200000', '3000000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_salud`
--

CREATE TABLE IF NOT EXISTS `tb_info_salud` (
  `id_estudiante` int(9) NOT NULL,
  `SISBEN` varchar(2) DEFAULT NULL,
  `EPS` varchar(2) DEFAULT NULL,
  `enfermedad` varchar(45) DEFAULT NULL,
  `especiales` varchar(45) DEFAULT NULL,
  `dificultad` varchar(45) DEFAULT NULL,
  `alcohol` varchar(45) DEFAULT NULL,
  `cigarrillo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_info_salud`
--

INSERT INTO `tb_info_salud` (`id_estudiante`, `SISBEN`, `EPS`, `enfermedad`, `especiales`, `dificultad`, `alcohol`, `cigarrillo`) VALUES
(1234, 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
(12345, 'NO', 'SI', 'Ninguna', 'Ninguna', 'Ninguna', '1 vez al mes', '10 unidades al día'),
(123456, 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
(324471, 'NO', 'SI', 'Ninguna', 'Ninguna', 'Ninguna', '1 vez al mes', '10 unidades al día');

-- --------------------------------------------------------

--
-- Table structure for table `tb_localizacion`
--

CREATE TABLE IF NOT EXISTS `tb_localizacion` (
  `id_estudiante` int(9) NOT NULL,
  `sector` varchar(6) DEFAULT NULL,
  `lugar` varchar(45) DEFAULT NULL,
  `tb_ciudades_id_departamento` varchar(3) NOT NULL,
  `tb_ciudades_id_ciudad` int(11) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `barrio` varchar(45) DEFAULT NULL,
  `estrato` varchar(1) DEFAULT NULL,
  `tipo_vivienda` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`,`tb_ciudades_id_departamento`,`tb_ciudades_id_ciudad`),
  KEY `fk_tb_localizacion_tb_ciudades1_idx` (`tb_ciudades_id_ciudad`,`tb_ciudades_id_departamento`),
  KEY `tb_ciudades_id_departamento` (`tb_ciudades_id_departamento`),
  KEY `tb_ciudades_id_ciudad` (`tb_ciudades_id_ciudad`),
  KEY `tb_ciudades_id_departamento_2` (`tb_ciudades_id_departamento`),
  KEY `tb_ciudades_id_ciudad_2` (`tb_ciudades_id_ciudad`),
  KEY `tb_ciudades_id_ciudad_3` (`tb_ciudades_id_ciudad`),
  KEY `tb_ciudades_id_departamento_3` (`tb_ciudades_id_departamento`),
  KEY `tb_ciudades_id_departamento_4` (`tb_ciudades_id_departamento`),
  KEY `tb_ciudades_id_ciudad_4` (`tb_ciudades_id_ciudad`),
  KEY `tb_ciudades_id_ciudad_5` (`tb_ciudades_id_ciudad`),
  KEY `tb_ciudades_id_ciudad_6` (`tb_ciudades_id_ciudad`),
  KEY `tb_ciudades_id_ciudad_7` (`tb_ciudades_id_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_localizacion`
--

INSERT INTO `tb_localizacion` (`id_estudiante`, `sector`, `lugar`, `tb_ciudades_id_departamento`, `tb_ciudades_id_ciudad`, `direccion`, `barrio`, `estrato`, `tipo_vivienda`) VALUES
(1234, '1234', '1234', '50', 685, '1234', '1234', '3', '1234'),
(12345, '12345', '12345', '50', 685, '12345', '12345', '3', '12345'),
(324471, 'Urbano', 'Casa', '50', 685, 'Calle 14 Sur # 49 A 79', 'Serramonte', '3', 'Familiar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_periodos`
--

CREATE TABLE IF NOT EXISTS `tb_periodos` (
  `periodo_id` int(11) NOT NULL AUTO_INCREMENT,
  `agno` int(4) NOT NULL,
  `semestre` int(1) NOT NULL,
  `periodo` varchar(20) NOT NULL,
  PRIMARY KEY (`periodo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tb_periodos`
--

INSERT INTO `tb_periodos` (`periodo_id`, `agno`, `semestre`, `periodo`) VALUES
(1, 2016, 1, '2016-1'),
(2, 2016, 2, '2016-2'),
(3, 2017, 1, '2017-a'),
(4, 2017, 2, '2017-b'),
(5, 2018, 1, '201810'),
(6, 2018, 2, '201820');

-- --------------------------------------------------------

--
-- Table structure for table `tb_permisos`
--

CREATE TABLE IF NOT EXISTS `tb_permisos` (
  `permiso_id` int(3) NOT NULL AUTO_INCREMENT,
  `permiso_nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`permiso_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_preguntas`
--

CREATE TABLE IF NOT EXISTS `tb_preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encuesta_id` int(11) NOT NULL,
  `pregunta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encuesta_id` (`encuesta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tb_preguntas`
--

INSERT INTO `tb_preguntas` (`id`, `encuesta_id`, `pregunta`) VALUES
(1, 1, 'Nombres'),
(2, 1, 'Primer apellido'),
(3, 1, 'Segundo Apellido'),
(4, 1, 'Documento'),
(5, 1, 'Sexo'),
(6, 1, 'Edad'),
(7, 1, 'Departamento de nacimiento'),
(8, 1, 'Ciudad de nacimiento'),
(9, 1, 'Tipo de sangre'),
(10, 2, 'Teléfono fijo'),
(11, 2, 'Teléfono celular'),
(12, 2, 'Correo Electrónico'),
(13, 3, 'Vive en sector Rural o Urbano?'),
(14, 3, 'Lugar de vivienda'),
(15, 3, 'Departamento'),
(16, 3, 'Ciudad'),
(17, 3, 'Dirección de vivienda'),
(18, 3, 'Barrio'),
(19, 3, 'Estrato '),
(21, 4, 'Pertenece al SISBEN?');

-- --------------------------------------------------------

--
-- Table structure for table `tb_programas`
--

CREATE TABLE IF NOT EXISTS `tb_programas` (
  `programa_id` int(3) NOT NULL AUTO_INCREMENT,
  `facultad_id` int(3) NOT NULL,
  `programa` varchar(50) NOT NULL,
  PRIMARY KEY (`programa_id`),
  KEY `facultad_ind` (`facultad_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tb_programas`
--

INSERT INTO `tb_programas` (`programa_id`, `facultad_id`, `programa`) VALUES
(1, 1, 'Tecnología en Desarrollo de Software'),
(2, 1, 'Redes de Computadoras'),
(3, 1, 'Tecnología en Informática'),
(4, 1, 'Ingeniría Ambiental'),
(5, 2, 'Administración de empresas'),
(6, 3, 'Psicología'),
(7, 3, 'Pedagogía Infantil'),
(8, 4, 'Cominicación Social'),
(9, 4, 'Cominicación Gráfica');

-- --------------------------------------------------------

--
-- Table structure for table `tb_respuestas`
--

CREATE TABLE IF NOT EXISTS `tb_respuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encuesta_id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `estudiante_id` int(11) NOT NULL,
  `respuesta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_rh`
--

CREATE TABLE IF NOT EXISTS `tb_rh` (
  `id_rh` int(11) NOT NULL,
  `grupo_sanguineo` varchar(3) NOT NULL,
  PRIMARY KEY (`id_rh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_rh`
--

INSERT INTO `tb_rh` (`id_rh`, `grupo_sanguineo`) VALUES
(1, 'O'),
(2, 'O+'),
(3, 'A'),
(4, 'A+'),
(5, 'B'),
(6, 'B+'),
(7, 'AB');

-- --------------------------------------------------------

--
-- Table structure for table `tb_roles`
--

CREATE TABLE IF NOT EXISTS `tb_roles` (
  `rol_id` int(3) NOT NULL AUTO_INCREMENT,
  `rol_nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`rol_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tb_roles`
--

INSERT INTO `tb_roles` (`rol_id`, `rol_nombre`) VALUES
(1, 'Administrador GUI'),
(2, 'Administrador DB'),
(3, 'Estudiante');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sedes`
--

CREATE TABLE IF NOT EXISTS `tb_sedes` (
  `sede_id` int(3) NOT NULL AUTO_INCREMENT,
  `vicerrectoria_id` int(3) NOT NULL,
  `sede` varchar(50) NOT NULL,
  PRIMARY KEY (`sede_id`),
  KEY `vicerrectoria_ind` (`vicerrectoria_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_sedes`
--

INSERT INTO `tb_sedes` (`sede_id`, `vicerrectoria_id`, `sede`) VALUES
(1, 8, 'Sede Principal - Administrativa'),
(2, 8, 'Mitú'),
(3, 8, 'Puerto Carreño Vichada'),
(4, 8, 'Orocué');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_admin`
--

CREATE TABLE IF NOT EXISTS `tb_user_admin` (
  `id_admin` int(9) NOT NULL,
  `admin_pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user_admin`
--

INSERT INTO `tb_user_admin` (`id_admin`, `admin_pass`) VALUES
(324471, 'novoa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_vicerrectorias`
--

CREATE TABLE IF NOT EXISTS `tb_vicerrectorias` (
  `vicerrectoria_id` int(3) NOT NULL AUTO_INCREMENT,
  `vicerrectoria` varchar(50) NOT NULL,
  PRIMARY KEY (`vicerrectoria_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tb_vicerrectorias`
--

INSERT INTO `tb_vicerrectorias` (`vicerrectoria_id`, `vicerrectoria`) VALUES
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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_ciudades`
--
ALTER TABLE `tb_ciudades`
  ADD CONSTRAINT `tb_ciudades_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `tb_departamentos` (`id_departamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_contactos`
--
ALTER TABLE `tb_contactos`
  ADD CONSTRAINT `fk_tb_contactos_tb_estudiantes1` FOREIGN KEY (`id_estudiante`) REFERENCES `tb_estudiantes` (`id_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_facultades`
--
ALTER TABLE `tb_facultades`
  ADD CONSTRAINT `tb_facultades_ibfk_1` FOREIGN KEY (`sede_id`) REFERENCES `tb_sedes` (`sede_id`) ON DELETE CASCADE;

--
-- Constraints for table `tb_informacion_personal`
--
ALTER TABLE `tb_informacion_personal`
  ADD CONSTRAINT `tb_informacion_personal_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `tb_estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `tb_informacion_personal_ibfk_2` FOREIGN KEY (`id_departamento`) REFERENCES `tb_departamentos` (`id_departamento`),
  ADD CONSTRAINT `tb_informacion_personal_ibfk_3` FOREIGN KEY (`id_ciudad`) REFERENCES `tb_ciudades` (`id_ciudad`);

--
-- Constraints for table `tb_info_familiar`
--
ALTER TABLE `tb_info_familiar`
  ADD CONSTRAINT `fk_tb_info_familiar_tb_estudiantes1` FOREIGN KEY (`id_estudiante`) REFERENCES `tb_estudiantes` (`id_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_info_financiera`
--
ALTER TABLE `tb_info_financiera`
  ADD CONSTRAINT `fk_tb_info_financiera_tb_estudiantes1` FOREIGN KEY (`id_estudiante`) REFERENCES `tb_estudiantes` (`id_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_info_salud`
--
ALTER TABLE `tb_info_salud`
  ADD CONSTRAINT `fk_tb_info_salud_tb_estudiantes1` FOREIGN KEY (`id_estudiante`) REFERENCES `tb_estudiantes` (`id_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_localizacion`
--
ALTER TABLE `tb_localizacion`
  ADD CONSTRAINT `fk_tb_localizacion_tb_ciudades1` FOREIGN KEY (`tb_ciudades_id_ciudad`, `tb_ciudades_id_departamento`) REFERENCES `tb_ciudades` (`id_ciudad`, `id_departamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tb_localizacion_ibfk_5` FOREIGN KEY (`id_estudiante`) REFERENCES `tb_contactos` (`id_estudiante`),
  ADD CONSTRAINT `tb_localizacion_ibfk_6` FOREIGN KEY (`tb_ciudades_id_departamento`) REFERENCES `tb_ciudades` (`id_departamento`),
  ADD CONSTRAINT `tb_localizacion_ibfk_7` FOREIGN KEY (`tb_ciudades_id_ciudad`) REFERENCES `tb_ciudades` (`id_ciudad`);

--
-- Constraints for table `tb_preguntas`
--
ALTER TABLE `tb_preguntas`
  ADD CONSTRAINT `tb_preguntas_ibfk_1` FOREIGN KEY (`encuesta_id`) REFERENCES `tb_encuestas` (`id`);

--
-- Constraints for table `tb_programas`
--
ALTER TABLE `tb_programas`
  ADD CONSTRAINT `tb_programas_ibfk_1` FOREIGN KEY (`facultad_id`) REFERENCES `tb_facultades` (`facultad_id`) ON DELETE CASCADE;

--
-- Constraints for table `tb_sedes`
--
ALTER TABLE `tb_sedes`
  ADD CONSTRAINT `tb_sedes_ibfk_1` FOREIGN KEY (`vicerrectoria_id`) REFERENCES `tb_vicerrectorias` (`vicerrectoria_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
