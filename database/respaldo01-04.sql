-- MySQL dump 10.13  Distrib 9.2.0, for Linux (x86_64)
--
-- Host: 10.10.0.126    Database: pet_paradise
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `caracteristicas`
--

DROP TABLE IF EXISTS `caracteristicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caracteristicas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `icono_url` varchar(300) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKj1r90lq5cy1jkwfo4frqrhuyw` (`icono_url`),
  UNIQUE KEY `UKhbtbu7o0x54nviwirclyhapwq` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristicas`
--

LOCK TABLES `caracteristicas` WRITE;
/*!40000 ALTER TABLE `caracteristicas` DISABLE KEYS */;
INSERT INTO `caracteristicas` VALUES (1,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260486/caracteristicas/ht6pfi7wlsst0bfrqcwy.png','Alimentación'),(2,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260580/caracteristicas/ru3uedxizqg2ya9qwixm.png','Paseos'),(3,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743287825/caracteristicas/lilhqrqzhputn5hmsiye.png','estadia'),(4,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743287846/caracteristicas/hjrwpl01uzniawhwpjyh.png','peluqueria'),(5,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743296237/caracteristicas/p1oco7pk79tlnnvajgvc.png','entrenamiento'),(16,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743297137/caracteristicas/kbpi1rclznset8k4whoj.png','prueba2');
/*!40000 ALTER TABLE `caracteristicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `imagen_url` varchar(300) DEFAULT NULL,
  `patitas` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKqcog8b7hps1hioi9onqwjdt6y` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Básico','Un espacio amplio y lujoso diseñado para brindar a tu mascota una experiencia de realeza. Con zonas para descansar, jugar y explorar, el Palacio Peludo ofrece una comodidad total, con camas extra grandes, alfombras suaves y un ambiente relajante. Perfecto para aquellas mascotas que disfrutan de su espacio y buscan sentirse como verdaderos reyes.','/img/1patita.png',1),(2,'Premium','Un lugar acogedor y lleno de calidez, ideal para aquellos que buscan el equilibrio entre amplitud y comodidad. El Refugio Confortable tiene todo lo necesario para que tu mascota se sienta segura y feliz. Con un diseño práctico, camas cómodas y rincones para la privacidad, es el lugar perfecto para descansar después de un día lleno de aventuras.','/img/2patitas.png',2),(3,'VIP','Un pequeño paraíso para mascotas que prefieren espacios íntimos y tranquilos. La Cueva Acogedora es perfecta para dormir plácidamente, con una cama cómoda, una atmósfera cálida y una decoración que invita al descanso. Ideal para mascotas más reservadas que buscan un refugio especial donde se sientan protegidos y en paz.','/img/3patitas.png',3);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitacion_caracteristicas`
--

DROP TABLE IF EXISTS `habitacion_caracteristicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitacion_caracteristicas` (
  `habitacion_id` bigint NOT NULL,
  `caracteristica_id` bigint NOT NULL,
  KEY `FKpdcdwhomx051vyhd975uyll26` (`caracteristica_id`),
  KEY `FKdl1jq2ryujfss9ydk51dalgv1` (`habitacion_id`),
  CONSTRAINT `FKdl1jq2ryujfss9ydk51dalgv1` FOREIGN KEY (`habitacion_id`) REFERENCES `habitaciones` (`id`),
  CONSTRAINT `FKpdcdwhomx051vyhd975uyll26` FOREIGN KEY (`caracteristica_id`) REFERENCES `caracteristicas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion_caracteristicas`
--

LOCK TABLES `habitacion_caracteristicas` WRITE;
/*!40000 ALTER TABLE `habitacion_caracteristicas` DISABLE KEYS */;
INSERT INTO `habitacion_caracteristicas` VALUES (14,3),(14,1),(14,2),(15,3),(15,1),(15,2),(16,3),(16,1),(16,2),(17,3),(17,1),(17,2),(18,3),(18,1),(18,2),(24,3),(24,1),(24,2),(25,3),(25,1),(25,2),(26,3),(26,1),(26,2),(27,3),(27,1),(27,2),(28,3),(28,1),(28,2),(9,3),(9,1),(9,2),(9,4),(10,3),(10,1),(10,2),(10,4),(11,3),(11,1),(11,2),(11,4),(19,3),(19,1),(19,2),(19,4),(20,3),(20,1),(20,2),(20,4),(21,3),(21,1),(21,2),(21,4),(29,3),(29,1),(29,2),(29,4),(30,3),(30,1),(30,2),(30,4),(31,3),(31,1),(31,2),(31,4),(12,3),(12,1),(12,2),(12,4),(12,5),(13,3),(13,1),(13,2),(13,4),(13,5),(22,3),(22,1),(22,2),(22,4),(22,5),(23,3),(23,1),(23,2),(23,4),(23,5),(32,3),(32,1),(32,2),(32,4),(32,5),(33,3),(33,1),(33,2),(33,4),(33,5);
/*!40000 ALTER TABLE `habitacion_caracteristicas` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitaciones`
--

LOCK TABLES `habitaciones` WRITE;
/*!40000 ALTER TABLE `habitaciones` DISABLE KEYS */;
INSERT INTO `habitaciones` VALUES (_binary '',150000,2,2,9,'Shiba Inu','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,2,2,10,'Corgi','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,2,2,11,'Springer Spaniel','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,2,3,12,'Australian Shepherd','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,2,3,13,'Samoyedo','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,1,1,14,'Beagle','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,1,1,15,'Cocker','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,1,1,16,'Border Collie','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,1,1,17,'Bulldog Francés','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,1,1,18,'Schnauzer','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,1,2,19,'Staffordshire Bull Terrier','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,1,2,20,'Basenji','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,1,2,21,'Whippet','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,1,3,22,'Shetland Sheepdog','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,1,3,23,'American Eskimo','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,0,1,24,'Chihuahua','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,0,1,25,'Pomerania','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,0,1,26,'Yorkshire','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,0,1,27,'Pinscher','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,0,1,28,'Maltés','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,0,2,29,'Pekinés','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,0,2,30,'Papillón','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,0,2,31,'Shih Tzu','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,0,3,32,'Bichón Frisé','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',150000,0,3,33,'Toy Poodle','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',24000,2,1,34,'Perro peruano','redencion'),(_binary '',154000,2,2,35,'todo full','htfrthfr'),(_binary '',145,2,2,37,'Manuel','hbfg'),(_binary '',45000,2,1,40,'Pepito','sfgsdfgdfgsdf'),(_binary '',150000,2,2,41,'Prueba 31','Una habitación espaciosa para perros grandes con cama acolchonada.'),(_binary '',145,0,1,42,'prueba 105','123'),(_binary '',425,1,2,43,'prueba 106','ff'),(_binary '',450000,2,3,44,'prueba 107','a'),(_binary '',745555,2,2,45,'prueba 108','reserva'),(_binary '',4568888,0,2,46,'prueba 109','a'),(_binary '',147,0,3,47,'prueba 110','vf'),(_binary '',23,1,3,48,'prueba 111','f'),(_binary '',478,2,2,49,'prueba 115','awa'),(_binary '',159,2,1,50,'prueba 120','123'),(_binary '',4444,1,2,51,'prueba 125','741'),(_binary '',47,2,2,52,'prueba 130','d');
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
  `es_principal` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn48iubijpwugm2iee5hj5i7r7` (`habitacion_id`),
  CONSTRAINT `FKn48iubijpwugm2iee5hj5i7r7` FOREIGN KEY (`habitacion_id`) REFERENCES `habitaciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
INSERT INTO `imagenes` VALUES (14,118,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260031/habitaciones/a9qlncaukwr7sfoimnpc.jpg',_binary ''),(14,119,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary ''),(14,120,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(14,121,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(14,122,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(15,123,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260031/habitaciones/a9qlncaukwr7sfoimnpc.jpg',_binary ''),(15,124,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(15,125,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(15,126,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(15,127,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(16,128,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260031/habitaciones/a9qlncaukwr7sfoimnpc.jpg',_binary ''),(16,129,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(16,130,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(16,131,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(16,132,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(17,133,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260031/habitaciones/a9qlncaukwr7sfoimnpc.jpg',_binary ''),(17,134,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(17,135,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(17,136,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(17,137,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(18,138,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260031/habitaciones/a9qlncaukwr7sfoimnpc.jpg',_binary ''),(18,139,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(18,140,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary ''),(18,141,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(18,142,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(24,143,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260031/habitaciones/a9qlncaukwr7sfoimnpc.jpg',_binary ''),(24,144,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(24,145,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(24,146,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(24,147,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(25,148,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260031/habitaciones/a9qlncaukwr7sfoimnpc.jpg',_binary ''),(25,149,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(25,150,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary ''),(25,151,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(25,152,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(26,153,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260031/habitaciones/a9qlncaukwr7sfoimnpc.jpg',_binary ''),(26,154,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(26,155,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(26,156,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(26,157,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(27,158,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260031/habitaciones/a9qlncaukwr7sfoimnpc.jpg',_binary ''),(27,159,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(27,160,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(27,161,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(27,162,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(28,163,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260031/habitaciones/a9qlncaukwr7sfoimnpc.jpg',_binary ''),(28,164,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(28,165,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(28,166,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(28,167,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(9,168,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743285359/WhatsApp_Image_2025-02-25_at_12.56.26_PM_ilq9rj.jpg',_binary ''),(9,169,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(9,170,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(9,171,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(9,172,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(10,173,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743285359/WhatsApp_Image_2025-02-25_at_12.56.26_PM_ilq9rj.jpg',_binary ''),(10,174,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(10,175,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(10,176,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(10,177,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(11,178,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743285359/WhatsApp_Image_2025-02-25_at_12.56.26_PM_ilq9rj.jpg',_binary ''),(11,179,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(11,180,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(11,181,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(11,182,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(19,183,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743285359/WhatsApp_Image_2025-02-25_at_12.56.26_PM_ilq9rj.jpg',_binary ''),(19,184,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(19,185,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(19,186,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(19,187,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(20,188,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743285359/WhatsApp_Image_2025-02-25_at_12.56.26_PM_ilq9rj.jpg',_binary ''),(20,189,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(20,190,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(20,191,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(20,192,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(21,193,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743285359/WhatsApp_Image_2025-02-25_at_12.56.26_PM_ilq9rj.jpg',_binary ''),(21,194,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(21,195,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(21,196,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(21,197,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(29,198,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743285359/WhatsApp_Image_2025-02-25_at_12.56.26_PM_ilq9rj.jpg',_binary ''),(29,199,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(29,200,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(29,201,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(29,202,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(30,203,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743285359/WhatsApp_Image_2025-02-25_at_12.56.26_PM_ilq9rj.jpg',_binary ''),(30,204,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(30,205,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(30,206,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(30,207,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(31,208,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743285359/WhatsApp_Image_2025-02-25_at_12.56.26_PM_ilq9rj.jpg',_binary ''),(31,209,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(31,210,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(31,211,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(31,212,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(12,213,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743282301/habitaciones/nk4h2a7w5hzyrbqentig.jpg',_binary ''),(12,214,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(12,215,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(12,216,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(12,217,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(13,218,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743282301/habitaciones/nk4h2a7w5hzyrbqentig.jpg',_binary ''),(13,219,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(13,220,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(13,221,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(13,222,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(22,223,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743282301/habitaciones/nk4h2a7w5hzyrbqentig.jpg',_binary ''),(22,224,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(22,225,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(22,226,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(22,227,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(23,228,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743282301/habitaciones/nk4h2a7w5hzyrbqentig.jpg',_binary ''),(23,229,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(23,230,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(23,231,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(23,232,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(32,233,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743282301/habitaciones/nk4h2a7w5hzyrbqentig.jpg',_binary ''),(32,234,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(32,235,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(32,236,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(32,237,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(33,238,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743282301/habitaciones/nk4h2a7w5hzyrbqentig.jpg',_binary ''),(33,239,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png',_binary '\0'),(33,240,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png',_binary '\0'),(33,241,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',_binary '\0'),(33,242,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png',_binary '\0'),(51,243,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743487904/habitaciones/unqhinfwnlvoiw498vpn.jpg',_binary '\0'),(51,244,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743487905/habitaciones/sqnpsfhylbucnnsnaczq.jpg',_binary '\0'),(51,245,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743487906/habitaciones/tfucdtkehq2alfezucyd.jpg',_binary '\0'),(51,246,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743487907/habitaciones/iila7smpryazmpizdgi9.jpg',_binary '\0'),(52,247,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743488131/habitaciones/eorob8kyot4r9b2tlvwj.jpg',_binary '\0'),(52,248,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743488131/habitaciones/errqxiwbf9ho2n5c2xil.jpg',_binary '\0'),(52,249,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743488132/habitaciones/fhllcaxkc7379o0h7i5l.jpg',_binary '\0'),(52,250,'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743488133/habitaciones/ugv1hawq4hovwdz1luyb.jpg',_binary '\0');
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `estado` enum('CANCELADA','CONFIRMADA','MODIFICADA') NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `precio_total` double NOT NULL,
  `habitacion_id` bigint NOT NULL,
  `usuario_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe35322vvwcp8hpg5ufiqt3rpu` (`habitacion_id`),
  KEY `FK38fgpjue3selqmjm38huey2wk` (`usuario_id`),
  CONSTRAINT `FK38fgpjue3selqmjm38huey2wk` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FKe35322vvwcp8hpg5ufiqt3rpu` FOREIGN KEY (`habitacion_id`) REFERENCES `habitaciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,'CONFIRMADA','2025-03-30','2025-04-20','2025-04-22',300000,9,1),(2,'CONFIRMADA','2025-03-30','2025-04-20','2025-04-22',300000,10,9),(3,'CONFIRMADA','2025-03-30','2025-04-20','2025-04-22',300000,11,7),(4,'CONFIRMADA','2025-03-30','2025-04-26','2025-04-27',150000,11,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Velez','casa fgdlfgjlsdkfgsldf','Raisa','dfgsdfgfsdf','jesusito@gmail.com','$2a$10$4TERngTIVfcgKsD5G3Xzk.VK6HHwO5Gnnjb6fRk1opoA4rDxz1yKu','USER'),(4,'Diaz','gaviotas la casas','Jaime','12345667890','juanchito@gmail.com','$2a$10$gr8I4hvJUlcWz335zLTh0.usPTwOSpn/t1KeNwoNjnvz439GQ8tmO','USER'),(5,'perez','calle23','pablo','123654789','7pp@gmail.com','$2a$10$ufrdv4VehFPIFAEvCZsttuYnQLikLLvmlkk3eGIK59shKa8NFxMvS','USER'),(6,'Perez','gaviotas la casas','Juan','12345667890','juanPerez@gmail.com','$2a$10$niMujH5lK28NGEwScCJbZ.obtgdOUOWvNfSjLhKSEp3eg9tf07hRC','USER'),(7,'velez','casajkasodi oaoijaos asd','josemario','2211925131','jesusito123@gmail.com','$2a$10$WhnXGApfodqYh3vSdet.G.DLgPJviAHX5LQNEWRz94tKzZhpzoIDi','ADMIN'),(8,'El Cartero','Las Ballestas 145','Juanito','123456789','test@gmail.com','$2a$10$ADdHklEBxIjsrmsjfyof4eK.7cZH.4hRxXYrIWWdzP0ykBNXQ/ElO','USER'),(9,'Apellido','asdasd qwedas ','Nombre','4565324654','a@a.cl','$2a$10$USTJL8osnWdsmOe6cYhNV.Xu1j/vwSDjR1FMw4ZhxKyT84PM4UVvi','ADMIN'),(10,'Don nadie','weqwdasd asd','Nobody','1234567','b@b.cl','$2a$10$ffQPSnDPIuzq8d7HrsbaCuLtzHjejB6suzPQEPCe5k5ywdQWGd1YO','USER');
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

-- Dump completed on 2025-04-02  0:10:43
