-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: coop_primma
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sociosinfo`
--

DROP TABLE IF EXISTS `sociosinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sociosinfo` (
  `IDsocio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `ID_tipoDocumento` int DEFAULT NULL,
  `doc_socio` bigint DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `telefono1` bigint NOT NULL DEFAULT '0',
  `telefono2` bigint NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `ID_situacionLaboral` int NOT NULL,
  `lugarTrabajo` varchar(50) NOT NULL,
  `areaTrabajo` varchar(50) NOT NULL,
  `posicionTrabajo` varchar(50) NOT NULL,
  `sueldoTrabajo` int NOT NULL,
  `inicioTrabajo` date NOT NULL,
  `ID_Status` int DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDsocio`),
  KEY `ID_Status` (`ID_Status`),
  KEY `ID_tipoDocumento` (`ID_tipoDocumento`),
  KEY `ID_situacionLaboral` (`ID_situacionLaboral`),
  CONSTRAINT `sociosinfo_ibfk_1` FOREIGN KEY (`ID_Status`) REFERENCES `status` (`ID_status`),
  CONSTRAINT `sociosinfo_ibfk_2` FOREIGN KEY (`ID_tipoDocumento`) REFERENCES `tipodocumento` (`ID_tipoDocumento`),
  CONSTRAINT `sociosinfo_ibfk_3` FOREIGN KEY (`ID_situacionLaboral`) REFERENCES `situacionlaboral` (`ID_situacionlaboral`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sociosinfo`
--

LOCK TABLES `sociosinfo` WRITE;
/*!40000 ALTER TABLE `sociosinfo` DISABLE KEYS */;
INSERT INTO `sociosinfo` VALUES (100,'Mario','Nuez',1,199229939,'C/ K23','Santiago',8497747744,8097747744,'mariothebest@gmail.com',2,'Ferreteria Nuez','Compras','Gerente',85000,'2003-01-04',1,'2023-05-01 13:59:59','2023-05-09 00:01:20'),(101,'Ramona','Mordan',1,40277443322,'C/ Los Mangos','Santiago',8298838833,8298838833,'mordan@gmail.com',2,'Cakes By Ramona','Ventas','Gerente',75000,'2020-02-15',1,'2023-05-08 20:00:46','2023-05-08 20:00:46'),(102,'Samuel','Jackson',2,23322342,'C/ Boy Scout 34','Samana',8498822288,8498822288,'sj19998@gmail.com',2,'Grupo CCN','Ventas','Supervisor',55000,'2018-09-08',1,'2023-05-08 20:24:34','2023-05-08 20:24:34'),(103,'Rafael','Lopez',1,177447723,'C/ John F Kennedy','Santiago',8098862233,8098862233,'rlopezt@gmail.com',1,'Ferreteria Nuez','Compras','Vendedor',45000,'2010-03-22',1,'2023-05-08 20:37:35','2023-05-08 20:37:35'),(104,'Speedy','Gonzalez',2,8833882,'C/ Miraflor 23','Peravia',8498828822,8498828822,'sg2003@gmail.com',1,'Claro Dominicana','Telecomunicaciones','Cajero',30000,'2021-02-23',1,'2023-05-08 20:30:48','2023-05-08 20:30:48'),(105,'Joel','Medrano',1,40233884477,'C/ Los Peloteros','Montecristi',8498837733,8498837733,'jm123@gmail.com',1,'Altice Dominicana','Soporte','Gerente',95000,'2021-09-12',1,'2023-05-08 21:05:02','2023-05-08 21:05:02'),(106,'Carmen','Morales',1,101885577,'C/ B 21','Samana',8297774444,8297774444,'mcarmen13@gmail.com',2,'Salon de Belleza Carmencita','Belleza','Estilista',350000,'2018-09-12',1,'2023-05-09 00:05:53','2023-05-09 00:05:53');
/*!40000 ALTER TABLE `sociosinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-10 15:31:13
