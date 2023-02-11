-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.11.0-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para reposteria
CREATE DATABASE IF NOT EXISTS `reposteria` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `reposteria`;

-- Volcando estructura para tabla reposteria.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `Direccion` varchar(50) NOT NULL DEFAULT '',
  `Telefono` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla reposteria.cliente: ~0 rows (aproximadamente)
DELETE FROM `cliente`;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla reposteria.factura
CREATE TABLE IF NOT EXISTS `factura` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_clientes` int(11) NOT NULL,
  `Fecha_pedido` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_panaderia` int(11) NOT NULL,
  `id_forma de pago` int(11) NOT NULL,
  `id_metodo de compra` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_factura_factura` (`Id_clientes`),
  KEY `FK_factura_factura_2` (`id_producto`),
  KEY `FK_factura_factura_3` (`id_panaderia`),
  KEY `FK_factura_factura_4` (`id_forma de pago`),
  KEY `FK_factura_factura_5` (`id_metodo de compra`),
  CONSTRAINT `FK_factura_factura` FOREIGN KEY (`Id_clientes`) REFERENCES `factura` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_factura_factura_2` FOREIGN KEY (`id_producto`) REFERENCES `factura` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_factura_factura_3` FOREIGN KEY (`id_panaderia`) REFERENCES `factura` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_factura_factura_4` FOREIGN KEY (`id_forma de pago`) REFERENCES `factura` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_factura_factura_5` FOREIGN KEY (`id_metodo de compra`) REFERENCES `factura` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla reposteria.factura: ~0 rows (aproximadamente)
DELETE FROM `factura`;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;

-- Volcando estructura para tabla reposteria.forma de pago
CREATE TABLE IF NOT EXISTS `forma de pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Efectivo` int(11) NOT NULL,
  `Paypal` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla reposteria.forma de pago: ~0 rows (aproximadamente)
DELETE FROM `forma de pago`;
/*!40000 ALTER TABLE `forma de pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `forma de pago` ENABLE KEYS */;

-- Volcando estructura para tabla reposteria.metodo de compra
CREATE TABLE IF NOT EXISTS `metodo de compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compra_personal` varchar(50) NOT NULL DEFAULT '',
  `servicio_delivery` varchar(50) NOT NULL DEFAULT '',
  `id_forma de pago` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_metodo de compra_metodo de compra` (`id_forma de pago`),
  CONSTRAINT `FK_metodo de compra_metodo de compra` FOREIGN KEY (`id_forma de pago`) REFERENCES `metodo de compra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla reposteria.metodo de compra: ~0 rows (aproximadamente)
DELETE FROM `metodo de compra`;
/*!40000 ALTER TABLE `metodo de compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `metodo de compra` ENABLE KEYS */;

-- Volcando estructura para tabla reposteria.panaderia
CREATE TABLE IF NOT EXISTS `panaderia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `ubicacion` char(50) NOT NULL DEFAULT '',
  `Horario de atencion` int(80) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla reposteria.panaderia: ~0 rows (aproximadamente)
DELETE FROM `panaderia`;
/*!40000 ALTER TABLE `panaderia` DISABLE KEYS */;
/*!40000 ALTER TABLE `panaderia` ENABLE KEYS */;

-- Volcando estructura para tabla reposteria.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre del producto` varchar(50) NOT NULL DEFAULT '',
  `Precio` date NOT NULL,
  `Cantidad` date NOT NULL,
  `Categoria` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contiene la informacion de los productos .';

-- Volcando datos para la tabla reposteria.productos: ~0 rows (aproximadamente)
DELETE FROM `productos`;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
