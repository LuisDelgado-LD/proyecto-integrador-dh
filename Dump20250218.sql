CREATE DATABASE  IF NOT EXISTS `pet_paradise` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pet_paradise`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: pet_paradise
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `habitaciones`
--

DROP TABLE IF EXISTS `habitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitaciones` (
  `is_disponible` bit(1) NOT NULL,
  `precio_unitario` double NOT NULL,
  `tamano` tinyint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKitbl8vbj6fprgoe6was8c9k0e` (`nombre`),
  CONSTRAINT `habitaciones_chk_1` CHECK ((`tamano` between 0 and 2))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitaciones`
--

LOCK TABLES `habitaciones` WRITE;
/*!40000 ALTER TABLE `habitaciones` DISABLE KEYS */;
INSERT INTO `habitaciones` VALUES (_binary '',5,0,1,'Habitacion 01','Un lugar acogedor y lleno de calidez'),(_binary '',5,0,2,'Habitacion 02','Un lugar acogedor y lleno de calidez'),(_binary '',5,0,3,'Habitacion 03','Un lugar acogedor y lleno de calidez'),(_binary '',5,0,4,'Habitacion 04','Un lugar acogedor y lleno de calidez'),(_binary '',5,0,5,'Habitacion 05','Un lugar acogedor y lleno de calidez'),(_binary '',5,0,6,'Habitacion 06','Un lugar acogedor y lleno de calidez'),(_binary '',5,0,7,'Habitacion 07','Un lugar acogedor y lleno de calidez'),(_binary '',5,0,8,'Habitacion 08','Un lugar acogedor y lleno de calidez'),(_binary '',5,0,9,'Habitacion 09','Un lugar acogedor y lleno de calidez'),(_binary '',5,0,10,'Habitacion 10','Un lugar acogedor y lleno de calidez'),(_binary '',5,1,11,'Habitacion 11','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,12,'Habitacion 12','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,13,'Habitacion 13','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,14,'Habitacion 14','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,15,'Habitacion 15','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,16,'Habitacion 16','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,17,'Habitacion 17','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,18,'Habitacion 18','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,19,'Habitacion 19','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,20,'Habitacion 20','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,21,'Habitacion 21','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,22,'Habitacion 22','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,23,'Habitacion 23','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,24,'Habitacion 24','Un lugar acogedor y lleno de calidez'),(_binary '',7,1,25,'Habitacion 25','Un lugar acogedor y lleno de calidez'),(_binary '',10,2,26,'Habitacion 26','Un lugar acogedor y lleno de calidez'),(_binary '',10,2,27,'Habitacion 27','Un lugar acogedor y lleno de calidez'),(_binary '',10,2,28,'Habitacion 28','Un lugar acogedor y lleno de calidez'),(_binary '',10,2,29,'Habitacion 29','Un lugar acogedor y lleno de calidez'),(_binary '',10,2,30,'Habitacion 30','Un lugar acogedor y lleno de calidez');
/*!40000 ALTER TABLE `habitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagenes` (
  `habitacion_id` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn48iubijpwugm2iee5hj5i7r7` (`habitacion_id`),
  CONSTRAINT `FKn48iubijpwugm2iee5hj5i7r7` FOREIGN KEY (`habitacion_id`) REFERENCES `habitaciones` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascotas` (
  `edad` int NOT NULL,
  `cliente_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `raza` varchar(30) NOT NULL,
  `tamano` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmihu57nq3wbradrgd1lcos05p` (`cliente_id`),
  CONSTRAINT `FKmihu57nq3wbradrgd1lcos05p` FOREIGN KEY (`cliente_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `estado` tinyint NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `precio_total` double NOT NULL,
  `cliente_id` bigint NOT NULL,
  `habitacion_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mascota_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe35322vvwcp8hpg5ufiqt3rpu` (`habitacion_id`),
  KEY `FK79j0ogdqu3ltcgegcmdyp2wim` (`mascota_id`),
  KEY `FK2ccg0jlivobliqar4ab2crtfn` (`cliente_id`),
  CONSTRAINT `FK2ccg0jlivobliqar4ab2crtfn` FOREIGN KEY (`cliente_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FK79j0ogdqu3ltcgegcmdyp2wim` FOREIGN KEY (`mascota_id`) REFERENCES `mascotas` (`id`),
  CONSTRAINT `FKe35322vvwcp8hpg5ufiqt3rpu` FOREIGN KEY (`habitacion_id`) REFERENCES `habitaciones` (`id`),
  CONSTRAINT `reserva_chk_1` CHECK ((`estado` between 0 and 2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `apellido` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('ADMIN','CLIENTE') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKkfsp0s1tflm1cwlj8idhqsad0` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-18 19:28:48
