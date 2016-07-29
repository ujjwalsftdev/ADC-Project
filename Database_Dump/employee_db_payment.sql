-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: employee_db
-- ------------------------------------------------------
-- Server version	5.6.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` decimal(5,2) NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT NULL,
  `customer_data_id` int(10) unsigned DEFAULT NULL,
  `employee_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `customer_data_id_fkey` (`customer_data_id`),
  KEY `employee_id_fkey` (`employee_id`),
  CONSTRAINT `customer_data_id_fkey` FOREIGN KEY (`customer_data_id`) REFERENCES `customer_db`.`customer_data` (`customer_data_id`),
  CONSTRAINT `employee_id_fkey` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,55.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',1,6),(2,60.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',2,2),(3,70.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',3,4),(4,85.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',4,1),(5,80.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',5,4),(6,40.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',6,2),(7,100.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',7,3),(8,120.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',8,1),(9,35.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',9,6),(10,55.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',10,3),(11,25.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',11,5),(12,20.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',12,2),(13,15.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',13,3),(14,60.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',14,5),(15,55.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',15,1),(16,45.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',16,3),(17,70.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',17,4),(18,55.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',18,6),(19,60.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',19,2),(20,75.00,'2015-11-30 00:00:00','2015-10-30 05:00:00',20,1);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-02 11:45:48
