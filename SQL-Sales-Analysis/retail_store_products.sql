-- MySQL dump 10.13  Distrib 8.0.46, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: retail_store
-- ------------------------------------------------------
-- Server version	9.7.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'd6b9410e-510e-11f1-92ab-82222246fb16:1-7483';

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int NOT NULL DEFAULT '0',
  `added_on` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Plant No','Home',639.43,152,'2024-01-30 06:30:53'),(2,'Population Social','Clothing',4813.68,84,'2025-05-30 10:02:50'),(3,'Available Answer','Electronics',2529.51,101,'2025-04-13 01:11:46'),(4,'Any Question','Clothing',4759.28,179,'2025-06-03 13:34:03'),(5,'Natural Network','Toys',4722.66,75,'2023-11-06 00:47:37'),(6,'If Whatever','Electronics',177.40,64,'2024-12-19 10:37:14'),(7,'Response Indeed','Clothing',4897.36,36,'2025-03-29 02:43:08'),(8,'Every Amount','Home',4173.60,156,'2025-04-30 03:11:10'),(9,'Common Study','Toys',985.19,171,'2023-07-20 13:06:42'),(10,'Development System','Electronics',4801.78,153,'2025-03-12 08:22:57'),(11,'Build Her','Books',1852.64,150,'2024-09-08 01:09:15'),(12,'Action Ask','Electronics',4017.01,19,'2025-02-14 03:38:06'),(13,'Full West','Books',2112.33,172,'2023-09-15 03:13:38'),(14,'Listen Development','Home',296.17,132,'2024-10-12 11:49:26'),(15,'Place Low','Electronics',723.97,46,'2023-07-05 14:36:07'),(16,'Special Fact','Toys',1094.18,15,'2025-03-17 10:42:40'),(17,'Everything Plant','Books',2496.68,120,'2023-10-08 20:11:55'),(18,'Some Them','Toys',3673.86,110,'2024-07-25 00:33:53'),(19,'Build High','Clothing',4707.14,47,'2023-09-01 02:50:01'),(20,'Real Source','Books',4398.66,197,'2025-02-08 10:28:27'),(21,'Bed Including','Clothing',3845.31,92,'2025-01-21 11:52:40'),(22,'Move Small','Books',4168.08,22,'2023-11-12 18:26:30'),(23,'Life Series','Clothing',2208.99,136,'2024-03-09 09:19:13'),(24,'Assume Serve','Home',3437.81,10,'2024-07-10 05:05:17'),(25,'South Free','Clothing',3543.58,44,'2023-07-25 04:13:43'),(26,'Movement Future','Electronics',3502.62,79,'2024-01-23 08:39:07'),(27,'Answer But','Home',1016.68,90,'2025-04-06 21:54:11'),(28,'East Foot','Toys',2414.93,128,'2025-05-11 16:02:29'),(29,'Drop Remember','Electronics',4160.45,89,'2023-12-15 12:31:11'),(30,'Future Sort','Home',3043.67,100,'2025-05-17 06:55:28'),(31,'Series Page','Electronics',2070.37,83,'2024-04-01 00:24:06'),(32,'Factor Where','Clothing',2295.14,167,'2023-07-07 00:59:39'),(33,'Involve Officer','Clothing',4244.09,112,'2024-03-22 11:36:17'),(34,'Despite Win','Electronics',1340.34,64,'2024-11-27 06:55:45'),(35,'Fire Often','Electronics',4734.89,198,'2023-10-22 04:15:51'),(36,'Television Stock','Clothing',421.73,115,'2024-04-23 23:54:15'),(37,'Between Up','Toys',1429.45,61,'2025-01-27 01:30:37'),(38,'Study Total','Toys',4413.68,31,'2023-11-08 08:25:07'),(39,'Data Add','Books',4063.38,62,'2025-05-26 23:39:16'),(40,'Toward Minute','Clothing',857.85,136,'2025-04-04 07:04:21'),(41,'Serious Recognize','Electronics',4523.10,112,'2023-08-20 06:16:55'),(42,'Weight Enter','Clothing',3875.18,60,'2024-01-26 08:21:55'),(43,'Least Green','Toys',1398.26,81,'2024-04-10 15:23:33'),(44,'Actually Term','Electronics',396.11,85,'2023-11-02 13:09:20'),(45,'Suffer We','Electronics',3657.43,113,'2024-07-25 12:40:57'),(46,'Age Treatment','Home',3728.83,160,'2023-12-01 10:51:52'),(47,'Southern Thing','Electronics',512.46,40,'2024-02-28 17:57:38'),(48,'Group But','Clothing',4180.23,141,'2023-11-29 01:38:12'),(49,'Rest Something','Books',3077.82,181,'2023-08-09 03:42:42'),(50,'Stock Article','Home',834.75,131,'2024-11-27 15:58:32');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-16  1:49:41
