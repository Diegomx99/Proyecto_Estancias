/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.14-MariaDB : Database - purificadora
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`purificadora` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;

USE `purificadora`;

/*Table structure for table `clasificacion` */

DROP TABLE IF EXISTS `clasificacion`;

CREATE TABLE `clasificacion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `clasificacion` */

insert  into `clasificacion`(`Id`,`Nombre`) values 
(1,'Distribución'),
(2,'Fisicoquímicos'),
(6,'HOLA'),
(3,'Mantenimiento'),
(4,'Producción'),
(5,'Servicios');

/*Table structure for table `f001` */

DROP TABLE IF EXISTS `f001`;

CREATE TABLE `f001` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_hora` datetime NOT NULL,
  `Cantidad` float NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F001_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F001_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F001_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F001_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f001` */

insert  into `f001`(`Id`,`Fecha_hora`,`Cantidad`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-11-24 11:29:44',50,2,1),
(2,'2020-12-05 10:23:00',25,2,1),
(3,'2020-12-02 10:30:00',25,2,1),
(4,'2020-12-17 09:01:00',1,2,1),
(5,'2020-12-17 09:01:00',1,2,1),
(6,'2020-12-02 09:59:00',25,2,1),
(7,'2020-12-17 00:51:00',25,2,1);

/*Table structure for table `f002` */

DROP TABLE IF EXISTS `f002`;

CREATE TABLE `f002` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Lu` tinyint(1) NOT NULL,
  `Ma` tinyint(1) NOT NULL,
  `Mi` tinyint(1) NOT NULL,
  `Ju` tinyint(1) NOT NULL,
  `Vi` tinyint(1) NOT NULL,
  `Total` int(11) NOT NULL,
  `Observaciones` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Fecha_ini` date NOT NULL,
  `Fecha_fin` date NOT NULL,
  `Garrafon` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  KEY `fk_F002_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F002_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f002` */

insert  into `f002`(`Id`,`Lu`,`Ma`,`Mi`,`Ju`,`Vi`,`Total`,`Observaciones`,`Fecha_ini`,`Fecha_fin`,`Garrafon`,`Formatos_Id`) values 
(24,1,1,0,0,0,2,'El garrafón se entregó en excelente estado.','2020-12-04','2020-12-05','F020-125',2);

/*Table structure for table `f003` */

DROP TABLE IF EXISTS `f003`;

CREATE TABLE `f003` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_hora` datetime NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  `Ubicacion` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `Resguardo` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F003_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F003_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F003_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F003_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f003` */

insert  into `f003`(`Id`,`Fecha_hora`,`Usuarios_Id`,`Formatos_Id`,`Ubicacion`,`Resguardo`) values 
(1,'2020-11-24 11:30:42',2,3,'por lupita','123ad'),
(2,'2020-12-05 09:39:00',2,3,'1','1'),
(3,'2020-12-05 10:25:00',2,3,'1','25');

/*Table structure for table `f004` */

DROP TABLE IF EXISTS `f004`;

CREATE TABLE `f004` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_hora` datetime NOT NULL,
  `Operacion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F004_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F004_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F004_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F004_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f004` */

insert  into `f004`(`Id`,`Fecha_hora`,`Operacion`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-11-24 11:31:38','limpiar',2,4),
(2,'2020-12-10 11:06:00','1',2,4);

/*Table structure for table `f005` */

DROP TABLE IF EXISTS `f005`;

CREATE TABLE `f005` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_hora` datetime NOT NULL,
  `Cl` float NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F005_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F005_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F005_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F005_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f005` */

insert  into `f005`(`Id`,`Fecha_hora`,`Cl`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-11-24 11:31:47',2.3,2,5),
(5,'2020-12-03 21:59:00',2,2,5),
(6,'2020-12-11 10:08:00',12,1,5);

/*Table structure for table `f006` */

DROP TABLE IF EXISTS `f006`;

CREATE TABLE `f006` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_hora` datetime NOT NULL,
  `Cl` float NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F006_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F006_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F006_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F006_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f006` */

insert  into `f006`(`Id`,`Fecha_hora`,`Cl`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-11-24 11:31:54',2.3,2,6),
(2,'2020-12-01 16:59:00',25,2,6),
(3,'2020-12-01 16:59:00',25,2,6),
(4,'2020-12-04 04:16:00',25,2,6),
(5,'2020-12-04 04:16:00',25,2,6);

/*Table structure for table `f007` */

DROP TABLE IF EXISTS `f007`;

CREATE TABLE `f007` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_hora` datetime NOT NULL,
  `Gotas` int(11) NOT NULL,
  `ml` float NOT NULL,
  `ppm` float NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F007_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F007_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F007_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F007_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f007` */

insert  into `f007`(`Id`,`Fecha_hora`,`Gotas`,`ml`,`ppm`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-11-24 11:32:15',2,3,1,2,7),
(2,'2020-12-01 16:13:00',2,2,2,2,7),
(3,'2020-12-01 16:13:00',2,2,2,2,7),
(4,'2020-12-01 04:16:00',2,2,2,2,7),
(5,'2020-12-18 03:11:00',2,2,2,2,7);

/*Table structure for table `f008` */

DROP TABLE IF EXISTS `f008`;

CREATE TABLE `f008` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `pH_M1` float NOT NULL,
  `ph_M2` int(11) NOT NULL,
  `Fecha_hora` datetime NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F008_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F008_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F008_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F008_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f008` */

insert  into `f008`(`Id`,`pH_M1`,`ph_M2`,`Fecha_hora`,`Usuarios_Id`,`Formatos_Id`) values 
(1,2,3,'2020-11-24 11:32:40',2,8);

/*Table structure for table `f009` */

DROP TABLE IF EXISTS `f009`;

CREATE TABLE `f009` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Lote` int(11) NOT NULL,
  `Unidades_verificadas` int(11) NOT NULL,
  `Unidades_no_conformadas` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F009_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F009_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f009` */

insert  into `f009`(`Id`,`Fecha`,`Lote`,`Unidades_verificadas`,`Unidades_no_conformadas`,`Formatos_Id`) values 
(1,'2020-11-24',5,1,2,9),
(2,'2020-12-04',30,30,30,9),
(3,'2020-12-11',25,25,25,9),
(4,'2020-12-11',25,25,25,9),
(5,'2020-12-11',25,25,25,9),
(6,'2020-12-11',25,25,25,9),
(7,'2020-12-05',1111,11111,11111,9);

/*Table structure for table `f010` */

DROP TABLE IF EXISTS `f010`;

CREATE TABLE `f010` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Hora_encendido` time NOT NULL,
  `Hora_apagado` time NOT NULL,
  `SD_in` int(11) NOT NULL,
  `SD_out` int(11) NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F010_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F010_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F010_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F010_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f010` */

insert  into `f010`(`Id`,`Fecha`,`Hora_encendido`,`Hora_apagado`,`SD_in`,`SD_out`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-11-24','11:34:54','11:34:54',1,2,2,10),
(2,'2020-11-24','13:23:21','13:23:21',1,2,2,10),
(3,'2020-12-12','10:42:00','10:43:00',25,30,2,10),
(4,'2020-12-05','10:47:00','10:52:00',32,25,2,10),
(5,'2020-12-05','10:47:00','10:52:00',32,25,2,10),
(6,'2020-12-18','09:03:00','00:58:00',1,1,2,10),
(7,'2020-12-18','09:03:00','00:58:00',1,1,2,10);

/*Table structure for table `f011` */

DROP TABLE IF EXISTS `f011`;

CREATE TABLE `f011` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Hora_encendido` time NOT NULL,
  `Hora_apagado` time NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F011_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F011_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F011_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F011_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f011` */

insert  into `f011`(`Id`,`Fecha`,`Hora_encendido`,`Hora_apagado`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-11-24','11:35:18','11:35:18',2,11),
(2,'2020-12-03','10:53:00','10:05:00',2,11),
(3,'2020-12-03','10:53:00','10:05:00',2,11),
(4,'2020-12-04','00:10:00','04:15:00',1,11),
(5,'2020-12-04','01:17:00','02:18:00',1,11);

/*Table structure for table `f012` */

DROP TABLE IF EXISTS `f012`;

CREATE TABLE `f012` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Hora_encendido` time NOT NULL,
  `Hora_apagado` time NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F012_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F012_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F012_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F012_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f012` */

insert  into `f012`(`Id`,`Fecha`,`Hora_encendido`,`Hora_apagado`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-12-03','22:56:00','06:56:00',2,12);

/*Table structure for table `f013` */

DROP TABLE IF EXISTS `f013`;

CREATE TABLE `f013` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_hora` datetime NOT NULL,
  `Dispensador` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Saturacion` float NOT NULL,
  `Olor` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Sabor` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Color` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F013_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F013_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F013_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F013_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f013` */

/*Table structure for table `f014` */

DROP TABLE IF EXISTS `f014`;

CREATE TABLE `f014` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_hora` datetime NOT NULL,
  `Color` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Saturacion` float NOT NULL,
  `Olor` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Sabor` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F014_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F014_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F014_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F014_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f014` */

insert  into `f014`(`Id`,`Fecha_hora`,`Color`,`Saturacion`,`Olor`,`Sabor`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-12-10 02:33:00','1',1,'1','1',2,14);

/*Table structure for table `f015` */

DROP TABLE IF EXISTS `f015`;

CREATE TABLE `f015` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Hora_inicio` time NOT NULL COMMENT 'Hora inicial en la que se embotella el agua',
  `Hora_final` time NOT NULL COMMENT 'Hora final en la que se embotella el agua',
  `Cantidad` int(11) NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F015_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F015_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F015_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F015_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f015` */

insert  into `f015`(`Id`,`Fecha`,`Hora_inicio`,`Hora_final`,`Cantidad`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-12-10','10:21:00','10:21:00',1,2,15),
(2,'2020-12-10','10:21:00','10:21:00',1,2,15);

/*Table structure for table `f016` */

DROP TABLE IF EXISTS `f016`;

CREATE TABLE `f016` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Hora_inicio` time NOT NULL COMMENT 'Hora inicial en la que se llena los garrafones',
  `Hora_final` time NOT NULL COMMENT 'Hora final en la que se llena los garrafones',
  `Cantidad` int(11) NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F016_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F016_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F016_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F016_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f016` */

insert  into `f016`(`Id`,`Fecha`,`Hora_inicio`,`Hora_final`,`Cantidad`,`Usuarios_Id`,`Formatos_Id`) values 
(2,'2020-12-11','10:21:00','11:19:00',1,2,16);

/*Table structure for table `f017` */

DROP TABLE IF EXISTS `f017`;

CREATE TABLE `f017` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Sal` float NOT NULL COMMENT 'En kg',
  `Fecha` date NOT NULL,
  `Hora_encendido` time NOT NULL COMMENT 'Hora inicial de la regeneración de filtro suavizador',
  `Hora_apagado` time NOT NULL COMMENT 'Hora finalde la regeneración de filtro suavizador',
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F017_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F017_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F017_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F017_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f017` */

/*Table structure for table `f018` */

DROP TABLE IF EXISTS `f018`;

CREATE TABLE `f018` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Hora_encendido` time NOT NULL COMMENT 'Hora inicial del retrolavado de filtro de carbón activado',
  `Hora_apagado` time NOT NULL COMMENT 'Hora final del retrolavado de filtro de carbón activado',
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F018_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F018_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F018_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F018_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f018` */

/*Table structure for table `f019` */

DROP TABLE IF EXISTS `f019`;

CREATE TABLE `f019` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Hora_encendido` time NOT NULL COMMENT 'Hora inicial del retrolavado de filtro de lecho profundo',
  `Hora_apagado` time NOT NULL COMMENT 'Hora final del retrolavado de filtro de lecho profundo',
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F019_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F019_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F019_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F019_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f019` */

insert  into `f019`(`Id`,`Fecha`,`Hora_encendido`,`Hora_apagado`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-12-04','10:27:00','10:28:00',2,19);

/*Table structure for table `f020` */

DROP TABLE IF EXISTS `f020`;

CREATE TABLE `f020` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Volumen` float NOT NULL,
  `Fecha_entrega` date DEFAULT NULL,
  `Persona_entrego` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Nombre_solicitante` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Area` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Firma` tinyint(1) DEFAULT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F020_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F020_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f020` */

insert  into `f020`(`Id`,`Fecha`,`Volumen`,`Fecha_entrega`,`Persona_entrego`,`Nombre_solicitante`,`Area`,`Firma`,`Formatos_Id`) values 
(1,'0000-00-00',1,'0000-00-00','1','1',NULL,1,20);

/*Table structure for table `f021` */

DROP TABLE IF EXISTS `f021`;

CREATE TABLE `f021` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Solicitante` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Unidades_solicitadas` int(11) NOT NULL,
  `Fecha_entrega` date DEFAULT NULL,
  `Unidades_entregadas` int(11) DEFAULT NULL,
  `Area` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Persona_entrego` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Nombre_receptor` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Firma` tinyint(1) DEFAULT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F021_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F021_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f021` */

insert  into `f021`(`Id`,`Fecha`,`Solicitante`,`Unidades_solicitadas`,`Fecha_entrega`,`Unidades_entregadas`,`Area`,`Persona_entrego`,`Nombre_receptor`,`Firma`,`Formatos_Id`) values 
(1,'0000-00-00','1',1,'0000-00-00',1,NULL,'1','1',1,21),
(2,'2020-12-17','1',1,'2021-01-07',1,'1','1','1',1,21);

/*Table structure for table `f023` */

DROP TABLE IF EXISTS `f023`;

CREATE TABLE `f023` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Codigo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Piso` int(11) NOT NULL,
  `Edificio` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F023_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F023_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f023` */

insert  into `f023`(`Id`,`Fecha`,`Codigo`,`Piso`,`Edificio`,`Formatos_Id`) values 
(1,'2020-11-02','42413',2,'INFO',1),
(2,'2020-11-02','42413',2,'INFO',1),
(3,'2020-12-01','125',222,'22',1),
(4,'2020-12-04','2',2,'2',1),
(5,'2020-12-04','25',1,'1',1),
(6,'2020-12-03','03',1,'12',1),
(7,'2020-12-03','1',1,'1',1),
(8,'2020-12-03','300',300,'300',1),
(9,'2020-12-17','25',1,'1',1);

/*Table structure for table `f024` */

DROP TABLE IF EXISTS `f024`;

CREATE TABLE `f024` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `C1` int(11) NOT NULL,
  `C1N` int(11) NOT NULL,
  `C2` int(11) NOT NULL,
  `C2N` int(11) NOT NULL,
  `C3` int(11) NOT NULL,
  `C3N` int(11) NOT NULL,
  `C4` int(11) NOT NULL,
  `C4N` int(11) NOT NULL,
  `C5` int(11) NOT NULL,
  `C5N` int(11) NOT NULL,
  `C6` int(11) NOT NULL,
  `C6N` int(11) NOT NULL,
  `C7` int(11) NOT NULL,
  `C7N` int(11) NOT NULL,
  `C8` int(11) NOT NULL,
  `C8N` int(11) NOT NULL,
  `C9` int(11) NOT NULL,
  `C9N` int(11) NOT NULL,
  `C10` int(11) NOT NULL,
  `C10N` int(11) NOT NULL,
  `C11` int(11) NOT NULL,
  `C11N` int(11) NOT NULL,
  `Promedio` float NOT NULL,
  `Revisiones_totales` int(11) NOT NULL,
  `Observaciones` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_f024_formatos1_idx` (`formatos_Id`),
  CONSTRAINT `fk_f024_formatos1` FOREIGN KEY (`formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f024` */

insert  into `f024`(`Id`,`Fecha`,`C1`,`C1N`,`C2`,`C2N`,`C3`,`C3N`,`C4`,`C4N`,`C5`,`C5N`,`C6`,`C6N`,`C7`,`C7N`,`C8`,`C8N`,`C9`,`C9N`,`C10`,`C10N`,`C11`,`C11N`,`Promedio`,`Revisiones_totales`,`Observaciones`,`formatos_Id`) values 
(12,'2020-12-19',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,'1ddd',24),
(13,'2020-12-11',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,'5266',24),
(14,'2020-12-05',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,'5115',24),
(15,'2020-12-05',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,'vdvd',24);

/*Table structure for table `f025` */

DROP TABLE IF EXISTS `f025`;

CREATE TABLE `f025` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_hora` datetime NOT NULL,
  `Operacion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F025_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F025_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F025_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F025_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f025` */

insert  into `f025`(`Id`,`Fecha_hora`,`Operacion`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-11-02 13:18:07','aaaaaaaaaaa',4,3),
(2,'2020-11-02 13:18:07','aaaaaaaaaaa',4,3);

/*Table structure for table `f026` */

DROP TABLE IF EXISTS `f026`;

CREATE TABLE `f026` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_hora` datetime NOT NULL,
  `Observaciones` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F026_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F026_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F026_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F026_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f026` */

insert  into `f026`(`Id`,`Fecha_hora`,`Observaciones`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-11-02 13:18:07','aaaaaaaaaaa',4,3),
(2,'2020-11-02 13:18:07','aaaaaaaaaaa',4,3);

/*Table structure for table `f027` */

DROP TABLE IF EXISTS `f027`;

CREATE TABLE `f027` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_hora` datetime NOT NULL,
  `Observaciones` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F027_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F027_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F027_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F027_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f027` */

insert  into `f027`(`Id`,`Fecha_hora`,`Observaciones`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-11-02 13:18:07','aaaaaaaaaaa',1,3),
(2,'2020-11-02 13:18:07','aaaaaaaaaaa',1,3),
(3,'2020-11-02 13:18:07','aaaaaaaaaaa',4,3),
(4,'2020-11-02 13:18:07','aaaaaaaaaaa',4,3);

/*Table structure for table `f028` */

DROP TABLE IF EXISTS `f028`;

CREATE TABLE `f028` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Hora_muestra` datetime NOT NULL,
  `Hora_analisis` datetime NOT NULL,
  `pH1` float NOT NULL,
  `pH2` float NOT NULL,
  `CE` float NOT NULL COMMENT 'us/cm',
  `SD` float NOT NULL COMMENT 'pm',
  `Cloro_residual` float NOT NULL,
  `Temperatura` float NOT NULL COMMENT 'Se guarda en Celsius',
  `Dureza` float NOT NULL,
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F028_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F028_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F028_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F028_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f028` */

insert  into `f028`(`Id`,`Fecha`,`Hora_muestra`,`Hora_analisis`,`pH1`,`pH2`,`CE`,`SD`,`Cloro_residual`,`Temperatura`,`Dureza`,`Usuarios_Id`,`Formatos_Id`) values 
(3,'2020-11-02','2020-11-02 13:18:07','2020-11-02 13:18:07',15,15,15,15,15,15,0,1,2),
(4,'2020-11-02','2020-11-02 13:18:07','2020-11-02 13:18:07',15,15,15,15,15,15,0,1,2),
(5,'2020-11-02','2020-11-02 13:18:07','2020-11-02 13:18:07',15,15,15,15,15,15,0,1,2),
(6,'2020-11-02','2020-11-02 13:18:07','2020-11-02 13:18:07',15,15,15,15,15,15,0,1,2),
(7,'2020-12-10','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,1,2),
(8,'2020-12-04','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,1,2),
(9,'2020-12-09','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,1,2),
(10,'2020-12-04','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,1,2),
(11,'2020-12-19','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,1,2),
(12,'2020-12-18','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,1,2),
(13,'2020-12-04','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,1,2),
(14,'2020-12-10','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,1,2),
(15,'2020-12-12','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,11,1,1,111,0,1,2),
(16,'2020-12-05','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,2,2),
(17,'2020-12-04','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,2,2),
(18,'2020-12-18','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,2,2),
(19,'2020-12-17','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,2,2),
(20,'2020-12-04','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,11,11,1,0,2,2),
(21,'2020-12-15','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,2,2),
(22,'2020-12-11','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,11,0,2,2),
(23,'2020-12-04','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,2,2),
(24,'2020-12-04','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,2,2),
(25,'2020-12-12','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,2,2),
(26,'2020-12-17','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,2,2),
(27,'2020-12-17','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,2,2),
(28,'2020-12-11','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,2,2),
(29,'2020-12-11','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,2,2),
(30,'2020-12-04','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,2,2),
(31,'2020-12-18','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,2,2),
(32,'2020-12-16','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,2,2),
(33,'2020-12-10','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,2,2),
(34,'2020-12-17','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,2,2),
(35,'2020-12-05','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,2,2),
(36,'2020-12-17','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,2,2),
(37,'2020-12-16','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,11,1,0,2,2),
(38,'2020-12-09','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,2,2),
(39,'2020-12-17','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,2,2),
(40,'2020-12-05','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,1,2),
(41,'2020-12-01','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,111,0,2,28),
(42,'2020-12-10','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,0,2,28);

/*Table structure for table `f029` */

DROP TABLE IF EXISTS `f029`;

CREATE TABLE `f029` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Hora_muestra` datetime NOT NULL,
  `Hora_analisis` datetime NOT NULL,
  `ID2` float NOT NULL,
  `Cloro_residual` float NOT NULL,
  `pH1` float NOT NULL,
  `pH2` float NOT NULL,
  `CE` float NOT NULL COMMENT 'us/cm',
  `SD` float NOT NULL COMMENT 'ppm',
  `Temperatura` float NOT NULL COMMENT 'Se guarda en Celsisus',
  `Usuarios_Id` int(11) NOT NULL,
  `Formatos_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_F029_Usuarios1_idx` (`Usuarios_Id`),
  KEY `fk_F029_Formatos1_idx` (`Formatos_Id`),
  CONSTRAINT `fk_F029_Formatos1` FOREIGN KEY (`Formatos_Id`) REFERENCES `formatos` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_F029_Usuarios1` FOREIGN KEY (`Usuarios_Id`) REFERENCES `usuarios` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `f029` */

insert  into `f029`(`Id`,`Fecha`,`Hora_muestra`,`Hora_analisis`,`ID2`,`Cloro_residual`,`pH1`,`pH2`,`CE`,`SD`,`Temperatura`,`Usuarios_Id`,`Formatos_Id`) values 
(1,'2020-11-02','2020-11-02 13:18:07','2020-11-02 13:18:07',15,15,15,15,15,15,15,1,2),
(2,'2020-11-02','2020-11-02 13:18:07','2020-11-02 13:18:07',15,15,15,15,15,15,15,1,2),
(3,'2020-11-02','2020-11-02 13:18:07','2020-11-02 13:18:07',15,15,15,15,15,15,15,1,2),
(4,'2020-11-02','2020-11-02 13:18:07','2020-11-02 13:18:07',15,15,15,15,15,15,15,1,2),
(5,'2020-11-02','2020-11-02 13:18:07','2020-11-02 13:18:07',14,15,15,15,15,15,15,1,2),
(6,'2020-11-02','2020-11-02 13:18:07','2020-11-02 13:18:07',14,15,15,15,15,15,15,1,2),
(7,'2020-11-02','2020-11-02 13:18:07','2020-11-02 13:18:07',14,15,15,15,15,15,15,1,2),
(8,'2020-12-05','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,1,1,2),
(9,'2020-12-18','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,1,2,2),
(10,'2020-12-10','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,1,2,2),
(11,'2020-12-17','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,1,2,2),
(12,'2020-12-24','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,1,2,29),
(13,'2020-12-05','0000-00-00 00:00:00','0000-00-00 00:00:00',1,1,1,1,1,1,1,2,29);

/*Table structure for table `formatos` */

DROP TABLE IF EXISTS `formatos`;

CREATE TABLE `formatos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Clasificacion_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  UNIQUE KEY `Código_UNIQUE` (`Codigo`),
  KEY `fk_Formatos de operación_Clasificación_idx` (`Clasificacion_Id`),
  CONSTRAINT `fk_Formatos de operación_Clasificación` FOREIGN KEY (`Clasificacion_Id`) REFERENCES `clasificacion` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `formatos` */

insert  into `formatos`(`Id`,`Codigo`,`Nombre`,`Clasificacion_Id`) values 
(1,'F001','Cloración de cisterna de agua cruda',4),
(2,'F002','Retorno de garrafones de agua',1),
(3,'F003','Limpieza de dispensador',3),
(4,'F004','Mantenimiento de filtro pulidor',3),
(5,'F005','Medición de coloro libre residual en agua pro',2),
(6,'F006','Medición de cloro libre residual en cisterna ',2),
(7,'F007','Medición de dureza en agua producto',2),
(8,'F008','Medición de PH en agua producto',2),
(9,'F009','Merma de botella de plástico',4),
(10,'F010','Operación ósmosis inversa',4),
(11,'F011','Operación de equipo generador de ozono',4),
(12,'F012','Operación de lámpara UV',4),
(13,'F013','Percepción de agua en dispensador',2),
(14,'F014','Percepción de agua producto',2),
(15,'F015','Producción de agua embotellada',4),
(16,'F016','Producción de garrafones de agua',4),
(17,'F017','Regeneración del filtro suavizador',3),
(18,'F018','Retrolavado del filtro de carbón activado',3),
(19,'F019','Retrolavado de filtro de lecho profundo',3),
(20,'F020','Solicitud y entrega de agua destilada',5),
(21,'F021','Registro de solicitud y entrega de agua embot',5),
(23,'F023','Ubicación de garrafones de agua',1),
(24,'F024','Buenas prácticas de higiene',4),
(25,'F025','Mantenimiento de filtro de osmosis inversa',3),
(26,'F026','Limpieza de cisterna de agua cruda',3),
(27,'F027','Limpieza de cisterna de agua producto',3),
(28,'F028','Fisicoquímicos de agua de la red y filtros',2),
(29,'F029','Fisicoquímicos de agua producto',2),
(32,'','',1);

/*Table structure for table `perfiles` */

DROP TABLE IF EXISTS `perfiles`;

CREATE TABLE `perfiles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `perfiles` */

insert  into `perfiles`(`Id`,`Nombre`) values 
(1,'Administrador'),
(7,'Gerenjted'),
(4,'Gerente'),
(5,'Gerented'),
(3,'Invitado'),
(2,'Trabajador');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Apellidos` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Correo` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Contrasena` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Perfiles_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Usuarios_Perfiles1_idx` (`Perfiles_Id`),
  CONSTRAINT `fk_Usuarios_Perfiles1` FOREIGN KEY (`Perfiles_Id`) REFERENCES `perfiles` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `usuarios` */

insert  into `usuarios`(`Id`,`Nombre`,`Apellidos`,`Correo`,`Contrasena`,`Estatus`,`Perfiles_Id`) values 
(1,'Héctor Daniel','Brito Rojas','purificadora@upsin.edu.mx','123',1,1),
(2,'Rolando','Sánchez Arballo','rsanchez@upsin.edu.mx','123',1,2),
(3,'Julio Ernesto','Rodríguez Tirado','jrodriguez@upsin.edu.mx','123',1,2),
(4,'Miguel Gustavo','Ayala Villanueva','mayala@upsin.edu.mx','123',1,2),
(10,'César','Beltrán','123','123',1,2);

/* Procedure structure for procedure `clasificacion_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `clasificacion_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `clasificacion_agregar`(
	in pNombre varchar(50))
BEGIN
		insert into clasificacion(Nombre) values (pNombre);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f001_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f001_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f001_agregar`(
	IN pFecha DATETIME,
	in pCantidad float,
	in pId int)
BEGIN
		insert into f001(Fecha_hora,Cantidad,Usuarios_Id,Formatos_Id) values (pFecha,pCantidad,pId,1);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f002_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f002_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f002_agregar`(
	in pLu tinyint(1),
	IN pMa TINYINT(1),
	IN pMi TINYINT(1),
	IN pJu TINYINT(1),
	IN pVi TINYINT(1),
	in pFecha_ini date,
	in pFecha_fin date,
	in pObservaciones varchar(150),
	in pGarrafon VARCHAR(50))
BEGIN
		declare pTotal int;
		SELECT SUM(pLu + pMa + pMi + pJu + pVi) INTO pTotal;
		insert into f002(Lu,Ma,Mi,Ju,Vi,Total,Observaciones,Fecha_ini, Fecha_fin, Garrafon,Formatos_Id) values (pLu,pMa,pMi,pJu,pVi,pTotal,pObservaciones,pFecha_ini, pFecha_fin, pGarrafon,2);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f003_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f003_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f003_agregar`(
	in pFecha datetime,
	IN pId INT,
	in pUbicacion varchar(500),
	in pResguardo varchar(45))
BEGIN
		
		insert into f003(Fecha_hora,Usuarios_Id,Formatos_Id,Ubicacion,Resguardo) values (pFecha,pId,3,pUbicacion,pResguardo);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f004_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f004_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f004_agregar`(
	in pFecha datetime,
	in pOperacion varchar(150),
	in pId int)
BEGIN
		insert into f004(Fecha_hora,Operacion,Usuarios_Id,Formatos_Id) values (pFecha,pOperacion,pId,4);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f005_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f005_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f005_agregar`(
	in pFecha datetime,
	in pCl float,
	in pId int
	)
BEGIN
		insert into f005(Fecha_hora,Cl,Usuarios_Id,Formatos_Id) values (pFecha,pCl,pId,5);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f006_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f006_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f006_agregar`(
	in pFecha datetime,
	in pCl float,
	in pId int)
BEGIN
		INSERT INTO f006(Fecha_hora,Cl,Usuarios_Id,Formatos_Id) VALUES (pFecha,pCl,pId,6);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f007_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f007_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f007_agregar`(
	in pFecha datetime,
	in pGotas int,
	in pMl float,
	in pPpm float,
	in pId int)
BEGIN
		insert into f007(Fecha_hora,Gotas,ml,ppm,Usuarios_Id,Formatos_Id) values (pFecha,pGotas,pMl,pPpm,pId,7);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f008_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f008_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f008_agregar`(
	in pPh_M1 float,
	in pPh_M2 int,
	in pFecha datetime,
	in pId int)
BEGIN
		insert into f008(pH_M1,ph_M2,Fecha_hora,Usuarios_Id,Formatos_Id) values (pPh_M1,pPh_M2,pFecha,pId,8);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f009_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f009_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f009_agregar`(
	in pFecha date,
	in pLote int,
	in pVerificadas int,
	in pNoconformadas int)
BEGIN
		insert into f009(Fecha,Lote,Unidades_verificadas,Unidades_no_conformadas,Formatos_Id) values (pFecha,pLote,pVerificadas,pNoconformadas,9);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f010_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f010_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f010_agregar`(
	in pFecha date,
	in pFechaencendido time,
	in pFechaapagado time,
	in pSDin int,
	in pSDout int,
	in pId int)
BEGIN
		insert into f010(Fecha,Hora_encendido,Hora_apagado,SD_in,SD_out,Usuarios_Id,Formatos_Id) values (pFecha,pFechaencendido,pFechaapagado,pSDin,pSDout,pId,10);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f011_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f011_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f011_agregar`(
	in pFecha date,
	in pFecha_encendido time,
	in pFecha_apagado time,
	in pId varchar(255)
    )
BEGIN
		
		/*Insert a la tabla*/
		INSERT INTO f011 ( 
			Fecha, 
			Hora_encendido, 
			Hora_apagado, 
			Usuarios_Id, 
			Formatos_Id
		) 
		VALUES (
			pFecha,
			pFecha_encendido,
			pFecha_apagado,
			pId,
			11
		);
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f012_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f012_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f012_agregar`(
	IN pFecha DATE,
	IN pFecha_encendido TIME,
	IN pFecha_apagado TIME,
	IN pId int
    )
BEGIN
		/*Insert a la tabla*/
		INSERT INTO f012 ( 
			Fecha, 
			Hora_encendido, 
			Hora_apagado, 
			Usuarios_Id, 
			Formatos_Id
		) 
		VALUES (
			pFecha,
			pFecha_encendido,
			pFecha_apagado,
			pId,
			12
		);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f013_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f013_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f013_agregar`(
	in pFecha datetime,
	in pDispensador varchar(255),
	in pSaturacion float,
	in pOlor varchar(255),
	in pSabor varchar(255),
	in pColor varchar(255),
	in pId int
    )
BEGIN
		
		
		/*Insert a la tabla*/
		INSERT INTO `purificadora`.`f013` 
		( 
		 `Fecha_hora`, 
		`Dispensador`, 
		`Saturacion`, 
		`Olor`, 
		`Sabor`, 
		`Color`, 
		`Usuarios_Id`, 
		`Formatos_Id`
		)
		VALUES
		( 
		 pFecha, 
		 pDispensador, 
		 pSaturacion, 
		 pOlor, 
		 pSabor, 
		 pColor, 
		 pId, 
		 13
		);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f014_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f014_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f014_agregar`(
	IN pFecha DATETIME,
	IN pColor VARCHAR(255),
	IN pSaturacion FLOAT,
	IN pOlor VARCHAR(255),
	IN pSabor VARCHAR(255),
	IN pId int)
BEGIN
		
		/*Insert a la tabla*/
		INSERT INTO `purificadora`.`f014` 
		( 
		 `Fecha_hora`, 
		`Saturacion`, 
		`Olor`, 
		`Sabor`, 
		`Color`, 
		`Usuarios_Id`, 
		`Formatos_Id`
		)
		VALUES
		( 
		 pFecha, 
		 pSaturacion, 
		 pOlor, 
		 pSabor, 
		 pColor, 
		 pId, 
		 14
		);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f015_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f015_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f015_agregar`(
	in pFecha date,
	in pFecha_ini time,
	in pFecha_fin time,
	in pCantidad int,
	in pId varchar(255)
    )
BEGIN
		
		/*Insert a la tabla*/
		INSERT INTO `purificadora`.`f015` 
		( 
		`Fecha`, 
		`Hora_inicio`, 
		`Hora_final`, 
		`Cantidad`, 
		`Usuarios_Id`, 
		`Formatos_Id`
		)
		VALUES
		( 
		pFecha, 
		pFecha_ini, 
		pFecha_fin, 
		pCantidad, 
		pId, 
		15
		);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f016_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f016_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f016_agregar`(
	IN pFecha DATE,
	IN pFecha_ini TIME,
	IN pFecha_fin TIME,
	IN pCantidad INT,
	IN pId int
    )
BEGIN
		
		/*Insert a la tabla*/
		INSERT INTO `purificadora`.`f016` 
		( 
		`Fecha`, 
		`Hora_inicio`, 
		`Hora_final`, 
		`Cantidad`, 
		`Usuarios_Id`, 
		`Formatos_Id`
		)
		VALUES
		( 
		pFecha, 
		pFecha_ini, 
		pFecha_fin, 
		pCantidad, 
		pId, 
		16
		);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f017_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f017_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f017_agregar`(
	IN pSal INT,
	IN pFecha DATE,
	IN pFecha_ini TIME,
	IN pFecha_fin TIME,
	IN pId int   
    )
BEGIN
		/*Insert a la tabla*/
		INSERT INTO `purificadora`.`f017` 
		( 
		`Sal`, 
		`Fecha`, 
		`Hora_encendido`, 
		`Hora_apagado`, 
		`Usuarios_Id`, 
		`Formatos_Id`
		)
		VALUES
		( 
		pSal,
		pFecha, 
		pFecha_ini, 
		pFecha_fin,  
		pId, 
		17
		);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f018_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f018_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f018_agregar`(
	IN pFecha DATE,
	IN pFecha_ini TIME,
	IN pFecha_fin TIME,
	IN pId int
    )
BEGIN
		/*Insert a la tabla*/
		INSERT INTO `purificadora`.`f018` 
		(  
		`Fecha`, 
		`Hora_encendido`, 
		`Hora_apagado`, 
		`Usuarios_Id`, 
		`Formatos_Id`
		)
		VALUES
		( 
		pFecha, 
		pFecha_ini, 
		pFecha_fin,  
		pId, 
		18
		);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f019_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f019_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f019_agregar`(
	IN pFecha DATE,
	IN pFecha_ini TIME,
	IN pFecha_fin TIME,
	IN pId int
    )
BEGIN
		/*Insert a la tabla*/
		INSERT INTO `purificadora`.`f019` 
		(  
		`Fecha`, 
		`Hora_encendido`, 
		`Hora_apagado`, 
		`Usuarios_Id`, 
		`Formatos_Id`
		)
		VALUES
		( 
		pFecha, 
		pFecha_ini, 
		pFecha_fin,  
		pId, 
		19
		);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f020_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f020_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f020_agregar`(
	in pFecha date,
	in pVolumen float,
	in pFecha_entrega date,
	in pEntrega varchar(255),
	in pSolicitante varchar(255),
	IN pArea varchar (255),
	in pFirma tinyint(1)
    )
BEGIN
		INSERT INTO `purificadora`.`f020` 
		( 
		`Fecha`, 
		`Volumen`, 
		`Fecha_entrega`, 
		`Persona_entrego`, 
		`Nombre_solicitante`, 
		Area,
		`Firma`, 
		`Formatos_Id`
		)
		VALUES
		( 
		pFecha, 
		pVolumen, 
		pFecha_entrega, 
		pEntrega, 
		pSolicitante, 
		pArea,
		pFirma, 
		20
		);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f021_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f021_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f021_agregar`(
	in pFecha date,
	in pSolicitante varchar(255),
	in pSolicitadas int,
	in pFecha_entrega date,
	in pEntregadas int,
	IN pArea varchar (250),
	in pPersonal varchar(255),
	in pReceptor varchar(255),
	in pFirma tinyint
    )
BEGIN
		INSERT INTO `purificadora`.`f021` 
		( 
		`Fecha`, 
		`Solicitante`, 
		`Unidades_solicitadas`, 
		`Fecha_entrega`, 
		`Unidades_entregadas`, 
		Area,
		`Persona_entrego`, 
		`Nombre_receptor`, 
		`Firma`, 
		`Formatos_Id`
		)
		VALUES
		( 
		pFecha, 
		pSolicitante, 
		pSolicitadas, 
		pFecha_entrega, 
		pEntregadas, 
		pArea,
		pPersonal, 
		pReceptor, 
		pFirma, 
		21
		);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f023_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f023_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f023_agregar`(
    pFecha_hora date,
    pCodigo Varchar(50),
    pPiso int,
    pEdificio varchar(45)
    
    )
BEGIN
	insert into f023(
	Fecha,
	Codigo,
	Piso,
	Edificio,
	Formatos_Id)
	Values(
	pFecha_hora,
	pCodigo,
	pPiso,
	pEdificio,
	23
	);
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f024_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f024_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f024_agregar`(
    pFecha_hora date ,
    pC1 int,
    pC1N INT,
    pC2 int,
    pC2N INT,
    pC3 int,
    pC3N INT,
    pC4 int,
    pC4N INT,
    pC5 int,
    pC5N INT,
    pC6 int,
    pC6N INT,
    pC7 int,
    pC7N INT,
    pC8 int,
    pC8N INT,
    pC9 int,
    pC9N INT,
    pC10 int,
    pC10N INT,
    pC11 int,
    pC11N INT,
    pPromedio float,
    pRevisiones_totales INT,
    pObservaciones varchar (500)
    )
BEGIN

	INSERT INTO  f024(
	Fecha,
	C1,
	C1N,
	C2,
	C2N,
	C3,
	C3N,
	C4,
	C4N,
	C5,
	C5N,
	C6,
	C6N,
	C7,
	C7N,
	C8,
	C8N,
	C9,
	C9N,
	C10,
	C10N,
	C11,
	C11N,
	Promedio,
	Revisiones_totales,
	Observaciones,
	Formatos_Id)
	VALUES(
	    pFecha_hora ,
	    pC1 ,
	    pC1N,
	    pC2 ,
	    pC2N,
	    pC3 ,
	    pC3N,
	    pC4 ,
	    pC4N,
	    pC5 ,
	    pC5N,
	    pC6 ,
	    pC6N,
	    pC7 ,
	    pC7N,
	    pC8 ,
	    pC8N,
	    pC9 ,
	    pC9N,
	    pC10 ,
	    pC10N,
	    pC11 ,
	    pC11N,
	    pPromedio,
	    pRevisiones_totales,
	    pObservaciones,
	    24);
	    
	  
	    
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f025_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f025_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f025_agregar`(
    pFecha_hora datetime,
    pOperacion varchar (150),
    pId int
    )
BEGIN
	INSERT INTO f025(
	Fecha_hora,
	Operacion,
	Usuarios_Id,
	Formatos_Id
	)
	VALUES(
	pFecha_hora,
	pOperacion,
	pId,
	25);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f026_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f026_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f026_agregar`(
    pFecha_hora datetime,
    pObservaciones varchar (150),
    pId int
    
    )
BEGIN
	insert into f026(
	Fecha_hora,
	Observaciones,
	Usuarios_Id,
	Formatos_Id
	)
	VALUES(
	pFecha_hora,
	pObservaciones,
	pId,
	26);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f027_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f027_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f027_agregar`(
    pFecha_hora DATETIME,
    pObservaciones varchar(150),
    pId int
    )
BEGIN
		INSERT into f027(
			Fecha_hora,
			Observaciones,
			Usuarios_Id,
			Formatos_Id
		)
		VALUES(
			pFecha_hora,
			pObservaciones,
			pId,
			27
		);
	
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f028_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f028_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f028_agregar`(
    pFecha_hora DATE ,
    pHora_muestra DATETIME ,
    pHora_analisis DATETIME ,
    pPH1 FLOAT,
    pPH2 FLOAT,
    pCE FLOAT,
    pSD FLOAT,
    pCloro_residual FLOAT,
    pTemperatura FLOAT,
    pDureza FLOAT,    
    pId int
    
    )
BEGIN
    INSERT INTO f028(
	Fecha,
	Hora_muestra,
	Hora_analisis,
	pH1,
	pH2,
	CE,
	SD,
	Cloro_residual,
	Temperatura,
	Dureza,
	Usuarios_Id,
	Formatos_Id
	)
	VALUES(
	pFecha_hora,
	pHora_muestra,
	pHora_analisis,
	ppH1,
	ppH2,
	pCE,
	pSD,
	pCloro_residual,
	pTemperatura,
	Dureza,
	pId,
	28
	);
    
   
	END */$$
DELIMITER ;

/* Procedure structure for procedure `f029_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `f029_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `f029_agregar`(
    pFecha_hora DATE ,
    pHora_muestra DATETIME ,
    pHora_analisis DATETIME ,
    pID2 FLOAT,  
    pCloro_residual FLOAT,
    pPH1 FLOAT,
    pPH2 FLOAT,
    pCE FLOAT,
    pSD FLOAT,
    pTemperatura FLOAT,
    pId int
    
    )
BEGIN
    INSERT INTO f029(
	Fecha,
	Hora_muestra,
	Hora_analisis,
	ID2,
	pH1,
	pH2,
	CE,
	SD,
	Cloro_residual,
	Temperatura,
	Usuarios_Id,
	Formatos_Id
	)
	VALUES(
	pFecha_hora,
	pHora_muestra,
	pHora_analisis,
	pID2,
	ppH1,
	ppH2,
	pCE,
	pSD,
	pCloro_residual,
	pTemperatura,
	pId,
	29
	);
    
   
	END */$$
DELIMITER ;

/* Procedure structure for procedure `formatos_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `formatos_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `formatos_agregar`(
    pCodigo varchar(20),
    pNombre varchar(100),
    pClasificacion varchar(60)
    )
BEGIN
	DECLARE idCla INT;
	SELECT Id INTO idCla FROM clasificacion WHERE Nombre=pClasificacion;
	insert into formatos(
	Codigo,
	Nombre,
	Clasificacion_Id
	)
	Values(
	Codigo,
	Nombre,
	idCla);
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `perfiles_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `perfiles_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `perfiles_agregar`(
    pNombre varchar(50)
    )
BEGIN
	INSERT INTO perfiles(Nombre)Values(pNombre);
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `usuarios_agregar` */

/*!50003 DROP PROCEDURE IF EXISTS  `usuarios_agregar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usuarios_agregar`(
    pNombre VARCHAR(50),
    pApellidos VARCHAR(50),
    pCorreo VARCHAR(50),
    pContrasena VARCHAR(30),
    pEstatus INT,
    pPerfiles VARCHAR(50)
    )
BEGIN
	DECLARE idPer INT;
	SELECT Id into idPer FROM perfiles WHERE Nombre=pPerfiles;
	INSERT INTO usuarios(
	Nombre,
	Apellidos,
	Correo,
	Contrasena,
	Estatus,
	Perfiles_Id
	)
	VALUES(
	pNombre,
	pApellidos,
	pCorreo,
	pContrasena,
	pEstatus,
	idPer
	);
	
	
	
	
	
	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
