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
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `rating` int NOT NULL,
  `review_text` text,
  `review_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `product_reviews_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
INSERT INTO `product_reviews` VALUES (1,1,21,2,'Great product, loved it!','2024-11-07 02:40:51'),(2,9,27,4,'Product arrived damaged, had to return.','2025-06-08 02:40:51'),(3,42,21,5,'Very fast delivery, happy with the purchase.','2024-10-01 02:40:51'),(4,13,28,2,'Average quality, but acceptable.','2024-12-23 02:40:51'),(5,45,9,4,'Good value for money.','2024-10-07 02:40:51'),(6,47,30,5,'Product arrived damaged, had to return.','2024-07-06 02:40:51'),(7,6,25,4,'Product arrived damaged, had to return.','2024-11-10 02:40:51'),(8,27,29,5,'Great product, loved it!','2024-08-02 02:40:51'),(9,5,13,1,'Average quality, but acceptable.','2024-11-09 02:40:51'),(10,49,23,3,'Product arrived damaged, had to return.','2025-05-19 02:40:51'),(11,6,10,3,'Good value for money.','2025-03-29 02:40:51'),(12,31,22,5,'Good value for money.','2024-08-20 02:40:51'),(13,49,14,4,'Good value for money.','2024-08-28 02:40:51'),(14,4,17,2,'Didn\'t meet expectations.','2024-06-21 02:40:51'),(15,30,13,4,'Would definitely recommend.','2024-10-26 02:40:51'),(16,14,1,2,'Not worth the price.','2025-02-14 02:40:51'),(17,33,26,2,'Excellent build quality!','2025-05-05 02:40:51'),(18,50,15,1,'Didn\'t meet expectations.','2025-04-11 02:40:51'),(19,11,22,1,'Great product, loved it!','2025-06-08 02:40:51'),(20,44,25,5,'Exactly as described, works well.','2025-03-27 02:40:51'),(21,1,1,5,'Great product, loved it!','2024-09-15 02:40:51'),(22,25,10,5,'Product arrived damaged, had to return.','2025-06-01 02:40:51'),(23,21,2,1,'Average quality, but acceptable.','2024-10-24 02:40:51'),(24,18,7,3,'Exactly as described, works well.','2024-11-24 02:40:51'),(25,12,27,5,'Exactly as described, works well.','2025-05-27 02:40:51'),(26,4,4,5,'Product arrived damaged, had to return.','2024-06-29 02:40:51'),(27,11,23,3,'Average quality, but acceptable.','2025-02-13 02:40:51'),(28,7,11,4,'Very fast delivery, happy with the purchase.','2025-04-28 02:40:51'),(29,39,15,4,'Good value for money.','2024-11-10 02:40:51'),(30,5,19,4,'Exactly as described, works well.','2024-11-30 02:40:51'),(31,37,22,1,'Excellent build quality!','2025-03-24 02:40:51'),(32,42,17,5,'Great product, loved it!','2025-06-07 02:40:51'),(33,6,22,3,'Would definitely recommend.','2024-12-27 02:40:51'),(34,29,28,1,'Very fast delivery, happy with the purchase.','2024-08-11 02:40:51'),(35,42,21,4,'Product arrived damaged, had to return.','2025-04-07 02:40:51'),(36,17,13,3,'Average quality, but acceptable.','2024-11-27 02:40:51'),(37,1,17,5,'Would definitely recommend.','2025-01-31 02:40:51'),(38,2,29,4,'Very fast delivery, happy with the purchase.','2025-06-05 02:40:51'),(39,21,15,1,'Exactly as described, works well.','2025-06-09 02:40:51'),(40,31,19,1,'Didn\'t meet expectations.','2024-09-02 02:40:51'),(41,8,6,5,'Great product, loved it!','2025-05-23 02:40:51'),(42,49,1,2,'Would definitely recommend.','2024-09-21 02:40:51'),(43,13,1,3,'Would definitely recommend.','2025-01-24 02:40:51'),(44,12,6,5,'Great product, loved it!','2025-02-14 02:40:51'),(45,26,17,2,'Didn\'t meet expectations.','2024-10-11 02:40:51'),(46,18,29,4,'Good value for money.','2025-03-07 02:40:51'),(47,32,22,5,'Product arrived damaged, had to return.','2025-03-07 02:40:51'),(48,43,20,1,'Excellent build quality!','2024-06-30 02:40:51'),(49,10,13,5,'Good value for money.','2024-12-20 02:40:51'),(50,38,27,2,'Excellent build quality!','2025-04-26 02:40:51');
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
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
