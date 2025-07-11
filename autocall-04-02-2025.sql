-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: autocall
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `COS_AllowedNumbers`
--

DROP TABLE IF EXISTS `COS_AllowedNumbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COS_AllowedNumbers` (
  `AllowedNumberID` int(11) NOT NULL AUTO_INCREMENT,
  `ExtensionNumber` varchar(50) NOT NULL,
  `PhoneNumberPattern` varchar(50) NOT NULL,
  `label` text NOT NULL,
  PRIMARY KEY (`AllowedNumberID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COS_AllowedNumbers`
--

LOCK TABLES `COS_AllowedNumbers` WRITE;
/*!40000 ALTER TABLE `COS_AllowedNumbers` DISABLE KEYS */;
INSERT INTO `COS_AllowedNumbers` VALUES
(2,'801','%','0'),
(3,'200','0%','0'),
(6,'501','0%','0'),
(7,'503','0%','0'),
(8,'502','0%','0'),
(9,'33','0%','0'),
(10,'66','0%','0'),
(11,'445','%','0'),
(12,'500','8__','0'),
(13,'446','%','0'),
(15,'39','0%','0'),
(18,'800','8__','0'),
(19,'21','%','0'),
(20,'22','%','0'),
(21,'23','%','0'),
(22,'202','%','0'),
(23,'201','%','0'),
(24,'203','%','0'),
(27,'*','0%','All'),
(30,'*','00%','out');
/*!40000 ALTER TABLE `COS_AllowedNumbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COS_rules`
--

DROP TABLE IF EXISTS `COS_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COS_rules` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `pattern` varchar(15) NOT NULL,
  `label` text NOT NULL,
  PRIMARY KEY (`rule_id`),
  KEY `pattern` (`pattern`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COS_rules`
--

LOCK TABLES `COS_rules` WRITE;
/*!40000 ALTER TABLE `COS_rules` DISABLE KEYS */;
INSERT INTO `COS_rules` VALUES
(1,'%','All Routes'),
(2,'0%','Zero Dial ');
/*!40000 ALTER TABLE `COS_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addressbook`
--

DROP TABLE IF EXISTS `addressbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addressbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `alternatephno1` varchar(20) NOT NULL,
  `alternatephno2` varchar(20) NOT NULL,
  `vip` int(1) NOT NULL,
  `address` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `phno_2` (`phno`),
  KEY `alternatephno1` (`alternatephno1`),
  KEY `phno` (`phno`),
  KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addressbook`
--

LOCK TABLES `addressbook` WRITE;
/*!40000 ALTER TABLE `addressbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `addressbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(200) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `mode` int(11) NOT NULL,
  `groups` varchar(200) NOT NULL,
  `dashboard` text NOT NULL,
  `fullname` varchar(60) NOT NULL,
  `emailid` varchar(130) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groups` (`groups`),
  KEY `fullname` (`fullname`),
  KEY `emailid` (`emailid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES
(1,'admin','bitvoice@123',21,'0','','','',''),
(14,'itadmin','bitvoice@123',1,'0','','','','');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_conf`
--

DROP TABLE IF EXISTS `agent_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_conf` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `confid` int(30) NOT NULL,
  `channel` varchar(200) NOT NULL,
  `owner` varchar(30) NOT NULL,
  `callerid` varchar(20) NOT NULL,
  `dname` varchar(60) NOT NULL,
  `muted` int(1) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `confid` (`confid`,`owner`),
  KEY `callerid` (`callerid`,`dname`),
  KEY `muted` (`muted`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_conf`
--

LOCK TABLES `agent_conf` WRITE;
/*!40000 ALTER TABLE `agent_conf` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_initial_login`
--

DROP TABLE IF EXISTS `agent_initial_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_initial_login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agent` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agent` (`agent`,`date`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_initial_login`
--

LOCK TABLES `agent_initial_login` WRITE;
/*!40000 ALTER TABLE `agent_initial_login` DISABLE KEYS */;
INSERT INTO `agent_initial_login` VALUES
(1,'agent1','2025-01-06','12:38:36'),
(3,'agent1','2025-01-07','09:44:09'),
(4,'agent1','2025-01-23','15:16:54'),
(6,'agent1','2025-02-03','18:16:16'),
(9,'agent1','2025-02-04','09:31:27'),
(2,'agent2','2025-01-06','16:12:45'),
(5,'agent2','2025-01-23','16:55:18'),
(7,'agent2','2025-02-03','18:17:48'),
(8,'agent2','2025-02-04','09:31:06');
/*!40000 ALTER TABLE `agent_initial_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_limit`
--

DROP TABLE IF EXISTS `agent_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_limit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentlimit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_limit`
--

LOCK TABLES `agent_limit` WRITE;
/*!40000 ALTER TABLE `agent_limit` DISABLE KEYS */;
INSERT INTO `agent_limit` VALUES
(1,10);
/*!40000 ALTER TABLE `agent_limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_park`
--

DROP TABLE IF EXISTS `agent_park`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_park` (
  `parkid` int(11) NOT NULL AUTO_INCREMENT,
  `puniqueid` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `started_on` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pnumber` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `exten` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `group` int(11) NOT NULL,
  `channel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isoutbound` int(1) NOT NULL,
  `agent` varchar(50) NOT NULL,
  `agentid` int(3) NOT NULL,
  `cid_name` varchar(60) NOT NULL,
  PRIMARY KEY (`parkid`),
  UNIQUE KEY `channel_2` (`channel`),
  KEY `group` (`group`),
  KEY `cto` (`exten`),
  KEY `cfrom` (`pnumber`),
  KEY `started_on` (`started_on`),
  KEY `channel` (`channel`),
  KEY `cid_name` (`cid_name`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='agent parking';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_park`
--

LOCK TABLES `agent_park` WRITE;
/*!40000 ALTER TABLE `agent_park` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_park` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_reports`
--

DROP TABLE IF EXISTS `agent_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(60) NOT NULL,
  `status` varchar(40) NOT NULL,
  `ext` varchar(16) NOT NULL,
  `t` int(11) NOT NULL,
  `endt` int(11) DEFAULT 0,
  `totsec` int(11) NOT NULL DEFAULT 0,
  `billsec` int(11) NOT NULL,
  `uniqueid` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uniqueid` (`uniqueid`),
  KEY `totsec` (`totsec`),
  KEY `endt` (`endt`),
  KEY `ext` (`ext`),
  KEY `status` (`status`),
  KEY `agent` (`agent`),
  KEY `t` (`t`),
  KEY `billsec` (`billsec`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_reports`
--

LOCK TABLES `agent_reports` WRITE;
/*!40000 ALTER TABLE `agent_reports` DISABLE KEYS */;
INSERT INTO `agent_reports` VALUES
(1,'agent1','PAUSED','2',1736147316,1736147319,3,0,'0'),
(2,'agent1','AVAILABLE','21',1736147319,1736147321,2,0,'0'),
(3,'agent1','PAUSED','21',1736147321,1736147321,0,0,'0'),
(4,'agent1','DISCONNECTED','1736147321',1736147321,1736147323,2,0,'0'),
(5,'agent1','UNAVAILABLE','1736147321',1736147323,1736147352,29,0,'0'),
(6,'agent1','PAUSED','1736147321',1736147352,1736147356,4,0,'0'),
(7,'agent1','DIALING','21',1736147356,1736147359,3,0,'0'),
(8,'agent1','ONOCALL','21',1736147359,1736147363,4,2,'1736147359.6'),
(9,'agent1','CLOSURE','21',1736147363,1736147384,21,0,'1736147359.6'),
(10,'agent1','PAUSED','21',1736147384,1736147385,1,0,'0'),
(11,'agent1','DISCONNECTED','1736147385',1736147385,1736147386,1,0,'0'),
(12,'agent1','UNAVAILABLE','1736147385',1736147386,1736147449,63,0,'0'),
(13,'agent1','PAUSED','1736147385',1736147449,1736149764,2315,0,'0'),
(14,'agent1','DISCONNECTED','1736149764',1736149764,1736149766,2,0,'0'),
(15,'agent1','UNAVAILABLE','1736149764',1736149766,1736159913,10147,0,'0'),
(16,'agent1','PAUSED','1736149764',1736159913,1736159917,4,0,'0'),
(17,'agent1','AVAILABLE','21',1736159917,1736160232,315,0,'0'),
(18,'agent2','PAUSED','4',1736160138,1736160171,33,0,'0'),
(19,'agent2','AVAILABLE','22',1736160171,1736160196,25,0,'0'),
(20,'agent2','DISCONNECTED','1736160196',1736160196,1736160198,2,0,'0'),
(21,'agent2','UNAVAILABLE','1736160196',1736160198,1736160220,22,0,'0'),
(22,'agent2','PAUSED','1736160196',1736160220,1736160224,4,0,'0'),
(23,'agent2','AVAILABLE','22',1736160224,1736160245,21,0,'0'),
(24,'agent1','DIALING','21',1736160232,1736160235,3,0,'0'),
(25,'agent1','ONOCALL','21',1736160235,1736160245,10,16,'1736163055.0'),
(26,'agent1','DIALING','21',1736160245,1736160264,19,0,'0'),
(27,'agent2','RINGING','22',1736160245,1736160249,4,0,'1736160235.24'),
(28,'agent2','ONCALL','22',1736160249,1736160255,6,0,'1736160235.24'),
(29,'agent2','CLOSURE','22',1736160255,1736160255,0,0,'1736160235.24'),
(30,'agent2','AVAILABLE','22',1736160255,1736162773,2518,0,'0'),
(31,'agent1','AVAILABLE','21',1736160264,1736160935,671,0,'0'),
(32,'agent1','DISCONNECTED','1736160935',1736160935,1736160937,2,0,'0'),
(33,'agent1','UNAVAILABLE','1736160935',1736160937,1736162079,1142,0,'0'),
(34,'agent1','PAUSED','1736160935',1736162079,1736162181,102,0,'0'),
(35,'agent1','AVAILABLE','21',1736162181,1736162773,592,0,'0'),
(36,'agent1','DISCONNECTED','1736162773',1736162773,1736163052,279,0,'0'),
(37,'agent2','DISCONNECTED','1736162773',1736162773,1736163101,328,0,'0'),
(38,'agent1','DIALING','1736162773',1736163052,1736163063,11,0,'0'),
(39,'agent1','AVAILABLE','1736162773',1736163063,1736163066,3,0,'0'),
(40,'agent1','UNAVAILABLE','1736162773',1736163066,1736163083,17,0,'0'),
(41,'agent1','PAUSED','1736162773',1736163083,1736163088,5,0,'0'),
(42,'agent1','AVAILABLE','21',1736163088,1736163126,38,0,'0'),
(43,'agent2','UNAVAILABLE','1736162773',1736163101,1736163119,18,0,'0'),
(44,'agent2','PAUSED','1736162773',1736163119,1736163122,3,0,'0'),
(45,'agent2','BREAK','22',1736163122,1736163123,1,0,'0'),
(46,'agent2','AVAILABLE','22',1736163123,1736163140,17,0,'0'),
(47,'agent1','DIALING','21',1736163126,1736163130,4,0,'0'),
(48,'agent1','ONOCALL','21',1736163130,1736163140,10,53,'0'),
(49,'agent1','DIALING','21',1736163140,1736163187,47,0,'0'),
(50,'agent2','RINGING','22',1736163140,1736163149,9,0,'1736163130.14'),
(51,'agent2','ONCALL','22',1736163149,1736163184,35,0,'1736163130.14'),
(52,'agent2','CLOSURE','22',1736163184,1736163184,0,0,'1736163130.14'),
(53,'agent2','AVAILABLE','22',1736163184,1736167801,4617,0,'0'),
(54,'agent1','AVAILABLE','21',1736163187,1736163188,1,0,'0'),
(55,'agent1','DISCONNECTED','1736163188',1736163188,1736163190,2,0,'0'),
(56,'agent1','UNAVAILABLE','1736163188',1736163190,1736223249,60059,0,'0'),
(57,'agent2','UNAVAILABLE','1736167801',1736167801,1737631518,1463717,0,'0'),
(58,'agent1','PAUSED','1736163188',1736223249,1736223311,62,0,'0'),
(59,'agent1','DISCONNECTED','1736223311',1736223311,1736223313,2,0,'0'),
(60,'agent1','UNAVAILABLE','1736223311',1736223313,1736223335,22,0,'0'),
(61,'agent1','PAUSED','1736223311',1736223335,1736224994,1659,0,'0'),
(62,'agent1','DISCONNECTED','1736224994',1736224994,1736225701,707,0,'0'),
(63,'agent1','UNAVAILABLE','1736225701',1736225701,1737625614,1399913,0,'0'),
(64,'agent1','PAUSED','1736225701',1737625614,1737625621,7,0,'0'),
(65,'agent1','AVAILABLE','23',1737625621,1737627634,2013,0,'0'),
(66,'agent1','DIALING','23',1737627634,1737627635,1,0,'0'),
(67,'agent1','AVAILABLE','23',1737627635,1737627736,101,0,'0'),
(68,'agent1','DIALING','23',1737627736,1737631425,3689,0,'0'),
(69,'agent1','AVAILABLE','23',1737631425,1737631529,104,0,'0'),
(70,'agent2','PAUSED','1736167801',1737631518,1737631521,3,0,'0'),
(71,'agent2','AVAILABLE','21',1737631521,1737631540,19,0,'0'),
(72,'agent1','DIALING','23',1737631529,1737631532,3,0,'0'),
(73,'agent1','ONOCALL','23',1737631532,1737631540,8,17,'0'),
(74,'agent1','DIALING','23',1737631540,1737631557,17,0,'0'),
(75,'agent2','RINGING','21',1737631540,1737631544,4,0,'1737631532.7'),
(76,'agent2','ONCALL','21',1737631544,1737631552,8,0,'1737631532.7'),
(77,'agent2','CLOSURE','21',1737631552,1737631552,0,0,'1737631532.7'),
(78,'agent2','AVAILABLE','21',1737631552,1737632157,605,0,'0'),
(79,'agent1','AVAILABLE','23',1737631557,1737631632,75,0,'0'),
(80,'agent1','DISCONNECTED','1737631632',1737631632,1737631634,2,0,'0'),
(81,'agent1','UNAVAILABLE','1737631632',1737631634,1737631673,39,0,'0'),
(82,'agent1','PAUSED','1737631632',1737631673,1737631749,76,0,'0'),
(83,'agent1','AVAILABLE','23',1737631749,1737631761,12,0,'0'),
(84,'agent1','DIALING','23',1737631761,1737631762,1,0,'0'),
(85,'agent1','ONOCALL','23',1737631762,1737631766,4,2,'1737632116.26'),
(86,'agent1','CLOSURE','23',1737631766,1737631772,6,0,'1737631773.19'),
(87,'agent1','DIALING','23',1737631772,1737631773,1,0,'0'),
(88,'agent1','ONOCALL','23',1737631773,1737631774,1,0,'1737631773.19'),
(89,'agent1','AVAILABLE','23',1737631774,1737631776,2,0,'0'),
(90,'agent1','DIALING','23',1737631776,1737631778,2,0,'0'),
(91,'agent1','AVAILABLE','23',1737631778,1737632084,306,0,'0'),
(92,'agent1','UNAVAILABLE','23',1737632084,1737632089,5,0,'0'),
(93,'agent1','DISCONNECTED','1737632089',1737632089,1737632091,2,0,'0'),
(94,'agent1','UNAVAILABLE','1737632089',1737632091,1737632111,20,0,'0'),
(95,'agent1','PAUSED','1737632089',1737632111,1737632113,2,0,'0'),
(96,'agent1','DIALING','23',1737632113,1737632116,3,0,'0'),
(97,'agent1','ONOCALL','23',1737632116,1737632130,14,13,'1737632116.26'),
(98,'agent1','PAUSED','23',1737632130,1737632148,18,0,'0'),
(99,'agent1','DIALING','23',1737632148,1737632151,3,0,'0'),
(100,'agent1','ONOCALL','23',1737632151,1737632157,6,14,'0'),
(101,'agent1','DIALING','23',1737632157,1737632218,61,0,'0'),
(102,'agent2','RINGING','21',1737632157,1737632164,7,0,'1737632151.32'),
(103,'agent2','ONCALL','21',1737632164,1737632167,3,0,'1737632151.32'),
(104,'agent2','CLOSURE','21',1737632167,1737632167,0,0,'1737632151.32'),
(105,'agent2','AVAILABLE','21',1737632167,1737639097,6930,0,'0'),
(106,'agent1','AVAILABLE','23',1737632218,1737635205,2987,0,'0'),
(107,'agent1','DISCONNECTED','1737635205',1737635205,1737635207,2,0,'0'),
(108,'agent1','UNAVAILABLE','1737635205',1737635207,1738586776,951569,0,'0'),
(109,'agent2','DISCONNECTED','1737639097',1737639097,1737639099,2,0,'0'),
(110,'agent2','UNAVAILABLE','1737639097',1737639099,1737639116,17,0,'0'),
(111,'agent2','PAUSED','1737639097',1737639116,1737639119,3,0,'0'),
(112,'agent2','DIALING','21',1737639119,1737639133,14,0,'0'),
(113,'agent2','PAUSED','21',1737639133,1737639134,1,0,'0'),
(114,'agent2','DISCONNECTED','1737639134',1737639134,1737639136,2,0,'0'),
(115,'agent2','UNAVAILABLE','1737639134',1737639136,1738586868,947732,0,'0'),
(116,'agent1','PAUSED','1737635205',1738586776,1738586789,13,0,'0'),
(117,'agent1','AVAILABLE','22',1738586789,1738586790,1,0,'0'),
(118,'agent1','PAUSED','22',1738586790,1738586791,1,0,'0'),
(119,'agent1','AVAILABLE','22',1738586791,1738586792,1,0,'0'),
(120,'agent1','PAUSED','22',1738586792,1738586793,1,0,'0'),
(121,'agent1','AVAILABLE','22',1738586793,1738586796,3,0,'0'),
(122,'agent1','DIALING','22',1738586796,1738586798,2,0,'0'),
(123,'agent1','AVAILABLE','22',1738586798,1738586881,83,0,'0'),
(124,'agent2','PAUSED','1737639134',1738586868,1738586871,3,0,'0'),
(125,'agent2','AVAILABLE','21',1738586871,1738586919,48,0,'0'),
(126,'agent1','DIALING','22',1738586881,1738586889,8,0,'0'),
(127,'agent1','ONOCALL','22',1738586889,1738586902,13,11,'0'),
(128,'agent1','CLOSURE','22',1738586902,1738586934,32,0,'1738586938.13'),
(129,'agent2','PAUSED','21',1738586919,1738586921,2,0,'0'),
(130,'agent2','AVAILABLE','21',1738586921,1738586929,8,0,'0'),
(131,'agent2','PAUSED','21',1738586929,1738586930,1,0,'0'),
(132,'agent2','DISCONNECTED','1738586930',1738586930,1738586932,2,0,'0'),
(133,'agent2','UNAVAILABLE','1738586930',1738586932,1738586948,16,0,'0'),
(134,'agent1','AVAILABLE','22',1738586934,1738586935,1,0,'0'),
(135,'agent1','DIALING','22',1738586935,1738586938,3,0,'0'),
(136,'agent1','ONOCALL','22',1738586938,1738586944,6,0,'1738586938.13'),
(137,'agent1','AVAILABLE','22',1738586944,1738586951,7,0,'0'),
(138,'agent2','PAUSED','1738586930',1738586948,1738586951,3,0,'0'),
(139,'agent1','DIALING','22',1738586951,1738586958,7,0,'0'),
(140,'agent2','AVAILABLE','21',1738586951,1738586997,46,0,'0'),
(141,'agent1','ONOCALL','22',1738586958,1738586997,39,71,'0'),
(142,'agent1','AVAILABLE','22',1738586997,1738587006,9,0,'0'),
(143,'agent2','RINGING','21',1738586997,1738587000,3,0,'0'),
(144,'agent2','ONCALL','21',1738587000,1738587006,6,0,'0'),
(145,'agent1','RINGING','22',1738587006,1738587008,2,0,'0'),
(146,'agent2','CLOSURE','21',1738587006,1738587006,0,0,'0'),
(147,'agent2','AVAILABLE','21',1738587006,1738587014,8,0,'0'),
(148,'agent1','ONCALL','22',1738587008,1738587014,6,0,'0'),
(149,'agent2','RINGING','21',1738587014,1738587016,2,0,'0'),
(150,'agent1','CLOSURE','22',1738587014,1738587014,0,0,'0'),
(151,'agent1','DIALING','22',1738587014,1738587043,29,0,'0'),
(152,'agent2','ONCALL','21',1738587016,1738587018,2,0,'0'),
(153,'agent2','AVAILABLE','21',1738587018,1738587019,1,0,'0'),
(154,'agent2','RINGING','21',1738587019,1738587019,0,0,'0'),
(155,'agent2','ONCALL','21',1738587019,1738587021,2,0,'0'),
(156,'agent2','AVAILABLE','21',1738587021,1738587025,4,0,'0'),
(157,'agent2','RINGING','21',1738587025,1738587025,0,0,'0'),
(158,'agent2','ONCALL','21',1738587025,1738587031,6,0,'0'),
(159,'agent2','AVAILABLE','21',1738587031,1738587036,5,0,'0'),
(160,'agent2','RINGING','21',1738587036,1738587036,0,0,'1738586958.22'),
(161,'agent2','ONCALL','21',1738587036,1738587040,4,0,'1738586958.22'),
(162,'agent2','CLOSURE','21',1738587040,1738587047,7,0,'1738586958.22'),
(163,'agent1','AVAILABLE','22',1738587043,1738587072,29,0,'0'),
(164,'agent2','AVAILABLE','21',1738587047,1738587049,2,0,'0'),
(165,'agent2','DIALING','21',1738587049,1738587052,3,0,'0'),
(166,'agent2','ONOCALL','21',1738587052,1738587072,20,33,'0'),
(167,'agent2','AVAILABLE','21',1738587072,1738587085,13,0,'0'),
(168,'agent1','RINGING','22',1738587072,1738587077,5,0,'0'),
(169,'agent1','ONCALL','22',1738587077,1738587085,8,0,'0'),
(170,'agent2','RINGING','21',1738587085,1738587087,2,0,'1738587052.27'),
(171,'agent1','CLOSURE','22',1738587085,1738587085,0,0,'0'),
(172,'agent1','AVAILABLE','22',1738587085,1738587555,470,0,'0'),
(173,'agent2','ONCALL','21',1738587087,1738587097,10,0,'1738587052.27'),
(174,'agent2','CLOSURE','21',1738587097,1738587097,0,0,'1738587052.27'),
(175,'agent2','AVAILABLE','21',1738587097,1738587099,2,0,'0'),
(176,'agent2','PAUSED','21',1738587099,1738587105,6,0,'0'),
(177,'agent2','AVAILABLE','21',1738587105,1738587563,458,0,'0'),
(178,'agent1','RINGING','22',1738587555,1738587557,2,0,'0'),
(179,'agent1','ONCALL','22',1738587557,1738587563,6,0,'0'),
(180,'agent2','RINGING','21',1738587563,1738587566,3,0,'0'),
(181,'agent1','CLOSURE','22',1738587563,1738587563,0,0,'0'),
(182,'agent1','AVAILABLE','22',1738587563,1738587752,189,0,'0'),
(183,'agent2','ONCALL','21',1738587566,1738587572,6,0,'0'),
(184,'agent2','CLOSURE','21',1738587572,1738587572,0,0,'0'),
(185,'agent2','AVAILABLE','21',1738587572,1738587763,191,0,'0'),
(186,'agent1','DIALING','22',1738587752,1738587755,3,0,'0'),
(187,'agent1','ONOCALL','22',1738587755,1738587763,8,20,'1738590138.75'),
(188,'agent1','AVAILABLE','22',1738587763,1738587772,9,0,'0'),
(189,'agent2','RINGING','21',1738587763,1738587769,6,0,'0'),
(190,'agent2','ONCALL','21',1738587769,1738587772,3,0,'0'),
(191,'agent1','RINGING','22',1738587772,1738587776,4,0,'1738588099.51'),
(192,'agent2','CLOSURE','21',1738587772,1738587772,0,0,'1738588185.64'),
(193,'agent2','AVAILABLE','21',1738587772,1738588112,340,0,'0'),
(194,'agent1','CLOSURE','22',1738587776,1738587778,2,0,'1738587944.43'),
(195,'agent1','AVAILABLE','22',1738587778,1738587941,163,0,'0'),
(196,'agent1','DIALING','22',1738587941,1738587941,0,0,'0'),
(197,'agent1','AVAILABLE','22',1738587941,1738587943,2,0,'0'),
(198,'agent1','DIALING','22',1738587943,1738587944,1,0,'0'),
(199,'agent1','ONOCALL','22',1738587944,1738587964,20,15,'1738587944.43'),
(200,'agent1','AVAILABLE','22',1738587964,1738588060,96,0,'0'),
(201,'agent1','DISCONNECTED','1738588060',1738588060,1738588062,2,0,'0'),
(202,'agent1','UNAVAILABLE','1738588060',1738588062,1738588080,18,0,'0'),
(203,'agent1','PAUSED','1738588060',1738588080,1738588092,12,0,'0'),
(204,'agent1','AVAILABLE','22',1738588092,1738588093,1,0,'0'),
(205,'agent1','DIALING','22',1738588093,1738588095,2,0,'0'),
(206,'agent1','AVAILABLE','22',1738588095,1738588098,3,0,'0'),
(207,'agent1','DIALING','22',1738588098,1738588099,1,0,'0'),
(208,'agent1','ONOCALL','22',1738588099,1738588107,8,1,'1738588099.51'),
(209,'agent1','AVAILABLE','22',1738588107,1738590122,2015,0,'0'),
(210,'agent2','DIALING','21',1738588112,1738588118,6,0,'0'),
(211,'agent2','ONOCALL','21',1738588118,1738588122,4,2,'1738588118.56'),
(212,'agent2','CLOSURE','21',1738588122,1738588125,3,0,'1738588118.56'),
(213,'agent2','AVAILABLE','21',1738588125,1738588126,1,0,'0'),
(214,'agent2','PAUSED','21',1738588126,1738588127,1,0,'0'),
(215,'agent2','DISCONNECTED','1738588127',1738588127,1738588129,2,0,'0'),
(216,'agent2','UNAVAILABLE','1738588127',1738588129,1738588149,20,0,'0'),
(217,'agent2','PAUSED','1738588127',1738588149,1738588165,16,0,'0'),
(218,'agent2','AVAILABLE','21',1738588165,1738588182,17,0,'0'),
(219,'agent2','DIALING','21',1738588182,1738588185,3,0,'0'),
(220,'agent2','ONOCALL','21',1738588185,1738588191,6,2,'1738588185.64'),
(221,'agent2','AVAILABLE','21',1738588191,1738588490,299,0,'0'),
(222,'agent2','PAUSED','21',1738588490,1738588491,1,0,'0'),
(223,'agent2','DISCONNECTED','1738588491',1738588491,1738588493,2,0,'0'),
(224,'agent2','UNAVAILABLE','1738588491',1738588493,1738641666,53173,0,'0'),
(225,'agent1','DIALING','22',1738590122,1738590126,4,0,'0'),
(226,'agent1','ONOCALL','22',1738590126,1738590131,5,0,'1738590126.69'),
(227,'agent1','CLOSURE','22',1738590131,1738590134,3,0,'1738641706.92'),
(228,'agent1','AVAILABLE','22',1738590134,1738590134,0,0,'0'),
(229,'agent1','DIALING','22',1738590134,1738590138,4,0,'0'),
(230,'agent1','ONOCALL','22',1738590138,1738590184,46,32,'1738590138.75'),
(231,'agent1','AVAILABLE','22',1738590184,1738590287,103,0,'0'),
(232,'agent1','DIALING','22',1738590287,1738590308,21,0,'0'),
(233,'agent1','ONOCALL','22',1738590308,1738590336,28,0,'1738590308.80'),
(234,'agent1','CLOSURE','22',1738590336,1738590398,62,0,'1738641706.92'),
(235,'agent1','AVAILABLE','22',1738590398,1738590410,12,0,'0'),
(236,'agent1','DISCONNECTED','1738590410',1738590410,1738590412,2,0,'0'),
(237,'agent1','UNAVAILABLE','1738590410',1738590412,1738641687,51275,0,'0'),
(238,'agent2','PAUSED','1738588491',1738641666,1738641670,4,0,'0'),
(239,'agent2','AVAILABLE','21',1738641670,1738641700,30,0,'0'),
(240,'agent1','PAUSED','1738590410',1738641687,1738641691,4,0,'0'),
(241,'agent1','AVAILABLE','22',1738641691,1738641691,0,0,'0'),
(242,'agent1','DIALING','22',1738641691,1738641696,5,0,'0'),
(243,'agent1','AVAILABLE','22',1738641696,1738641714,18,0,'0'),
(244,'agent2','DIALING','21',1738641700,1738641706,6,0,'0'),
(245,'agent2','ONOCALL','21',1738641706,1738641714,8,19,'0'),
(246,'agent2','AVAILABLE','21',1738641714,1738641847,133,0,'0'),
(247,'agent1','RINGING','22',1738641714,1738641719,5,0,'1738641706.92'),
(248,'agent1','DISCONNECTED','1738641719',1738641719,1738641721,2,0,'0'),
(249,'agent1','UNAVAILABLE','1738641719',1738641721,1738641740,19,0,'0'),
(250,'agent1','PAUSED','1738641719',1738641740,1738641744,4,0,'0'),
(251,'agent1','AVAILABLE','22',1738641744,1738641747,3,0,'0'),
(252,'agent1','DIALING','22',1738641747,1738641749,2,0,'0'),
(253,'agent1','ONOCALL','22',1738641749,1738641755,6,0,'1738641749.101'),
(254,'agent1','CLOSURE','22',1738641755,1738641759,4,0,'1738641749.101'),
(255,'agent1','AVAILABLE','22',1738641759,1738641760,1,0,'0'),
(256,'agent1','DIALING','22',1738641760,1738641764,4,0,'0'),
(257,'agent1','ONOCALL','22',1738641764,1738641788,24,35,'0'),
(258,'agent1','AVAILABLE','22',1738641788,1738641832,44,0,'0'),
(259,'agent1','DIALING','22',1738641832,1738641838,6,0,'0'),
(260,'agent1','AVAILABLE','22',1738641838,1738644797,2959,0,'0'),
(261,'agent2','DIALING','21',1738641847,1738641851,4,0,'0'),
(262,'agent2','ONOCALL','21',1738641851,1738641861,10,13,'0'),
(263,'agent2','AVAILABLE','21',1738641861,1738642251,390,0,'0'),
(264,'agent2','DIALING','21',1738642251,1738642255,4,0,'0'),
(265,'agent2','ONOCALL','21',1738642255,1738642273,18,15,'0'),
(266,'agent2','AVAILABLE','21',1738642273,1738644603,2330,0,'0'),
(267,'agent2','PAUSED','21',1738644603,1738644604,1,0,'0'),
(268,'agent2','DISCONNECTED','1738644604',1738644604,1738644606,2,0,'0'),
(269,'agent2','UNAVAILABLE','1738644604',1738644606,0,0,0,'0'),
(270,'agent1','RINGING','22',1738644797,1738644800,3,0,'1738649265.158'),
(271,'agent1','CLOSURE','22',1738644800,1738644802,2,0,'1738644805.126'),
(272,'agent1','AVAILABLE','22',1738644802,1738644804,2,0,'0'),
(273,'agent1','DIALING','22',1738644804,1738644805,1,0,'0'),
(274,'agent1','ONOCALL','22',1738644805,1738644820,15,0,'1738644805.126'),
(275,'agent1','AVAILABLE','22',1738644820,1738648203,3383,0,'0'),
(276,'agent1','DIALING','22',1738648203,1738648204,1,0,'0'),
(277,'agent1','ONOCALL','22',1738648204,1738648217,13,3,'1738648204.131'),
(278,'agent1','CLOSURE','22',1738648217,1738648220,3,0,'1738648204.131'),
(279,'agent1','AVAILABLE','22',1738648220,1738648230,10,0,'0'),
(280,'agent1','RINGING','22',1738648230,1738648232,2,0,'1738648468.148'),
(281,'agent1','CLOSURE','22',1738648232,1738648234,2,0,'1738648309.141'),
(282,'agent1','AVAILABLE','22',1738648234,1738648235,1,0,'0'),
(283,'agent1','DIALING','22',1738648235,1738648236,1,0,'0'),
(284,'agent1','ONOCALL','22',1738648236,1738648289,53,0,'1738648236.135'),
(285,'agent1','CLOSURE','22',1738648289,1738648303,14,0,'1738648236.135'),
(286,'agent1','AVAILABLE','22',1738648303,1738648309,6,0,'0'),
(287,'agent1','DIALING','22',1738648309,1738648309,0,0,'0'),
(288,'agent1','ONOCALL','22',1738648309,1738648345,36,0,'1738648309.141'),
(289,'agent1','AVAILABLE','22',1738648345,1738648354,9,0,'0'),
(290,'agent1','RINGING','22',1738648354,1738648358,4,0,'1738648354.147'),
(291,'agent1','ONCALL','22',1738648358,1738648359,1,0,'1738648354.147'),
(292,'agent1','CLOSURE','22',1738648359,1738648361,2,0,'1738648354.147'),
(293,'agent1','AVAILABLE','22',1738648361,1738648467,106,0,'0'),
(294,'agent1','DIALING','22',1738648467,1738648468,1,0,'0'),
(295,'agent1','ONOCALL','22',1738648468,1738648488,20,9,'1738648468.148'),
(296,'agent1','AVAILABLE','22',1738648488,1738648540,52,0,'0'),
(297,'agent1','DIALING','22',1738648540,1738648541,1,0,'0'),
(298,'agent1','ONOCALL','22',1738648541,1738648555,14,9,'1738648541.151'),
(299,'agent1','CLOSURE','22',1738648555,1738649032,477,0,'1738648541.151'),
(300,'agent1','AVAILABLE','22',1738649032,1738649033,1,0,'0'),
(301,'agent1','DIALING','22',1738649033,1738649034,1,0,'0'),
(302,'agent1','AVAILABLE','22',1738649034,1738649038,4,0,'0'),
(303,'agent1','DIALING','22',1738649038,1738649039,1,0,'0'),
(304,'agent1','ONOCALL','22',1738649039,1738649058,19,9,'1738649039.155'),
(305,'agent1','CLOSURE','22',1738649058,1738649263,205,0,'1738649039.155'),
(306,'agent1','AVAILABLE','22',1738649263,1738649265,2,0,'0'),
(307,'agent1','DIALING','22',1738649265,1738649265,0,0,'0'),
(308,'agent1','ONOCALL','22',1738649265,1738649272,7,0,'1738649265.158'),
(309,'agent1','AVAILABLE','22',1738649272,1738651540,2268,0,'0'),
(310,'agent1','DIALING','22',1738651540,1738651552,12,0,'0'),
(311,'agent1','AVAILABLE','22',1738651552,1738651554,2,0,'0'),
(312,'agent1','DISCONNECTED','1738651554',1738651554,1738651556,2,0,'0'),
(313,'agent1','UNAVAILABLE','1738651554',1738651556,1738655440,3884,0,'0'),
(314,'agent1','PAUSED','1738651554',1738655440,1738657257,1817,0,'0'),
(315,'agent1','DISCONNECTED','1738657257',1738657257,1738657741,484,0,'0'),
(316,'agent1','UNAVAILABLE','1738657741',1738657741,0,0,0,'0');
/*!40000 ALTER TABLE `agent_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_sessions`
--

DROP TABLE IF EXISTS `agent_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_sessions` (
  `sessid` int(11) NOT NULL AUTO_INCREMENT,
  `agid` varchar(40) NOT NULL,
  `seschannel` text NOT NULL,
  `sessionstart` int(11) NOT NULL,
  `sessionend` int(11) NOT NULL,
  `xagent` varchar(60) NOT NULL,
  PRIMARY KEY (`sessid`),
  KEY `xagent` (`xagent`),
  KEY `sessionend` (`sessionend`),
  KEY `sessionstart` (`sessionstart`),
  KEY `agid` (`agid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_sessions`
--

LOCK TABLES `agent_sessions` WRITE;
/*!40000 ALTER TABLE `agent_sessions` DISABLE KEYS */;
INSERT INTO `agent_sessions` VALUES
(1,'21','SIP/21-00000000',1736147317,0,'agent1'),
(2,'21','SIP/21-00000001',1736147353,0,'agent1'),
(3,'21','SIP/21-00000003',1736147450,0,'agent1'),
(4,'21','SIP/21-00000004',1736159914,0,'agent1'),
(5,'22','SIP/22-00000005',1736160165,1736167801,'agent2'),
(6,'22','SIP/22-00000006',1736160221,1736167801,'agent2'),
(7,'21','SIP/21-00000008',1736162080,0,'agent1'),
(8,'21','SIP/21-00000001',1736163084,0,'agent1'),
(9,'22','SIP/22-00000002',1736163119,1736167801,'agent2'),
(10,'21','SIP/21-00000000',1736223250,0,'agent1'),
(11,'21','SIP/21-00000001',1736223336,0,'agent1'),
(12,'23','SIP/23-00000000',1737625615,0,'agent1'),
(13,'21','SIP/21-00000001',1737631518,0,'agent2'),
(14,'23','SIP/23-00000003',1737631674,0,'agent1'),
(15,'23','SIP/23-00000005',1737632112,0,'agent1'),
(16,'21','SIP/21-0000000a',1737639117,0,'agent2'),
(17,'22','SIP/22-00000002',1738586786,0,'agent1'),
(18,'21','SIP/21-00000003',1738586869,0,'agent2'),
(19,'21','SIP/21-00000006',1738586949,0,'agent2'),
(20,'22','SIP/22-00000012',1738588090,0,'agent1'),
(21,'21','SIP/21-00000015',1738588150,0,'agent2'),
(22,'21','SIP/21-00000019',1738641666,0,'agent2'),
(23,'22','SIP/22-0000001a',1738641688,0,'agent1'),
(24,'22','SIP/22-0000001c',1738641741,0,'agent1'),
(25,'22','SIP/22-00000031',1738655441,0,'agent1');
/*!40000 ALTER TABLE `agent_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agents` (
  `agid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `ext` varchar(15) NOT NULL,
  `tech` text NOT NULL,
  `onhook` int(1) NOT NULL DEFAULT 1,
  `agent_status` varchar(60) NOT NULL,
  `last_login` int(20) NOT NULL,
  `lastupdate` int(11) NOT NULL,
  `sincelast` int(11) NOT NULL DEFAULT 0,
  `agent_did` varchar(15) NOT NULL,
  `outbound_only` int(1) NOT NULL,
  `viponly` int(11) NOT NULL DEFAULT 0,
  `autocallback` int(1) NOT NULL,
  `ogroup` varchar(3) NOT NULL,
  `predctive_camp` varchar(50) NOT NULL,
  `callpickup` int(11) NOT NULL DEFAULT 0,
  `autoclosure` int(1) NOT NULL,
  `campaign_name` text NOT NULL,
  `lastcallon` varchar(22) NOT NULL,
  PRIMARY KEY (`agid`),
  KEY `agid` (`agid`),
  KEY `sincelast` (`sincelast`),
  KEY `lastupdate` (`lastupdate`),
  KEY `last_login` (`last_login`),
  KEY `agent_status` (`agent_status`),
  KEY `ext` (`ext`),
  KEY `uname` (`uname`),
  KEY `callpickup` (`callpickup`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES
(4,'agent1','123456','1738657741','SIP',0,'UNAVAILABLE',1738651554,1738657180,1738657741,'1234',0,0,0,'4','',0,0,'','1738648358'),
(5,'agent2','123456','1738644604','SIP',0,'UNAVAILABLE',1738644604,1738644576,1738644606,'1234',0,0,0,'4','',0,0,'','1738587769');
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `agent_report` BEFORE UPDATE ON `agents` FOR EACH ROW IF NEW.agent_status <> OLD.agent_status THEN
UPDATE `autocall`.`agent_reports` SET `endt` = UNIX_TIMESTAMP() WHERE `agent_reports`.`endt` =0 AND `agent_reports`.`agent`=NEW.uname;
UPDATE `autocall`.`agent_reports` SET `totsec` =`endt`-`t` WHERE endt>0 AND `totsec`=0 AND `agent_reports`.`agent`=NEW.uname;
INSERT INTO `autocall`.`agent_reports` (`id`, `agent`, `status`,`ext`,`t`) VALUES (NULL, NEW.uname,NEW.agent_status,NEW.ext,UNIX_TIMESTAMP());
SET NEW.sincelast = UNIX_TIMESTAMP(); 
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alerts` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `file` text NOT NULL,
  `start` varchar(80) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `att_outbound`
--

DROP TABLE IF EXISTS `att_outbound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `att_outbound` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uniqueid` varchar(80) NOT NULL,
  `parked_channel` varchar(200) NOT NULL,
  `agent` varchar(40) NOT NULL,
  `agentext` varchar(12) NOT NULL,
  `tonumber` varchar(30) NOT NULL,
  `localchannel` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`aid`),
  KEY `status` (`status`),
  KEY `localchannel` (`localchannel`),
  KEY `tonumber` (`tonumber`),
  KEY `agentext` (`agentext`),
  KEY `agent` (`agent`),
  KEY `parked_channel` (`parked_channel`),
  KEY `uniqueid` (`uniqueid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `att_outbound`
--

LOCK TABLES `att_outbound` WRITE;
/*!40000 ALTER TABLE `att_outbound` DISABLE KEYS */;
/*!40000 ALTER TABLE `att_outbound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitvoice_mailbox`
--

DROP TABLE IF EXISTS `bitvoice_mailbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitvoice_mailbox` (
  `mtid` int(11) NOT NULL AUTO_INCREMENT,
  `fromext` varchar(15) NOT NULL,
  `boxid` int(11) NOT NULL,
  `mttime` datetime NOT NULL,
  `voicedata` text NOT NULL,
  `translator` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`mtid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitvoice_mailbox`
--

LOCK TABLES `bitvoice_mailbox` WRITE;
/*!40000 ALTER TABLE `bitvoice_mailbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitvoice_mailbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitvoice_opin`
--

DROP TABLE IF EXISTS `bitvoice_opin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitvoice_opin` (
  `opin_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniqeid` varchar(40) NOT NULL,
  `from` varchar(40) NOT NULL,
  `to` varchar(40) NOT NULL,
  `agent` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`opin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitvoice_opin`
--

LOCK TABLES `bitvoice_opin` WRITE;
/*!40000 ALTER TABLE `bitvoice_opin` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitvoice_opin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitvoice_paging`
--

DROP TABLE IF EXISTS `bitvoice_paging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitvoice_paging` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(16) NOT NULL,
  `extension_name` text NOT NULL,
  `code` int(11) NOT NULL,
  `ext_audio` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitvoice_paging`
--

LOCK TABLES `bitvoice_paging` WRITE;
/*!40000 ALTER TABLE `bitvoice_paging` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitvoice_paging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocked`
--

DROP TABLE IF EXISTS `blocked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocked` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blocked` varchar(20) NOT NULL,
  `blocked_by` varchar(20) NOT NULL,
  `blocked_time` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked`
--

LOCK TABLES `blocked` WRITE;
/*!40000 ALTER TABLE `blocked` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_details`
--

DROP TABLE IF EXISTS `branch_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pincode` varchar(10) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `branch_code` varchar(20) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `area` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_details`
--

LOCK TABLES `branch_details` WRITE;
/*!40000 ALTER TABLE `branch_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `branch_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkextension`
--

DROP TABLE IF EXISTS `bulkextension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bulkextension` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `extension` varchar(15) NOT NULL,
  `name` text NOT NULL,
  `dial` text NOT NULL,
  `description` text NOT NULL,
  `nat` varchar(15) NOT NULL,
  `secret` text NOT NULL,
  `callwaiting_enable` text NOT NULL,
  `findmefollow_strategy` text NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkextension`
--

LOCK TABLES `bulkextension` WRITE;
/*!40000 ALTER TABLE `bulkextension` DISABLE KEYS */;
/*!40000 ALTER TABLE `bulkextension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_action_group`
--

DROP TABLE IF EXISTS `call_action_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `call_action_group` (
  `action_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`action_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_action_group`
--

LOCK TABLES `call_action_group` WRITE;
/*!40000 ALTER TABLE `call_action_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `call_action_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_actions`
--

DROP TABLE IF EXISTS `call_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `call_actions` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `action_group_id` int(11) NOT NULL,
  `action_second` int(11) NOT NULL,
  `action` text NOT NULL,
  `action_data` text NOT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_actions`
--

LOCK TABLES `call_actions` WRITE;
/*!40000 ALTER TABLE `call_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `call_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_back`
--

DROP TABLE IF EXISTS `call_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `call_back` (
  `callback_id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_id` int(11) NOT NULL,
  `dialqueue_id` int(11) NOT NULL,
  `campain_id` int(11) NOT NULL,
  `agent_id` varchar(60) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `remark` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`callback_id`),
  UNIQUE KEY `dialqueue_id` (`dialqueue_id`),
  KEY `lead_id` (`lead_id`),
  KEY `campain_id` (`campain_id`),
  KEY `agent_id` (`agent_id`),
  KEY `date_time` (`date_time`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_back`
--

LOCK TABLES `call_back` WRITE;
/*!40000 ALTER TABLE `call_back` DISABLE KEYS */;
/*!40000 ALTER TABLE `call_back` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_group_data`
--

DROP TABLE IF EXISTS `call_group_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `call_group_data` (
  `opid` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `agent_priority` int(11) NOT NULL,
  PRIMARY KEY (`opid`),
  KEY `agent_id` (`agent_id`),
  KEY `agent_priority` (`agent_priority`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_group_data`
--

LOCK TABLES `call_group_data` WRITE;
/*!40000 ALTER TABLE `call_group_data` DISABLE KEYS */;
INSERT INTO `call_group_data` VALUES
(74,4,5,1),
(73,4,4,1);
/*!40000 ALTER TABLE `call_group_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_groups`
--

DROP TABLE IF EXISTS `call_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `call_groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `answer_call` int(1) NOT NULL,
  `no_agent` varchar(50) NOT NULL,
  `call_waiting` int(1) NOT NULL,
  `call_waiting_moh` varchar(50) NOT NULL,
  `announce_cw` int(1) NOT NULL,
  `cw_announcement` varchar(50) NOT NULL,
  `cw_timeout` varchar(50) NOT NULL,
  `cw_timeout_destination` varchar(50) NOT NULL,
  `max_channel` varchar(50) NOT NULL,
  `Recording` int(1) NOT NULL,
  `call_waiting_action` int(11) NOT NULL,
  `agent_que` int(11) NOT NULL,
  `formurl` text NOT NULL,
  `campaign` int(11) NOT NULL,
  `sla` varchar(4) NOT NULL COMMENT 'SLA in seconds',
  PRIMARY KEY (`gid`),
  KEY `name` (`name`),
  KEY `answer_call` (`answer_call`),
  KEY `no_agent` (`no_agent`),
  KEY `call_waiting` (`call_waiting`),
  KEY `call_waiting_moh` (`call_waiting_moh`),
  KEY `announce_cw` (`announce_cw`),
  KEY `cw_announcement` (`cw_announcement`),
  KEY `cw_timeout` (`cw_timeout`),
  KEY `cw_timeout_destination` (`cw_timeout_destination`),
  KEY `max_channel` (`max_channel`),
  KEY `Recording` (`Recording`),
  KEY `call_waiting_action` (`call_waiting_action`),
  KEY `agent_que` (`agent_que`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_groups`
--

LOCK TABLES `call_groups` WRITE;
/*!40000 ALTER TABLE `call_groups` DISABLE KEYS */;
INSERT INTO `call_groups` VALUES
(4,'Booking','Booking',1,'send-busyx',1,'',1,'','120','120','30',1,0,0,'',2,'20'),
(0,'default','default',1,'send-busyx2',1,'default',0,'','30','send-busy','30',0,0,0,'',2,'20');
/*!40000 ALTER TABLE `call_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_groups2`
--

DROP TABLE IF EXISTS `call_groups2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `call_groups2` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `no_agent_action` varchar(60) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_groups2`
--

LOCK TABLES `call_groups2` WRITE;
/*!40000 ALTER TABLE `call_groups2` DISABLE KEYS */;
/*!40000 ALTER TABLE `call_groups2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `callblast`
--

DROP TABLE IF EXISTS `callblast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callblast` (
  `call_id` int(11) NOT NULL AUTO_INCREMENT,
  `callname` text NOT NULL,
  `list_id` varchar(20) NOT NULL,
  `status` int(4) NOT NULL,
  `cdate` int(11) NOT NULL,
  `channel_value` text NOT NULL,
  `max_channel` int(3) NOT NULL,
  `file` text NOT NULL,
  `maxretries` int(11) NOT NULL,
  `retryinterval` int(11) NOT NULL,
  `edate` int(11) NOT NULL,
  `feedback` int(11) NOT NULL,
  PRIMARY KEY (`call_id`),
  KEY `status` (`status`),
  KEY `max_channel` (`max_channel`),
  KEY `cdate` (`cdate`),
  KEY `feedback` (`feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callblast`
--

LOCK TABLES `callblast` WRITE;
/*!40000 ALTER TABLE `callblast` DISABLE KEYS */;
/*!40000 ALTER TABLE `callblast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `callblast_queue`
--

DROP TABLE IF EXISTS `callblast_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callblast_queue` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `call_id` int(11) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `name` varchar(60) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `bdate` int(11) NOT NULL,
  `uniqueid` varchar(20) NOT NULL,
  `feedback` int(11) NOT NULL,
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `data3` text NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `phone` (`phone`),
  KEY `status` (`status`),
  KEY `call_id` (`call_id`),
  KEY `feedback` (`feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callblast_queue`
--

LOCK TABLES `callblast_queue` WRITE;
/*!40000 ALTER TABLE `callblast_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `callblast_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campain`
--

DROP TABLE IF EXISTS `campain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campain` (
  `campain_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL,
  `list_id` varchar(25) NOT NULL,
  `screenlabel` varchar(75) NOT NULL,
  `dialing_method` varchar(75) NOT NULL,
  `agent` varchar(75) NOT NULL,
  `user` varchar(100) NOT NULL,
  `did` varchar(18) NOT NULL,
  `auto_verify` int(1) NOT NULL,
  `custom_form` text NOT NULL,
  `ratio` int(2) NOT NULL,
  `call_type` varchar(2) NOT NULL,
  `active` int(1) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`campain_id`),
  UNIQUE KEY `campain_id` (`campain_id`),
  KEY `list_id` (`list_id`),
  KEY `agent` (`agent`),
  KEY `dialing_method` (`dialing_method`),
  KEY `screenlabel` (`screenlabel`),
  KEY `name` (`name`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campain`
--

LOCK TABLES `campain` WRITE;
/*!40000 ALTER TABLE `campain` DISABLE KEYS */;
INSERT INTO `campain` VALUES
(2,'Bitvoice','2','2','','','14','',0,'bitvoice',0,'',1,0);
/*!40000 ALTER TABLE `campain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_channel_types`
--

DROP TABLE IF EXISTS `cc_channel_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_channel_types` (
  `cc_channel_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_value` varchar(80) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `call_direction` int(1) NOT NULL,
  PRIMARY KEY (`cc_channel_type_id`),
  UNIQUE KEY `channel_value` (`channel_value`),
  KEY `call_direction` (`call_direction`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_channel_types`
--

LOCK TABLES `cc_channel_types` WRITE;
/*!40000 ALTER TABLE `cc_channel_types` DISABLE KEYS */;
INSERT INTO `cc_channel_types` VALUES
(1,'SIP','Sip channel',3),
(11,'Local','Local',3);
/*!40000 ALTER TABLE `cc_channel_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cc_park`
--

DROP TABLE IF EXISTS `cc_park`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cc_park` (
  `parkid` int(11) NOT NULL AUTO_INCREMENT,
  `puniqueid` varchar(40) NOT NULL,
  `started_on` varchar(30) NOT NULL,
  `cfrom` varchar(40) NOT NULL,
  `cto` varchar(40) NOT NULL,
  `group` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL,
  `cid_name` varchar(60) NOT NULL,
  `vippriority` int(1) NOT NULL DEFAULT 9 COMMENT 'priority for 1 to 9',
  PRIMARY KEY (`parkid`),
  UNIQUE KEY `cfrom_2` (`cfrom`),
  KEY `group` (`group`),
  KEY `cto` (`cto`),
  KEY `cfrom` (`cfrom`),
  KEY `started_on` (`started_on`),
  KEY `channel` (`channel`),
  KEY `cid_name` (`cid_name`),
  KEY `vippriority` (`vippriority`)
) ENGINE=MyISAM AUTO_INCREMENT=84869 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cc_park`
--

LOCK TABLES `cc_park` WRITE;
/*!40000 ALTER TABLE `cc_park` DISABLE KEYS */;
/*!40000 ALTER TABLE `cc_park` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientdata_accumen`
--

DROP TABLE IF EXISTS `clientdata_accumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientdata_accumen` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` varchar(12) NOT NULL,
  `CLIENT_NAME` varchar(75) NOT NULL,
  `AGREEMENT_DATE` date NOT NULL,
  `BANK_ACCTYPE` varchar(30) NOT NULL,
  `BANK_ACNO` varchar(50) NOT NULL,
  `CLIENT_BANK_NAME` varchar(50) NOT NULL,
  `BRANCH_CODE` varchar(10) NOT NULL,
  `DP_ID` varchar(20) NOT NULL,
  `BIRTH_DATE` date NOT NULL,
  `CLIENT_ID_MAIL` varchar(50) NOT NULL,
  `FAMILY_GROUP` varchar(30) NOT NULL,
  `IFSCCODE` varchar(20) NOT NULL,
  `PAN_NO` varchar(20) NOT NULL,
  `STATE` varchar(20) NOT NULL,
  `MOBILE_NO` varchar(15) NOT NULL,
  `CL_RESI_ADD1` varchar(200) NOT NULL,
  `CL_RESI_ADD2` varchar(250) NOT NULL,
  `CL_RESI_ADD3` varchar(250) NOT NULL,
  `TOTAL_LEDGER` varchar(20) NOT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientdata_accumen`
--

LOCK TABLES `clientdata_accumen` WRITE;
/*!40000 ALTER TABLE `clientdata_accumen` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientdata_accumen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conf_callstatus`
--

DROP TABLE IF EXISTS `conf_callstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conf_callstatus` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `channel` text NOT NULL,
  `source` text NOT NULL,
  `destination` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `muted` int(11) NOT NULL DEFAULT 1,
  `pock` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conf_callstatus`
--

LOCK TABLES `conf_callstatus` WRITE;
/*!40000 ALTER TABLE `conf_callstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `conf_callstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conference_schedule`
--

DROP TABLE IF EXISTS `conference_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conference_schedule` (
  `conference` int(11) NOT NULL AUTO_INCREMENT,
  `dial_in_number` int(11) NOT NULL,
  `name` text NOT NULL,
  `participants` text NOT NULL,
  `schedule` int(11) NOT NULL,
  `host` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `conf_type` int(11) NOT NULL DEFAULT 0,
  `password` int(10) NOT NULL,
  PRIMARY KEY (`conference`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conference_schedule`
--

LOCK TABLES `conference_schedule` WRITE;
/*!40000 ALTER TABLE `conference_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `conference_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conferenece_contacts`
--

DROP TABLE IF EXISTS `conferenece_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conferenece_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `channel_value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conferenece_contacts`
--

LOCK TABLES `conferenece_contacts` WRITE;
/*!40000 ALTER TABLE `conferenece_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `conferenece_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpls`
--

DROP TABLE IF EXISTS `cpls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpls` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `first` text NOT NULL,
  `last` text NOT NULL,
  `aadhar` varchar(60) NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `pin` varchar(30) NOT NULL,
  `department` varchar(60) NOT NULL,
  `service` varchar(60) NOT NULL,
  `contact1` varchar(20) NOT NULL,
  `contact2` varchar(20) NOT NULL,
  `complaint` text NOT NULL,
  `status` int(11) NOT NULL,
  `cdate` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpls`
--

LOCK TABLES `cpls` WRITE;
/*!40000 ALTER TABLE `cpls` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_type`
--

DROP TABLE IF EXISTS `cust_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_type` (
  `cust_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_type` varchar(40) NOT NULL,
  PRIMARY KEY (`cust_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_type`
--

LOCK TABLES `cust_type` WRITE;
/*!40000 ALTER TABLE `cust_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `cust_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_branches`
--

DROP TABLE IF EXISTS `custom_branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_branches` (
  `code` int(11) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_branches`
--

LOCK TABLES `custom_branches` WRITE;
/*!40000 ALTER TABLE `custom_branches` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_data`
--

DROP TABLE IF EXISTS `custom_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_data` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `comno` varchar(30) NOT NULL,
  `remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `location` text NOT NULL,
  `name` text NOT NULL,
  `phone1` varchar(20) NOT NULL,
  `phone2` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `status` varchar(15) NOT NULL,
  `cdate` int(11) NOT NULL,
  `uniqueid` varchar(60) NOT NULL,
  `agent` varchar(40) NOT NULL,
  `department` varchar(80) NOT NULL,
  `emp_no` varchar(40) NOT NULL,
  `cstatus` int(1) NOT NULL,
  `no_appnt` varchar(10) NOT NULL,
  `mrd_no` text NOT NULL,
  `mis_no` int(2) NOT NULL,
  `group` varchar(2) NOT NULL,
  `tnumber` varchar(200) NOT NULL,
  `rate` varchar(1) NOT NULL,
  `customerid` varchar(20) NOT NULL,
  `customer_status` varchar(20) NOT NULL,
  `branch_code` varchar(20) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `refered_by` varchar(100) NOT NULL,
  `house_name` text NOT NULL,
  `post_office` varchar(100) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pin` varchar(10) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `phone1` (`phone1`),
  KEY `phone2` (`phone2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_data`
--

LOCK TABLES `custom_data` WRITE;
/*!40000 ALTER TABLE `custom_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_data1`
--

DROP TABLE IF EXISTS `custom_data1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_data1` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `comno` varchar(30) NOT NULL,
  `remark` text NOT NULL,
  `name` text NOT NULL,
  `phone1` varchar(20) NOT NULL,
  `phone2` varchar(200) NOT NULL,
  `status` varchar(15) NOT NULL,
  `cdate` int(11) NOT NULL,
  `closeddate` int(11) NOT NULL,
  `uniqueid` varchar(60) NOT NULL,
  `agent` varchar(40) NOT NULL,
  `pnumber` text NOT NULL,
  `pmode` text NOT NULL,
  `cmode` text NOT NULL,
  `damount` text NOT NULL,
  `dtype` text NOT NULL,
  `duration` text NOT NULL,
  `phone3` text NOT NULL,
  `pwd` text NOT NULL,
  `dob` text NOT NULL,
  `odob` text NOT NULL,
  `address` text NOT NULL,
  `country` text NOT NULL,
  `state` text NOT NULL,
  `pincode` text NOT NULL,
  `email` text NOT NULL,
  `freq` text NOT NULL,
  `fdate` text NOT NULL,
  `prequest` text NOT NULL,
  `rating` text NOT NULL,
  `samount` text NOT NULL,
  `pdate` text NOT NULL,
  `preceipt` text NOT NULL,
  `tid` text NOT NULL,
  `bpreq` text NOT NULL,
  `bs_intimation` varchar(20) NOT NULL,
  `pw_intimation` varchar(20) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_data1`
--

LOCK TABLES `custom_data1` WRITE;
/*!40000 ALTER TABLE `custom_data1` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_data1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_data_3`
--

DROP TABLE IF EXISTS `custom_data_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_data_3` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `reported` text NOT NULL,
  `department` varchar(60) NOT NULL,
  `issue` varchar(60) NOT NULL,
  `contact1` varchar(20) NOT NULL,
  `contact2` varchar(20) NOT NULL,
  `complaint` text NOT NULL,
  `status` int(11) NOT NULL,
  `cdate` int(11) NOT NULL,
  `closeddate` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_data_3`
--

LOCK TABLES `custom_data_3` WRITE;
/*!40000 ALTER TABLE `custom_data_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_data_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_agent_map`
--

DROP TABLE IF EXISTS `customer_agent_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_agent_map` (
  `customer_agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) NOT NULL,
  `agent_name` varchar(75) NOT NULL,
  PRIMARY KEY (`customer_agent_id`),
  KEY `customer_agent_id` (`customer_agent_id`),
  KEY `phone` (`phone`),
  KEY `agent_name` (`agent_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_agent_map`
--

LOCK TABLES `customer_agent_map` WRITE;
/*!40000 ALTER TABLE `customer_agent_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_agent_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_call_summary`
--

DROP TABLE IF EXISTS `daily_call_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_call_summary` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cdate` date NOT NULL,
  `in_count` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_count` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mis_count` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cdate` (`cdate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_call_summary`
--

LOCK TABLES `daily_call_summary` WRITE;
/*!40000 ALTER TABLE `daily_call_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_call_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_remarks`
--

DROP TABLE IF EXISTS `data_remarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_remarks` (
  `remark_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_cid` int(11) NOT NULL,
  `ticket` varchar(40) NOT NULL,
  `agent` varchar(60) NOT NULL,
  `ctime` varchar(20) NOT NULL,
  `remark` text NOT NULL,
  PRIMARY KEY (`remark_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_remarks`
--

LOCK TABLES `data_remarks` WRITE;
/*!40000 ALTER TABLE `data_remarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_remarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `exts` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_form`
--

DROP TABLE IF EXISTS `department_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_form` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dep_name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_form`
--

LOCK TABLES `department_form` WRITE;
/*!40000 ALTER TABLE `department_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departmentabm`
--

DROP TABLE IF EXISTS `departmentabm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departmentabm` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dep_name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departmentabm`
--

LOCK TABLES `departmentabm` WRITE;
/*!40000 ALTER TABLE `departmentabm` DISABLE KEYS */;
/*!40000 ALTER TABLE `departmentabm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dialqueue`
--

DROP TABLE IF EXISTS `dialqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialqueue` (
  `dialqueue_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniqueid` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dial_status` int(1) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `campain_id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `calltype` int(1) NOT NULL COMMENT '1=in 2=out 3=camp_click_dial 4=lead_edit',
  `call_status` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lead_status` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NEW',
  `agent` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `data3` text NOT NULL,
  `data4` text NOT NULL,
  `data5` text NOT NULL,
  `data6` text NOT NULL,
  `data7` text NOT NULL,
  `data8` text NOT NULL,
  `data9` text NOT NULL,
  `data10` text NOT NULL,
  `data11` text NOT NULL,
  `data12` text NOT NULL,
  `data13` text NOT NULL,
  `data14` text NOT NULL,
  `data15` text NOT NULL,
  `data16` text NOT NULL,
  `data17` text NOT NULL,
  `data18` text NOT NULL,
  `data19` text NOT NULL,
  `data20` text NOT NULL,
  `data21` text NOT NULL,
  `data22` text NOT NULL,
  `data23` text NOT NULL,
  `data24` text NOT NULL,
  `data25` text NOT NULL,
  `data26` text NOT NULL,
  `data27` text NOT NULL,
  `data28` text NOT NULL,
  `data29` text NOT NULL,
  `data30` text NOT NULL,
  `data31` text NOT NULL,
  `data32` text NOT NULL,
  `data33` text NOT NULL,
  `data34` text NOT NULL,
  `data35` text NOT NULL,
  `data36` text NOT NULL,
  `data37` text NOT NULL,
  `data38` text NOT NULL,
  `data39` text NOT NULL,
  `data40` text NOT NULL,
  `data41` text NOT NULL,
  `data42` text NOT NULL,
  `data43` text NOT NULL,
  `data44` text NOT NULL,
  `data45` text NOT NULL,
  `data46` text NOT NULL,
  `data47` text NOT NULL,
  `data48` text NOT NULL,
  `data49` text NOT NULL,
  `data50` text NOT NULL,
  `data51` text NOT NULL,
  `data52` text NOT NULL,
  `data53` text NOT NULL,
  `data54` text NOT NULL,
  `data55` text NOT NULL,
  `data56` text NOT NULL,
  `data57` text NOT NULL,
  `data58` text NOT NULL,
  `data59` text NOT NULL,
  `data60` text NOT NULL,
  `phone1` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone2` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone3` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `startdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dialqueue_id`),
  UNIQUE KEY `dialqueue_id` (`dialqueue_id`),
  KEY `lead_id` (`lead_id`),
  KEY `campain_id` (`campain_id`),
  KEY `lead_status` (`lead_status`),
  KEY `agent` (`agent`),
  KEY `uniqueid` (`uniqueid`),
  KEY `phone1` (`phone1`),
  KEY `phone2` (`phone2`),
  KEY `phone3` (`phone3`),
  KEY `startdate` (`startdate`),
  KEY `enddate` (`enddate`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dialqueue`
--

LOCK TABLES `dialqueue` WRITE;
/*!40000 ALTER TABLE `dialqueue` DISABLE KEYS */;
INSERT INTO `dialqueue` VALUES
(8,'1737631762.14',0,0,0,0,4,2,'','NEW','agent1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','200','','','2025-01-23 11:29:24','0000-00-00 00:00:00'),
(9,'1737631773.19',0,0,0,0,4,2,'','NEW','agent1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','201','','','2025-01-23 11:29:33','0000-00-00 00:00:00'),
(12,'1737632151.32',0,0,0,2,0,1,'','NEW','agent2','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','200','','','2025-01-23 11:35:58','0000-00-00 00:00:00'),
(30,'1738641706.92',0,0,0,2,0,1,'','NEW','agent1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','201','','','2025-02-04 04:01:55','0000-00-00 00:00:00'),
(31,'1738641749.101',0,0,0,2,4,2,'','NEW','agent1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','200','','','2025-02-04 04:02:31','0000-00-00 00:00:00'),
(32,'1738641764.107',0,0,0,2,4,2,'connected','ANS','agent1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','202','','','2025-02-04 04:02:45','2025-02-04 04:03:44'),
(34,'1738642255.119',0,0,0,2,4,2,'','NEW','agent2','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','201','','','2025-02-04 04:10:55','0000-00-00 00:00:00'),
(45,'1738649265.158',0,0,0,2,4,2,'','NEW','agent1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','9497498601','','','2025-02-04 06:07:46','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `dialqueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dialqueue_manappuram`
--

DROP TABLE IF EXISTS `dialqueue_manappuram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialqueue_manappuram` (
  `dialqueue_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniqueid` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dial_status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `lead_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `campain_id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `calltype` int(1) NOT NULL COMMENT '1=in 2=out',
  `call_status` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lead_status` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NEW',
  `agent` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_name` varchar(75) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `branch` varchar(75) NOT NULL,
  `branchcode` varchar(20) NOT NULL,
  `region` varchar(75) NOT NULL,
  `area` varchar(75) NOT NULL,
  `address` varchar(150) NOT NULL,
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `data3` text NOT NULL,
  `data4` text NOT NULL,
  `data5` text NOT NULL,
  `data6` text NOT NULL,
  `data7` text NOT NULL,
  `data8` text NOT NULL,
  `data9` text NOT NULL,
  `data10` text NOT NULL,
  `data11` text NOT NULL,
  `data12` text NOT NULL,
  `data13` text NOT NULL,
  `data14` text NOT NULL,
  `data15` text NOT NULL,
  `data16` text NOT NULL,
  `data17` text NOT NULL,
  `data18` text NOT NULL,
  `data19` text NOT NULL,
  `data20` text NOT NULL,
  `data21` text NOT NULL,
  `data22` text NOT NULL,
  `data23` text NOT NULL,
  `data24` text NOT NULL,
  `data25` text NOT NULL,
  `data26` text NOT NULL,
  `data27` text NOT NULL,
  `data28` text NOT NULL,
  `data29` text NOT NULL,
  `data30` text NOT NULL,
  `data31` text NOT NULL,
  `data32` text NOT NULL,
  `data33` text NOT NULL,
  `data34` text NOT NULL,
  `data35` text NOT NULL,
  `data36` text NOT NULL,
  `data37` text NOT NULL,
  `data38` text NOT NULL,
  `data39` text NOT NULL,
  `data40` text NOT NULL,
  `data41` text NOT NULL,
  `data42` text NOT NULL,
  `data43` text NOT NULL,
  `data44` text NOT NULL,
  `data45` text NOT NULL,
  `data46` text NOT NULL,
  `data47` text NOT NULL,
  `data48` text NOT NULL,
  `data49` text NOT NULL,
  `data50` text NOT NULL,
  `data51` text NOT NULL,
  `data52` text NOT NULL,
  `data53` text NOT NULL,
  `data54` text NOT NULL,
  `data55` text NOT NULL,
  `data56` text NOT NULL,
  `data57` text NOT NULL,
  `data58` text NOT NULL,
  `data59` text NOT NULL,
  `data60` text NOT NULL,
  `phone1` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone2` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone3` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `startdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dialqueue_id`),
  UNIQUE KEY `dialqueue_id` (`dialqueue_id`),
  KEY `lead_id` (`lead_id`),
  KEY `campain_id` (`campain_id`),
  KEY `lead_status` (`lead_status`),
  KEY `agent` (`agent`),
  KEY `uniqueid` (`uniqueid`),
  KEY `phone1` (`phone1`),
  KEY `phone2` (`phone2`),
  KEY `phone3` (`phone3`),
  KEY `startdate` (`startdate`),
  KEY `enddate` (`enddate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dialqueue_manappuram`
--

LOCK TABLES `dialqueue_manappuram` WRITE;
/*!40000 ALTER TABLE `dialqueue_manappuram` DISABLE KEYS */;
/*!40000 ALTER TABLE `dialqueue_manappuram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dialqueue_old`
--

DROP TABLE IF EXISTS `dialqueue_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialqueue_old` (
  `dialqueue_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniqueid` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dial_status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `lead_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `campain_id` int(11) NOT NULL,
  `call_status` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lead_status` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NEW',
  `agent` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `data3` text NOT NULL,
  `data4` text NOT NULL,
  `data5` text NOT NULL,
  `data6` text NOT NULL,
  `data7` text NOT NULL,
  `data8` text NOT NULL,
  `data9` text NOT NULL,
  `data10` text NOT NULL,
  `data11` text NOT NULL,
  `data12` text NOT NULL,
  `data13` text NOT NULL,
  `data14` text NOT NULL,
  `data15` text NOT NULL,
  `data16` text NOT NULL,
  `data17` text NOT NULL,
  `data18` text NOT NULL,
  `data19` text NOT NULL,
  `data20` text NOT NULL,
  `data21` text NOT NULL,
  `data22` text NOT NULL,
  `data23` text NOT NULL,
  `data24` text NOT NULL,
  `data25` text NOT NULL,
  `data26` text NOT NULL,
  `data27` text NOT NULL,
  `data28` text NOT NULL,
  `data29` text NOT NULL,
  `data30` text NOT NULL,
  `data31` text NOT NULL,
  `data32` text NOT NULL,
  `data33` text NOT NULL,
  `data34` text NOT NULL,
  `data35` text NOT NULL,
  `data36` text NOT NULL,
  `data37` text NOT NULL,
  `data38` text NOT NULL,
  `data39` text NOT NULL,
  `data40` text NOT NULL,
  `data41` text NOT NULL,
  `data42` text NOT NULL,
  `data43` text NOT NULL,
  `data44` text NOT NULL,
  `data45` text NOT NULL,
  `data46` text NOT NULL,
  `data47` text NOT NULL,
  `data48` text NOT NULL,
  `data49` text NOT NULL,
  `data50` text NOT NULL,
  `data51` text NOT NULL,
  `data52` text NOT NULL,
  `data53` text NOT NULL,
  `data54` text NOT NULL,
  `data55` text NOT NULL,
  `data56` text NOT NULL,
  `data57` text NOT NULL,
  `data58` text NOT NULL,
  `data59` text NOT NULL,
  `data60` text NOT NULL,
  `phone1` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone2` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone3` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `startdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dialqueue_id`),
  UNIQUE KEY `dialqueue_id` (`dialqueue_id`),
  KEY `lead_id` (`lead_id`),
  KEY `campain_id` (`campain_id`),
  KEY `lead_status` (`lead_status`),
  KEY `agent` (`agent`),
  KEY `uniqueid` (`uniqueid`),
  KEY `phone1` (`phone1`),
  KEY `phone2` (`phone2`),
  KEY `phone3` (`phone3`),
  KEY `startdate` (`startdate`),
  KEY `enddate` (`enddate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dialqueue_old`
--

LOCK TABLES `dialqueue_old` WRITE;
/*!40000 ALTER TABLE `dialqueue_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `dialqueue_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `did`
--

DROP TABLE IF EXISTS `did`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `did` (
  `dnum` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(30) NOT NULL,
  `route` varchar(50) NOT NULL,
  `routedata` text NOT NULL,
  `toext` varchar(60) NOT NULL,
  PRIMARY KEY (`dnum`),
  UNIQUE KEY `did` (`did`),
  KEY `did_2` (`did`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `did`
--

LOCK TABLES `did` WRITE;
/*!40000 ALTER TABLE `did` DISABLE KEYS */;
/*!40000 ALTER TABLE `did` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disposal`
--

DROP TABLE IF EXISTS `disposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disposal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disposal`
--

LOCK TABLES `disposal` WRITE;
/*!40000 ALTER TABLE `disposal` DISABLE KEYS */;
/*!40000 ALTER TABLE `disposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disposition`
--

DROP TABLE IF EXISTS `disposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disposition` (
  `disp_id` int(11) NOT NULL AUTO_INCREMENT,
  `campain_id` int(11) NOT NULL,
  `call_status` varchar(20) NOT NULL,
  `dispo` varchar(50) NOT NULL,
  `dispo_name` varchar(75) NOT NULL,
  `remark` varchar(3) NOT NULL,
  PRIMARY KEY (`disp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disposition`
--

LOCK TABLES `disposition` WRITE;
/*!40000 ALTER TABLE `disposition` DISABLE KEYS */;
INSERT INTO `disposition` VALUES
(1,0,'connected','ANS','Answered',''),
(2,0,'notconnected','BSY','Busy',''),
(3,0,'connected','CB','Call Back','YES'),
(4,0,'notconnected','NOANS','NO Answered','YES'),
(5,0,'connected','Appoinment','Appoinment',''),
(11,0,'notconnected','NR','Not Reachable',''),
(12,0,'notconnected','SWOF','Switch Off','');
/*!40000 ALTER TABLE `disposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dr_leave`
--

DROP TABLE IF EXISTS `dr_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dr_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_range` varchar(40) NOT NULL,
  `doctor` text NOT NULL,
  `startdate` text NOT NULL,
  `enddate` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dr_leave`
--

LOCK TABLES `dr_leave` WRITE;
/*!40000 ALTER TABLE `dr_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `dr_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extension_limit`
--

DROP TABLE IF EXISTS `extension_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extension_limit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extlimit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extension_limit`
--

LOCK TABLES `extension_limit` WRITE;
/*!40000 ALTER TABLE `extension_limit` DISABLE KEYS */;
INSERT INTO `extension_limit` VALUES
(1,3000);
/*!40000 ALTER TABLE `extension_limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extension_report`
--

DROP TABLE IF EXISTS `extension_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extension_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ext` int(11) NOT NULL,
  `in_answered` int(11) NOT NULL,
  `out_answered` int(11) NOT NULL,
  `in_int_answered` int(11) NOT NULL,
  `out_int_answered` int(11) NOT NULL,
  `calldate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extension_report`
--

LOCK TABLES `extension_report` WRITE;
/*!40000 ALTER TABLE `extension_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `extension_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extentions`
--

DROP TABLE IF EXISTS `extentions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extentions` (
  `extid` int(11) NOT NULL AUTO_INCREMENT,
  `extention` varchar(10) NOT NULL,
  `display` text NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`extid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extentions`
--

LOCK TABLES `extentions` WRITE;
/*!40000 ALTER TABLE `extentions` DISABLE KEYS */;
/*!40000 ALTER TABLE `extentions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbackdetails`
--

DROP TABLE IF EXISTS `feedbackdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbackdetails` (
  `feedbackid` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(121) NOT NULL,
  `callerid` varchar(15) NOT NULL,
  `rate` int(1) NOT NULL,
  `feedbacktime` datetime NOT NULL,
  PRIMARY KEY (`feedbackid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbackdetails`
--

LOCK TABLES `feedbackdetails` WRITE;
/*!40000 ALTER TABLE `feedbackdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbackdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupchat`
--

DROP TABLE IF EXISTS `groupchat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupchat` (
  `chid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'chatid',
  `group` int(3) NOT NULL COMMENT 'groupid',
  `mfrom` varchar(60) NOT NULL COMMENT 'from user',
  `msg` text NOT NULL COMMENT 'content',
  `type` int(1) NOT NULL DEFAULT 1,
  `date_time` varchar(20) NOT NULL,
  PRIMARY KEY (`chid`),
  KEY `group` (`group`,`mfrom`),
  KEY `type` (`type`),
  KEY `date_time` (`date_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupchat`
--

LOCK TABLES `groupchat` WRITE;
/*!40000 ALTER TABLE `groupchat` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupchat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holdcall`
--

DROP TABLE IF EXISTS `holdcall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holdcall` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(80) NOT NULL,
  `agent` varchar(40) NOT NULL,
  `number` varchar(25) NOT NULL,
  `uniqehash` varchar(150) NOT NULL,
  `calltype` int(1) NOT NULL COMMENT '1 inbound 2 outbound',
  PRIMARY KEY (`hid`),
  UNIQUE KEY `channel` (`channel`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holdcall`
--

LOCK TABLES `holdcall` WRITE;
/*!40000 ALTER TABLE `holdcall` DISABLE KEYS */;
/*!40000 ALTER TABLE `holdcall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hourly_report`
--

DROP TABLE IF EXISTS `hourly_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hourly_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inbound` int(10) NOT NULL,
  `outbound` int(10) NOT NULL,
  `abandoned` int(10) NOT NULL,
  `qabandoned` int(10) NOT NULL,
  `aht` text NOT NULL,
  `awt` text NOT NULL,
  `calldate` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hourly_report`
--

LOCK TABLES `hourly_report` WRITE;
/*!40000 ALTER TABLE `hourly_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `hourly_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_callback`
--

DROP TABLE IF EXISTS `inbound_callback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_callback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `calldate` datetime NOT NULL,
  `call_status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_id` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_callback`
--

LOCK TABLES `inbound_callback` WRITE;
/*!40000 ALTER TABLE `inbound_callback` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_callback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `inbound_cdr_view`
--

DROP TABLE IF EXISTS `inbound_cdr_view`;
/*!50001 DROP VIEW IF EXISTS `inbound_cdr_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `inbound_cdr_view` AS SELECT
 1 AS `logid`,
  1 AS `from`,
  1 AS `to`,
  1 AS `status`,
  1 AS `calldate`,
  1 AS `clid`,
  1 AS `src`,
  1 AS `dst`,
  1 AS `dcontext`,
  1 AS `channel`,
  1 AS `dstchannel`,
  1 AS `lastapp`,
  1 AS `lastdata`,
  1 AS `duration`,
  1 AS `billsec`,
  1 AS `disposition`,
  1 AS `amaflags`,
  1 AS `accountcode`,
  1 AS `uniqueid`,
  1 AS `userfield`,
  1 AS `did`,
  1 AS `recordingfile`,
  1 AS `cnum`,
  1 AS `cnam`,
  1 AS `outbound_cnum`,
  1 AS `outbound_cnam`,
  1 AS `dst_cnam` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `inbound_cdr_view2`
--

DROP TABLE IF EXISTS `inbound_cdr_view2`;
/*!50001 DROP VIEW IF EXISTS `inbound_cdr_view2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `inbound_cdr_view2` AS SELECT
 1 AS `logid`,
  1 AS `from`,
  1 AS `to`,
  1 AS `status`,
  1 AS `toext`,
  1 AS `calldate`,
  1 AS `clid`,
  1 AS `src`,
  1 AS `dst`,
  1 AS `dcontext`,
  1 AS `channel`,
  1 AS `dstchannel`,
  1 AS `lastapp`,
  1 AS `lastdata`,
  1 AS `duration`,
  1 AS `billsec`,
  1 AS `disposition`,
  1 AS `amaflags`,
  1 AS `accountcode`,
  1 AS `uniqueid`,
  1 AS `userfield`,
  1 AS `did`,
  1 AS `recordingfile`,
  1 AS `cnum`,
  1 AS `cnam`,
  1 AS `outbound_cnum`,
  1 AS `outbound_cnam`,
  1 AS `dst_cnam` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `inbound_cdr_view3`
--

DROP TABLE IF EXISTS `inbound_cdr_view3`;
/*!50001 DROP VIEW IF EXISTS `inbound_cdr_view3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `inbound_cdr_view3` AS SELECT
 1 AS `logid`,
  1 AS `from`,
  1 AS `to`,
  1 AS `status`,
  1 AS `toext`,
  1 AS `xduration`,
  1 AS `xagent`,
  1 AS `xdispo`,
  1 AS `calldate`,
  1 AS `clid`,
  1 AS `src`,
  1 AS `dst`,
  1 AS `dcontext`,
  1 AS `channel`,
  1 AS `dstchannel`,
  1 AS `lastapp`,
  1 AS `lastdata`,
  1 AS `duration`,
  1 AS `billsec`,
  1 AS `disposition`,
  1 AS `amaflags`,
  1 AS `accountcode`,
  1 AS `uniqueid`,
  1 AS `userfield`,
  1 AS `did`,
  1 AS `recordingfile`,
  1 AS `cnum`,
  1 AS `cnam`,
  1 AS `outbound_cnum`,
  1 AS `outbound_cnam`,
  1 AS `dst_cnam` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `inbound_cdr_view4`
--

DROP TABLE IF EXISTS `inbound_cdr_view4`;
/*!50001 DROP VIEW IF EXISTS `inbound_cdr_view4`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `inbound_cdr_view4` AS SELECT
 1 AS `logid`,
  1 AS `from`,
  1 AS `to`,
  1 AS `status`,
  1 AS `toext`,
  1 AS `xduration`,
  1 AS `xagent`,
  1 AS `xdispo`,
  1 AS `calldate`,
  1 AS `clid`,
  1 AS `src`,
  1 AS `dst`,
  1 AS `dcontext`,
  1 AS `channel`,
  1 AS `dstchannel`,
  1 AS `lastapp`,
  1 AS `lastdata`,
  1 AS `duration`,
  1 AS `billsec`,
  1 AS `disposition`,
  1 AS `amaflags`,
  1 AS `accountcode`,
  1 AS `uniqueid`,
  1 AS `userfield`,
  1 AS `did`,
  1 AS `recordingfile`,
  1 AS `cnum`,
  1 AS `cnam`,
  1 AS `outbound_cnum`,
  1 AS `outbound_cnam`,
  1 AS `dst_cnam` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `inbound_cell_view`
--

DROP TABLE IF EXISTS `inbound_cell_view`;
/*!50001 DROP VIEW IF EXISTS `inbound_cell_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `inbound_cell_view` AS SELECT
 1 AS `logid`,
  1 AS `from`,
  1 AS `to`,
  1 AS `status`,
  1 AS `id`,
  1 AS `eventtype`,
  1 AS `eventtime`,
  1 AS `cid_name`,
  1 AS `cid_num`,
  1 AS `cid_ani`,
  1 AS `cid_rdnis`,
  1 AS `cid_dnid`,
  1 AS `exten`,
  1 AS `context`,
  1 AS `channame`,
  1 AS `appname`,
  1 AS `appdata`,
  1 AS `amaflags`,
  1 AS `accountcode`,
  1 AS `uniqueid`,
  1 AS `linkedid`,
  1 AS `peer`,
  1 AS `userdeftype`,
  1 AS `extra` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `inbound_cell_view2`
--

DROP TABLE IF EXISTS `inbound_cell_view2`;
/*!50001 DROP VIEW IF EXISTS `inbound_cell_view2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `inbound_cell_view2` AS SELECT
 1 AS `logid`,
  1 AS `from`,
  1 AS `to`,
  1 AS `status`,
  1 AS `toext`,
  1 AS `srcinb`,
  1 AS `dstinb`,
  1 AS `id`,
  1 AS `eventtype`,
  1 AS `eventtime`,
  1 AS `cid_name`,
  1 AS `cid_num`,
  1 AS `cid_ani`,
  1 AS `cid_rdnis`,
  1 AS `cid_dnid`,
  1 AS `exten`,
  1 AS `context`,
  1 AS `channame`,
  1 AS `appname`,
  1 AS `appdata`,
  1 AS `amaflags`,
  1 AS `accountcode`,
  1 AS `uniqueid`,
  1 AS `linkedid`,
  1 AS `peer`,
  1 AS `userdeftype`,
  1 AS `extra` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `inbound_cell_view3`
--

DROP TABLE IF EXISTS `inbound_cell_view3`;
/*!50001 DROP VIEW IF EXISTS `inbound_cell_view3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `inbound_cell_view3` AS SELECT
 1 AS `groupname`,
  1 AS `formurl`,
  1 AS `campaign`,
  1 AS `logid`,
  1 AS `from`,
  1 AS `to`,
  1 AS `group_id`,
  1 AS `status`,
  1 AS `toext`,
  1 AS `srcinb`,
  1 AS `dstinb`,
  1 AS `id`,
  1 AS `eventtype`,
  1 AS `eventtime`,
  1 AS `cid_name`,
  1 AS `cid_num`,
  1 AS `cid_ani`,
  1 AS `cid_rdnis`,
  1 AS `cid_dnid`,
  1 AS `exten`,
  1 AS `context`,
  1 AS `channame`,
  1 AS `appname`,
  1 AS `appdata`,
  1 AS `amaflags`,
  1 AS `accountcode`,
  1 AS `uniqueid`,
  1 AS `linkedid`,
  1 AS `peer`,
  1 AS `userdeftype`,
  1 AS `extra` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `inbound_onhook_q`
--

DROP TABLE IF EXISTS `inbound_onhook_q`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_onhook_q` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `uqid` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `channel` text NOT NULL,
  UNIQUE KEY `qid` (`qid`),
  KEY `uqid` (`uqid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_onhook_q`
--

LOCK TABLES `inbound_onhook_q` WRITE;
/*!40000 ALTER TABLE `inbound_onhook_q` DISABLE KEYS */;
INSERT INTO `inbound_onhook_q` VALUES
(1,'1736160235.24',0,'Local/666666621@outbound-conf-add-00000008;2'),
(2,'1736163130.14',0,'Local/666666621@outbound-conf-add-00000005;2'),
(3,'1737631532.7',0,'Local/666666623@outbound-conf-add-00000002;2'),
(4,'1737632151.32',0,'Local/666666623@outbound-conf-add-0000000c;2'),
(5,'1738586958.22',0,'Local/666666622@outbound-conf-add-00000007;2'),
(6,'1738587052.27',0,'Local/666666621@outbound-conf-add-00000009;2'),
(7,'1738587554.35',0,'SIP/128-0000000d'),
(8,'1738587755.39',0,'Local/666666622@outbound-conf-add-0000000b;2'),
(9,'1738641706.92',0,'Local/666666621@outbound-conf-add-00000020;2'),
(10,'1738644796.125',0,'SIP/128-00000023'),
(11,'1738648230.134',0,'SIP/128-00000026'),
(12,'1738648354.147',0,'SIP/128-0000002b');
/*!40000 ALTER TABLE `inbound_onhook_q` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inboundlog`
--

DROP TABLE IF EXISTS `inboundlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inboundlog` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(10) NOT NULL,
  `from` varchar(50) NOT NULL,
  `to` varchar(50) NOT NULL,
  `uniqueid` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=LIVE,0=END',
  `toext` varchar(30) NOT NULL,
  `src` varchar(80) NOT NULL,
  `dst` varchar(80) NOT NULL,
  `xduration` int(11) NOT NULL,
  `xagent` varchar(60) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `recordingfile` varchar(255) NOT NULL,
  `xdispo` varchar(60) NOT NULL,
  `transfernum` varchar(60) NOT NULL DEFAULT '0',
  `intercom` int(1) NOT NULL,
  `rate` int(1) NOT NULL,
  `waittime` int(3) NOT NULL COMMENT 'wait time total ',
  `slab` int(1) NOT NULL COMMENT 'breach',
  `callbackdelay` varchar(10) NOT NULL,
  `dcby` int(1) NOT NULL COMMENT 'disconnected by 0 user 1 angent',
  `cid_name` varchar(60) NOT NULL,
  `script` varchar(30) NOT NULL,
  PRIMARY KEY (`logid`),
  KEY `xdispo` (`xdispo`),
  KEY `duration` (`duration`),
  KEY `endtime` (`endtime`),
  KEY `starttime` (`starttime`),
  KEY `xagent` (`xagent`),
  KEY `xduration` (`xduration`),
  KEY `status` (`status`),
  KEY `uniqueid` (`uniqueid`),
  KEY `to` (`to`),
  KEY `from` (`from`),
  KEY `group_id` (`group_id`),
  KEY `toext` (`toext`),
  KEY `callbackdelay` (`callbackdelay`),
  KEY `cid_name` (`cid_name`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inboundlog`
--

LOCK TABLES `inboundlog` WRITE;
/*!40000 ALTER TABLE `inboundlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `inboundlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inboundloghistory`
--

DROP TABLE IF EXISTS `inboundloghistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inboundloghistory` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(10) NOT NULL,
  `from` varchar(50) NOT NULL,
  `to` varchar(50) NOT NULL,
  `uniqueid` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=LIVE,0=END',
  `toext` varchar(30) NOT NULL,
  `src` text NOT NULL,
  `dst` text NOT NULL,
  `xduration` int(11) NOT NULL,
  `xagent` varchar(60) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `recordingfile` varchar(255) NOT NULL,
  `xdispo` varchar(60) NOT NULL,
  `transfernum` varchar(60) NOT NULL DEFAULT '0',
  `intercom` int(1) NOT NULL,
  `abandoned` int(1) NOT NULL DEFAULT 0,
  `abandoned_type` int(1) NOT NULL DEFAULT 0,
  `rate` int(1) NOT NULL,
  `waittime` int(3) NOT NULL,
  `slab` int(1) NOT NULL,
  `callbackdelay` varchar(10) NOT NULL COMMENT 'abandened call backdelay in sec',
  `dcby` int(1) NOT NULL COMMENT 'disconnected by 0 user 1 angent',
  `cid_name` varchar(60) NOT NULL,
  PRIMARY KEY (`logid`),
  KEY `xdispo` (`xdispo`),
  KEY `duration` (`duration`),
  KEY `endtime` (`endtime`),
  KEY `starttime` (`starttime`),
  KEY `xagent` (`xagent`),
  KEY `xduration` (`xduration`),
  KEY `status` (`status`),
  KEY `uniqueid` (`uniqueid`),
  KEY `to` (`to`),
  KEY `from` (`from`),
  KEY `group_id` (`group_id`),
  KEY `toext` (`toext`),
  KEY `abandoned` (`abandoned`),
  KEY `abandoned_type` (`abandoned_type`),
  KEY `waittime` (`waittime`,`slab`),
  KEY `callbackdelay` (`callbackdelay`),
  KEY `bcby` (`dcby`),
  KEY `cid_name` (`cid_name`),
  KEY `recordingfile` (`recordingfile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inboundloghistory`
--

LOCK TABLES `inboundloghistory` WRITE;
/*!40000 ALTER TABLE `inboundloghistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inboundloghistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipmap`
--

DROP TABLE IF EXISTS `ipmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipmap` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `ip` text NOT NULL,
  `extention` text NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipmap`
--

LOCK TABLES `ipmap` WRITE;
/*!40000 ALTER TABLE `ipmap` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ksirs_contacts`
--

DROP TABLE IF EXISTS `ksirs_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ksirs_contacts` (
  `contactid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  PRIMARY KEY (`contactid`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ksirs_contacts`
--

LOCK TABLES `ksirs_contacts` WRITE;
/*!40000 ALTER TABLE `ksirs_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ksirs_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ksirs_data`
--

DROP TABLE IF EXISTS `ksirs_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ksirs_data` (
  `Student_Id` varchar(7) NOT NULL,
  `Name` varchar(17) NOT NULL,
  `Class` varchar(3) NOT NULL,
  `Father_Name` varchar(12) NOT NULL,
  `Mother_Name` varchar(11) NOT NULL,
  `Father_Mob` varchar(30) DEFAULT NULL,
  `Mother_Mob` int(11) NOT NULL,
  `Van_Number` varchar(2) NOT NULL,
  `Lunch` varchar(3) NOT NULL,
  `Co_Curricular` varchar(15) NOT NULL,
  `Address` varchar(37) DEFAULT NULL,
  `FIELD12` varchar(22) DEFAULT NULL,
  `FIELD13` varchar(20) DEFAULT NULL,
  `FIELD14` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`Student_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ksirs_data`
--

LOCK TABLES `ksirs_data` WRITE;
/*!40000 ALTER TABLE `ksirs_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ksirs_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `last_billno`
--

DROP TABLE IF EXISTS `last_billno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `last_billno` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `last_billno` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `last_billno`
--

LOCK TABLES `last_billno` WRITE;
/*!40000 ALTER TABLE `last_billno` DISABLE KEYS */;
/*!40000 ALTER TABLE `last_billno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `listname` text NOT NULL,
  `list_des` text NOT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES
(1,'Test_list','Test_list'),
(2,'Bitvoice_list','Bitvoice_list');
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_data`
--

DROP TABLE IF EXISTS `list_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_data` (
  `lead_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `campain_id` int(11) NOT NULL,
  `call_count` int(1) NOT NULL,
  `call_status` varchar(40) NOT NULL,
  `lead_status` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NEW',
  `callagaintime` datetime NOT NULL,
  `assigned_agent` varchar(150) NOT NULL,
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `data3` text NOT NULL,
  `data4` text NOT NULL,
  `data5` text NOT NULL,
  `data6` text NOT NULL,
  `data7` text NOT NULL,
  `data8` text NOT NULL,
  `data9` text NOT NULL,
  `data10` text NOT NULL,
  `data11` text NOT NULL,
  `data12` text NOT NULL,
  `data13` text NOT NULL,
  `data14` text NOT NULL,
  `data15` text NOT NULL,
  `data16` text NOT NULL,
  `data17` text NOT NULL,
  `data18` text NOT NULL,
  `data19` text NOT NULL,
  `data20` text NOT NULL,
  `data21` text NOT NULL,
  `data22` text NOT NULL,
  `data23` text NOT NULL,
  `data24` text NOT NULL,
  `data25` text NOT NULL,
  `data26` text NOT NULL,
  `data27` text NOT NULL,
  `data28` text NOT NULL,
  `data29` text NOT NULL,
  `data30` text NOT NULL,
  `data31` text NOT NULL,
  `data32` text NOT NULL,
  `data33` text NOT NULL,
  `data34` text NOT NULL,
  `data35` text NOT NULL,
  `data36` text NOT NULL,
  `data37` text NOT NULL,
  `data38` text NOT NULL,
  `data39` text NOT NULL,
  `data40` text NOT NULL,
  `data41` text NOT NULL,
  `data42` text NOT NULL,
  `data43` text NOT NULL,
  `data44` text NOT NULL,
  `data45` text NOT NULL,
  `data46` text NOT NULL,
  `data47` text NOT NULL,
  `data48` text NOT NULL,
  `data49` text NOT NULL,
  `data50` text NOT NULL,
  `data51` text NOT NULL,
  `data52` text NOT NULL,
  `data53` text NOT NULL,
  `data54` text NOT NULL,
  `data55` text NOT NULL,
  `data56` text NOT NULL,
  `data57` text NOT NULL,
  `data58` text NOT NULL,
  `data59` text NOT NULL,
  `data60` text NOT NULL,
  `phone1` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone2` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone3` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  UNIQUE KEY `lead_id` (`lead_id`),
  KEY `phone3` (`phone3`),
  KEY `lead_status` (`lead_status`),
  KEY `campain_id` (`campain_id`),
  KEY `phone2` (`phone2`),
  KEY `phone1` (`phone1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_data`
--

LOCK TABLES `list_data` WRITE;
/*!40000 ALTER TABLE `list_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listdata`
--

DROP TABLE IF EXISTS `listdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listdata` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `first` text NOT NULL,
  `last` text NOT NULL,
  `company` varchar(60) NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `pin` varchar(30) NOT NULL,
  `department` varchar(60) NOT NULL,
  `service` varchar(60) NOT NULL,
  `contact1` varchar(20) NOT NULL,
  `contact2` varchar(20) NOT NULL,
  `complaint` text NOT NULL,
  `status` int(11) NOT NULL,
  `cdate` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listdata`
--

LOCK TABLES `listdata` WRITE;
/*!40000 ALTER TABLE `listdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `listdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_parameters`
--

DROP TABLE IF EXISTS `mail_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_parameters` (
  `id` int(11) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `portno` varchar(20) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_parameters`
--

LOCK TABLES `mail_parameters` WRITE;
/*!40000 ALTER TABLE `mail_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_recipients`
--

DROP TABLE IF EXISTS `mail_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_recipients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_id` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_recipients`
--

LOCK TABLES `mail_recipients` WRITE;
/*!40000 ALTER TABLE `mail_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_users`
--

DROP TABLE IF EXISTS `mail_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_users` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(75) NOT NULL,
  `mailid` varchar(75) NOT NULL,
  `weekly` varchar(3) NOT NULL,
  `monthly` varchar(3) NOT NULL,
  PRIMARY KEY (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_users`
--

LOCK TABLES `mail_users` WRITE;
/*!40000 ALTER TABLE `mail_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missed_callback_blue`
--

DROP TABLE IF EXISTS `missed_callback_blue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `missed_callback_blue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(30) NOT NULL,
  `number` varchar(20) NOT NULL,
  `calldate` datetime NOT NULL,
  `dispo` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missed_callback_blue`
--

LOCK TABLES `missed_callback_blue` WRITE;
/*!40000 ALTER TABLE `missed_callback_blue` DISABLE KEYS */;
/*!40000 ALTER TABLE `missed_callback_blue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missed_calls`
--

DROP TABLE IF EXISTS `missed_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `missed_calls` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(14) NOT NULL,
  `mtime` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `group` int(11) NOT NULL,
  `tries` int(11) NOT NULL,
  `inbound_tries` int(11) NOT NULL DEFAULT 1,
  `autocallback` int(1) NOT NULL,
  `autocallback_time` datetime NOT NULL,
  `cid_name` varchar(60) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `number` (`number`),
  KEY `mtime` (`mtime`),
  KEY `status` (`status`),
  KEY `group` (`group`),
  KEY `cid_name` (`cid_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missed_calls`
--

LOCK TABLES `missed_calls` WRITE;
/*!40000 ALTER TABLE `missed_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `missed_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missed_calls_history`
--

DROP TABLE IF EXISTS `missed_calls_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `missed_calls_history` (
  `mid` int(11) NOT NULL,
  `number` varchar(14) NOT NULL,
  `mtime` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `group` int(11) NOT NULL,
  `tries` int(11) NOT NULL,
  `inbound_tries` int(11) NOT NULL DEFAULT 1,
  `autocallback` int(1) NOT NULL,
  `autocallback_time` datetime NOT NULL,
  `cid_name` varchar(60) NOT NULL,
  KEY `number` (`number`),
  KEY `mtime` (`mtime`),
  KEY `group` (`group`),
  KEY `cid_name` (`cid_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missed_calls_history`
--

LOCK TABLES `missed_calls_history` WRITE;
/*!40000 ALTER TABLE `missed_calls_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `missed_calls_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_admin`
--

DROP TABLE IF EXISTS `module_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_admin` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(200) NOT NULL,
  `enabled` int(1) NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_admin`
--

LOCK TABLES `module_admin` WRITE;
/*!40000 ALTER TABLE `module_admin` DISABLE KEYS */;
INSERT INTO `module_admin` VALUES
(1,'PBX',1),
(2,'CC Admin',1),
(3,'User Management',1),
(4,'CC Reports',1),
(5,'CAMPAIGN ',0),
(6,'CONFERENCE',0),
(7,'EMERGENCY ALERT',0),
(8,'MEDICAL TRANSCRIPTION',0),
(9,'VOICE MAILS',0),
(10,'ADDRESS BOOK',1),
(11,'PBX Reports',1),
(12,'CALL BLAST',0),
(13,'SYSTEM',1),
(14,'MAIL',0),
(15,'CERTIFICATE',0),
(16,'BACKUP',0),
(17,'SETTINGS',0),
(18,'CALL BILLING',0);
/*!40000 ALTER TABLE `module_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_call_summary`
--

DROP TABLE IF EXISTS `monthly_call_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_call_summary` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cdate` int(2) NOT NULL,
  `in_count` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_count` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mis_count` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `un_count` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cdate` (`cdate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_call_summary`
--

LOCK TABLES `monthly_call_summary` WRITE;
/*!40000 ALTER TABLE `monthly_call_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `monthly_call_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_data`
--

DROP TABLE IF EXISTS `mt_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_data` (
  `mtid` int(11) NOT NULL AUTO_INCREMENT,
  `fromext` varchar(15) NOT NULL,
  `doctorid` int(11) NOT NULL,
  `mttime` datetime NOT NULL,
  `voicedata` text NOT NULL,
  `translator` varchar(50) NOT NULL,
  `text_data` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`mtid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_data`
--

LOCK TABLES `mt_data` WRITE;
/*!40000 ALTER TABLE `mt_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_doctor`
--

DROP TABLE IF EXISTS `mt_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_doctor` (
  `doctorid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `exten` int(11) NOT NULL,
  PRIMARY KEY (`doctorid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_doctor`
--

LOCK TABLES `mt_doctor` WRITE;
/*!40000 ALTER TABLE `mt_doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `op_buttons`
--

DROP TABLE IF EXISTS `op_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `op_buttons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `number` varchar(16) NOT NULL,
  `category` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`),
  KEY `name` (`name`,`number`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `op_buttons`
--

LOCK TABLES `op_buttons` WRITE;
/*!40000 ALTER TABLE `op_buttons` DISABLE KEYS */;
INSERT INTO `op_buttons` VALUES
(4,'Bitvoice Support','04842881760','');
/*!40000 ALTER TABLE `op_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `op_live_view`
--

DROP TABLE IF EXISTS `op_live_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `op_live_view` (
  `opin_id` int(11) DEFAULT NULL,
  `from` varchar(40) DEFAULT NULL,
  `to` varchar(40) DEFAULT NULL,
  `agent` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `eventtype` varchar(30) DEFAULT NULL,
  `eventtime` datetime DEFAULT NULL,
  `cid_name` varchar(80) DEFAULT NULL,
  `cid_num` varchar(80) DEFAULT NULL,
  `cid_ani` varchar(80) DEFAULT NULL,
  `cid_rdnis` varchar(80) DEFAULT NULL,
  `cid_dnid` varchar(80) DEFAULT NULL,
  `exten` varchar(80) DEFAULT NULL,
  `context` varchar(80) DEFAULT NULL,
  `channame` varchar(80) DEFAULT NULL,
  `src` varchar(80) DEFAULT NULL,
  `dst` varchar(80) DEFAULT NULL,
  `channel` varchar(80) DEFAULT NULL,
  `dstchannel` varchar(80) DEFAULT NULL,
  `appname` varchar(80) DEFAULT NULL,
  `appdata` varchar(80) DEFAULT NULL,
  `amaflags` int(11) DEFAULT NULL,
  `accountcode` varchar(20) DEFAULT NULL,
  `uniqueid` varchar(32) DEFAULT NULL,
  `linkedid` varchar(32) DEFAULT NULL,
  `peer` varchar(80) DEFAULT NULL,
  `userdeftype` varchar(255) DEFAULT NULL,
  `eventextra` varchar(255) DEFAULT NULL,
  `userfield` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `op_live_view`
--

LOCK TABLES `op_live_view` WRITE;
/*!40000 ALTER TABLE `op_live_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `op_live_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operator_console_active`
--

DROP TABLE IF EXISTS `operator_console_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operator_console_active` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `callerid` varchar(20) NOT NULL,
  `channel` varchar(200) NOT NULL,
  `uniqueid` varchar(40) NOT NULL,
  `opgroup` int(11) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `callerid` (`callerid`,`opgroup`),
  KEY `channel` (`channel`),
  KEY `uniqueid` (`uniqueid`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operator_console_active`
--

LOCK TABLES `operator_console_active` WRITE;
/*!40000 ALTER TABLE `operator_console_active` DISABLE KEYS */;
/*!40000 ALTER TABLE `operator_console_active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `outbound_cdr_copy_view`
--

DROP TABLE IF EXISTS `outbound_cdr_copy_view`;
/*!50001 DROP VIEW IF EXISTS `outbound_cdr_copy_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `outbound_cdr_copy_view` AS SELECT
 1 AS `oid`,
  1 AS `ogroup`,
  1 AS `from`,
  1 AS `to`,
  1 AS `ostatus`,
  1 AS `fromext`,
  1 AS `xagent`,
  1 AS `calldate`,
  1 AS `clid`,
  1 AS `src`,
  1 AS `dst`,
  1 AS `dcontext`,
  1 AS `channel`,
  1 AS `dstchannel`,
  1 AS `lastapp`,
  1 AS `lastdata`,
  1 AS `duration`,
  1 AS `billsec`,
  1 AS `disposition`,
  1 AS `amaflags`,
  1 AS `accountcode`,
  1 AS `uniqueid`,
  1 AS `userfield`,
  1 AS `did`,
  1 AS `recordingfile`,
  1 AS `cnum`,
  1 AS `cnam`,
  1 AS `outbound_cnum`,
  1 AS `outbound_cnam`,
  1 AS `dst_cnam` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `outbound_cdr_view`
--

DROP TABLE IF EXISTS `outbound_cdr_view`;
/*!50001 DROP VIEW IF EXISTS `outbound_cdr_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `outbound_cdr_view` AS SELECT
 1 AS `oid`,
  1 AS `from`,
  1 AS `to`,
  1 AS `ostatus`,
  1 AS `fromext`,
  1 AS `calldate`,
  1 AS `clid`,
  1 AS `src`,
  1 AS `dst`,
  1 AS `dcontext`,
  1 AS `channel`,
  1 AS `dstchannel`,
  1 AS `lastapp`,
  1 AS `lastdata`,
  1 AS `duration`,
  1 AS `billsec`,
  1 AS `disposition`,
  1 AS `amaflags`,
  1 AS `accountcode`,
  1 AS `uniqueid`,
  1 AS `userfield`,
  1 AS `did`,
  1 AS `recordingfile`,
  1 AS `cnum`,
  1 AS `cnam`,
  1 AS `outbound_cnum`,
  1 AS `outbound_cnam`,
  1 AS `dst_cnam` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `outbound_cdr_view3`
--

DROP TABLE IF EXISTS `outbound_cdr_view3`;
/*!50001 DROP VIEW IF EXISTS `outbound_cdr_view3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `outbound_cdr_view3` AS SELECT
 1 AS `oid`,
  1 AS `ogroup`,
  1 AS `from`,
  1 AS `to`,
  1 AS `ostatus`,
  1 AS `fromext`,
  1 AS `xagent`,
  1 AS `calldate`,
  1 AS `clid`,
  1 AS `src`,
  1 AS `dst`,
  1 AS `dcontext`,
  1 AS `channel`,
  1 AS `dstchannel`,
  1 AS `lastapp`,
  1 AS `lastdata`,
  1 AS `duration`,
  1 AS `billsec`,
  1 AS `disposition`,
  1 AS `amaflags`,
  1 AS `accountcode`,
  1 AS `uniqueid`,
  1 AS `userfield`,
  1 AS `did`,
  1 AS `recordingfile`,
  1 AS `cnum`,
  1 AS `cnam`,
  1 AS `outbound_cnum`,
  1 AS `outbound_cnam`,
  1 AS `dst_cnam` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `outbound_cel_view`
--

DROP TABLE IF EXISTS `outbound_cel_view`;
/*!50001 DROP VIEW IF EXISTS `outbound_cel_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `outbound_cel_view` AS SELECT
 1 AS `oid`,
  1 AS `from`,
  1 AS `to`,
  1 AS `ostatus`,
  1 AS `fromext`,
  1 AS `ogroup`,
  1 AS `campaign`,
  1 AS `t1src`,
  1 AS `t1dst`,
  1 AS `outname`,
  1 AS `id`,
  1 AS `eventtype`,
  1 AS `eventtime`,
  1 AS `cid_name`,
  1 AS `cid_num`,
  1 AS `cid_ani`,
  1 AS `cid_rdnis`,
  1 AS `cid_dnid`,
  1 AS `exten`,
  1 AS `context`,
  1 AS `channame`,
  1 AS `appname`,
  1 AS `appdata`,
  1 AS `amaflags`,
  1 AS `accountcode`,
  1 AS `uniqueid`,
  1 AS `linkedid`,
  1 AS `peer`,
  1 AS `userdeftype`,
  1 AS `extra` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `outbound_data_types`
--

DROP TABLE IF EXISTS `outbound_data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_data_types` (
  `datatypeid` int(11) NOT NULL AUTO_INCREMENT,
  `datakey` varchar(60) NOT NULL,
  `render` varchar(20) NOT NULL,
  `relation` varchar(10) NOT NULL,
  PRIMARY KEY (`datatypeid`),
  UNIQUE KEY `datakey` (`datakey`),
  KEY `datakey_2` (`datakey`),
  KEY `datatypeid` (`datatypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_data_types`
--

LOCK TABLES `outbound_data_types` WRITE;
/*!40000 ALTER TABLE `outbound_data_types` DISABLE KEYS */;
INSERT INTO `outbound_data_types` VALUES
(1,'Department','select',''),
(2,'Gender','select','');
/*!40000 ALTER TABLE `outbound_data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_data_types_values`
--

DROP TABLE IF EXISTS `outbound_data_types_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_data_types_values` (
  `datatypekey` varchar(60) NOT NULL,
  `key` varchar(60) NOT NULL,
  `value` varchar(100) NOT NULL,
  `relationdata` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_data_types_values`
--

LOCK TABLES `outbound_data_types_values` WRITE;
/*!40000 ALTER TABLE `outbound_data_types_values` DISABLE KEYS */;
INSERT INTO `outbound_data_types_values` VALUES
('Department','Admission Query','Admission Query',''),
('Department','Charges Query','Charges Query',''),
('Department','Conference with Doctor','Conference with Doctor',''),
('Department','Doctor availability','Doctor availability',''),
('Department','Doctor Timings Query','Doctor Timings Query',''),
('Gender','Male','Male',''),
('Gender','Female','Female','');
/*!40000 ALTER TABLE `outbound_data_types_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_log`
--

DROP TABLE IF EXISTS `outbound_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_log` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `ogroup` int(11) NOT NULL,
  `campaign` int(11) NOT NULL,
  `from` varchar(100) NOT NULL,
  `to` varchar(100) NOT NULL,
  `uniqueid` varchar(100) NOT NULL,
  `ostatus` int(2) NOT NULL COMMENT '0 or 1',
  `fromext` varchar(20) NOT NULL,
  `src` varchar(100) NOT NULL,
  `dst` varchar(100) NOT NULL,
  `xagent` varchar(40) NOT NULL,
  `starttime` datetime NOT NULL,
  `disposition` varchar(50) NOT NULL,
  `rate` int(1) NOT NULL,
  `outname` varchar(60) NOT NULL,
  `billsec` int(11) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `xagent` (`xagent`),
  KEY `dst` (`dst`),
  KEY `src` (`src`),
  KEY `fromext` (`fromext`),
  KEY `ostatus` (`ostatus`),
  KEY `uniqueid` (`uniqueid`),
  KEY `to` (`to`),
  KEY `from` (`from`),
  KEY `starttime` (`starttime`),
  KEY `disposition` (`disposition`),
  KEY `ogroup` (`ogroup`),
  KEY `campaign` (`campaign`),
  KEY `billsec` (`billsec`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_log`
--

LOCK TABLES `outbound_log` WRITE;
/*!40000 ALTER TABLE `outbound_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outboundloghistory`
--

DROP TABLE IF EXISTS `outboundloghistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outboundloghistory` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `ogroup` int(11) NOT NULL,
  `from` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `to` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `uniqueid` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ostatus` int(2) NOT NULL COMMENT '0 or 1',
  `fromext` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `src` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `dst` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `xagent` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `recordingfile` varchar(255) NOT NULL,
  `calldate` datetime NOT NULL,
  `disposition` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `billsec` int(11) NOT NULL,
  `dcontext` varchar(80) NOT NULL,
  `rate` int(1) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `xagent` (`xagent`),
  KEY `dst` (`dst`),
  KEY `src` (`src`),
  KEY `fromext` (`fromext`),
  KEY `ostatus` (`ostatus`),
  KEY `uniqueid` (`uniqueid`),
  KEY `to` (`to`),
  KEY `from` (`from`),
  KEY `disposition` (`disposition`),
  KEY `ogroup` (`ogroup`),
  KEY `calldate` (`calldate`),
  KEY `duration` (`duration`),
  KEY `dcontext` (`dcontext`),
  KEY `recordingfile` (`recordingfile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outboundloghistory`
--

LOCK TABLES `outboundloghistory` WRITE;
/*!40000 ALTER TABLE `outboundloghistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `outboundloghistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_verification`
--

DROP TABLE IF EXISTS `phone_verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_verification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `camp_id` int(11) NOT NULL,
  `cust_code` varchar(60) NOT NULL,
  `lead_name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `call_status` varchar(60) NOT NULL DEFAULT 'NEW',
  PRIMARY KEY (`id`),
  KEY `phone` (`phone`),
  KEY `call_status` (`call_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_verification`
--

LOCK TABLES `phone_verification` WRITE;
/*!40000 ALTER TABLE `phone_verification` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_verification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `activationdate` varchar(50) NOT NULL,
  `failedcallduration` int(11) NOT NULL,
  `graceperiod` int(11) NOT NULL,
  `connectionfee` int(11) NOT NULL,
  `firstinterval` int(11) NOT NULL,
  `incrementinterval` int(11) NOT NULL,
  `ratepermin` double NOT NULL,
  `billingrates` double NOT NULL,
  `ratestatus` double NOT NULL,
  `tax` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `destination` (`destination`),
  KEY `code` (`code`),
  KEY `ratepermin` (`ratepermin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screenlabels`
--

DROP TABLE IF EXISTS `screenlabels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `screenlabels` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(60) NOT NULL,
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `data3` text NOT NULL,
  `data4` text NOT NULL,
  `data5` text NOT NULL,
  `data6` text NOT NULL,
  `data7` text NOT NULL,
  `data8` text NOT NULL,
  `data9` text NOT NULL,
  `data10` text NOT NULL,
  `data11` text NOT NULL,
  `data12` text NOT NULL,
  `data13` text NOT NULL,
  `data14` text NOT NULL,
  `data15` text NOT NULL,
  `data16` text NOT NULL,
  `data17` text NOT NULL,
  `data18` text NOT NULL,
  `data19` text NOT NULL,
  `data20` text NOT NULL,
  `data21` text NOT NULL,
  `data22` text NOT NULL,
  `data23` text NOT NULL,
  `data24` text NOT NULL,
  `data25` text NOT NULL,
  `data26` text NOT NULL,
  `data27` text NOT NULL,
  `data28` text NOT NULL,
  `data29` text NOT NULL,
  `data30` text NOT NULL,
  `data31` text NOT NULL,
  `data32` text NOT NULL,
  `data33` text NOT NULL,
  `data34` text NOT NULL,
  `data35` text NOT NULL,
  `data36` text NOT NULL,
  `data37` text NOT NULL,
  `data38` text NOT NULL,
  `data39` text NOT NULL,
  `data40` text NOT NULL,
  `data41` text NOT NULL,
  `data42` text NOT NULL,
  `data43` text NOT NULL,
  `data44` text NOT NULL,
  `data45` text NOT NULL,
  `data46` text NOT NULL,
  `data47` text NOT NULL,
  `data48` text NOT NULL,
  `data49` text NOT NULL,
  `data50` text NOT NULL,
  `data51` text NOT NULL,
  `data52` text NOT NULL,
  `data53` text NOT NULL,
  `data54` text NOT NULL,
  `data55` text NOT NULL,
  `data56` text NOT NULL,
  `data57` text NOT NULL,
  `data58` text NOT NULL,
  `data59` text NOT NULL,
  `data60` text NOT NULL,
  `assigned_agent` varchar(100) NOT NULL,
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) NOT NULL,
  `phone3` varchar(15) NOT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenlabels`
--

LOCK TABLES `screenlabels` WRITE;
/*!40000 ALTER TABLE `screenlabels` DISABLE KEYS */;
INSERT INTO `screenlabels` VALUES
(2,'bitvoice','Name','Address','Place','Remarks','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','--HIDE--','','Phone','--HIDE--','--HIDE--');
/*!40000 ALTER TABLE `screenlabels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screenlabels_datatype`
--

DROP TABLE IF EXISTS `screenlabels_datatype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `screenlabels_datatype` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL,
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `data3` text NOT NULL,
  `data4` text NOT NULL,
  `data5` text NOT NULL,
  `data6` text NOT NULL,
  `data7` text NOT NULL,
  `data8` text NOT NULL,
  `data9` text NOT NULL,
  `data10` text NOT NULL,
  `data11` text NOT NULL,
  `data12` text NOT NULL,
  `data13` text NOT NULL,
  `data14` text NOT NULL,
  `data15` text NOT NULL,
  `data16` text NOT NULL,
  `data17` text NOT NULL,
  `data18` text NOT NULL,
  `data19` text NOT NULL,
  `data20` text NOT NULL,
  `data21` text NOT NULL,
  `data22` text NOT NULL,
  `data23` text NOT NULL,
  `data24` text NOT NULL,
  `data25` text NOT NULL,
  `data26` text NOT NULL,
  `data27` text NOT NULL,
  `data28` text NOT NULL,
  `data29` text NOT NULL,
  `data30` text NOT NULL,
  `data31` text NOT NULL,
  `data32` text NOT NULL,
  `data33` text NOT NULL,
  `data34` text NOT NULL,
  `data35` text NOT NULL,
  `data36` text NOT NULL,
  `data37` text NOT NULL,
  `data38` text NOT NULL,
  `data39` text NOT NULL,
  `data40` text NOT NULL,
  `data41` text NOT NULL,
  `data42` text NOT NULL,
  `data43` text NOT NULL,
  `data44` text NOT NULL,
  `data45` text NOT NULL,
  `data46` text NOT NULL,
  `data47` text NOT NULL,
  `data48` text NOT NULL,
  `data49` text NOT NULL,
  `data50` text NOT NULL,
  `data51` text NOT NULL,
  `data52` text NOT NULL,
  `data53` text NOT NULL,
  `data54` text NOT NULL,
  `data55` text NOT NULL,
  `data56` text NOT NULL,
  `data57` text NOT NULL,
  `data58` text NOT NULL,
  `data59` text NOT NULL,
  `data60` text NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenlabels_datatype`
--

LOCK TABLES `screenlabels_datatype` WRITE;
/*!40000 ALTER TABLE `screenlabels_datatype` DISABLE KEYS */;
INSERT INTO `screenlabels_datatype` VALUES
(2,2,'{\"datatype\":\"TEXT\",\"datarelation\":\"\",\"req\":null,\"read\":null}','{\"datatype\":\"TEXT\",\"datarelation\":\"\",\"req\":null,\"read\":null}','{\"datatype\":\"TEXT\",\"datarelation\":\"\",\"req\":null,\"read\":null}','{\"datatype\":\"TEXT\",\"datarelation\":\"\",\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}','{\"datatype\":null,\"datarelation\":null,\"req\":null,\"read\":null}');
/*!40000 ALTER TABLE `screenlabels_datatype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service` text NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_actions`
--

DROP TABLE IF EXISTS `service_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_actions` (
  `action` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  UNIQUE KEY `action` (`action`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_actions`
--

LOCK TABLES `service_actions` WRITE;
/*!40000 ALTER TABLE `service_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms` (
  `send_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `number` varchar(15) NOT NULL,
  `sendtime` int(50) NOT NULL,
  `msg` text NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`send_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_alert`
--

DROP TABLE IF EXISTS `sms_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_alert` (
  `sms_alert_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `starttime` int(50) NOT NULL,
  PRIMARY KEY (`sms_alert_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_alert`
--

LOCK TABLES `sms_alert` WRITE;
/*!40000 ALTER TABLE `sms_alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_exclude`
--

DROP TABLE IF EXISTS `sms_exclude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_exclude` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_exclude`
--

LOCK TABLES `sms_exclude` WRITE;
/*!40000 ALTER TABLE `sms_exclude` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_exclude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_spool`
--

DROP TABLE IF EXISTS `sms_spool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_spool` (
  `spool` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(14) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`spool`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_spool`
--

LOCK TABLES `sms_spool` WRITE;
/*!40000 ALTER TABLE `sms_spool` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_spool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sobha_list`
--

DROP TABLE IF EXISTS `sobha_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sobha_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stat` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_2` (`number`),
  KEY `number` (`number`),
  KEY `stat` (`stat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sobha_list`
--

LOCK TABLES `sobha_list` WRITE;
/*!40000 ALTER TABLE `sobha_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `sobha_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speeddial`
--

DROP TABLE IF EXISTS `speeddial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speeddial` (
  `uniqueid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(60) NOT NULL,
  `phonenumber` varchar(60) NOT NULL,
  PRIMARY KEY (`uniqueid`),
  KEY `code` (`code`),
  KEY `phonenumber` (`phonenumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speeddial`
--

LOCK TABLES `speeddial` WRITE;
/*!40000 ALTER TABLE `speeddial` DISABLE KEYS */;
/*!40000 ALTER TABLE `speeddial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_remark`
--

DROP TABLE IF EXISTS `status_remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_remark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `agent` varchar(30) NOT NULL,
  `reason` text NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_remark`
--

LOCK TABLES `status_remark` WRITE;
/*!40000 ALTER TABLE `status_remark` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_commads`
--

DROP TABLE IF EXISTS `system_commads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_commads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `command` text NOT NULL,
  `arguments` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_commads`
--

LOCK TABLES `system_commads` WRITE;
/*!40000 ALTER TABLE `system_commads` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_commads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_no`
--

DROP TABLE IF EXISTS `ticket_no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tnumber` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_no`
--

LOCK TABLES `ticket_no` WRITE;
/*!40000 ALTER TABLE `ticket_no` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_no` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade`
--

DROP TABLE IF EXISTS `trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade` (
  `trade_id` int(11) NOT NULL AUTO_INCREMENT,
  `trade_name` varchar(225) NOT NULL,
  `trade_type` int(2) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`trade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade`
--

LOCK TABLES `trade` WRITE;
/*!40000 ALTER TABLE `trade` DISABLE KEYS */;
/*!40000 ALTER TABLE `trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_fao`
--

DROP TABLE IF EXISTS `trade_fao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_fao` (
  `trade_fao_id` int(11) NOT NULL AUTO_INCREMENT,
  `trade_id` int(11) NOT NULL,
  `client_code` varchar(225) NOT NULL,
  `trade_date` date NOT NULL,
  `contract_name` varchar(225) NOT NULL,
  `buy_lot` varchar(50) NOT NULL,
  `buy_avg` varchar(50) NOT NULL,
  `sell_lot` varchar(50) NOT NULL,
  `sell_avg` varchar(50) NOT NULL,
  PRIMARY KEY (`trade_fao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_fao`
--

LOCK TABLES `trade_fao` WRITE;
/*!40000 ALTER TABLE `trade_fao` DISABLE KEYS */;
/*!40000 ALTER TABLE `trade_fao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_share`
--

DROP TABLE IF EXISTS `trade_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_share` (
  `trade_share_id` int(11) NOT NULL AUTO_INCREMENT,
  `trade_id` int(11) NOT NULL,
  `client_code` varchar(225) NOT NULL,
  `trade_date` date NOT NULL,
  `share` varchar(225) NOT NULL,
  `buy_qty` varchar(50) NOT NULL,
  `buy_avg` varchar(50) NOT NULL,
  `sell_qty` varchar(50) NOT NULL,
  `sell_avg` varchar(50) NOT NULL,
  PRIMARY KEY (`trade_share_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_share`
--

LOCK TABLES `trade_share` WRITE;
/*!40000 ALTER TABLE `trade_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `trade_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES
(1,'Admin','a:215:{i:0;s:2:\"49\";i:1;s:2:\"50\";i:2;s:2:\"51\";i:3;s:2:\"52\";i:4;s:2:\"67\";i:5;s:2:\"68\";i:6;s:2:\"69\";i:7;s:2:\"98\";i:8;s:2:\"99\";i:9;s:3:\"100\";i:10;s:3:\"101\";i:11;s:3:\"102\";i:12;s:3:\"103\";i:13;s:3:\"104\";i:14;s:3:\"105\";i:15;s:3:\"106\";i:16;s:3:\"107\";i:17;s:3:\"108\";i:18;s:3:\"109\";i:19;s:3:\"110\";i:20;s:3:\"111\";i:21;s:3:\"112\";i:22;s:3:\"113\";i:23;s:3:\"114\";i:24;s:3:\"115\";i:25;s:3:\"116\";i:26;s:3:\"118\";i:27;s:3:\"119\";i:28;s:3:\"120\";i:29;s:3:\"121\";i:30;s:3:\"122\";i:31;s:3:\"123\";i:32;s:3:\"124\";i:33;s:3:\"125\";i:34;s:3:\"126\";i:35;s:3:\"127\";i:36;s:3:\"128\";i:37;s:3:\"129\";i:38;s:3:\"130\";i:39;s:3:\"131\";i:40;s:3:\"132\";i:41;s:3:\"133\";i:42;s:3:\"134\";i:43;s:3:\"135\";i:44;s:3:\"136\";i:45;s:3:\"137\";i:46;s:3:\"138\";i:47;s:3:\"139\";i:48;s:3:\"140\";i:49;s:3:\"141\";i:50;s:3:\"142\";i:51;s:3:\"143\";i:52;s:3:\"144\";i:53;s:3:\"164\";i:54;s:3:\"165\";i:55;s:3:\"166\";i:56;s:3:\"167\";i:57;s:3:\"169\";i:58;s:3:\"170\";i:59;s:3:\"171\";i:60;s:3:\"172\";i:61;s:3:\"178\";i:62;s:3:\"186\";i:63;s:3:\"187\";i:64;s:3:\"188\";i:65;s:3:\"189\";i:66;s:3:\"194\";i:67;s:3:\"195\";i:68;s:3:\"196\";i:69;s:3:\"197\";i:70;s:3:\"209\";i:71;s:3:\"210\";i:72;s:3:\"215\";i:73;s:3:\"216\";i:74;s:3:\"217\";i:75;s:3:\"218\";i:76;s:1:\"1\";i:77;s:1:\"2\";i:78;s:1:\"3\";i:79;s:1:\"4\";i:80;s:1:\"5\";i:81;s:1:\"6\";i:82;s:1:\"7\";i:83;s:1:\"8\";i:84;s:1:\"9\";i:85;s:2:\"10\";i:86;s:2:\"11\";i:87;s:2:\"12\";i:88;s:2:\"13\";i:89;s:3:\"148\";i:90;s:3:\"149\";i:91;s:3:\"150\";i:92;s:3:\"151\";i:93;s:3:\"152\";i:94;s:3:\"153\";i:95;s:3:\"157\";i:96;s:3:\"158\";i:97;s:3:\"180\";i:98;s:3:\"181\";i:99;s:3:\"191\";i:100;s:3:\"208\";i:101;s:3:\"249\";i:102;s:2:\"24\";i:103;s:2:\"25\";i:104;s:2:\"26\";i:105;s:2:\"27\";i:106;s:2:\"28\";i:107;s:2:\"29\";i:108;s:2:\"30\";i:109;s:2:\"31\";i:110;s:2:\"32\";i:111;s:2:\"33\";i:112;s:2:\"34\";i:113;s:2:\"35\";i:114;s:2:\"14\";i:115;s:2:\"15\";i:116;s:2:\"16\";i:117;s:2:\"17\";i:118;s:2:\"36\";i:119;s:2:\"37\";i:120;s:2:\"39\";i:121;s:2:\"64\";i:122;s:2:\"65\";i:123;s:2:\"66\";i:124;s:3:\"145\";i:125;s:3:\"146\";i:126;s:3:\"161\";i:127;s:3:\"162\";i:128;s:3:\"163\";i:129;s:3:\"179\";i:130;s:3:\"192\";i:131;s:3:\"193\";i:132;s:3:\"199\";i:133;s:3:\"200\";i:134;s:3:\"201\";i:135;s:3:\"202\";i:136;s:3:\"203\";i:137;s:3:\"204\";i:138;s:3:\"205\";i:139;s:3:\"206\";i:140;s:2:\"70\";i:141;s:2:\"71\";i:142;s:2:\"72\";i:143;s:2:\"73\";i:144;s:2:\"74\";i:145;s:2:\"75\";i:146;s:2:\"76\";i:147;s:2:\"77\";i:148;s:2:\"78\";i:149;s:2:\"79\";i:150;s:2:\"80\";i:151;s:2:\"81\";i:152;s:2:\"82\";i:153;s:2:\"83\";i:154;s:3:\"207\";i:155;s:2:\"40\";i:156;s:2:\"41\";i:157;s:2:\"42\";i:158;s:2:\"43\";i:159;s:2:\"44\";i:160;s:2:\"45\";i:161;s:2:\"46\";i:162;s:2:\"47\";i:163;s:2:\"48\";i:164;s:2:\"53\";i:165;s:2:\"84\";i:166;s:2:\"85\";i:167;s:2:\"86\";i:168;s:2:\"87\";i:169;s:2:\"88\";i:170;s:2:\"89\";i:171;s:2:\"90\";i:172;s:2:\"91\";i:173;s:2:\"92\";i:174;s:2:\"93\";i:175;s:2:\"94\";i:176;s:2:\"95\";i:177;s:2:\"96\";i:178;s:2:\"54\";i:179;s:2:\"55\";i:180;s:2:\"56\";i:181;s:2:\"57\";i:182;s:2:\"58\";i:183;s:2:\"59\";i:184;s:2:\"60\";i:185;s:2:\"61\";i:186;s:2:\"62\";i:187;s:2:\"63\";i:188;s:2:\"20\";i:189;s:2:\"21\";i:190;s:2:\"22\";i:191;s:2:\"23\";i:192;s:2:\"38\";i:193;s:2:\"97\";i:194;s:3:\"147\";i:195;s:3:\"154\";i:196;s:3:\"155\";i:197;s:3:\"156\";i:198;s:3:\"184\";i:199;s:3:\"185\";i:200;s:3:\"198\";i:201;s:3:\"173\";i:202;s:3:\"174\";i:203;s:3:\"175\";i:204;s:3:\"176\";i:205;s:3:\"177\";i:206;s:3:\"159\";i:207;s:3:\"168\";i:208;s:3:\"190\";i:209;s:3:\"227\";i:210;s:3:\"228\";i:211;s:3:\"229\";i:212;s:3:\"233\";i:213;s:3:\"235\";i:214;s:3:\"236\";}'),
(2,'leader','a:32:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:2:\"14\";i:3;s:2:\"15\";i:4;s:2:\"16\";i:5;s:2:\"17\";i:6;s:2:\"36\";i:7;s:2:\"37\";i:8;s:2:\"39\";i:9;s:2:\"64\";i:10;s:2:\"65\";i:11;s:2:\"66\";i:12;s:3:\"145\";i:13;s:3:\"146\";i:14;s:3:\"161\";i:15;s:3:\"162\";i:16;s:3:\"163\";i:17;s:3:\"179\";i:18;s:3:\"192\";i:19;s:3:\"193\";i:20;s:3:\"199\";i:21;s:3:\"200\";i:22;s:3:\"201\";i:23;s:3:\"202\";i:24;s:3:\"203\";i:25;s:3:\"204\";i:26;s:3:\"205\";i:27;s:3:\"206\";i:28;s:2:\"78\";i:29;s:2:\"79\";i:30;s:2:\"80\";i:31;s:3:\"207\";}'),
(3,'CDR','a:7:{i:0;s:2:\"14\";i:1;s:2:\"15\";i:2;s:2:\"16\";i:3;s:2:\"17\";i:4;s:2:\"37\";i:5;s:2:\"66\";i:6;s:3:\"145\";}'),
(17,'testpermission','s:0:\"\";'),
(18,'testpermission','s:0:\"\";'),
(19,'t','s:0:\"\";'),
(20,'api permission','s:0:\"\";'),
(21,'ccadmin','a:46:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:2:\"10\";i:6;s:2:\"11\";i:7;s:2:\"12\";i:8;s:2:\"13\";i:9;s:3:\"157\";i:10;s:3:\"158\";i:11;s:3:\"191\";i:12;s:3:\"208\";i:13;s:2:\"14\";i:14;s:2:\"15\";i:15;s:2:\"16\";i:16;s:2:\"17\";i:17;s:2:\"36\";i:18;s:2:\"37\";i:19;s:2:\"39\";i:20;s:2:\"64\";i:21;s:2:\"65\";i:22;s:2:\"66\";i:23;s:3:\"145\";i:24;s:3:\"146\";i:25;s:3:\"161\";i:26;s:3:\"162\";i:27;s:3:\"163\";i:28;s:3:\"179\";i:29;s:3:\"199\";i:30;s:3:\"200\";i:31;s:3:\"201\";i:32;s:3:\"202\";i:33;s:3:\"203\";i:34;s:3:\"204\";i:35;s:3:\"205\";i:36;s:3:\"206\";i:37;s:2:\"38\";i:38;s:2:\"97\";i:39;s:3:\"147\";i:40;s:3:\"154\";i:41;s:3:\"155\";i:42;s:3:\"156\";i:43;s:3:\"184\";i:44;s:3:\"185\";i:45;s:3:\"198\";}'),
(22,'for manu','a:2:{i:0;s:2:\"58\";i:1;s:2:\"59\";}'),
(24,'Sajeesh','a:4:{i:0;s:2:\"49\";i:1;s:1:\"1\";i:2;s:2:\"24\";i:3;s:2:\"14\";}');
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_permissions` (
  `permission` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `module_id` int(11) NOT NULL,
  `modulename` text NOT NULL,
  UNIQUE KEY `permission` (`permission`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permissions`
--

LOCK TABLES `user_permissions` WRITE;
/*!40000 ALTER TABLE `user_permissions` DISABLE KEYS */;
INSERT INTO `user_permissions` VALUES
(1,'View Dashboard',2,'CC Admin'),
(2,'View Agent',2,'CC Admin'),
(3,'Add Agent',2,'CC Admin'),
(4,'Edit Agent',2,'CC Admin'),
(5,'Delete Agent',2,'CC Admin'),
(6,'View Inbound DID',2,'CC Admin'),
(7,'Add Inbound DID',2,'CC Admin'),
(8,'Edit Inbound DID',2,'CC Admin'),
(9,'Delete Inbound DID',2,'CC Admin'),
(10,'View Inbound Group',2,'CC Admin'),
(11,'Add Inbound Group',2,'CC Admin'),
(12,'Edit Inbound Group',2,'CC Admin'),
(13,'Delete Inbound Group',2,'CC Admin'),
(14,'View Inbound Report',4,'CC Reports'),
(15,'Download Inbound Report',4,'CC Reports'),
(16,'View Outbound Report',4,'CC Reports'),
(17,'Download Outbound Report',4,'CC Reports'),
(18,'View Support Ticket',2,'CC Admin'),
(19,'Download Support Ticket',2,'CC Admin'),
(20,'View Address Book',10,'ADDRESS BOOK'),
(21,'Add New Contact',10,'ADDRESS BOOK'),
(22,'Edit New Contact',10,'ADDRESS BOOK'),
(23,'Delete New Contact',10,'ADDRESS BOOK'),
(24,'View Admin',3,'User Management'),
(25,'Add Admin',3,'User Management'),
(26,'Edit Admin',3,'User Management'),
(27,'Delete Admin',3,'User Management'),
(28,'View Permission Name',3,'User Management'),
(29,'Add Permission Name',3,'User Management'),
(30,'Edit Permission Name',3,'User Management'),
(31,'Delete Permission Name',3,'User Management'),
(32,'View Permission Group',3,'User Management'),
(33,'Add Permission Group',3,'User Management'),
(34,'Edit Permission Group',3,'User Management'),
(35,'Delete Permission Group',3,'User Management'),
(36,'View MissedCall Report',4,'CC Reports'),
(37,'Download MissedCall Report',4,'CC Reports'),
(38,'View Call Report',11,'PBX Reports'),
(39,'Download Call Report',4,'CC Reports'),
(40,'View Conference',6,'CONFERENCE'),
(41,'Add New Conference',6,'CONFERENCE'),
(42,'Edit Conference',6,'CONFERENCE'),
(43,'Delete Conference',6,'CONFERENCE'),
(44,'Monitor Conference',6,'CONFERENCE'),
(45,'View Contact',6,'CONFERENCE '),
(46,'Add New Contact',6,'CONFERENCE '),
(47,'Edit Contact',6,'CONFERENCE '),
(48,'Delete Contact',6,'CONFERENCE '),
(49,'View Channel Type',1,'PBX'),
(50,'Add Channel Type',1,'PBX'),
(51,'Edit Channel Type',1,'PBX'),
(52,'Delete Channel Type',1,'PBX'),
(53,'Manage Emergency Alert',7,'EMERGENCY ALERT'),
(54,'View Doctor',8,'MEDICAL TRANSCRIPTION'),
(55,'Add Doctor',8,'MEDICAL TRANSCRIPTION'),
(56,'Edit Doctor',8,'MEDICAL TRANSCRIPTION'),
(57,'Delete Doctor',8,'MEDICAL TRANSCRIPTION'),
(58,'View MT Data',8,'MEDICAL TRANSCRIPTION'),
(59,'Edit Data',8,'MEDICAL TRANSCRIPTION'),
(60,'Delete Data',8,'MEDICAL TRANSCRIPTION'),
(61,'View Voice Mails',9,'VOICE MAILS'),
(62,'Delete Voice Mail',9,'VOICE MAILS'),
(63,'Customer',9,'VOICE MAILS'),
(64,'View Undialed Missed Calls',4,'CC Reports'),
(65,'Download Undialed Missed Calls',4,'CC Reports'),
(66,'View Agent Performance Report',4,'CC Reports'),
(67,'View Extension',1,'PBX'),
(68,'Add Extension',1,'PBX'),
(69,'Delete Extension',1,'PBX'),
(70,'View Screenlabels',5,'CAMPAIGN '),
(71,'Add Screenlabels',5,'CAMPAIGN '),
(72,'Edit Screenlabels',5,'CAMPAIGN '),
(73,'Delete Screenlabels',5,'CAMPAIGN '),
(74,'View Disposition ',5,'CAMPAIGN '),
(75,'Add Disposition ',5,'CAMPAIGN '),
(76,'Edit Disposition ',5,'CAMPAIGN '),
(77,'Delete Disposition ',5,'CAMPAIGN '),
(78,'View Campaign ',5,'CAMPAIGN '),
(79,'Add Campaign',5,'CAMPAIGN '),
(80,'Edit Campaign ',5,'CAMPAIGN '),
(81,'Delete Campaign',5,'CAMPAIGN '),
(82,'View Campaign Report ',5,'CAMPAIGN '),
(83,'Download Campaign Report ',5,'CAMPAIGN '),
(84,'View Contacts ',7,'EMERGENCY ALERT'),
(85,'Add Contacts ',7,'EMERGENCY ALERT'),
(86,'Edit Contacts ',7,'EMERGENCY ALERT'),
(87,'Delete Contacts ',7,'EMERGENCY ALERT'),
(88,'View Groups',7,'EMERGENCY ALERT'),
(89,'Add Groups',7,'EMERGENCY ALERT'),
(90,'Edit Groups',7,'EMERGENCY ALERT'),
(91,'Delete Groups',7,'EMERGENCY ALERT'),
(92,'View SMS ',7,'EMERGENCY ALERT'),
(93,'Send New Message',7,'EMERGENCY ALERT'),
(94,'View SMS Report',7,'EMERGENCY ALERT'),
(95,'View Voice Alert',7,'EMERGENCY ALERT'),
(96,'View Voice Alert Report',7,'EMERGENCY ALERT'),
(97,'View Call volume statistics',11,'PBX Reports'),
(98,'Edit Extension',1,'PBX'),
(99,'View Time Group',1,'PBX'),
(100,'Add Time Group',1,'PBX'),
(101,'Edit Time Group',1,'PBX'),
(102,'Delete Time Group',1,'PBX'),
(103,'View Time Conditions',1,'PBX'),
(104,'Add Time Conditions',1,'PBX'),
(105,'Edit Time Conditions',1,'PBX'),
(106,'Delete Time Conditions',1,'PBX'),
(107,'View System Recordings',1,'PBX'),
(108,'Add System Recordings',1,'PBX'),
(109,'Edit System Recordings',1,'PBX'),
(110,'Delete System Recordings',1,'PBX'),
(111,'View Custom Destination',1,'PBX'),
(112,'Add  Custom Destination',1,'PBX'),
(113,'Delete  Custom Destination',1,'PBX'),
(114,'View Inbound Route',1,'PBX'),
(115,'Add Inbound Route',1,'PBX'),
(116,'Edit Inbound Route',1,'PBX'),
(118,'Delete Inbound Route',1,'PBX'),
(119,'View Outbound Route',1,'PBX'),
(120,'Add Outbound Route',1,'PBX'),
(121,'Edit Outbound Route',1,'PBX'),
(122,'Delete Outbound Route',1,'PBX'),
(123,'View IVR Details',1,'PBX'),
(124,'Add  IVR Details',1,'PBX'),
(125,'Edit  IVR Details',1,'PBX'),
(126,'Delete  IVR Details',1,'PBX'),
(127,'View Ring Group',1,'PBX'),
(128,'Add Ring Group',1,'PBX'),
(129,'Edit Ring Group',1,'PBX'),
(130,'Delete Ring Group',1,'PBX'),
(131,'View Follow Me',1,'PBX'),
(132,'Add Follow Me',1,'PBX'),
(133,'Edit Follow Me',1,'PBX'),
(134,'Delete Follow Me',1,'PBX'),
(135,'View Trunk',1,'PBX'),
(136,'Add Trunk',1,'PBX'),
(137,'Edit Trunk',1,'PBX'),
(138,'Delete Trunk',1,'PBX'),
(139,'System Reload',1,'PBX'),
(140,'View MOH',1,'PBX'),
(141,'Add MOH Directory',1,'PBX'),
(142,'Upload MOH',1,'PBX'),
(143,'Delete MOH ',1,'PBX'),
(144,'Delete MOH Directory',1,'PBX'),
(145,'Inbound Report Audio',4,'CC Reports'),
(146,'Outbound Report Audio',4,'CC Reports'),
(147,'Call Report Audio',11,'PBX Reports'),
(148,'View Call Action',2,'CC Admin'),
(149,'Add Call Action Group',2,'CC Admin'),
(150,'Delete Call Action Group',2,'CC Admin'),
(151,'Add Call Action',2,'CC Admin'),
(152,'Edit Call Action',2,'CC Admin'),
(153,'Delete Call Action',2,'CC Admin'),
(154,'View Call statstics',11,'PBX Reports'),
(155,'View Incoming Calls Volume statistics',11,'PBX Reports'),
(156,'View Outbound Calls Volume Statistics',11,'PBX Reports'),
(157,'View Attended Outbound Calls',2,'CC Admin'),
(158,'Download Attended Outbound Calls',2,'CC Admin'),
(159,'View System Dashboard',13,'PBX'),
(160,'View Cus',0,''),
(161,'View Agent Performance Graph',4,'CC Reports'),
(162,'View Abandoned Call report',4,'CC Reports'),
(163,'Download Abandoned Call Report',4,'CC Reports'),
(164,'View Black List',1,'PBX'),
(165,'Add Black List',1,'PBX'),
(166,'Edit Black List',1,'PBX'),
(167,'Delete Black List',1,'PBX'),
(168,'View TeleStatus',13,'PBX'),
(169,'View ANNOUNCEMENT',1,'PBX'),
(170,'Add  ANNOUNCEMENT',1,'PBX'),
(171,'Edit  ANNOUNCEMENT',1,'PBX'),
(172,'Delete  ANNOUNCEMENT',1,'PBX'),
(173,'View Call Blast',12,'CALL BLAST'),
(174,'Add Call Blast',12,'CALL BLAST'),
(175,'Upload Call Blast List',12,'CALL BLAST'),
(176,'View Call Blast Details',12,'CALL BLAST'),
(177,'Delete Call Blast',12,'CALL BLAST'),
(178,'View PBX Dashboard',1,'PBX'),
(179,'View DETAILED PERFORMANCE REPORT',4,'CC Reports'),
(180,'View Schedule',2,'CC Admin'),
(181,'Add Schedule',2,'CC Admin'),
(182,'Delete Schedule',2,'CC Admin'),
(183,'View Combined REPORT',0,'CC Reports'),
(184,'View ExtensionPerformance',11,'PBX Reports'),
(185,'View ExtensionPerformance Graph',11,'PBX Reports'),
(186,'View SpeedDial',1,'PBX'),
(187,'Add SpeedDial',1,'PBX'),
(188,'Edit SpeedDial',1,'PBX'),
(189,'Delete SpeedDial',1,'PBX'),
(190,'View Channel Statistics',13,'PBX'),
(191,'Dashboard Live',2,'CC Admin'),
(192,'View Call Summary',4,'CC Reports'),
(193,'View Monthly Call Summary',4,'CC Reports'),
(194,'View Voicemail',1,'PBX'),
(195,'Add Voicemail',1,'PBX'),
(196,'Edit Voicemail',1,'PBX'),
(197,'Delete Voicemail',1,'PBX'),
(198,'View Voicemail List',11,'PBX Reports'),
(199,'View Abandoned Report',4,'CC Reports'),
(200,'Download Abandoned Report',4,'CC Reports'),
(201,'View Agent Abandoned Report',4,'CC Reports'),
(202,'Download Agent Abandoned Report',4,'CC Reports'),
(203,'View Queue Abandoned Report',4,'CC Reports'),
(204,'Download Queue Abandoned Report',4,'CC Reports'),
(205,'View IVR Abandoned Report',4,'CC Reports'),
(206,'Download IVR Abandoned Report',4,'CC Reports'),
(207,'View all Campaign ',5,'CAMPAIGN '),
(208,'View Departments',2,'CC Admin'),
(209,'T1/E1 CONFIG',1,'PBX'),
(210,'View Feature Codes',1,'PBX'),
(211,'View Certificate',15,'CERTIFICATE'),
(212,'Self-Signed Certificate',15,'CERTIFICATE'),
(213,'Upload Certificate',15,'CERTIFICATE'),
(214,'Delete Certificate',15,'CERTIFICATE'),
(215,'View PJSIP Extension',1,'PBX'),
(216,'Add PJSIP Extension',1,'PBX'),
(217,'Edit  PJSIP Extension',1,'PBX'),
(218,'Delete  PJSIP Extension',1,'PBX'),
(219,'View Backup',16,'BACKUP'),
(220,'Add Backup',16,'BACKUP'),
(221,'Edit Backup',16,'BACKUP'),
(222,'Delete Backup',16,'BACKUP'),
(223,'View Server',16,'BACKUP'),
(224,'Add Server',16,'BACKUP'),
(225,'Edit Server',16,'BACKUP'),
(226,'Delete Server',16,'BACKUP'),
(227,'General Sip Settings\r\n',17,'PBX'),
(228,'Chan Sip Settings',17,'PBX'),
(229,'PJSip  Settings',17,'PBX'),
(230,'View Rates',18,'CALL BILLING'),
(231,'Add Rates',18,'CALL BILLING'),
(232,'Edit Rates',18,'CALL BILLING'),
(233,'View ADVANCE SETTINGS',17,'SETTINGS'),
(234,'Delete Rates',18,'CALL BILLING'),
(235,'View Networksettings',17,'SETTINGS'),
(236,'Edit Networksettings',17,'SETTINGS'),
(237,'view report',1,'PBX'),
(238,'View Users',19,'VPN'),
(239,'Add Users',19,'VPN'),
(240,'Delete Users',19,'VPN'),
(241,'View Advanced Custom Context',1,'PBX'),
(242,'View Advanced IVR',20,'Advance IVR'),
(243,'View Customer mapping',2,'CC Admin'),
(244,'Add Customer mapping',2,'CC Admin'),
(245,'Edit Customer mapping',2,'CC Admin'),
(246,'Delete Customer mapping',2,'CC Admin'),
(247,'Upload Customer mapping',2,'CC Admin'),
(248,'View Doctor List',20,'Advance IVR'),
(249,'View OP Button',2,'CC Admin');
/*!40000 ALTER TABLE `user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vertex_clients`
--

DROP TABLE IF EXISTS `vertex_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vertex_clients` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'unique id for records',
  `clientcode` varchar(100) NOT NULL COMMENT 'uniqe code for each client',
  `clientname` varchar(80) NOT NULL,
  `clientphone` varchar(20) NOT NULL COMMENT 'client phone number',
  `clientalternativeno` varchar(15) NOT NULL,
  `mappednos` varchar(225) NOT NULL,
  `dealer1` int(3) NOT NULL,
  `dealer2` int(3) NOT NULL,
  `dealer3` int(3) NOT NULL,
  `pin` int(11) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `clientcode_2` (`clientcode`),
  UNIQUE KEY `pin` (`pin`),
  KEY `clientalternativeno` (`clientalternativeno`),
  KEY `clientphone` (`clientphone`),
  KEY `mappednos` (`mappednos`),
  KEY `clientname` (`clientname`),
  KEY `clientcode` (`clientcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='basic client maping';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vertex_clients`
--

LOCK TABLES `vertex_clients` WRITE;
/*!40000 ALTER TABLE `vertex_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `vertex_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip`
--

DROP TABLE IF EXISTS `vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip`
--

LOCK TABLES `vip` WRITE;
/*!40000 ALTER TABLE `vip` DISABLE KEYS */;
/*!40000 ALTER TABLE `vip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voice_alert_contacts`
--

DROP TABLE IF EXISTS `voice_alert_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voice_alert_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `channel_value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voice_alert_contacts`
--

LOCK TABLES `voice_alert_contacts` WRITE;
/*!40000 ALTER TABLE `voice_alert_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `voice_alert_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voice_alert_groups`
--

DROP TABLE IF EXISTS `voice_alert_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voice_alert_groups` (
  `vgroupid` int(11) NOT NULL AUTO_INCREMENT,
  `vname` varchar(60) NOT NULL,
  `contacts` text NOT NULL,
  PRIMARY KEY (`vgroupid`),
  KEY `vgroupid` (`vgroupid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voice_alert_groups`
--

LOCK TABLES `voice_alert_groups` WRITE;
/*!40000 ALTER TABLE `voice_alert_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `voice_alert_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voice_alert_report`
--

DROP TABLE IF EXISTS `voice_alert_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voice_alert_report` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `event_time` varchar(60) NOT NULL,
  `status` varchar(60) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voice_alert_report`
--

LOCK TABLES `voice_alert_report` WRITE;
/*!40000 ALTER TABLE `voice_alert_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `voice_alert_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warn_numbers`
--

DROP TABLE IF EXISTS `warn_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warn_numbers` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `chan` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warn_numbers`
--

LOCK TABLES `warn_numbers` WRITE;
/*!40000 ALTER TABLE `warn_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `warn_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wonderla_schedule`
--

DROP TABLE IF EXISTS `wonderla_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wonderla_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `month` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `day_type` int(1) NOT NULL COMMENT '1=peak season week day,2:peak season weekend',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wonderla_schedule`
--

LOCK TABLES `wonderla_schedule` WRITE;
/*!40000 ALTER TABLE `wonderla_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `wonderla_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `inbound_cdr_view`
--

/*!50001 DROP VIEW IF EXISTS `inbound_cdr_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inbound_cdr_view` AS select `t1`.`logid` AS `logid`,`t1`.`from` AS `from`,`t1`.`to` AS `to`,`t1`.`status` AS `status`,`t2`.`calldate` AS `calldate`,`t2`.`clid` AS `clid`,`t2`.`src` AS `src`,`t2`.`dst` AS `dst`,`t2`.`dcontext` AS `dcontext`,`t2`.`channel` AS `channel`,`t2`.`dstchannel` AS `dstchannel`,`t2`.`lastapp` AS `lastapp`,`t2`.`lastdata` AS `lastdata`,`t2`.`duration` AS `duration`,`t2`.`billsec` AS `billsec`,`t2`.`disposition` AS `disposition`,`t2`.`amaflags` AS `amaflags`,`t2`.`accountcode` AS `accountcode`,`t2`.`uniqueid` AS `uniqueid`,`t2`.`userfield` AS `userfield`,`t2`.`did` AS `did`,`t2`.`recordingfile` AS `recordingfile`,`t2`.`cnum` AS `cnum`,`t2`.`cnam` AS `cnam`,`t2`.`outbound_cnum` AS `outbound_cnum`,`t2`.`outbound_cnam` AS `outbound_cnam`,`t2`.`dst_cnam` AS `dst_cnam` from (`autocall`.`inboundlog` `t1` join `asteriskcdrdb`.`cdr` `t2` on(`t2`.`uniqueid` = `t1`.`uniqueid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inbound_cdr_view2`
--

/*!50001 DROP VIEW IF EXISTS `inbound_cdr_view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inbound_cdr_view2` AS select `t1`.`logid` AS `logid`,`t1`.`from` AS `from`,`t1`.`to` AS `to`,`t1`.`status` AS `status`,`t1`.`toext` AS `toext`,`t2`.`calldate` AS `calldate`,`t2`.`clid` AS `clid`,`t2`.`src` AS `src`,`t2`.`dst` AS `dst`,`t2`.`dcontext` AS `dcontext`,`t2`.`channel` AS `channel`,`t2`.`dstchannel` AS `dstchannel`,`t2`.`lastapp` AS `lastapp`,`t2`.`lastdata` AS `lastdata`,`t2`.`duration` AS `duration`,`t2`.`billsec` AS `billsec`,`t2`.`disposition` AS `disposition`,`t2`.`amaflags` AS `amaflags`,`t2`.`accountcode` AS `accountcode`,`t2`.`uniqueid` AS `uniqueid`,`t2`.`userfield` AS `userfield`,`t2`.`did` AS `did`,`t2`.`recordingfile` AS `recordingfile`,`t2`.`cnum` AS `cnum`,`t2`.`cnam` AS `cnam`,`t2`.`outbound_cnum` AS `outbound_cnum`,`t2`.`outbound_cnam` AS `outbound_cnam`,`t2`.`dst_cnam` AS `dst_cnam` from (`autocall`.`inboundlog` `t1` join `asteriskcdrdb`.`cdr` `t2` on(`t2`.`uniqueid` = `t1`.`uniqueid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inbound_cdr_view3`
--

/*!50001 DROP VIEW IF EXISTS `inbound_cdr_view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inbound_cdr_view3` AS select `t1`.`logid` AS `logid`,`t1`.`from` AS `from`,`t1`.`to` AS `to`,`t1`.`status` AS `status`,`t1`.`toext` AS `toext`,`t1`.`xduration` AS `xduration`,`t1`.`xagent` AS `xagent`,`t2`.`xdispo` AS `xdispo`,`t2`.`calldate` AS `calldate`,`t2`.`clid` AS `clid`,`t2`.`src` AS `src`,`t2`.`dst` AS `dst`,`t2`.`dcontext` AS `dcontext`,`t2`.`channel` AS `channel`,`t2`.`dstchannel` AS `dstchannel`,`t2`.`lastapp` AS `lastapp`,`t2`.`lastdata` AS `lastdata`,`t2`.`duration` AS `duration`,`t2`.`billsec` AS `billsec`,`t2`.`disposition` AS `disposition`,`t2`.`amaflags` AS `amaflags`,`t2`.`accountcode` AS `accountcode`,`t2`.`uniqueid` AS `uniqueid`,`t2`.`userfield` AS `userfield`,`t2`.`did` AS `did`,`t2`.`recordingfile` AS `recordingfile`,`t2`.`cnum` AS `cnum`,`t2`.`cnam` AS `cnam`,`t2`.`outbound_cnum` AS `outbound_cnum`,`t2`.`outbound_cnam` AS `outbound_cnam`,`t2`.`dst_cnam` AS `dst_cnam` from (`autocall`.`inboundlog` `t1` join `asteriskcdrdb`.`cdr` `t2` on(`t2`.`uniqueid` = `t1`.`uniqueid`)) order by `t1`.`logid` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inbound_cdr_view4`
--

/*!50001 DROP VIEW IF EXISTS `inbound_cdr_view4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inbound_cdr_view4` AS select `t1`.`logid` AS `logid`,`t1`.`from` AS `from`,`t1`.`to` AS `to`,`t1`.`status` AS `status`,`t1`.`toext` AS `toext`,`t1`.`xduration` AS `xduration`,`t1`.`xagent` AS `xagent`,`t2`.`xdispo` AS `xdispo`,`t2`.`calldate` AS `calldate`,`t2`.`clid` AS `clid`,`t2`.`src` AS `src`,`t2`.`dst` AS `dst`,`t2`.`dcontext` AS `dcontext`,`t2`.`channel` AS `channel`,`t2`.`dstchannel` AS `dstchannel`,`t2`.`lastapp` AS `lastapp`,`t2`.`lastdata` AS `lastdata`,`t2`.`duration` AS `duration`,`t2`.`billsec` AS `billsec`,`t2`.`disposition` AS `disposition`,`t2`.`amaflags` AS `amaflags`,`t2`.`accountcode` AS `accountcode`,`t2`.`uniqueid` AS `uniqueid`,`t2`.`userfield` AS `userfield`,`t2`.`did` AS `did`,`t2`.`recordingfile` AS `recordingfile`,`t2`.`cnum` AS `cnum`,`t2`.`cnam` AS `cnam`,`t2`.`outbound_cnum` AS `outbound_cnum`,`t2`.`outbound_cnam` AS `outbound_cnam`,`t2`.`dst_cnam` AS `dst_cnam` from (`autocall`.`inboundloghistory` `t1` join `asteriskcdrdb`.`cdr` `t2` on(`t2`.`uniqueid` = `t1`.`uniqueid`)) order by `t1`.`logid` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inbound_cell_view`
--

/*!50001 DROP VIEW IF EXISTS `inbound_cell_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inbound_cell_view` AS select `t1`.`logid` AS `logid`,`t1`.`from` AS `from`,`t1`.`to` AS `to`,`t1`.`status` AS `status`,`t2`.`id` AS `id`,`t2`.`eventtype` AS `eventtype`,`t2`.`eventtime` AS `eventtime`,`t2`.`cid_name` AS `cid_name`,`t2`.`cid_num` AS `cid_num`,`t2`.`cid_ani` AS `cid_ani`,`t2`.`cid_rdnis` AS `cid_rdnis`,`t2`.`cid_dnid` AS `cid_dnid`,`t2`.`exten` AS `exten`,`t2`.`context` AS `context`,`t2`.`channame` AS `channame`,`t2`.`appname` AS `appname`,`t2`.`appdata` AS `appdata`,`t2`.`amaflags` AS `amaflags`,`t2`.`accountcode` AS `accountcode`,`t2`.`uniqueid` AS `uniqueid`,`t2`.`linkedid` AS `linkedid`,`t2`.`peer` AS `peer`,`t2`.`userdeftype` AS `userdeftype`,`t2`.`extra` AS `extra` from (`autocall`.`inboundlog` `t1` join `asteriskcdrdb`.`cel` `t2` on(`t2`.`uniqueid` = `t1`.`uniqueid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inbound_cell_view2`
--

/*!50001 DROP VIEW IF EXISTS `inbound_cell_view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inbound_cell_view2` AS select `t1`.`logid` AS `logid`,`t1`.`from` AS `from`,`t1`.`to` AS `to`,`t1`.`status` AS `status`,`t1`.`toext` AS `toext`,`t1`.`src` AS `srcinb`,`t1`.`dst` AS `dstinb`,`t2`.`id` AS `id`,`t2`.`eventtype` AS `eventtype`,`t2`.`eventtime` AS `eventtime`,`t2`.`cid_name` AS `cid_name`,`t2`.`cid_num` AS `cid_num`,`t2`.`cid_ani` AS `cid_ani`,`t2`.`cid_rdnis` AS `cid_rdnis`,`t2`.`cid_dnid` AS `cid_dnid`,`t2`.`exten` AS `exten`,`t2`.`context` AS `context`,`t2`.`channame` AS `channame`,`t2`.`appname` AS `appname`,`t2`.`appdata` AS `appdata`,`t2`.`amaflags` AS `amaflags`,`t2`.`accountcode` AS `accountcode`,`t2`.`uniqueid` AS `uniqueid`,`t2`.`linkedid` AS `linkedid`,`t2`.`peer` AS `peer`,`t2`.`userdeftype` AS `userdeftype`,`t2`.`extra` AS `extra` from (`autocall`.`inboundlog` `t1` join `asteriskcdrdb`.`cel` `t2` on(`t2`.`uniqueid` = `t1`.`uniqueid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inbound_cell_view3`
--

/*!50001 DROP VIEW IF EXISTS `inbound_cell_view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inbound_cell_view3` AS select `t3`.`name` AS `groupname`,`t3`.`formurl` AS `formurl`,`t3`.`campaign` AS `campaign`,`t1`.`logid` AS `logid`,`t1`.`from` AS `from`,`t1`.`to` AS `to`,`t1`.`group_id` AS `group_id`,`t1`.`status` AS `status`,`t1`.`toext` AS `toext`,`t1`.`src` AS `srcinb`,`t1`.`dst` AS `dstinb`,`t2`.`id` AS `id`,`t2`.`eventtype` AS `eventtype`,`t2`.`eventtime` AS `eventtime`,`t2`.`cid_name` AS `cid_name`,`t2`.`cid_num` AS `cid_num`,`t2`.`cid_ani` AS `cid_ani`,`t2`.`cid_rdnis` AS `cid_rdnis`,`t2`.`cid_dnid` AS `cid_dnid`,`t2`.`exten` AS `exten`,`t2`.`context` AS `context`,`t2`.`channame` AS `channame`,`t2`.`appname` AS `appname`,`t2`.`appdata` AS `appdata`,`t2`.`amaflags` AS `amaflags`,`t2`.`accountcode` AS `accountcode`,`t2`.`uniqueid` AS `uniqueid`,`t2`.`linkedid` AS `linkedid`,`t2`.`peer` AS `peer`,`t2`.`userdeftype` AS `userdeftype`,`t2`.`extra` AS `extra` from ((`autocall`.`inboundlog` `t1` join `asteriskcdrdb`.`cel` `t2` on(`t2`.`uniqueid` = `t1`.`uniqueid`)) join `autocall`.`call_groups` `t3` on(`t3`.`gid` = `t1`.`group_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `outbound_cdr_copy_view`
--

/*!50001 DROP VIEW IF EXISTS `outbound_cdr_copy_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `outbound_cdr_copy_view` AS select `t1`.`oid` AS `oid`,`t1`.`ogroup` AS `ogroup`,`t1`.`from` AS `from`,`t1`.`to` AS `to`,`t1`.`ostatus` AS `ostatus`,`t1`.`fromext` AS `fromext`,`t1`.`xagent` AS `xagent`,`t2`.`calldate` AS `calldate`,`t2`.`clid` AS `clid`,`t2`.`src` AS `src`,`t2`.`dst` AS `dst`,`t2`.`dcontext` AS `dcontext`,`t2`.`channel` AS `channel`,`t2`.`dstchannel` AS `dstchannel`,`t2`.`lastapp` AS `lastapp`,`t2`.`lastdata` AS `lastdata`,`t2`.`duration` AS `duration`,`t2`.`billsec` AS `billsec`,`t2`.`disposition` AS `disposition`,`t2`.`amaflags` AS `amaflags`,`t2`.`accountcode` AS `accountcode`,`t2`.`uniqueid` AS `uniqueid`,`t2`.`userfield` AS `userfield`,`t2`.`did` AS `did`,`t2`.`recordingfile` AS `recordingfile`,`t2`.`cnum` AS `cnum`,`t2`.`cnam` AS `cnam`,`t2`.`outbound_cnum` AS `outbound_cnum`,`t2`.`outbound_cnam` AS `outbound_cnam`,`t2`.`dst_cnam` AS `dst_cnam` from (`autocall`.`outbound_log` `t1` join `asteriskcdrdb`.`cdr` `t2` on(`t2`.`uniqueid` = `t1`.`uniqueid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `outbound_cdr_view`
--

/*!50001 DROP VIEW IF EXISTS `outbound_cdr_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `outbound_cdr_view` AS select `t1`.`oid` AS `oid`,`t1`.`from` AS `from`,`t1`.`to` AS `to`,`t1`.`ostatus` AS `ostatus`,`t1`.`fromext` AS `fromext`,`t2`.`calldate` AS `calldate`,`t2`.`clid` AS `clid`,`t2`.`src` AS `src`,`t2`.`dst` AS `dst`,`t2`.`dcontext` AS `dcontext`,`t2`.`channel` AS `channel`,`t2`.`dstchannel` AS `dstchannel`,`t2`.`lastapp` AS `lastapp`,`t2`.`lastdata` AS `lastdata`,`t2`.`duration` AS `duration`,`t2`.`billsec` AS `billsec`,`t2`.`disposition` AS `disposition`,`t2`.`amaflags` AS `amaflags`,`t2`.`accountcode` AS `accountcode`,`t2`.`uniqueid` AS `uniqueid`,`t2`.`userfield` AS `userfield`,`t2`.`did` AS `did`,`t2`.`recordingfile` AS `recordingfile`,`t2`.`cnum` AS `cnum`,`t2`.`cnam` AS `cnam`,`t2`.`outbound_cnum` AS `outbound_cnum`,`t2`.`outbound_cnam` AS `outbound_cnam`,`t2`.`dst_cnam` AS `dst_cnam` from (`autocall`.`outbound_log` `t1` join `asteriskcdrdb`.`cdr` `t2` on(`t2`.`uniqueid` = `t1`.`uniqueid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `outbound_cdr_view3`
--

/*!50001 DROP VIEW IF EXISTS `outbound_cdr_view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `outbound_cdr_view3` AS select `t1`.`oid` AS `oid`,`t1`.`ogroup` AS `ogroup`,`t1`.`from` AS `from`,`t1`.`to` AS `to`,`t1`.`ostatus` AS `ostatus`,`t1`.`fromext` AS `fromext`,`t1`.`xagent` AS `xagent`,`t2`.`calldate` AS `calldate`,`t2`.`clid` AS `clid`,`t2`.`src` AS `src`,`t2`.`dst` AS `dst`,`t2`.`dcontext` AS `dcontext`,`t2`.`channel` AS `channel`,`t2`.`dstchannel` AS `dstchannel`,`t2`.`lastapp` AS `lastapp`,`t2`.`lastdata` AS `lastdata`,`t2`.`duration` AS `duration`,`t2`.`billsec` AS `billsec`,`t2`.`disposition` AS `disposition`,`t2`.`amaflags` AS `amaflags`,`t2`.`accountcode` AS `accountcode`,`t2`.`uniqueid` AS `uniqueid`,`t2`.`userfield` AS `userfield`,`t2`.`did` AS `did`,`t2`.`recordingfile` AS `recordingfile`,`t2`.`cnum` AS `cnum`,`t2`.`cnam` AS `cnam`,`t2`.`outbound_cnum` AS `outbound_cnum`,`t2`.`outbound_cnam` AS `outbound_cnam`,`t2`.`dst_cnam` AS `dst_cnam` from (`autocall`.`outboundloghistory` `t1` join `asteriskcdrdb`.`cdr` `t2` on(`t2`.`uniqueid` = `t1`.`uniqueid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `outbound_cel_view`
--

/*!50001 DROP VIEW IF EXISTS `outbound_cel_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `outbound_cel_view` AS select `t1`.`oid` AS `oid`,`t1`.`from` AS `from`,`t1`.`to` AS `to`,`t1`.`ostatus` AS `ostatus`,`t1`.`fromext` AS `fromext`,`t1`.`ogroup` AS `ogroup`,`t1`.`campaign` AS `campaign`,`t1`.`src` AS `t1src`,`t1`.`dst` AS `t1dst`,`t1`.`outname` AS `outname`,`t2`.`id` AS `id`,`t2`.`eventtype` AS `eventtype`,`t2`.`eventtime` AS `eventtime`,`t2`.`cid_name` AS `cid_name`,`t2`.`cid_num` AS `cid_num`,`t2`.`cid_ani` AS `cid_ani`,`t2`.`cid_rdnis` AS `cid_rdnis`,`t2`.`cid_dnid` AS `cid_dnid`,`t2`.`exten` AS `exten`,`t2`.`context` AS `context`,`t2`.`channame` AS `channame`,`t2`.`appname` AS `appname`,`t2`.`appdata` AS `appdata`,`t2`.`amaflags` AS `amaflags`,`t2`.`accountcode` AS `accountcode`,`t2`.`uniqueid` AS `uniqueid`,`t2`.`linkedid` AS `linkedid`,`t2`.`peer` AS `peer`,`t2`.`userdeftype` AS `userdeftype`,`t2`.`extra` AS `extra` from (`autocall`.`outbound_log` `t1` join `asteriskcdrdb`.`cel` `t2` on(`t2`.`uniqueid` = `t1`.`uniqueid`)) order by `t2`.`id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-04 16:02:41
