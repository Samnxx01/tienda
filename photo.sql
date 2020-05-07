/*
SQLyog Community v8.71 
MySQL - 5.5.5-10.4.11-MariaDB : Database - photopixel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`photopixel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `photopixel`;

/*Table structure for table `hombres` */

DROP TABLE IF EXISTS `hombres`;

CREATE TABLE `hombres` (
  `id_hombres` int(10) NOT NULL AUTO_INCREMENT,
  `jeans_h` varchar(100) DEFAULT NULL,
  `camisas_h` varchar(100) DEFAULT NULL,
  `busos_h` varchar(100) DEFAULT NULL,
  `pantalonetas_h` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_hombres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `hombres` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id_usuarios` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(100) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `login` */

insert  into `login`(`id_usuarios`,`nombre_usuario`,`contraseña`) values (1,'mario','6612'),(2,'ingrid','1123');

/*Table structure for table `marcas` */

DROP TABLE IF EXISTS `marcas`;

CREATE TABLE `marcas` (
  `id_marca` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `marcas` */

/*Table structure for table `mujeres` */

DROP TABLE IF EXISTS `mujeres`;

CREATE TABLE `mujeres` (
  `id_mujer` int(10) NOT NULL AUTO_INCREMENT,
  `vestido_baño` varchar(100) DEFAULT NULL,
  `jeans_m` varchar(100) DEFAULT NULL,
  `vestido_m` varchar(100) DEFAULT NULL,
  `busos_sport_m` varchar(100) DEFAULT NULL,
  `short_m` varchar(100) DEFAULT NULL,
  `blusas_m` varchar(100) DEFAULT NULL,
  `camisas_m` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_mujer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `mujeres` */

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id_hombres` int(10) NOT NULL,
  `id_marcas` int(10) NOT NULL,
  `id_mujer` int(10) NOT NULL,
  `referencia_productos` varchar(100) DEFAULT NULL,
  `valor` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_hombres`,`id_marcas`,`id_mujer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `productos` */

/*Table structure for table `registros` */

DROP TABLE IF EXISTS `registros`;

CREATE TABLE `registros` (
  `id_registro` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `registros` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
