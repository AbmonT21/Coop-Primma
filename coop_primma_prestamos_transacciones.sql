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
-- Table structure for table `prestamos_transacciones`
--

DROP TABLE IF EXISTS `prestamos_transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamos_transacciones` (
  `prestamo_transaccion_id` int NOT NULL AUTO_INCREMENT,
  `prestamo_id` int NOT NULL,
  `tipo_transaccion_id` int NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prestamo_transaccion_id`),
  KEY `prestamo_id` (`prestamo_id`),
  KEY `tipo_transaccion_id` (`tipo_transaccion_id`),
  CONSTRAINT `prestamos_transacciones_ibfk_1` FOREIGN KEY (`prestamo_id`) REFERENCES `prestamos` (`prestamo_id`),
  CONSTRAINT `prestamos_transacciones_ibfk_2` FOREIGN KEY (`tipo_transaccion_id`) REFERENCES `tipos_transacciones` (`tipo_transaccion_id`),
  CONSTRAINT `prestamos_transacciones_ibfk_3` FOREIGN KEY (`prestamo_id`) REFERENCES `prestamos` (`prestamo_id`),
  CONSTRAINT `prestamos_transacciones_ibfk_4` FOREIGN KEY (`tipo_transaccion_id`) REFERENCES `tipos_transacciones` (`tipo_transaccion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos_transacciones`
--

LOCK TABLES `prestamos_transacciones` WRITE;
/*!40000 ALTER TABLE `prestamos_transacciones` DISABLE KEYS */;
INSERT INTO `prestamos_transacciones` VALUES (1,300,2,25.83,'2023-05-01 23:36:49','2023-05-01 23:36:49'),(2,300,2,9025.83,'2023-05-03 00:06:00','2023-05-03 00:06:00'),(3,300,2,9025.83,'2023-05-08 23:57:28','2023-05-08 23:57:28');
/*!40000 ALTER TABLE `prestamos_transacciones` ENABLE KEYS */;
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
