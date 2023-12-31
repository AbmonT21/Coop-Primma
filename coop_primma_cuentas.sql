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
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas` (
  `ID_tipoCuenta` int NOT NULL,
  `cuenta_id` int NOT NULL AUTO_INCREMENT,
  `IDsocio` int NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID_Status` int DEFAULT NULL,
  PRIMARY KEY (`cuenta_id`),
  KEY `ID_Status` (`ID_Status`),
  KEY `ID_tipoCuenta` (`ID_tipoCuenta`),
  KEY `IDsocio` (`IDsocio`),
  CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`ID_Status`) REFERENCES `status` (`ID_status`),
  CONSTRAINT `cuentas_ibfk_3` FOREIGN KEY (`IDsocio`) REFERENCES `sociosinfo` (`IDsocio`),
  CONSTRAINT `cuentas_ibfk_4` FOREIGN KEY (`IDsocio`) REFERENCES `sociosinfo` (`IDsocio`),
  CONSTRAINT `cuentas_ibfk_5` FOREIGN KEY (`IDsocio`) REFERENCES `sociosinfo` (`IDsocio`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (2,200,100,4300.00,'2023-05-01 15:54:02','2023-05-08 23:55:13',1),(1,201,100,5200.00,'2023-05-02 17:41:51','2023-05-08 23:58:31',1),(2,202,100,400.00,'2023-05-08 14:44:04','2023-05-08 23:56:36',NULL),(1,204,104,300.00,'2023-05-08 20:30:53','2023-05-08 20:30:53',1),(1,205,101,300.00,'2023-05-08 20:35:37','2023-05-08 20:35:37',1),(1,206,102,300.00,'2023-05-08 20:35:37','2023-05-08 20:35:37',1),(1,207,103,300.00,'2023-05-08 20:37:54','2023-05-08 20:37:54',1),(1,208,105,300.00,'2023-05-08 21:05:55','2023-05-08 21:05:55',1),(2,209,105,500.00,'2023-05-08 21:08:59','2023-05-08 21:08:59',NULL),(2,210,100,500.00,'2023-05-09 00:02:19','2023-05-09 00:02:19',NULL),(1,211,106,300.00,'2023-05-09 00:06:32','2023-05-09 00:06:32',1);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-10 15:31:14
