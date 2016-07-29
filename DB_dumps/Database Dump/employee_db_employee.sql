CREATE DATABASE  IF NOT EXISTS `employee_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `employee_db`;
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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(20) NOT NULL,
  `phone_number` varchar(22) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `state_id` int(10) unsigned DEFAULT NULL,
  `postcode_id` int(10) unsigned DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `idx_employee_last_name` (`last_name`),
  KEY `state_emp_id_fkey` (`state_id`),
  KEY `postcode_emp_id_fkey` (`postcode_id`),
  KEY `company_id_fkey` (`company_id`),
  CONSTRAINT `company_id_fkey` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `postcode_emp_id_fkey` FOREIGN KEY (`postcode_id`) REFERENCES `customer_db`.`postcode` (`postcode_id`),
  CONSTRAINT `state_emp_id_fkey` FOREIGN KEY (`state_id`) REFERENCES `customer_db`.`state` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Matt','Nicolas','34W 42nd st','Naperville','4378431291','matt34@blitzz.com','matt234','fdwehj#$6',1,7,1),(2,'Damien','Martin','7926 IL-7','Chicago','4327841976','damien54@blitzz.com','damien653','frlng*&hjf',1,3,2),(3,'Sarah','Godden','4583 E 12th St','Milwaukee','2347328476','sarah@blitzz.com','sarah896','njkfn#%h',2,14,1),(4,'William','Dirk','4658 S 10th St','Merrillville','2432423456','william@blitzz.com','william412','fhjls%$87',3,18,3),(5,'James','Martin','8243 Polo Club ','Madison','8909749890','james@blitzz.com','james098','fkjfw&%7',2,10,2),(6,'Samantha','Decrouza','423 Nick st','Indianapolis','9784829897','samantha@blitzz.com','samantha876','bgk$&vsjh',3,20,1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-29 12:31:56
