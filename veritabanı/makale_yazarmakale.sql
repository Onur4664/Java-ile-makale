-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: makale
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `yazarmakale`
--

DROP TABLE IF EXISTS `yazarmakale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yazarmakale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` longtext,
  `icerik` longtext,
  `alan` varchar(45) DEFAULT NULL,
  `durum` varchar(45) DEFAULT NULL,
  `tarih` varchar(45) DEFAULT NULL,
  `yazar` varchar(45) DEFAULT NULL,
  `inceleyen` varchar(45) DEFAULT NULL,
  `rapor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yazarmakale`
--

LOCK TABLES `yazarmakale` WRITE;
/*!40000 ALTER TABLE `yazarmakale` DISABLE KEYS */;
INSERT INTO `yazarmakale` VALUES (14,'asdasdasd',' hhhhhhhhhhhhhhhh ','tarih','bekleyen','21 Haziran 2021 Pazartesi 17:14','a','b','sasas'),(16,'asdasf','asasfasf','tarih','Atanmamis','25 Haziran 2021 Cuma 18:18','a','','asdasdasd'),(17,'vvvv','vvvvv','matematik','bekleyen','27 Haziran 2021 Pazar 12:00','onur46',NULL,NULL);
/*!40000 ALTER TABLE `yazarmakale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-27 15:34:59
