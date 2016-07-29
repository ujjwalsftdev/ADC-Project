CREATE DATABASE  IF NOT EXISTS `services_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `services_db`;
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
-- Table structure for table `basic_cable`
--

DROP TABLE IF EXISTS `basic_cable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basic_cable` (
  `basic_cable_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `network` varchar(45) DEFAULT NULL,
  `channel` varchar(45) DEFAULT NULL,
  `hd_channel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`basic_cable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_cable`
--

LOCK TABLES `basic_cable` WRITE;
/*!40000 ALTER TABLE `basic_cable` DISABLE KEYS */;
INSERT INTO `basic_cable` VALUES (1,'Fox news','120','121'),(2,'MGM','122','123'),(3,'ABC','124','125'),(4,'CBS','126','127'),(5,'NBC','128','129'),(6,'PBC','130','131'),(7,'telemundo','119','120'),(8,'TLC','117','118'),(9,'TNT','115','116'),(10,'VH1','113','114');
/*!40000 ALTER TABLE `basic_cable` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `limited_cable`
--

DROP TABLE IF EXISTS `limited_cable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limited_cable` (
  `limited_cable_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `network` varchar(45) DEFAULT NULL,
  `channel` varchar(45) DEFAULT NULL,
  `hd_channel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`limited_cable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limited_cable`
--

LOCK TABLES `limited_cable` WRITE;
/*!40000 ALTER TABLE `limited_cable` DISABLE KEYS */;
INSERT INTO `limited_cable` VALUES (1,'disney','130','131'),(2,'ESPN','132','133'),(3,'MTV','134','135'),(4,'AMC','136','137'),(5,'Animal Planet','138','139'),(6,'A&E','140','141'),(7,'ABC Family','142','143'),(8,'Action Max','144','145'),(9,'BBC America','146','147'),(10,'Bloomberg TV','148','149');
/*!40000 ALTER TABLE `limited_cable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `package_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `limited_cable_internet` int(11) NOT NULL,
  `cable_internet` int(11) NOT NULL,
  `cable_phone_internet` int(11) NOT NULL,
  `three_services_ultratv` int(11) NOT NULL,
  `three_services_digitaltv` int(11) NOT NULL,
  `period` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,20,30,35,50,60,'monthly'),(2,50,80,100,140,170,'quaterly'),(3,110,150,190,270,330,'half_yearly'),(4,200,290,370,520,650,'yearly'),(5,380,560,720,1000,1290,'two_years');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signature_cable`
--

DROP TABLE IF EXISTS `signature_cable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signature_cable` (
  `signature_cable_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `network` varchar(45) DEFAULT NULL,
  `channel` varchar(45) DEFAULT NULL,
  `hd_channel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`signature_cable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signature_cable`
--

LOCK TABLES `signature_cable` WRITE;
/*!40000 ALTER TABLE `signature_cable` DISABLE KEYS */;
INSERT INTO `signature_cable` VALUES (1,'HBO','150','151'),(2,'Star Movies','152','153'),(3,'HBO Family','154','155'),(4,'HBO Signature','156','157'),(5,'MovieMax','158','159'),(6,'MTV2','160','161'),(7,'NBA TV','162','163'),(8,'QVC','164','165'),(9,'Showtime','166','167'),(10,'SyFy ','168','169');
/*!40000 ALTER TABLE `signature_cable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv`
--

DROP TABLE IF EXISTS `tv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv` (
  `tv_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tv_plans` varchar(45) NOT NULL,
  `monthly` int(11) NOT NULL,
  `quaterly` int(11) NOT NULL,
  `half_yearly` int(11) NOT NULL,
  `yearly` int(11) NOT NULL,
  `two_years` int(11) NOT NULL,
  PRIMARY KEY (`tv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv`
--

LOCK TABLES `tv` WRITE;
/*!40000 ALTER TABLE `tv` DISABLE KEYS */;
INSERT INTO `tv` VALUES (1,'basic_cable',15,40,70,130,250),(2,'limited_cable',20,50,90,170,320),(3,'signature_cable',25,70,130,250,450);
/*!40000 ALTER TABLE `tv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voip`
--

DROP TABLE IF EXISTS `voip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voip` (
  `voip_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `voip_plans` varchar(45) DEFAULT NULL,
  `monthly` int(11) DEFAULT NULL,
  `quarterly` int(11) DEFAULT NULL,
  `half_yearly` int(11) DEFAULT NULL,
  `yearly` int(11) DEFAULT NULL,
  `two_years` int(11) DEFAULT NULL,
  PRIMARY KEY (`voip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voip`
--

LOCK TABLES `voip` WRITE;
/*!40000 ALTER TABLE `voip` DISABLE KEYS */;
INSERT INTO `voip` VALUES (1,'National',10,25,45,80,140),(2,'International',20,50,80,150,250);
/*!40000 ALTER TABLE `voip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'services_db'
--

--
-- Dumping routines for database 'services_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-03 18:37:04
