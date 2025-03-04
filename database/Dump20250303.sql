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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `imagen_url` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKqcog8b7hps1hioi9onqwjdt6y` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Premium','cuentas con estadía, alimentación, paseo y Peluqueria','https://res.cloudinary.com/djcdkjvrt/image/upload/v1740859776/categorias/pqqzvtkhklc2tlh0kwar.jpg'),(2,'Basica','cuentas con estadía, alimentación y paseo','https://res.cloudinary.com/djcdkjvrt/image/upload/v1740857267/categorias/tlymq2wfu8xlzuvmabnd.jpg'),(3,'VIP','cuentas con estadía, alimentación, paseo, Peluqueria y entrenamiento','https://res.cloudinary.com/djcdkjvrt/image/upload/v1740857324/categorias/uhqchgfollxm2mqpefru.jpg'),(8,'SUPER','cuentas con estadía y paseo, debes traer tu comida','https://res.cloudinary.com/djcdkjvrt/image/upload/v1741048250/categorias/xi6quesqd4lqqwmj48xi.jpg');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

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
  `categoria_id` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKitbl8vbj6fprgoe6was8c9k0e` (`nombre`),
  KEY `FK2h4x75tjm88clmp8i5cjylgd` (`categoria_id`),
  CONSTRAINT `FK2h4x75tjm88clmp8i5cjylgd` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `habitaciones_chk_1` CHECK ((`tamano` between 0 and 2))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitaciones`
--

LOCK TABLES `habitaciones` WRITE;
/*!40000 ALTER TABLE `habitaciones` DISABLE KEYS */;
INSERT INTO `habitaciones` VALUES (_binary '',150000,2,1,1,'habitación 01','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,2,2,2,'habitación 02','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,2,2,3,'habitación 3','Una habitación espaciosa para perros grandes con cama acolchonada.');
/*!40000 ALTER TABLE `habitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagenes` (
  `habitacion_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn48iubijpwugm2iee5hj5i7r7` (`habitacion_id`),
  CONSTRAINT `FKn48iubijpwugm2iee5hj5i7r7` FOREIGN KEY (`habitacion_id`) REFERENCES `habitaciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
INSERT INTO `imagenes` VALUES (1,1,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1740840824/habitaciones/aqkrr5alevjwjluycvk1.jpg'),(1,2,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1740857600/habitaciones/v24zuc6h0on5e0oqnpnv.png'),(1,4,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1741048163/habitaciones/e2hdgijhqoufomkxytly.jpg');
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
  `rol` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKio49vjba68pmbgpy9vtw8vm81` (`nombre`),
  UNIQUE KEY `UKkfsp0s1tflm1cwlj8idhqsad0` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Velez','casa fgdlfgjlsdkfgsldf','Raisa','dfgsdfgfsdf','jesusito@gmail.com','$2a$10$4TERngTIVfcgKsD5G3Xzk.VK6HHwO5Gnnjb6fRk1opoA4rDxz1yKu','USUARIO'),(4,'Diaz','gaviotas la casas','Jaime','12345667890','juanchito@gmail.com','$2a$10$gr8I4hvJUlcWz335zLTh0.usPTwOSpn/t1KeNwoNjnvz439GQ8tmO','USUARIO');
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

-- Dump completed on 2025-03-03 20:55:56
