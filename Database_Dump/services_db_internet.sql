-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: services_db
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
-- Table structure for table `internet`
--

DROP TABLE IF EXISTS `internet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internet` (
  `internet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_plan` varchar(45) NOT NULL,
  `speed` varchar(45) NOT NULL,
  `fup_limit` varchar(45) NOT NULL,
  `speed_post_fup` varchar(20) DEFAULT NULL,
  `monthly` int(11) DEFAULT NULL,
  `quaterly` int(11) DEFAULT NULL,
  `half_yearly` int(11) DEFAULT NULL,
  `yearly` int(11) DEFAULT NULL,
  `two_years` int(11) DEFAULT NULL,
  PRIMARY KEY (`internet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internet`
--

LOCK TABLES `internet` WRITE;
/*!40000 ALTER TABLE `internet` DISABLE KEYS */;
INSERT INTO `internet` VALUES (1,'Internet Blast','150Mbps','unlimited','100Mbps',85,245,490,950,1800),(2,'Ultra Fast','100Mbps','40GB','75Mbps',75,220,425,850,1600),(3,'Super Fast','75Mbps','35GB','50Mbps',65,185,350,725,1400),(4,'Fast','50Mbps','30GB','25Mbps',50,145,250,525,1100),(5,'Basic','25Mbps','25GB','15Mbps',40,115,220,400,780);
/*!40000 ALTER TABLE `internet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-02 11:45:47
