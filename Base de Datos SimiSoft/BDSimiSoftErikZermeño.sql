CREATE DATABASE  IF NOT EXISTS `farmaciadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `farmaciadb`;
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: farmaciadb
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `farmacias`
--

DROP TABLE IF EXISTS `farmacias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmacias` (
  `idFarmacia` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `activo` int DEFAULT NULL,
  PRIMARY KEY (`idFarmacia`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmacias`
--

LOCK TABLES `farmacias` WRITE;
/*!40000 ALTER TABLE `farmacias` DISABLE KEYS */;
INSERT INTO `farmacias` VALUES (17,'GAG','Blvd San fco, 302B El Maguey, Gto.','4761208597',1),(18,'ISSEG','Carr. Manuel Doblado - León, El Maguey, Gto.','4767576299',1),(19,'Cristo Rey','Calle Querétaro 1000, Sin Nombre, 36380 San Francisco del Rincón, Gto.','4763589785',1),(20,'Benavides','Calle Blvrd Emiliano Zapata 215, Zona Centro, 36300 San Francisco del Rincón, Gto.','8181260000',1),(21,'Similares','Josefa Ortiz de Domínguez 210, Centro, 36300 San Francisco del Rincón, Gto.','4767437723',1),(22,'Gi','Blvrd Aquiles Serdán Centro 728, San Miguel, 36353 San Francisco del Rincón, Gto.','4768953214',1),(23,'Claudia','Luis Rocha L., Barrio de San Antonio, 36300 San Francisco del Rincón, Gto.','4768512354',1),(24,'Guadalajara','Salvador Díaz Mirón 102-S, Zona Centro, 36300 San Francisco del Rincón, Gto.','4767435370',1),(25,'Lilí','Centro, María de La Luz Bravo 427B, Zona Centro, 36300 San Francisco del Rincón, Gto.','4767432643',1),(26,'del Ahorro San Fco. Del Rincon','Salvador Díaz Mirón 214, Centro, 36300 San Francisco del Rincón, Gto.','4761235698',1);
/*!40000 ALTER TABLE `farmacias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `caducidad` datetime DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `idFarmacia` int DEFAULT NULL,
  `activo` tinyint DEFAULT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (14,'Simvastamina','2023-04-18 00:00:00',6,18,1),(15,'Aspirina','2024-06-26 00:00:00',13,17,1),(16,'Omeprazol','2022-10-15 00:00:00',23,19,1),(17,'Lexotiroxina sódica','2025-05-26 00:00:00',30,24,1),(18,'Ramipril','2023-01-12 00:00:00',12,23,1),(19,'Amlodipina','2022-11-30 00:00:00',5,22,1),(20,'Paracetamol','2023-09-01 00:00:00',10,26,1),(21,'Atorvastatina','2023-08-07 00:00:00',7,25,1),(22,'Salbutamol','2023-06-04 00:00:00',6,21,1),(23,'Lansoprazol','2023-02-19 00:00:00',23,18,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-08 21:42:27
