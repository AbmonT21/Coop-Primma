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
-- Table structure for table `cuentas_transacciones`
--

DROP TABLE IF EXISTS `cuentas_transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_transacciones` (
  `cuenta_transaccion_id` int NOT NULL AUTO_INCREMENT,
  `cuenta_id` int NOT NULL,
  `tipo_transaccion_id` int NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cuenta_transaccion_id`),
  KEY `cuenta_id` (`cuenta_id`),
  KEY `tipo_transaccion_id` (`tipo_transaccion_id`),
  CONSTRAINT `cuentas_transacciones_ibfk_2` FOREIGN KEY (`tipo_transaccion_id`) REFERENCES `tipos_transacciones` (`tipo_transaccion_id`),
  CONSTRAINT `cuentas_transacciones_ibfk_3` FOREIGN KEY (`cuenta_id`) REFERENCES `cuentas` (`cuenta_id`),
  CONSTRAINT `cuentas_transacciones_ibfk_4` FOREIGN KEY (`tipo_transaccion_id`) REFERENCES `tipos_transacciones` (`tipo_transaccion_id`),
  CONSTRAINT `cuentas_transacciones_ibfk_5` FOREIGN KEY (`cuenta_id`) REFERENCES `cuentas` (`cuenta_id`),
  CONSTRAINT `cuentas_transacciones_ibfk_6` FOREIGN KEY (`tipo_transaccion_id`) REFERENCES `tipos_transacciones` (`tipo_transaccion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_transacciones`
--

LOCK TABLES `cuentas_transacciones` WRITE;
/*!40000 ALTER TABLE `cuentas_transacciones` DISABLE KEYS */;
INSERT INTO `cuentas_transacciones` VALUES (1,200,1,300.00,'2023-05-01 23:33:37','2023-05-01 23:33:37'),(2,200,4,100.00,'2023-05-02 17:33:37','2023-05-02 17:33:37'),(3,200,3,100.00,'2023-05-02 17:36:17','2023-05-02 17:36:17'),(4,200,3,100.00,'2023-05-02 17:39:07','2023-05-02 17:39:07'),(5,200,3,100.00,'2023-05-02 17:39:09','2023-05-02 17:39:09'),(6,200,4,100.00,'2023-05-02 17:39:13','2023-05-02 17:39:13'),(7,200,3,200.00,'2023-05-02 17:50:54','2023-05-02 17:50:54'),(8,201,1,600.00,'2023-05-02 23:55:01','2023-05-02 23:55:01'),(9,201,1,300.00,'2023-05-08 21:12:23','2023-05-08 21:12:23'),(10,200,4,1000.00,'2023-05-08 23:55:13','2023-05-08 23:55:13'),(11,201,4,1000.00,'2023-05-08 23:56:07','2023-05-08 23:56:07'),(12,202,3,100.00,'2023-05-08 23:56:36','2023-05-08 23:56:36'),(13,201,1,600.00,'2023-05-08 23:58:31','2023-05-08 23:58:31');
/*!40000 ALTER TABLE `cuentas_transacciones` ENABLE KEYS */;
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
