-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.21 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para sist_ventas
CREATE DATABASE IF NOT EXISTS `sist_ventas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sist_ventas`;

-- Volcando estructura para tabla sist_ventas.caja_chica
CREATE TABLE IF NOT EXISTS `caja_chica` (
  `id_caja` int(11) NOT NULL AUTO_INCREMENT,
  `referencia_caja` varchar(255) NOT NULL,
  `monto_caja` double NOT NULL,
  `descripcion_caja` varchar(255) NOT NULL,
  `tipo_caja` tinyint(4) NOT NULL,
  `users_caja` int(11) NOT NULL,
  `date_added_caja` datetime NOT NULL,
  PRIMARY KEY (`id_caja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.caja_chica: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `caja_chica` DISABLE KEYS */;
/*!40000 ALTER TABLE `caja_chica` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.cargo
CREATE TABLE IF NOT EXISTS `cargo` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cargo` varchar(255) NOT NULL,
  `estado_cargo` varchar(11) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.cargo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(255) NOT NULL,
  `fiscal_cliente` varchar(255) NOT NULL,
  `telefono_cliente` char(30) NOT NULL,
  `email_cliente` varchar(64) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `status_cliente` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `codigo_producto` (`nombre_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.clientes: 3 rows
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT IGNORE INTO `clientes` (`id_cliente`, `nombre_cliente`, `fiscal_cliente`, `telefono_cliente`, `email_cliente`, `direccion_cliente`, `status_cliente`, `date_added`) VALUES
	(1, 'FABIAN RODRIGUEZ', '4316085', '098763235', 'a@a.com', 'Km 6 Av. Blas Garay\r\nAv. San José, a una cuadra', 1, '2021-08-07 10:18:21'),
	(2, 'José Aguilera', '5971557-0', '0973118404', 'joseaguilera1709@gmail.com', 'KM 6 AV. BLAS GARAY', 1, '2021-08-16 14:13:10'),
	(3, 'ssss', '55555', '0973118404', 'hy@hy.com', 'Km 6 Av. Blas Garay\r\nAv. San José, a una cuadra', 1, '2021-08-20 10:13:04');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.comprobantes
CREATE TABLE IF NOT EXISTS `comprobantes` (
  `id_comp` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_comp` varchar(100) NOT NULL,
  `serie_comp` varchar(100) NOT NULL,
  `desde_comp` int(11) NOT NULL,
  `hasta_comp` int(11) NOT NULL,
  `long_comp` int(11) NOT NULL,
  `actual_comp` int(11) NOT NULL,
  `vencimiento_comp` date NOT NULL,
  `estado_comp` int(11) NOT NULL,
  PRIMARY KEY (`id_comp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.comprobantes: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `comprobantes` DISABLE KEYS */;
INSERT IGNORE INTO `comprobantes` (`id_comp`, `nombre_comp`, `serie_comp`, `desde_comp`, `hasta_comp`, `long_comp`, `actual_comp`, `vencimiento_comp`, `estado_comp`) VALUES
	(1, 'FACTURA UNO', '001-001-', 1, 999999, 6, 0, '2021-12-20', 1);
/*!40000 ALTER TABLE `comprobantes` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.creditos
CREATE TABLE IF NOT EXISTS `creditos` (
  `id_credito` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_credito` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `monto_credito` double NOT NULL,
  `saldo_credito` double NOT NULL,
  `estado_credito` tinyint(1) NOT NULL,
  `id_users_credito` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  PRIMARY KEY (`id_credito`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.creditos: 6 rows
/*!40000 ALTER TABLE `creditos` DISABLE KEYS */;
INSERT IGNORE INTO `creditos` (`id_credito`, `numero_factura`, `fecha_credito`, `id_cliente`, `id_vendedor`, `monto_credito`, `saldo_credito`, `estado_credito`, `id_users_credito`, `id_sucursal`) VALUES
	(1, '001-001-000001', '2021-08-16 17:07:42', 2, 1, 15000, 15000, 1, 1, 1),
	(2, '001-001-000002', '2021-08-17 06:14:10', 2, 1, 22500, 17500, 1, 1, 1),
	(3, '001-001-000004', '2021-08-17 07:30:56', 2, 1, 15000, 15000, 1, 1, 1),
	(4, '001-001-000005', '2021-08-17 07:33:16', 2, 1, 15000, 15000, 1, 1, 1),
	(5, '001-001-000006', '2021-08-17 07:34:36', 2, 1, 15000, 15000, 1, 1, 1),
	(6, '001-001-000007', '2021-08-17 07:37:06', 2, 1, 7500, 7500, 1, 1, 1);
/*!40000 ALTER TABLE `creditos` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.creditos_abonos
CREATE TABLE IF NOT EXISTS `creditos_abonos` (
  `id_abono` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_abono` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `monto_abono` double NOT NULL,
  `abono` double NOT NULL,
  `saldo_abono` double NOT NULL,
  `id_users_abono` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `concepto_abono` varchar(255) NOT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.creditos_abonos: 6 rows
/*!40000 ALTER TABLE `creditos_abonos` DISABLE KEYS */;
INSERT IGNORE INTO `creditos_abonos` (`id_abono`, `numero_factura`, `fecha_abono`, `id_cliente`, `monto_abono`, `abono`, `saldo_abono`, `id_users_abono`, `id_sucursal`, `concepto_abono`) VALUES
	(1, '001-001-000001', '2021-08-16 17:07:42', 2, 15000, 0, 15000, 1, 1, 'CREDITO INICAL'),
	(2, '001-001-000002', '2021-08-17 06:14:10', 2, 22500, 5000, 17500, 1, 1, 'CREDITO INICAL'),
	(3, '001-001-000004', '2021-08-17 07:30:56', 2, 15000, 0, 15000, 1, 1, 'CREDITO INICAL'),
	(4, '001-001-000005', '2021-08-17 07:33:16', 2, 15000, 0, 15000, 1, 1, 'CREDITO INICAL'),
	(5, '001-001-000006', '2021-08-17 07:34:36', 2, 15000, 0, 15000, 1, 1, 'CREDITO INICAL'),
	(6, '001-001-000007', '2021-08-17 07:37:06', 2, 7500, 0, 7500, 1, 1, 'CREDITO INICAL');
/*!40000 ALTER TABLE `creditos_abonos` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.creditos_abonos_prov
CREATE TABLE IF NOT EXISTS `creditos_abonos_prov` (
  `id_abono` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_abono` datetime NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `monto_abono` double NOT NULL,
  `abono` double NOT NULL,
  `saldo_abono` double NOT NULL,
  `id_users_abono` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `concepto_abono` varchar(255) NOT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.creditos_abonos_prov: 0 rows
/*!40000 ALTER TABLE `creditos_abonos_prov` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditos_abonos_prov` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.credito_proveedor
CREATE TABLE IF NOT EXISTS `credito_proveedor` (
  `id_credito` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_credito` datetime NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `monto_credito` double NOT NULL,
  `saldo_credito` double NOT NULL,
  `estado_credito` tinyint(1) NOT NULL,
  `id_users_credito` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  PRIMARY KEY (`id_credito`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.credito_proveedor: 0 rows
/*!40000 ALTER TABLE `credito_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `credito_proveedor` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.currencies
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.currencies: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT IGNORE INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES
	(1, 'US Dollar', '$', '2', ',', '.', 'USD'),
	(2, 'Libra Esterlina', '&pound;', '2', ',', '.', 'GBP'),
	(3, 'Euro', 'â‚¬', '2', '.', ',', 'EUR'),
	(4, 'South African Rand', 'R', '2', '.', ',', 'ZAR'),
	(5, 'Guarani Paraguayo', 'Gs', '0', '.', ',', 'PYG');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.detalle_fact_compra
CREATE TABLE IF NOT EXISTS `detalle_fact_compra` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(50) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio_costo` double NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  KEY `id_factura` (`id_factura`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.detalle_fact_compra: 0 rows
/*!40000 ALTER TABLE `detalle_fact_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_fact_compra` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.detalle_fact_cot
CREATE TABLE IF NOT EXISTS `detalle_fact_cot` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `desc_venta` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  KEY `id_factura` (`id_factura`),
  KEY `numero_factura` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.detalle_fact_cot: 0 rows
/*!40000 ALTER TABLE `detalle_fact_cot` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_fact_cot` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.detalle_fact_ventas
CREATE TABLE IF NOT EXISTS `detalle_fact_ventas` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `desc_venta` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  `importe_venta` double NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  KEY `id_factura` (`id_factura`),
  KEY `numero_factura` (`numero_factura`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.detalle_fact_ventas: 9 rows
/*!40000 ALTER TABLE `detalle_fact_ventas` DISABLE KEYS */;
INSERT IGNORE INTO `detalle_fact_ventas` (`id_detalle`, `id_factura`, `numero_factura`, `id_producto`, `cantidad`, `desc_venta`, `precio_venta`, `importe_venta`) VALUES
	(4, 1, '001-001-000000', 10, 2, 0, 15000, 30000),
	(5, 5, '001-001-000001', 10, 1, 0, 15000, 15000),
	(6, 6, '001-001-000002', 10, 2, 0, 15000, 22500),
	(7, 7, '001-001-000003', 10, 1, 0, 15000, 15000),
	(8, 8, '001-001-000004', 10, 1, 0, 15000, 15000),
	(9, 9, '001-001-000005', 10, 1, 0, 15000, 15000),
	(10, 10, '001-001-000006', 10, 1, 0, 15000, 15000),
	(11, 11, '001-001-000007', 10, 1, 0, 15000, 7500),
	(12, 12, '001-001-000008', 10, 1, 0, 15000, 15000);
/*!40000 ALTER TABLE `detalle_fact_ventas` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.detalle_traslado
CREATE TABLE IF NOT EXISTS `detalle_traslado` (
  `id_detalle_traslado` int(11) NOT NULL AUTO_INCREMENT,
  `id_traslado` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  `num_transaccion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_detalle_traslado`),
  KEY `id_traslado` (`id_traslado`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.detalle_traslado: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_traslado` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_traslado` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.egresos
CREATE TABLE IF NOT EXISTS `egresos` (
  `id_egreso` int(11) NOT NULL AUTO_INCREMENT,
  `referencia_egreso` varchar(100) CHARACTER SET latin1 NOT NULL,
  `monto` double NOT NULL,
  `descripcion_egreso` text CHARACTER SET latin1 NOT NULL,
  `fecha_added` datetime NOT NULL,
  `users` int(11) NOT NULL,
  PRIMARY KEY (`id_egreso`),
  KEY `users` (`users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.egresos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `egresos` DISABLE KEYS */;
/*!40000 ALTER TABLE `egresos` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.facturas_compras
CREATE TABLE IF NOT EXISTS `facturas_compras` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(50) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` int(11) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(4) NOT NULL,
  `id_users_factura` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `ref_factura` varchar(50) NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`),
  KEY `id_sucursal` (`id_sucursal`),
  KEY `id_proveedor` (`id_proveedor`),
  KEY `id_vendedor` (`id_vendedor`),
  KEY `id_users_factura` (`id_users_factura`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.facturas_compras: 0 rows
/*!40000 ALTER TABLE `facturas_compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas_compras` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.facturas_cot
CREATE TABLE IF NOT EXISTS `facturas_cot` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int(11) NOT NULL,
  `validez` double NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.facturas_cot: 0 rows
/*!40000 ALTER TABLE `facturas_cot` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas_cot` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.facturas_ventas
CREATE TABLE IF NOT EXISTS `facturas_ventas` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int(11) NOT NULL,
  `dinero_resibido_fac` double NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_comp_factura` int(11) NOT NULL,
  `num_trans_factura` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.facturas_ventas: 9 rows
/*!40000 ALTER TABLE `facturas_ventas` DISABLE KEYS */;
INSERT IGNORE INTO `facturas_ventas` (`id_factura`, `numero_factura`, `fecha_factura`, `id_cliente`, `id_vendedor`, `condiciones`, `monto_factura`, `estado_factura`, `id_users_factura`, `dinero_resibido_fac`, `id_sucursal`, `id_comp_factura`, `num_trans_factura`) VALUES
	(4, '001-001-000000', '2021-08-16 14:48:49', 2, 1, '1', 30000, 1, 1, 30000, 1, 1, 'T000001'),
	(5, '001-001-000001', '2021-08-16 17:07:42', 2, 1, '4', 15000, 2, 1, 0, 1, 1, 'T000002'),
	(6, '001-001-000002', '2021-08-17 06:14:10', 2, 1, '4', 22500, 2, 1, 5000, 1, 1, 'T000003'),
	(7, '001-001-000003', '2021-08-17 07:15:51', 2, 1, '1', 15000, 1, 1, 15000, 1, 1, ''),
	(8, '001-001-000004', '2021-08-17 07:30:56', 2, 1, '4', 15000, 2, 1, 0, 1, 1, ''),
	(9, '001-001-000005', '2021-08-17 07:33:16', 2, 1, '4', 15000, 2, 1, 0, 1, 1, ''),
	(10, '001-001-000006', '2021-08-17 07:34:36', 2, 1, '4', 15000, 2, 1, 0, 1, 1, ''),
	(11, '001-001-000007', '2021-08-17 07:37:06', 2, 1, '4', 7500, 2, 1, 0, 1, 1, ''),
	(12, '001-001-000008', '2021-08-20 10:13:17', 2, 1, '1', 15000, 1, 1, 20000, 1, 1, '');
/*!40000 ALTER TABLE `facturas_ventas` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.historial_productos
CREATE TABLE IF NOT EXISTS `historial_productos` (
  `id_historial` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `fecha_historial` datetime NOT NULL,
  `nota_historial` varchar(255) NOT NULL,
  `referencia_historial` varchar(100) NOT NULL,
  `cantidad_historial` double NOT NULL,
  `tipo_historial` int(11) NOT NULL,
  PRIMARY KEY (`id_historial`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla sist_ventas.historial_productos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `historial_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_productos` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.impuestos
CREATE TABLE IF NOT EXISTS `impuestos` (
  `id_imp` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_imp` varchar(100) NOT NULL,
  `valor_imp` double NOT NULL,
  `estado_imp` int(11) NOT NULL,
  PRIMARY KEY (`id_imp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.impuestos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `impuestos` DISABLE KEYS */;
/*!40000 ALTER TABLE `impuestos` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.ingresos
CREATE TABLE IF NOT EXISTS `ingresos` (
  `id_ingreso` int(11) NOT NULL AUTO_INCREMENT,
  `id_consulta` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `monto` double NOT NULL,
  `fecha_added` datetime NOT NULL,
  `users` int(11) NOT NULL,
  PRIMARY KEY (`id_ingreso`),
  KEY `id_consulta` (`id_consulta`),
  KEY `id_paciente` (`id_paciente`),
  KEY `users` (`users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.ingresos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ingresos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingresos` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.kardex
CREATE TABLE IF NOT EXISTS `kardex` (
  `id_kardex` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_kardex` date NOT NULL,
  `cant_entrada` double NOT NULL,
  `producto_kardex` int(11) NOT NULL,
  `costo_entrada` double NOT NULL,
  `total_entrada` double NOT NULL,
  `cant_salida` double NOT NULL DEFAULT '0',
  `costo_salida` double NOT NULL DEFAULT '0',
  `total_salida` double NOT NULL DEFAULT '0',
  `cant_saldo` double NOT NULL,
  `costo_saldo` double NOT NULL,
  `total_saldo` double NOT NULL,
  `added_kardex` datetime NOT NULL,
  `users_kardex` int(11) NOT NULL,
  `tipo_movimiento` int(11) NOT NULL,
  PRIMARY KEY (`id_kardex`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.kardex: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `kardex` DISABLE KEYS */;
INSERT IGNORE INTO `kardex` (`id_kardex`, `fecha_kardex`, `cant_entrada`, `producto_kardex`, `costo_entrada`, `total_entrada`, `cant_salida`, `costo_salida`, `total_salida`, `cant_saldo`, `costo_saldo`, `total_saldo`, `added_kardex`, `users_kardex`, `tipo_movimiento`) VALUES
	(1, '2021-08-10', 10, 1, 10000, 100000, 0, 0, 0, 10, 10000, 100000, '2021-08-10 10:26:31', 1, 5),
	(2, '2021-08-10', 5, 1, 15000, 75000, 0, 0, 0, 15, 11666.666666667, 175000, '2021-08-10 12:14:26', 1, 5),
	(3, '2021-08-10', 9, 1, 4000, 36000, 0, 0, 0, 24, 8791.6666666667, 211000, '2021-08-10 12:26:39', 1, 5),
	(4, '2021-08-10', 9, 1, 500, 4500, 0, 0, 0, 33, 6530.303030303, 215500, '2021-08-10 12:27:54', 1, 5),
	(5, '2021-08-10', 9, 1, 4000, 36000, 0, 0, 0, 42, 5988.0952380952, 251500, '2021-08-10 12:32:26', 1, 5),
	(6, '2021-08-10', 9, 1, 7000, 63000, 0, 0, 0, 51, 6166.6666666667, 314500, '2021-08-10 12:33:14', 1, 5),
	(7, '2021-08-10', 999, 1, 5000, 4995000, 0, 0, 0, 1050, 5056.6666666667, 5309500, '2021-08-10 12:35:03', 1, 5),
	(8, '2021-08-10', 80, 1, 5555, 444400, 0, 0, 0, 1130, 5091.9469026549, 5753900, '2021-08-10 12:36:27', 1, 5),
	(9, '2021-08-10', 9, 2, 5900, 53100, 0, 0, 0, 9, 5900, 53100, '2021-08-10 12:39:18', 1, 5),
	(10, '2021-08-13', 10, 3, 20000, 200000, 0, 0, 0, 10, 20000, 200000, '2021-08-13 14:13:02', 1, 5),
	(11, '2021-08-16', 78, 4, 5000, 390000, 0, 0, 0, 78, 5000, 390000, '2021-08-16 14:30:05', 1, 5),
	(12, '2021-08-16', 70, 5, 7000, 490000, 0, 0, 0, 70, 7000, 490000, '2021-08-16 14:34:42', 1, 5),
	(13, '2021-08-16', 9, 7, 50000, 450000, 0, 0, 0, 9, 50000, 450000, '2021-08-16 14:38:38', 1, 5),
	(14, '2021-08-16', 10, 8, 60000, 600000, 0, 0, 0, 10, 60000, 600000, '2021-08-16 14:40:37', 1, 5),
	(15, '2021-08-16', 10, 9, 9000, 90000, 0, 0, 0, 10, 9000, 90000, '2021-08-16 14:42:31', 1, 5),
	(16, '2021-08-16', 10, 10, 10000, 100000, 0, 0, 0, 10, 10000, 100000, '2021-08-16 14:47:43', 1, 5),
	(17, '2021-08-17', 10, 11, 4000, 40000, 0, 0, 0, 10, 4000, 40000, '2021-08-17 07:39:07', 1, 5),
	(18, '2021-08-17', 8, 12, 9000, 72000, 0, 0, 0, 8, 9000, 72000, '2021-08-17 08:24:03', 1, 5),
	(19, '2021-08-17', 2, 13, 5000, 10000, 0, 0, 0, 2, 5000, 10000, '2021-08-17 08:28:05', 1, 5),
	(20, '2021-08-17', 1, 13, 5000, 5000, 0, 0, 0, 3, 5000, 15000, '2021-08-17 00:00:00', 1, 1),
	(21, '2021-08-17', 2, 14, 5000, 10000, 0, 0, 0, 2, 5000, 10000, '2021-08-17 08:35:47', 1, 5),
	(22, '2021-08-31', 3, 14, 5000, 15000, 0, 0, 0, 5, 5000, 25000, '2021-08-31 00:00:00', 1, 1),
	(23, '2021-08-17', 9, 15, 5000, 45000, 0, 0, 0, 9, 5000, 45000, '2021-08-17 09:10:51', 1, 5),
	(24, '2021-08-17', 2, 15, 5000, 10000, 0, 0, 0, 11, 5000, 55000, '2021-08-17 00:00:00', 1, 1);
/*!40000 ALTER TABLE `kardex` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.lineas
CREATE TABLE IF NOT EXISTS `lineas` (
  `id_linea` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_linea` varchar(255) NOT NULL,
  `descripcion_linea` text NOT NULL,
  `estado_linea` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id_linea`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.lineas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `lineas` DISABLE KEYS */;
INSERT IGNORE INTO `lineas` (`id_linea`, `nombre_linea`, `descripcion_linea`, `estado_linea`, `date_added`) VALUES
	(1, 'POXIPOL', '', 1, '2021-08-07 10:18:38'),
	(2, 'TERERE', '', 1, '2021-08-13 09:46:33');
/*!40000 ALTER TABLE `lineas` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.modulos
CREATE TABLE IF NOT EXISTS `modulos` (
  `id_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_modulo` varchar(30) NOT NULL,
  PRIMARY KEY (`id_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.modulos: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `modulos` DISABLE KEYS */;
INSERT IGNORE INTO `modulos` (`id_modulo`, `nombre_modulo`) VALUES
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
	(11, 'Compras');
/*!40000 ALTER TABLE `modulos` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.perfil
CREATE TABLE IF NOT EXISTS `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(150) CHARACTER SET latin1 NOT NULL,
  `giro_empresa` text NOT NULL,
  `fiscal_empresa` varchar(25) NOT NULL,
  `direccion` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ciudad` varchar(100) CHARACTER SET latin1 NOT NULL,
  `codigo_postal` varchar(100) CHARACTER SET latin1 NOT NULL,
  `estado` varchar(100) CHARACTER SET latin1 NOT NULL,
  `telefono` varchar(20) CHARACTER SET latin1 NOT NULL,
  `email` varchar(64) CHARACTER SET latin1 NOT NULL,
  `impuesto` int(2) NOT NULL,
  `nom_impuesto` varchar(50) NOT NULL,
  `moneda` varchar(6) CHARACTER SET latin1 NOT NULL,
  `logo_url` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.perfil: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT IGNORE INTO `perfil` (`id_perfil`, `nombre_empresa`, `giro_empresa`, `fiscal_empresa`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `impuesto`, `nom_impuesto`, `moneda`, `logo_url`) VALUES
	(1, 'VIAWEB SOFT', 'SISTEMA DE VENTAS', '5971557-0', 'AV. SAN BLAS', 'CIUDAD DEL ESTE', '7000', 'ALTO PARANA', '0973 118 404', 'info@softys.com', 10, 'IVA', 'Gs', '../../img/1628276638_20210727113621.png');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_producto` varchar(255) CHARACTER SET latin1 NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `descripcion_producto` text NOT NULL,
  `id_linea_producto` int(11) NOT NULL,
  `id_med_producto` int(11) DEFAULT NULL,
  `id_proveedor` int(11) NOT NULL,
  `inv_producto` tinyint(4) DEFAULT NULL,
  `iva_producto` tinyint(4) DEFAULT NULL,
  `estado_producto` tinyint(4) DEFAULT NULL,
  `costo_producto` double DEFAULT NULL,
  `utilidad_producto` double DEFAULT NULL,
  `moneda_producto` int(11) DEFAULT NULL,
  `valor1_producto` double DEFAULT NULL,
  `valor2_producto` double DEFAULT NULL,
  `valor3_producto` double DEFAULT NULL,
  `stock_producto` double DEFAULT NULL,
  `stock_min_producto` double DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `image_path` varchar(300) DEFAULT NULL,
  `id_imp_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_cat_producto` (`id_linea_producto`),
  KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Volcando datos para la tabla sist_ventas.productos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT IGNORE INTO `productos` (`id_producto`, `codigo_producto`, `nombre_producto`, `descripcion_producto`, `id_linea_producto`, `id_med_producto`, `id_proveedor`, `inv_producto`, `iva_producto`, `estado_producto`, `costo_producto`, `utilidad_producto`, `moneda_producto`, `valor1_producto`, `valor2_producto`, `valor3_producto`, `stock_producto`, `stock_min_producto`, `date_added`, `image_path`, `id_imp_producto`) VALUES
	(10, '12222', 'POXIPOL', 'POXIPOL', 1, NULL, 1, 0, 0, 1, 10000, 50, NULL, 15000, 14000, 13000, 0, 1, '2021-08-16 14:47:43', '../../img/productos/1629386610_500px-General_Electric_logo.svg.png', 0);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.proveedores
CREATE TABLE IF NOT EXISTS `proveedores` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(255) NOT NULL,
  `fiscal_proveedor` varchar(100) NOT NULL,
  `web_proveedor` varchar(255) NOT NULL,
  `direccion_proveedor` text NOT NULL,
  `contacto_proveedor` varchar(255) NOT NULL,
  `email_proveedor` varchar(255) NOT NULL,
  `telefono_proveedor` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `estado_proveedor` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.proveedores: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT IGNORE INTO `proveedores` (`id_proveedor`, `nombre_proveedor`, `fiscal_proveedor`, `web_proveedor`, `direccion_proveedor`, `contacto_proveedor`, `email_proveedor`, `telefono_proveedor`, `date_added`, `estado_proveedor`) VALUES
	(1, 'ELECTROPARANA', '23423432', 'sdfds', 'SFSDFS', 'SDFDS', '23423432@asdasd.com', '234234', '2021-08-07 10:20:16', 1),
	(2, 'ASDADAS', '12312312', 'wwwwwww', 'ZXCZXCZXCX', 'ADASDSAD', 'asadasd@adsadas.com', '13123123', '2021-08-10 09:57:16', 1),
	(3, 'yyyyyy', '55666', 'ghhgh', 'fgfhfghgfh', 'fhfghfg', 'adsad@ssd.com', '56567657', '2021-08-20 09:44:16', 1);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.stock
CREATE TABLE IF NOT EXISTS `stock` (
  `id_stock` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto_stock` int(11) NOT NULL,
  `id_sucursal_stock` int(11) NOT NULL,
  `cantidad_stock` double NOT NULL,
  PRIMARY KEY (`id_stock`),
  KEY `id_producto_stock` (`id_producto_stock`),
  KEY `id_sucursal_stock` (`id_sucursal_stock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.stock: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.sucursales
CREATE TABLE IF NOT EXISTS `sucursales` (
  `id_sucursal` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_sucursal` varchar(50) NOT NULL,
  `nombre_sucursal` varchar(255) NOT NULL,
  `direccion_sucursal` text NOT NULL,
  `limite_sucursal` double NOT NULL,
  `estado_sucursal` tinyint(4) NOT NULL,
  `fecha_added` datetime NOT NULL,
  PRIMARY KEY (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.sucursales: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT IGNORE INTO `sucursales` (`id_sucursal`, `codigo_sucursal`, `nombre_sucursal`, `direccion_sucursal`, `limite_sucursal`, `estado_sucursal`, `fecha_added`) VALUES
	(1, 'SC001', 'CASA MATRIZ', 'AV. SAN BLAS', 40, 1, '2018-01-05 11:09:49');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.tmp_compra
CREATE TABLE IF NOT EXISTS `tmp_compra` (
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `costo_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla sist_ventas.tmp_compra: 2 rows
/*!40000 ALTER TABLE `tmp_compra` DISABLE KEYS */;
INSERT IGNORE INTO `tmp_compra` (`id_tmp`, `id_producto`, `cantidad_tmp`, `costo_tmp`, `session_id`) VALUES
	(9, 10, 22, 10000.00, 'g4bvpv44lf3gfb1u7f021esur5'),
	(10, 10, 9, 10000.00, 'l9n5qpp44dp6ldsdimijbgc1j3');
/*!40000 ALTER TABLE `tmp_compra` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.tmp_cotizacion
CREATE TABLE IF NOT EXISTS `tmp_cotizacion` (
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double(8,3) DEFAULT NULL,
  `desc_tmp` int(11) NOT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla sist_ventas.tmp_cotizacion: 0 rows
/*!40000 ALTER TABLE `tmp_cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_cotizacion` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.tmp_ventas
CREATE TABLE IF NOT EXISTS `tmp_ventas` (
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double(8,3) DEFAULT NULL,
  `desc_tmp` int(11) NOT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla sist_ventas.tmp_ventas: 0 rows
/*!40000 ALTER TABLE `tmp_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmp_ventas` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.traslados
CREATE TABLE IF NOT EXISTS `traslados` (
  `id_traslado` int(11) NOT NULL AUTO_INCREMENT,
  `referencia_traslado` varchar(50) NOT NULL,
  `origen_traslado` int(11) NOT NULL,
  `destino_traslado` int(11) NOT NULL,
  `monto_traslado` int(11) NOT NULL,
  `fecha_added` datetime NOT NULL,
  `id_users` int(11) NOT NULL,
  `num_transaccion` varchar(50) NOT NULL,
  `estado_traslado` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_traslado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.traslados: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `traslados` DISABLE KEYS */;
/*!40000 ALTER TABLE `traslados` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.users
CREATE TABLE IF NOT EXISTS `users` (
  `id_users` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `nombre_users` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `apellido_users` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_users` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `con_users` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `email_users` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `tipo_users` tinyint(4) NOT NULL,
  `cargo_users` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `sucursal_users` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `comision_users` double NOT NULL,
  PRIMARY KEY (`id_users`),
  UNIQUE KEY `user_name` (`usuario_users`),
  UNIQUE KEY `user_email` (`email_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

-- Volcando datos para la tabla sist_ventas.users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`id_users`, `nombre_users`, `apellido_users`, `usuario_users`, `con_users`, `email_users`, `tipo_users`, `cargo_users`, `sucursal_users`, `date_added`, `comision_users`) VALUES
	(1, 'SUPER', 'ADMINISTRADOR', 'admin', '$2y$10$MPVHzZ2ZPOWmtUUGCq3RXu31OTB.jo7M9LZ7PmPQYmgETSNn19ejO', 'root@admin.com', 0, '1', 1, '2016-05-21 15:06:00', 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla sist_ventas.user_group
CREATE TABLE IF NOT EXISTS `user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `permission` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_group_id`),
  KEY `user_group_id` (`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla sist_ventas.user_group: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT IGNORE INTO `user_group` (`user_group_id`, `name`, `permission`, `date_added`) VALUES
	(1, 'Super Administrador', 'Inicio,1,1,1;Productos,1,1,1;Proveedores,1,1,1;Clientes,1,1,1;Reportes,1,1,1;Configuracion,1,1,1;Usuarios,1,1,1;Permisos,1,1,1;Categorias,1,1,1;Ventas,1,1,1;Compras,1,1,1;', '2017-08-09 10:22:15'),
	(2, 'GERENTE', 'Inicio,1,0,0;Productos,1,0,0;Proveedores,1,0,0;Clientes,1,0,0;Reportes,1,0,0;Configuracion,1,0,0;Usuarios,1,0,0;Permisos,1,0,0;Categorias,1,0,0;Ventas,1,1,0;Compras,1,0,0;', '2017-08-09 11:31:34'),
	(3, 'FACTURADOR', 'Inicio,0,0,0;Productos,0,0,0;Proveedores,0,0,0;Clientes,0,0,0;Reportes,0,0,0;Configuracion,0,0,0;Usuarios,0,0,0;Permisos,0,0,0;Categorias,0,0,0;Ventas,1,0,0;Compras,0,0,0;', '2017-09-15 22:44:50'),
	(4, 'ADMINISTRADOR', 'Inicio,1,1,1;Productos,1,1,1;Proveedores,1,1,1;Clientes,1,1,1;Reportes,1,1,1;Configuracion,1,1,1;Usuarios,1,1,1;Permisos,1,1,1;Categorias,1,1,1;Ventas,1,1,1;Compras,1,1,1;', '2017-11-21 11:33:36');
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
