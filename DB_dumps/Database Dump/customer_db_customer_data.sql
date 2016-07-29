CREATE DATABASE  IF NOT EXISTS `customer_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `customer_db`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: customer_db
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
-- Table structure for table `customer_data`
--

DROP TABLE IF EXISTS `customer_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_data` (
  `customer_data_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(40) DEFAULT NULL,
  `phone_number` varchar(22) NOT NULL,
  `SSN` varchar(15) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirm_password` varchar(50) NOT NULL,
  `secret_question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `internet_id` int(10) unsigned NOT NULL,
  `voip_id` int(10) unsigned NOT NULL,
  `tv_id` int(10) unsigned NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`customer_data_id`),
  KEY `idx_last_name` (`last_name`),
  KEY `internet_id_fkey` (`internet_id`),
  KEY `package_id_fkey` (`package_id`),
  KEY `state_id_fkey` (`state_id`),
  KEY `tv_id_fkey` (`tv_id`),
  KEY `voip_id_fkey` (`voip_id`),
  CONSTRAINT `internet_id_fkey` FOREIGN KEY (`internet_id`) REFERENCES `services_db`.`internet` (`internet_id`),
  CONSTRAINT `package_id_fkey` FOREIGN KEY (`package_id`) REFERENCES `services_db`.`package` (`package_id`),
  CONSTRAINT `state_id_fkey` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`),
  CONSTRAINT `tv_id_fkey` FOREIGN KEY (`tv_id`) REFERENCES `services_db`.`tv` (`tv_id`),
  CONSTRAINT `voip_id_fkey` FOREIGN KEY (`voip_id`) REFERENCES `services_db`.`voip` (`voip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_data`
--

LOCK TABLES `customer_data` WRITE;
/*!40000 ALTER TABLE `customer_data` DISABLE KEYS */;
INSERT INTO `customer_data` VALUES (1,'Sean','Godden','M','sean123@gmail.com','514  W 43rd street','Chicago','88899977766','SL90138KC9','Sean1','hello@34','hello@34','what is your birth place','Leicester','1987-06-06',1,5,1,3,5),(2,'Marco','Drake','M','marcodrake789@gmail.com','46 S 4th street','Naperville','7832759956','SN09138U9L','Marco3','drta@57','drta@57','what is your birth place','Burmingham','1989-07-02',1,3,1,1,3),(3,'Jennifer','Mendoja','F','jennimendoja@yahoomail.com','7568 W 79th st','Merrillville','3345678837','J78H5469J0','Jenni98','rtjkw$7','rtjkw$7','what is your holiday spot','Honololo','1985-02-03',3,1,2,3,2),(4,'Nicky','Tracy','F','nicktracy@outlook.com','8254 E 96th st','Bloomington','4562349967','h098J088K9','Nick45','fwgf54#','fwgf54#','What is your fav Music','Jazz','1989-04-03',3,4,1,3,4),(5,'Brandon','McCullum','M','brandonmccullum@yahoomail.com','117 E 1st st','Orland Park','8762345643','J987K998K3','Brandy89','fewfn879#$','fewfn879#$','What is your fav sport','Football','1967-02-07',1,2,2,3,1),(6,'Christian','Stewart','F','christianstewart@rediffmail.com','6543 S 57th st','Chicago','9873456789','U7876T87I7','Crist34','fewnf8*&','fewnf8*&','what is your fav food','Italian pasta','1970-03-05',1,3,2,1,5),(7,'Marivbeth','Saintana','F','marivbethsaintana@gmail.com','2216 WI-32','Milwaukee','4562984455','H78325KK78','Mariv44','rwh$%r','rwh$%r','what is your fav food','Chicken n Rice','1950-10-05',2,2,2,2,3),(8,'Samantha','Genosi','F','samantha34@gmail.com','3224 N Teutonia Ave','Griffith','8797635345','YI787J79R3','samantha433','sdf53#&','sdf53#&','What is your fav Music','Classic Rock','1977-03-05',3,5,1,2,2),(9,'Sophi','Perez','F','sophip77@hotmail.com','1204 N 85th St','Wauwatosa','2435624563','ER42784D8','sophi567','fefb$#','fefb$#','what is your fav food','pizza','1980-03-12',2,4,1,3,4),(10,'Seresa','Cobert','F','seresacobert33@ymail.com','9720 W Darnel Ave','Milwaukee','2143534665','R4532F4DF','sersa654','fwn89%$','fwn89%$','What is your fav Music','Latino','1979-09-07',2,1,1,1,5),(11,'Venesa','Jackson','F','venesajackson@gmail.com','4567 N Sylvan Cir','Munster','2435454223','EW4325D4','venesa34','fwehj78$','fwehj78$','what is your fav food','ham burgers','1989-02-07',3,3,2,2,1),(12,'Andre','London','M','andre567@hotmail.com','3084 Holly Hill Rd','Crown point','2452534225','E43F35G44','andre23','fw345%$','fw345%$','What is your fav Music','RocknRoll','1969-05-07',3,2,2,2,2),(13,'Alfred','Mendoja','M','alfredmendoja@gmail.com','5345 Main St','Indianapolis','5745787343','H45F324E5','alfred67','vwek453#','vwek453#','what is your fav food','tortilla wraps','1977-09-03',3,5,1,1,4),(14,'Chris','Kile','M','chriskile@gmail.com','3245 Burr St','Germantown','9868742456','T452FD3T6','chris567','fwej$&4','fwej$&4','What is your fav sport','golf','1978-09-08',2,4,1,3,2),(15,'Tresedo','Askabedo','M','Tresedo@hotmail.com','4990 McCarty Ln','Lafayette','8658743422','R434G53D5','tresedo987','dwbkf#$','dwbkf#$','What is your fav Music','Hiphop','1969-05-07',3,2,2,1,3),(16,'Mike ','Rodrigoz','M','Rodrigoz@yahoo.com','193rd E 4th St','Marion','2353464324','T354DF3R5','mike54','cwj#$fe','cwj#$fe','What is your fav sport','basketball','1976-07-05',2,3,2,2,4),(17,'Damein','Hees','M','Damein999@hotmail.com','399 IL-17','Kankakee','2534635656','ER3432R34','damien532','few#$e','few#$e','What is your fav sport','tennis','1978-03-07',1,1,1,1,5),(18,'Kevin','Bugler','M','Kbugler756@hotmail.com','968 Union St','Valparaiso','5636356335','R453W54T4','kevin543','hre#$23','hre#$23','What is your fav Music','RnB','1988-04-07',3,3,2,3,2),(19,'Simon','Scola','M','Simon34@ymail.com','1110 W Addison St','Chicago','3565467324','TY453E45R4','simon235','fwb76%','fwb76%','What is your fav sport','swimming','1973-05-07',1,5,2,1,1),(20,'Elena','Teodorescu','F','elenateodorescu@gmail.com','1414 Flagstone Pl','Schaumburg','7674346567','R343WR425','elena654','fewh89#','fewh89#','What is your fav Music','Rap','1971-09-04',1,3,1,3,5);
/*!40000 ALTER TABLE `customer_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-29 12:31:55
