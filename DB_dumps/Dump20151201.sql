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
  `limited_cable_internet` varchar(45) DEFAULT NULL,
  `cable_internet` varchar(45) DEFAULT NULL,
  `cable_phone_internet` varchar(45) DEFAULT NULL,
  `three_services_ultratv` varchar(45) DEFAULT NULL,
  `three_services_digitaltv` varchar(45) DEFAULT NULL,
  `period` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'20','30','35','50','60','monthly'),(2,'50','80','100','140','170','quaterly'),(3,'110','150','190','270','330','half yearly'),(4,'200','290','370','520','650','yearly'),(5,'380','560','720','1000','1290','two years');
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
  `monthly` varchar(45) NOT NULL,
  `quaterly` varchar(45) NOT NULL,
  `half_yearly` varchar(20) DEFAULT NULL,
  `yearly` varchar(45) NOT NULL,
  `two years` varchar(45) NOT NULL,
  PRIMARY KEY (`tv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv`
--

LOCK TABLES `tv` WRITE;
/*!40000 ALTER TABLE `tv` DISABLE KEYS */;
INSERT INTO `tv` VALUES (1,'basic_cable','15','40','70','130','250'),(2,'limited_cable','20','50','90','170','320'),(3,'signature_cable','25','70','130','250','450');
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

-- Dump completed on 2015-12-01 18:06:24
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

--
-- Table structure for table `postcode`
--

DROP TABLE IF EXISTS `postcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postcode` (
  `postcode_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `postcode` varchar(45) DEFAULT NULL,
  `customer_data_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`postcode_id`),
  KEY `customer_postcode_fkey` (`customer_data_id`),
  CONSTRAINT `customer_postcode_fkey` FOREIGN KEY (`customer_data_id`) REFERENCES `customer_data` (`customer_data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postcode`
--

LOCK TABLES `postcode` WRITE;
/*!40000 ALTER TABLE `postcode` DISABLE KEYS */;
INSERT INTO `postcode` VALUES (1,'61603',1),(2,'60849',5),(3,'60343',6),(4,'60389',17),(5,'61847',5),(6,'61567',20),(7,'61768',19),(8,'46384',18),(9,'53849',16),(10,'53202',7),(11,'53141',9),(12,'53203',10),(13,'53204',14),(14,'46210',15),(15,'46410',3),(16,'46484',4),(17,'46001',8),(18,'46012',11),(19,'46013',12),(20,'46007',13);
/*!40000 ALTER TABLE `postcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `state_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Illinois'),(2,'Wisconsin'),(3,'Indiana');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'customer_db'
--

--
-- Dumping routines for database 'customer_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-01 18:06:25
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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `manager` varchar(45) NOT NULL,
  `last_update` varchar(45) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Ujjwal','2007-06-06'),(2,'Matt','2010-03-10'),(3,'Kevin','2013-04-28');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping events for database 'employee_db'
--

--
-- Dumping routines for database 'employee_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-01 18:06:25
