-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: intern
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Current Database: `intern`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `intern` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `intern`;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Egor','Solyanka','Sergeevich','+380123456789','2021-07-26 10:38:55'),(2,'Alexandr','Buzin','Vjacheslavovich','+380987654321','2021-07-26 10:40:17'),(3,'Danil','Sirota','Olegovich','+380987654321','2021-07-26 10:40:41'),(4,'Maxim','Nazarov','Rustamovich','+380955554321','2021-07-26 10:41:17'),(5,'Kirill','Kazumov','Dmitrievich','+380955222321','2021-07-26 10:42:57'),(6,'Andrey','Tsap','Sergeevich','+380955222321','2021-07-26 10:44:48'),(7,'Evgeniy','Kamazov','Antonovich','+380952556432','2021-07-26 10:47:36'),(8,'Dmitry','Shevchenko','Olegovich','+380952556432','2021-07-26 10:48:50'),(9,'Oleg','Borsch','Egorovich','+380932554432','2021-07-26 10:49:22'),(10,'Ivan','Karasin','Alexandrovich','+380932584632','2021-07-26 10:50:37');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `amount` float NOT NULL,
  `status` set('paid','unpaid') NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,1,15,'paid','2021-03-13 11:32:52'),(2,1,300,'unpaid','2021-05-13 11:32:52'),(3,2,333,'paid','2021-03-22 17:44:12'),(4,2,40,'paid','2021-04-06 09:35:47'),(5,9,70,'paid','2021-05-19 20:14:31'),(6,12,280,'unpaid','2021-02-06 06:18:28'),(7,2,130,'paid','2021-01-04 03:51:23'),(8,11,460,'paid','2021-04-06 11:54:37'),(9,12,440,'unpaid','2021-06-08 17:51:23'),(10,4,420,'unpaid','2021-01-18 21:04:33'),(11,12,190,'paid','2021-04-19 03:22:49'),(12,10,490,'unpaid','2021-07-05 01:48:26'),(13,17,230,'unpaid','2021-04-05 16:06:11'),(14,10,40,'unpaid','2021-05-01 05:54:52'),(15,10,490,'paid','2021-01-24 13:54:48'),(16,14,170,'paid','2021-01-31 20:07:39'),(17,9,190,'unpaid','2021-06-26 01:52:58'),(18,15,280,'paid','2021-04-07 01:14:37'),(19,16,50,'paid','2021-01-14 09:56:44'),(20,1,140,'paid','2021-02-06 18:54:37'),(21,11,120,'paid','2021-06-29 01:17:53'),(22,11,250,'unpaid','2021-02-11 20:25:39'),(23,2,410,'unpaid','2021-06-20 08:04:36'),(24,12,380,'paid','2021-03-19 23:33:11'),(25,3,260,'paid','2021-01-18 18:56:52'),(26,1,330,'unpaid','2021-01-06 23:45:41'),(27,4,240,'paid','2021-01-03 08:33:24'),(28,3,260,'unpaid','2021-07-19 10:17:53'),(29,14,370,'paid','2021-07-14 08:40:18'),(30,10,400,'unpaid','2021-05-22 18:19:39');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(30) NOT NULL,
  `client_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet`
--

LOCK TABLES `pet` WRITE;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` VALUES (1,'Leks',1,'2021-07-26 10:54:55'),(2,'Rubik',2,'2021-07-26 10:55:19'),(3,'Kesha',3,'2021-07-26 10:56:21'),(4,'Bobik',4,'2021-07-26 11:29:02'),(5,'Topik',5,'2021-07-26 11:29:15'),(6,'Gosha',6,'2021-07-26 11:29:41'),(7,'Barsik',6,'2021-07-26 11:32:52'),(8,'Motya',7,'2021-07-26 11:33:08'),(9,'Sonya',7,'2021-07-26 11:33:13'),(10,'Tayson',8,'2021-07-26 11:35:52'),(11,'Rex',8,'2021-07-26 11:35:56'),(12,'Baron',8,'2021-07-26 11:37:45'),(13,'Rey',9,'2021-07-26 11:37:57'),(14,'Bonya',9,'2021-07-26 11:38:04'),(15,'Maks',9,'2021-07-26 11:38:22'),(16,'Aleks',10,'2021-07-26 11:38:39'),(17,'Gerda',10,'2021-07-26 11:38:45');
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 17:03:52
