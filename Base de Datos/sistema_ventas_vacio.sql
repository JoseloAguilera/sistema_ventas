-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.31 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para sistema_ventas
DROP DATABASE IF EXISTS `sistema_ventas`;
CREATE DATABASE IF NOT EXISTS `sistema_ventas` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistema_ventas`;

-- Volcando estructura para tabla sistema_ventas.caja_chica
DROP TABLE IF EXISTS `caja_chica`;
CREATE TABLE IF NOT EXISTS `caja_chica` (
  `id_caja` int NOT NULL AUTO_INCREMENT,
  `referencia_caja` varchar(255) NOT NULL,
  `monto_caja` double NOT NULL,
  `descripcion_caja` varchar(255) NOT NULL,
  `tipo_caja` tinyint NOT NULL,
  `users_caja` int NOT NULL,
  `date_added_caja` datetime NOT NULL,
  PRIMARY KEY (`id_caja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.caja_chica: ~0 rows (aproximadamente)

-- Volcando estructura para tabla sistema_ventas.cargo
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `id_cargo` int NOT NULL AUTO_INCREMENT,
  `nombre_cargo` varchar(255) NOT NULL,
  `estado_cargo` varchar(11) NOT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.cargo: ~0 rows (aproximadamente)

-- Volcando estructura para tabla sistema_ventas.ciudad
DROP TABLE IF EXISTS `ciudad`;
CREATE TABLE IF NOT EXISTS `ciudad` (
  `id_ciudad` int NOT NULL AUTO_INCREMENT,
  `nombre_ciudad` varchar(100) NOT NULL,
  PRIMARY KEY (`id_ciudad`)
) ENGINE=MyISAM AUTO_INCREMENT=261 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistema_ventas.ciudad: 260 rows
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` (`id_ciudad`, `nombre_ciudad`) VALUES
	(1, 'Asunción'),
	(2, 'CDE'),
	(3, 'Luque'),
	(4, 'San Lorenzo'),
	(5, 'Capiata'),
	(6, 'Lambare'),
	(7, 'Fdo de la Mora'),
	(8, 'Limpio'),
	(9, 'Caaguazu'),
	(10, 'Coronel Oviedo'),
	(11, 'PJC'),
	(12, 'Itaugua'),
	(13, 'Pte Franco'),
	(14, 'MRA'),
	(15, 'Minga Guazu'),
	(16, 'Concepcion'),
	(17, 'Hernandarias'),
	(18, 'Aregua'),
	(19, 'Villarrica'),
	(20, 'San Antonio'),
	(21, 'Horqueta'),
	(22, 'Cambyreta'),
	(23, 'Curuguaty'),
	(24, 'Ypane'),
	(25, 'Caacupe'),
	(26, 'Santani'),
	(27, 'JA Saldivar'),
	(28, 'Villa Hayes'),
	(29, 'Ita'),
	(30, 'Villa Elisa'),
	(31, 'Capiibary'),
	(32, 'Santa Rosa del Aguaray'),
	(33, 'Villeta'),
	(34, 'Salto del Guaira'),
	(35, 'San Juan Nepomuceno'),
	(36, 'Guarambare'),
	(37, 'J E Estigarribia'),
	(38, 'Itakyry'),
	(39, 'Carapegua'),
	(40, 'Santa Rita'),
	(41, 'San Pedro del Ycuamandiyu'),
	(42, 'San Ignacio Guazu'),
	(43, 'Yhu'),
	(44, 'Yby Yau'),
	(45, 'San Pedro del Parana'),
	(46, 'Tobati'),
	(47, 'Repatriacion'),
	(48, 'Pilar'),
	(49, 'Abai'),
	(50, 'Yaguaron'),
	(51, 'Guayaibi'),
	(52, 'Piribebuy'),
	(53, 'Mcal Jose Felix Estigarribia'),
	(54, 'Chore'),
	(55, 'Tomas Romero Pereira'),
	(56, 'Ypacarai'),
	(57, 'Tte Primero Manuel Irala Fernandez'),
	(58, 'Yasy Cañy'),
	(59, 'Independencia'),
	(60, 'Paso Yobai'),
	(61, 'Juan Emiliano Oleary'),
	(62, 'Caazapa'),
	(63, 'Arroyos y Esteros'),
	(64, 'Ybycui'),
	(65, 'Liberacion'),
	(66, 'Dr Juan Manuel Frutos'),
	(67, 'Gral Isidoro Resquin'),
	(68, 'Eusebio Ayala'),
	(69, 'San Juan Bautista'),
	(70, 'Edelira'),
	(71, 'Paraguari'),
	(72, 'Gralk Elizardo Aquino'),
	(73, 'Yuty'),
	(74, 'San Rafael del Parana'),
	(75, 'Mallorquin'),
	(76, 'Quiindy'),
	(77, 'Cnel Jose Felix Bogado'),
	(78, 'Benjamin Aceval'),
	(79, 'Natalio'),
	(80, 'Emboscada'),
	(81, 'San Jose de los Arroyos'),
	(82, '3 de Mayo'),
	(83, 'Carlos Antonio Lopez'),
	(84, 'Filadelfia'),
	(85, 'Ayolas'),
	(86, 'Tavai'),
	(87, 'Capitan Bado'),
	(88, 'Loreto'),
	(89, 'Santa Rosa de Lima'),
	(90, 'Alto Vera'),
	(91, 'San Joaquin'),
	(92, 'Pirayu'),
	(93, 'Bella Vista Norte'),
	(94, 'Villa Ygatiomi'),
	(95, 'Obligado'),
	(96, 'Raul Arsenio Oviedo'),
	(97, 'Loma Plata'),
	(98, 'Atyra'),
	(99, 'Itapua Poty'),
	(100, 'Yrybucua'),
	(101, 'Tacuati'),
	(102, 'Acahay'),
	(103, 'Carayao'),
	(104, 'Hohenau'),
	(105, 'Mayor Otaño'),
	(106, 'Minga Pora'),
	(107, 'Bella Vista'),
	(108, 'Tembiapora'),
	(109, 'Capitan Meza'),
	(110, 'Altos'),
	(111, ' Mbuyapey'),
	(112, 'Capitan Miranda'),
	(113, 'Ybyrarobana'),
	(114, 'Caraguatay'),
	(115, 'Yatytay'),
	(116, 'Belen'),
	(117, 'Gral Artigas'),
	(118, 'Santa Rosa del Mbutuy'),
	(119, 'Nueva Esperanza'),
	(120, 'Nueva Italia'),
	(121, 'San Roque Gonzalez'),
	(122, 'Yataity del Norte'),
	(123, 'San Bernardino'),
	(124, 'Lima'),
	(125, 'Puerto Pinasco'),
	(126, 'Gral Francisco Caballero Alvarez'),
	(127, 'San Lazaro'),
	(128, 'Vaqueria'),
	(129, 'Yby Pyta'),
	(130, 'San Alberto'),
	(131, 'Itacurubi del Rosario'),
	(132, 'Jose Domingo Ocampos'),
	(133, 'Yguazu'),
	(134, 'San Cristobal'),
	(135, 'Cap. Mauricio Jose Troche'),
	(136, 'Itacurubi de la Cordillera'),
	(137, 'Fram'),
	(138, 'Villa del Rosario'),
	(139, 'San Cosme y Damian'),
	(140, 'Borja'),
	(141, 'Los Cedrales'),
	(142, '25 de Diciembre'),
	(143, '3 de Febrero'),
	(144, 'Trinidad'),
	(145, 'San Juan del Parana'),
	(146, 'Corpus Christi'),
	(147, 'Dr Raul Peña'),
	(148, 'Regimiento de Infantería Tres Corrales'),
	(149, 'Alberdi'),
	(150, 'Pirapo'),
	(151, 'Azotey'),
	(152, 'Ñacunday'),
	(153, 'Carmen del Parana'),
	(154, 'Santa María de Fe'),
	(155, 'La Paloma del Espíritu Santo'),
	(156, 'Mbocayaty del Guairá'),
	(157, 'Ypejhu'),
	(158, 'Iturbe'),
	(159, 'Katuete'),
	(160, 'Mbaracayu'),
	(161, 'Escobar'),
	(162, 'General Eugenio Alejandrino Garay'),
	(163, 'Tavapy'),
	(164, 'Caapucu'),
	(165, 'Doctor Cecilio Báez'),
	(166, 'General Delgado'),
	(167, 'Zanja Pytá'),
	(168, 'Isla Pucu'),
	(169, 'Itape'),
	(170, 'Nueva Alborada'),
	(171, 'Santa Rosa del Monday'),
	(172, 'Quyquyho'),
	(173, 'Ybytymi'),
	(174, 'Nueva Germania'),
	(175, 'Coronel Martínez'),
	(176, 'General Bernardino Caballero'),
	(177, 'Union'),
	(178, 'Sargento José Félix López'),
	(179, 'Mariscal Francisco Solano López'),
	(180, 'Valenzuela'),
	(181, 'Juan de Mena'),
	(182, 'José A. Fassardi'),
	(183, 'Fulgencio Yegros'),
	(184, 'Sapucai'),
	(185, 'Puerto Casado'),
	(186, 'Primero de Marzo'),
	(187, 'Santiago'),
	(188, 'Simón Bolívar'),
	(189, 'Félix Pérez Cardozo'),
	(190, 'Jesús'),
	(191, 'General Higinio Morínigo'),
	(192, 'Iruña'),
	(193, 'Buena Vista'),
	(194, 'San Miguel'),
	(195, 'Nanawa'),
	(196, 'San Juan Bautista del Ñeembucú'),
	(197, 'San Alfredo'),
	(198, 'Naranjal'),
	(199, 'Dr Moisés Santiago Bertoni'),
	(200, 'La Colmena'),
	(201, 'Cerrito'),
	(202, '	Domingo Martínez de Irala'),
	(203, 'Karapaí'),
	(204, 'La Pastora'),
	(205, 'Natalicio Talavera'),
	(206, 'Nueva Toledo'),
	(207, 'Santa Elena'),
	(208, 'Nueva Londres'),
	(209, 'Maciel'),
	(210, 'Yataity del Guairá'),
	(211, 'José Leandro Oviedo'),
	(212, '	Tebicuarymí'),
	(213, 'Capitán Carmelo Peralta'),
	(214, 'Fuerte Olimpo'),
	(215, 'San José Obrero'),
	(216, 'Antequera'),
	(217, 'Mayor José Martínez'),
	(218, 'José Falcón'),
	(219, 'Mbocayaty del Yhaguy'),
	(220, 'Paso Barreto'),
	(221, 'Santa Fe del Paraná'),
	(222, 'Gral José Eduvigis Díaz'),
	(223, 'Tacuaras'),
	(224, 'Nueva Colombia'),
	(225, 'Villa Oliva'),
	(226, 'Villa Florida'),
	(227, 'San Patricio'),
	(228, 'San Pablo'),
	(229, 'Loma Grande'),
	(230, '	Laureles'),
	(231, 'Teniente Esteban Martínez'),
	(232, 'Itanará'),
	(233, 'Ñumí'),
	(234, 'General José María Bruguez'),
	(235, 'La Paz'),
	(236, 'Tebicuary'),
	(237, 'Humaitá'),
	(238, 'Isla Umbú'),
	(239, 'San Salvador'),
	(240, 'Yabebyry'),
	(241, 'Bahía Negra'),
	(242, 'Villalbín'),
	(243, 'Guazú Cuá'),
	(244, 'Paso de Patria'),
	(245, 'Desmochados'),
	(246, 'Doctor Bottrell'),
	(247, 'Villa Franca'),
	(248, 'San Carlos del Apa'),
	(249, 'Maracaná'),
	(250, 'María Antonia'),
	(251, 'San Vicente Pancholo'),
	(252, 'Arroyito'),
	(253, 'Nueva Asunción'),
	(254, 'Paso Horqueta'),
	(255, 'Cerro Corá'),
	(256, 'Campo Aceval'),
	(257, 'Laurel'),
	(258, 'Paso Barreto'),
	(259, 'San José del Rosario'),
	(260, 'Boqueron');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.clientes
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(255) NOT NULL,
  `fiscal_cliente` varchar(255) NOT NULL,
  `telefono_cliente` char(30) NOT NULL,
  `email_cliente` varchar(64) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `status_cliente` tinyint NOT NULL,
  `date_added` datetime NOT NULL,
  `facebook` varchar(80) DEFAULT NULL,
  `instagram` varchar(80) DEFAULT NULL,
  `twitter` varchar(80) DEFAULT NULL,
  `tiktok` varchar(80) DEFAULT NULL,
  `fec_nacimiento` date DEFAULT NULL,
  `ciudad` varchar(80) DEFAULT NULL,
  `canal_comunicacion` varchar(150) DEFAULT NULL,
  `hijos` varchar(1) DEFAULT 'N',
  `pareja` varchar(1) DEFAULT 'N',
  `int_mayorista` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.clientes: 8 rows
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.comprobantes
DROP TABLE IF EXISTS `comprobantes`;
CREATE TABLE IF NOT EXISTS `comprobantes` (
  `id_comp` int NOT NULL AUTO_INCREMENT,
  `nombre_comp` varchar(100) NOT NULL,
  `serie_comp` varchar(100) NOT NULL,
  `desde_comp` int NOT NULL,
  `hasta_comp` int NOT NULL,
  `long_comp` int NOT NULL,
  `actual_comp` int NOT NULL,
  `vencimiento_comp` date NOT NULL,
  `estado_comp` int NOT NULL,
  PRIMARY KEY (`id_comp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.comprobantes: ~1 rows (aproximadamente)
INSERT INTO `comprobantes` (`id_comp`, `nombre_comp`, `serie_comp`, `desde_comp`, `hasta_comp`, `long_comp`, `actual_comp`, `vencimiento_comp`, `estado_comp`) VALUES
	(3, 'FACTURA', '001-001', 1, 999999, 6, 1, '2035-12-31', 1);

-- Volcando estructura para tabla sistema_ventas.creditos
DROP TABLE IF EXISTS `creditos`;
CREATE TABLE IF NOT EXISTS `creditos` (
  `id_credito` int NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_credito` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `monto_credito` double NOT NULL,
  `saldo_credito` double NOT NULL,
  `estado_credito` tinyint(1) NOT NULL,
  `id_users_credito` int NOT NULL,
  `id_sucursal` int NOT NULL,
  PRIMARY KEY (`id_credito`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.creditos: 2 rows
/*!40000 ALTER TABLE `creditos` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditos` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.creditos_abonos
DROP TABLE IF EXISTS `creditos_abonos`;
CREATE TABLE IF NOT EXISTS `creditos_abonos` (
  `id_abono` int NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_abono` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `monto_abono` double NOT NULL,
  `abono` double NOT NULL,
  `saldo_abono` double NOT NULL,
  `id_users_abono` int NOT NULL,
  `id_sucursal` int NOT NULL,
  `concepto_abono` varchar(255) NOT NULL,
  `id_credito` int NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.creditos_abonos: 2 rows
/*!40000 ALTER TABLE `creditos_abonos` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditos_abonos` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.creditos_abonos_prov
DROP TABLE IF EXISTS `creditos_abonos_prov`;
CREATE TABLE IF NOT EXISTS `creditos_abonos_prov` (
  `id_abono` int NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_abono` datetime NOT NULL,
  `id_proveedor` int NOT NULL,
  `monto_abono` double NOT NULL,
  `abono` double NOT NULL,
  `saldo_abono` double NOT NULL,
  `id_users_abono` int NOT NULL,
  `id_sucursal` int NOT NULL,
  `concepto_abono` varchar(255) NOT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.creditos_abonos_prov: 1 rows
/*!40000 ALTER TABLE `creditos_abonos_prov` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditos_abonos_prov` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.credito_proveedor
DROP TABLE IF EXISTS `credito_proveedor`;
CREATE TABLE IF NOT EXISTS `credito_proveedor` (
  `id_credito` int NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_credito` datetime NOT NULL,
  `id_proveedor` int NOT NULL,
  `monto_credito` double NOT NULL,
  `saldo_credito` double NOT NULL,
  `estado_credito` tinyint(1) NOT NULL,
  `id_users_credito` int NOT NULL,
  `id_sucursal` int NOT NULL,
  PRIMARY KEY (`id_credito`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.credito_proveedor: 1 rows
/*!40000 ALTER TABLE `credito_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `credito_proveedor` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.cta_contable
DROP TABLE IF EXISTS `cta_contable`;
CREATE TABLE IF NOT EXISTS `cta_contable` (
  `id_cuenta_cont` int NOT NULL AUTO_INCREMENT,
  `descripcion_cta_contable` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cuenta_cont`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistema_ventas.cta_contable: 2 rows
/*!40000 ALTER TABLE `cta_contable` DISABLE KEYS */;
INSERT INTO `cta_contable` (`id_cuenta_cont`, `descripcion_cta_contable`) VALUES
	(1, 'Pago de Salarios'),
	(2, 'Pago de Impuestos');
/*!40000 ALTER TABLE `cta_contable` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.currencies
DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.currencies: ~5 rows (aproximadamente)
INSERT INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES
	(1, 'US Dollar', '$', '2', ',', '.', 'USD'),
	(2, 'Libra Esterlina', '&pound;', '2', ',', '.', 'GBP'),
	(3, 'Euro', 'â‚¬', '2', '.', ',', 'EUR'),
	(4, 'South African Rand', 'R', '2', '.', ',', 'ZAR'),
	(5, 'Guarani Paraguayo', 'Gs', '0', '.', ',', 'PYG');

-- Volcando estructura para tabla sistema_ventas.detalle_fact_compra
DROP TABLE IF EXISTS `detalle_fact_compra`;
CREATE TABLE IF NOT EXISTS `detalle_fact_compra` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_factura` int NOT NULL,
  `numero_factura` varchar(50) NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` double NOT NULL,
  `precio_costo` double NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  KEY `id_factura` (`id_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.detalle_fact_compra: 5 rows
/*!40000 ALTER TABLE `detalle_fact_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_fact_compra` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.detalle_fact_cot
DROP TABLE IF EXISTS `detalle_fact_cot`;
CREATE TABLE IF NOT EXISTS `detalle_fact_cot` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_factura` int NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `desc_venta` int NOT NULL,
  `precio_venta` double NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  KEY `id_factura` (`id_factura`),
  KEY `numero_factura` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.detalle_fact_cot: 0 rows
/*!40000 ALTER TABLE `detalle_fact_cot` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_fact_cot` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.detalle_fact_ventas
DROP TABLE IF EXISTS `detalle_fact_ventas`;
CREATE TABLE IF NOT EXISTS `detalle_fact_ventas` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_factura` int NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `desc_venta` int NOT NULL,
  `precio_venta` double NOT NULL,
  `importe_venta` double NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  KEY `id_factura` (`id_factura`),
  KEY `numero_factura` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.detalle_fact_ventas: 2 rows
/*!40000 ALTER TABLE `detalle_fact_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_fact_ventas` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.detalle_traslado
DROP TABLE IF EXISTS `detalle_traslado`;
CREATE TABLE IF NOT EXISTS `detalle_traslado` (
  `id_detalle_traslado` int NOT NULL AUTO_INCREMENT,
  `id_traslado` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_venta` double NOT NULL,
  `num_transaccion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_detalle_traslado`),
  KEY `id_traslado` (`id_traslado`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.detalle_traslado: ~0 rows (aproximadamente)

-- Volcando estructura para tabla sistema_ventas.egresos
DROP TABLE IF EXISTS `egresos`;
CREATE TABLE IF NOT EXISTS `egresos` (
  `id_egreso` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `cuenta_contable` varchar(100) NOT NULL,
  `proveedor` int NOT NULL DEFAULT '0',
  `concepto` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `nro_comprobante` varchar(50) NOT NULL DEFAULT '',
  `medio_pago` varchar(100) NOT NULL DEFAULT '',
  `importe` double NOT NULL DEFAULT '0',
  `fecha_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` int NOT NULL DEFAULT '1',
  `users` int NOT NULL,
  PRIMARY KEY (`id_egreso`),
  KEY `users` (`users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.egresos: ~2 rows (aproximadamente)

-- Volcando estructura para tabla sistema_ventas.facturas_compras
DROP TABLE IF EXISTS `facturas_compras`;
CREATE TABLE IF NOT EXISTS `facturas_compras` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(50) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_proveedor` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` int NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint NOT NULL,
  `id_users_factura` int NOT NULL,
  `id_sucursal` int NOT NULL,
  `ref_factura` varchar(50) NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`),
  KEY `id_sucursal` (`id_sucursal`),
  KEY `id_proveedor` (`id_proveedor`),
  KEY `id_vendedor` (`id_vendedor`),
  KEY `id_users_factura` (`id_users_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.facturas_compras: 5 rows
/*!40000 ALTER TABLE `facturas_compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas_compras` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.facturas_cot
DROP TABLE IF EXISTS `facturas_cot`;
CREATE TABLE IF NOT EXISTS `facturas_cot` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int NOT NULL,
  `validez` double NOT NULL,
  `id_sucursal` int NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.facturas_cot: 0 rows
/*!40000 ALTER TABLE `facturas_cot` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas_cot` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.facturas_ventas
DROP TABLE IF EXISTS `facturas_ventas`;
CREATE TABLE IF NOT EXISTS `facturas_ventas` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int NOT NULL,
  `dinero_resibido_fac` double NOT NULL,
  `id_sucursal` int NOT NULL,
  `id_comp_factura` int NOT NULL,
  `num_trans_factura` varchar(50) DEFAULT NULL,
  `origen` varchar(30) NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.facturas_ventas: 1 rows
/*!40000 ALTER TABLE `facturas_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas_ventas` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.feria1
DROP TABLE IF EXISTS `feria1`;
CREATE TABLE IF NOT EXISTS `feria1` (
  `id_feria` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `stock_producto` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistema_ventas.feria1: 1 rows
/*!40000 ALTER TABLE `feria1` DISABLE KEYS */;
/*!40000 ALTER TABLE `feria1` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.feria2
DROP TABLE IF EXISTS `feria2`;
CREATE TABLE IF NOT EXISTS `feria2` (
  `id_feria` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `stock_producto` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistema_ventas.feria2: 1 rows
/*!40000 ALTER TABLE `feria2` DISABLE KEYS */;
/*!40000 ALTER TABLE `feria2` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.historial_productos
DROP TABLE IF EXISTS `historial_productos`;
CREATE TABLE IF NOT EXISTS `historial_productos` (
  `id_historial` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `id_users` int NOT NULL,
  `fecha_historial` datetime NOT NULL,
  `nota_historial` varchar(255) NOT NULL,
  `referencia_historial` varchar(100) NOT NULL,
  `cantidad_historial` double NOT NULL,
  `tipo_historial` int NOT NULL,
  PRIMARY KEY (`id_historial`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistema_ventas.historial_productos: ~0 rows (aproximadamente)

-- Volcando estructura para tabla sistema_ventas.ingresos
DROP TABLE IF EXISTS `ingresos`;
CREATE TABLE IF NOT EXISTS `ingresos` (
  `id_ingreso` int NOT NULL AUTO_INCREMENT,
  `id_consulta` int NOT NULL,
  `id_paciente` int NOT NULL,
  `monto` double NOT NULL,
  `fecha_added` datetime NOT NULL,
  `users` int NOT NULL,
  PRIMARY KEY (`id_ingreso`),
  KEY `id_consulta` (`id_consulta`),
  KEY `id_paciente` (`id_paciente`),
  KEY `users` (`users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.ingresos: ~0 rows (aproximadamente)

-- Volcando estructura para tabla sistema_ventas.kardex
DROP TABLE IF EXISTS `kardex`;
CREATE TABLE IF NOT EXISTS `kardex` (
  `id_kardex` int NOT NULL AUTO_INCREMENT,
  `fecha_kardex` date NOT NULL,
  `cant_entrada` double NOT NULL,
  `producto_kardex` int NOT NULL,
  `costo_entrada` double NOT NULL,
  `total_entrada` double NOT NULL,
  `cant_salida` double NOT NULL DEFAULT '0',
  `costo_salida` double NOT NULL DEFAULT '0',
  `total_salida` double NOT NULL DEFAULT '0',
  `cant_saldo` double NOT NULL,
  `costo_saldo` double NOT NULL,
  `total_saldo` double NOT NULL,
  `added_kardex` datetime NOT NULL,
  `users_kardex` int NOT NULL,
  `tipo_movimiento` int NOT NULL,
  PRIMARY KEY (`id_kardex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.kardex: ~8 rows (aproximadamente)

-- Volcando estructura para tabla sistema_ventas.lineas
DROP TABLE IF EXISTS `lineas`;
CREATE TABLE IF NOT EXISTS `lineas` (
  `id_linea` int NOT NULL AUTO_INCREMENT,
  `nombre_linea` varchar(255) NOT NULL,
  `descripcion_linea` text NOT NULL,
  `estado_linea` int NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id_linea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.lineas: ~1 rows (aproximadamente)

-- Volcando estructura para tabla sistema_ventas.modulos
DROP TABLE IF EXISTS `modulos`;
CREATE TABLE IF NOT EXISTS `modulos` (
  `id_modulo` int NOT NULL AUTO_INCREMENT,
  `nombre_modulo` varchar(30) NOT NULL,
  PRIMARY KEY (`id_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.modulos: ~12 rows (aproximadamente)
INSERT INTO `modulos` (`id_modulo`, `nombre_modulo`) VALUES
	(1, 'Inicio'),
	(2, 'Productos'),
	(3, 'Proveedores'),
	(4, 'Clientes'),
	(5, 'Reportes'),
	(6, 'Configuracion'),
	(7, 'Usuarios'),
	(8, 'Permisos'),
	(9, 'Categorias'),
	(10, 'Ventas'),
	(11, 'Compras'),
	(13, 'Gastos');

-- Volcando estructura para tabla sistema_ventas.paginaweb
DROP TABLE IF EXISTS `paginaweb`;
CREATE TABLE IF NOT EXISTS `paginaweb` (
  `id_feria` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `stock_producto` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistema_ventas.paginaweb: 1 rows
/*!40000 ALTER TABLE `paginaweb` DISABLE KEYS */;
/*!40000 ALTER TABLE `paginaweb` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.perfil
DROP TABLE IF EXISTS `perfil`;
CREATE TABLE IF NOT EXISTS `perfil` (
  `id_perfil` int NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `giro_empresa` text NOT NULL,
  `fiscal_empresa` varchar(25) NOT NULL,
  `direccion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ciudad` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `codigo_postal` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `estado` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `impuesto` int NOT NULL,
  `nom_impuesto` varchar(50) NOT NULL,
  `moneda` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `logo_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.perfil: ~1 rows (aproximadamente)
INSERT INTO `perfil` (`id_perfil`, `nombre_empresa`, `giro_empresa`, `fiscal_empresa`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `impuesto`, `nom_impuesto`, `moneda`, `logo_url`) VALUES
	(1, 'NACHO', 'SISTEMA DE VENTAS', '00000000-0', 'Calle Paseo de los Mitos', 'Yaguaron', '7000', 'Paraguarí', '0973 118 404', 'info@softys.com', 10, 'IVA', 'Gs', '../../img/1655304455_Logo-oroty.png');

-- Volcando estructura para tabla sistema_ventas.productos
DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `codigo_producto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `descripcion_producto` text NOT NULL,
  `id_linea_producto` int NOT NULL,
  `id_proveedor` int NOT NULL,
  `inv_producto` tinyint DEFAULT NULL,
  `iva_producto` tinyint DEFAULT NULL,
  `estado_producto` tinyint DEFAULT NULL,
  `costo_producto` double DEFAULT NULL,
  `utilidad_producto` double DEFAULT NULL,
  `moneda_producto` int DEFAULT NULL,
  `valor1_producto` double DEFAULT NULL,
  `valor2_producto` double DEFAULT NULL,
  `valor3_producto` double DEFAULT NULL,
  `stock_producto` double DEFAULT NULL,
  `stock_min_producto` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `image_path` varchar(300) DEFAULT NULL,
  `id_imp_producto` int DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_cat_producto` (`id_linea_producto`),
  KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla sistema_ventas.productos: ~2 rows (aproximadamente)

-- Volcando estructura para tabla sistema_ventas.proveedores
DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE IF NOT EXISTS `proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(255) NOT NULL,
  `fiscal_proveedor` varchar(100) NOT NULL,
  `web_proveedor` varchar(255) NOT NULL,
  `direccion_proveedor` text NOT NULL,
  `contacto_proveedor` varchar(255) NOT NULL,
  `email_proveedor` varchar(255) NOT NULL,
  `telefono_proveedor` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `estado_proveedor` tinyint NOT NULL,
  `facebook` varchar(80) DEFAULT NULL,
  `instagram` varchar(80) DEFAULT NULL,
  `twitter` varchar(80) DEFAULT NULL,
  `tiktok` varchar(80) DEFAULT NULL,
  `rubro` varchar(100) DEFAULT NULL,
  `especialidad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.proveedores: ~4 rows (aproximadamente)

-- Volcando estructura para tabla sistema_ventas.stock
DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `id_stock` int NOT NULL AUTO_INCREMENT,
  `id_producto_stock` int NOT NULL,
  `id_sucursal_stock` int NOT NULL,
  `cantidad_stock` double NOT NULL,
  PRIMARY KEY (`id_stock`),
  KEY `id_producto_stock` (`id_producto_stock`),
  KEY `id_sucursal_stock` (`id_sucursal_stock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.stock: ~0 rows (aproximadamente)

-- Volcando estructura para tabla sistema_ventas.sucursales
DROP TABLE IF EXISTS `sucursales`;
CREATE TABLE IF NOT EXISTS `sucursales` (
  `id_sucursal` int NOT NULL AUTO_INCREMENT,
  `codigo_sucursal` varchar(50) NOT NULL,
  `nombre_sucursal` varchar(255) NOT NULL,
  `direccion_sucursal` text NOT NULL,
  `limite_sucursal` double NOT NULL,
  `estado_sucursal` tinyint NOT NULL,
  `fecha_added` datetime NOT NULL,
  PRIMARY KEY (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.sucursales: ~1 rows (aproximadamente)
INSERT INTO `sucursales` (`id_sucursal`, `codigo_sucursal`, `nombre_sucursal`, `direccion_sucursal`, `limite_sucursal`, `estado_sucursal`, `fecha_added`) VALUES
	(1, 'SC001', 'CASA MATRIZ', 'AV. SAN BLAS', 40, 1, '2018-01-05 11:09:49');

-- Volcando estructura para tabla sistema_ventas.tmp_compra
DROP TABLE IF EXISTS `tmp_compra`;
CREATE TABLE IF NOT EXISTS `tmp_compra` (
  `id_tmp` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `costo_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Volcando datos para la tabla sistema_ventas.tmp_compra: 1 rows
/*!40000 ALTER TABLE `tmp_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_compra` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.tmp_cotizacion
DROP TABLE IF EXISTS `tmp_cotizacion`;
CREATE TABLE IF NOT EXISTS `tmp_cotizacion` (
  `id_tmp` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double DEFAULT NULL,
  `desc_tmp` int NOT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Volcando datos para la tabla sistema_ventas.tmp_cotizacion: 3 rows
/*!40000 ALTER TABLE `tmp_cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_cotizacion` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.tmp_transferencia
DROP TABLE IF EXISTS `tmp_transferencia`;
CREATE TABLE IF NOT EXISTS `tmp_transferencia` (
  `id_tmp` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistema_ventas.tmp_transferencia: 0 rows
/*!40000 ALTER TABLE `tmp_transferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_transferencia` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.tmp_ventas
DROP TABLE IF EXISTS `tmp_ventas`;
CREATE TABLE IF NOT EXISTS `tmp_ventas` (
  `id_tmp` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double DEFAULT NULL,
  `desc_tmp` int NOT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=322 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Volcando datos para la tabla sistema_ventas.tmp_ventas: 0 rows
/*!40000 ALTER TABLE `tmp_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_ventas` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.transferencia
DROP TABLE IF EXISTS `transferencia`;
CREATE TABLE IF NOT EXISTS `transferencia` (
  `id_transferencia` int NOT NULL AUTO_INCREMENT,
  `origen` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `destino` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `comentario` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id_transferencia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sistema_ventas.transferencia: 0 rows
/*!40000 ALTER TABLE `transferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferencia` ENABLE KEYS */;

-- Volcando estructura para tabla sistema_ventas.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_users` int NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',
  `nombre_users` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `apellido_users` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `usuario_users` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `con_users` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `email_users` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `tipo_users` tinyint NOT NULL,
  `cargo_users` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sucursal_users` tinyint NOT NULL,
  `date_added` datetime NOT NULL,
  `comision_users` double NOT NULL,
  PRIMARY KEY (`id_users`),
  UNIQUE KEY `user_name` (`usuario_users`),
  UNIQUE KEY `user_email` (`email_users`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='user data';

-- Volcando datos para la tabla sistema_ventas.users: ~2 rows (aproximadamente)
INSERT INTO `users` (`id_users`, `nombre_users`, `apellido_users`, `usuario_users`, `con_users`, `email_users`, `tipo_users`, `cargo_users`, `sucursal_users`, `date_added`, `comision_users`) VALUES
	(1, 'SUPER', 'ADMINISTRADOR', 'admin', '$2y$10$MPVHzZ2ZPOWmtUUGCq3RXu31OTB.jo7M9LZ7PmPQYmgETSNn19ejO', 'root@admin.com', 0, '1', 1, '2016-05-21 15:06:00', 0),
	(4, 'AA', 'AA', 'aaaa', '$2y$10$21TbTeuPTyJeKII2fcwOEuNWLsShysR3R.2JYLlPMoJjKqUyFC8cS', 'aaaa@aaaa.com', 0, '1', 2, '2022-08-03 08:27:30', 0);

-- Volcando estructura para tabla sistema_ventas.user_group
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE IF NOT EXISTS `user_group` (
  `user_group_id` int NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `permission` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_group_id`),
  KEY `user_group_id` (`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla sistema_ventas.user_group: ~1 rows (aproximadamente)
INSERT INTO `user_group` (`user_group_id`, `name`, `permission`, `date_added`) VALUES
	(1, 'Super Administrador', 'Inicio,1,1,1;Productos,1,1,1;Proveedores,1,1,1;Clientes,1,1,1;Reportes,1,1,1;Configuracion,1,1,1;Usuarios,1,1,1;Permisos,1,1,1;Categorias,1,1,1;Ventas,1,1,1;Compras,1,1,1;Gastos,1,1,1;', '2017-08-09 10:22:15');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
