-- MySQL dump 10.13  Distrib 5.6.13, for Win64 (x86_64)
--
-- Host: localhost    Database: pflex
-- ------------------------------------------------------
-- Server version	5.6.13-log

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
-- Table structure for table `fclang`
--

DROP TABLE IF EXISTS `fclang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fclang` (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(5) DEFAULT NULL,
  `lang_name` varchar(200) DEFAULT NULL,
  `lang_status` varchar(12) DEFAULT 'ACTIVE',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `const_vlang_unikey` (`lang_code`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fclang`
--

LOCK TABLES `fclang` WRITE;
/*!40000 ALTER TABLE `fclang` DISABLE KEYS */;
INSERT INTO `fclang` VALUES (1,'AF','Afrikaans','ACTIVE'),(2,'SQ','Albanian','ACTIVE'),(3,'AM','Amharic','ACTIVE'),(4,'AR-DZ','Arabic - Algeria','ACTIVE'),(5,'AR-BH','Arabic - Bahrain','ACTIVE'),(6,'AR-EG','Arabic - Egypt','ACTIVE'),(7,'AR-IQ','Arabic - Iraq','ACTIVE'),(8,'AR-JO','Arabic - Jordan','ACTIVE'),(9,'AR-KW','Arabic - Kuwait','ACTIVE'),(10,'AR-LB','Arabic - Lebanon','ACTIVE'),(11,'AR-LY','Arabic - Libya','ACTIVE'),(12,'AR-MA','Arabic - Morocco','ACTIVE'),(13,'AR-OM','Arabic - Oman','ACTIVE'),(14,'AR-QA','Arabic - Qatar','ACTIVE'),(15,'AR-SA','Arabic - Saudi Arabia','ACTIVE'),(16,'AR-SY','Arabic - Syria','ACTIVE'),(17,'AR-TN','Arabic - Tunisia','ACTIVE'),(18,'AR-AE','Arabic - United Arab Emirates','ACTIVE'),(19,'AR-YE','Arabic - Yemen','ACTIVE'),(20,'HY','Armenian','ACTIVE'),(21,'AS','Assamese','ACTIVE'),(22,'AZ-AZ','Azeri - Latin','ACTIVE'),(23,'EU','Basque','ACTIVE'),(24,'BE','Belarusian','ACTIVE'),(25,'BN','Bengali - Bangladesh','ACTIVE'),(26,'BS','Bosnian','ACTIVE'),(27,'BG','Bulgarian','ACTIVE'),(28,'MY','Burmese','ACTIVE'),(29,'CA','Catalan','ACTIVE'),(30,'ZH-CN','Chinese - China','ACTIVE'),(31,'ZH-HK','Chinese - Hong Kong SAR','ACTIVE'),(32,'ZH-MO','Chinese - Macau SAR','ACTIVE'),(33,'ZH-SG','Chinese - Singapore','ACTIVE'),(34,'ZH-TW','Chinese - Taiwan','ACTIVE'),(35,'HR','Croatian','ACTIVE'),(36,'CS','Czech','ACTIVE'),(37,'DA','Danish','ACTIVE'),(38,'DV','Divehi; Dhivehi; Maldivian','ACTIVE'),(39,'NL-BE','Dutch - Belgium','ACTIVE'),(40,'NL-NL','Dutch - Netherlands','ACTIVE'),(41,'EN-AU','English - Australia','ACTIVE'),(42,'EN-BZ','English - Belize','ACTIVE'),(43,'EN-CA','English - Canada','ACTIVE'),(44,'EN-CB','English - Caribbean','ACTIVE'),(45,'EN-GB','English - Great Britain','ACTIVE'),(46,'EN-IN','English - India','ACTIVE'),(47,'EN-IE','English - Ireland','ACTIVE'),(48,'EN-JM','English - Jamaica','ACTIVE'),(49,'EN-NZ','English - New Zealand','ACTIVE'),(50,'EN-PH','English - Phillippines','ACTIVE'),(51,'EN-ZA','English - Southern Africa','ACTIVE'),(52,'EN-TT','English - Trinidad','ACTIVE'),(53,'EN-US','English - United States','ACTIVE'),(54,'ET','Estonian','ACTIVE'),(55,'FO','Faroese','ACTIVE'),(56,'FA','Farsi - Persian','ACTIVE'),(57,'FI','Finnish','ACTIVE'),(58,'FR-BE','French - Belgium','ACTIVE'),(59,'FR-CA','French - Canada','ACTIVE'),(60,'FR-FR','French - France','ACTIVE'),(61,'FR-LU','French - Luxembourg','ACTIVE'),(62,'FR-CH','French - Switzerland','ACTIVE'),(63,'MK','FYRO Macedonia','ACTIVE'),(64,'GD-IE','Gaelic - Ireland','ACTIVE'),(65,'GD','Gaelic - Scotland','ACTIVE'),(66,'DE-AT','German - Austria','ACTIVE'),(67,'DE-DE','German - Germany','ACTIVE'),(68,'DE-LI','German - Liechtenstein','ACTIVE'),(69,'DE-LU','German - Luxembourg','ACTIVE'),(70,'DE-CH','German - Switzerland','ACTIVE'),(71,'EL','Greek','ACTIVE'),(72,'GN','Guarani - Paraguay','ACTIVE'),(73,'GU','Gujarati','ACTIVE'),(74,'HE','Hebrew','ACTIVE'),(75,'HI','Hindi','ACTIVE'),(76,'HU','Hungarian','ACTIVE'),(77,'IS','Icelandic','ACTIVE'),(78,'ID','Indonesian','ACTIVE'),(79,'IT-IT','Italian - Italy','ACTIVE'),(80,'IT-CH','Italian - Switzerland','ACTIVE'),(81,'JA','Japanese','ACTIVE'),(82,'KN','Kannada','ACTIVE'),(83,'KS','Kashmiri','ACTIVE'),(84,'KK','Kazakh','ACTIVE'),(85,'KM','Khmer','ACTIVE'),(86,'KO','Korean','ACTIVE'),(87,'LO','Lao','ACTIVE'),(88,'LA','Latin','ACTIVE'),(89,'LV','Latvian','ACTIVE'),(90,'LT','Lithuanian','ACTIVE'),(91,'MS-BN','Malay - Brunei','ACTIVE'),(92,'MS-MY','Malay - Malaysia','ACTIVE'),(93,'ML','Malayalam','ACTIVE'),(94,'MT','Maltese','ACTIVE'),(95,'MI','Maori','ACTIVE'),(96,'MR','Marathi','ACTIVE'),(97,'MN','Mongolian','ACTIVE'),(98,'NE','Nepali','ACTIVE'),(99,'NO-NO','Norwegian - Bokml','ACTIVE'),(100,'OR','Oriya','ACTIVE'),(101,'PL','Polish','ACTIVE'),(102,'PT-BR','Portuguese - Brazil','ACTIVE'),(103,'PT-PT','Portuguese - Portugal','ACTIVE'),(104,'PA','Punjabi','ACTIVE'),(105,'RM','Raeto-Romance','ACTIVE'),(106,'RO-MO','Romanian - Moldova','ACTIVE'),(107,'RO','Romanian - Romania','ACTIVE'),(108,'RU','Russian','ACTIVE'),(109,'RU-MO','Russian - Moldova','ACTIVE'),(110,'SA','Sanskrit','ACTIVE'),(111,'SR-SP','Serbian - Cyrillic','ACTIVE'),(112,'TN','Setsuana','ACTIVE'),(113,'SD','Sindhi','ACTIVE'),(114,'SI','Sinhala; Sinhalese','ACTIVE'),(115,'SK','Slovak','ACTIVE'),(116,'SL','Slovenian','ACTIVE'),(117,'SO','Somali','ACTIVE'),(118,'SB','Sorbian','ACTIVE'),(119,'ES-AR','Spanish - Argentina','ACTIVE'),(120,'ES-BO','Spanish - Bolivia','ACTIVE'),(121,'ES-CL','Spanish - Chile','ACTIVE'),(122,'ES-CO','Spanish - Colombia','ACTIVE'),(123,'ES-CR','Spanish - Costa Rica','ACTIVE'),(124,'ES-DO','Spanish - Dominican Republic','ACTIVE'),(125,'ES-EC','Spanish - Ecuador','ACTIVE'),(126,'ES-SV','Spanish - El Salvador','ACTIVE'),(127,'ES-GT','Spanish - Guatemala','ACTIVE'),(128,'ES-HN','Spanish - Honduras','ACTIVE'),(129,'ES-MX','Spanish - Mexico','ACTIVE'),(130,'ES-NI','Spanish - Nicaragua','ACTIVE'),(131,'ES-PA','Spanish - Panama','ACTIVE'),(132,'ES-PY','Spanish - Paraguay','ACTIVE'),(133,'ES-PE','Spanish - Peru','ACTIVE'),(134,'ES-PR','Spanish - Puerto Rico','ACTIVE'),(135,'ES-ES','Spanish - Spain (Traditional)','ACTIVE'),(136,'ES-UY','Spanish - Uruguay','ACTIVE'),(137,'ES-VE','Spanish - Venezuela','ACTIVE'),(138,'SW','Swahili','ACTIVE'),(139,'SV-FI','Swedish - Finland','ACTIVE'),(140,'SV-SE','Swedish - Sweden','ACTIVE'),(141,'TG','Tajik','ACTIVE'),(142,'TA','Tamil','ACTIVE'),(143,'TT','Tatar','ACTIVE'),(144,'TE','Telugu','ACTIVE'),(145,'TH','Thai','ACTIVE'),(146,'BO','Tibetan','ACTIVE'),(147,'TS','Tsonga','ACTIVE'),(148,'TR','Turkish','ACTIVE'),(149,'TK','Turkmen','ACTIVE'),(150,'UK','Ukrainian','ACTIVE'),(151,'UTF-8','Unicode','ACTIVE'),(152,'UR','Urdu','ACTIVE'),(153,'UZ-UZ','Uzbek - Cyrillic','ACTIVE'),(154,'VI','Vietnamese','ACTIVE'),(155,'CY','Welsh','ACTIVE'),(156,'XH','Xhosa','ACTIVE'),(157,'YI','Yiddish','ACTIVE'),(158,'ZU','Zulu','ACTIVE');
/*!40000 ALTER TABLE `fclang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fclog`
--

DROP TABLE IF EXISTS `fclog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fclog` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `log_cat` varchar(100) DEFAULT NULL,
  `log_cat2` varchar(100) DEFAULT NULL,
  `log_ref` varchar(100) DEFAULT NULL,
  `log_ref2` varchar(100) DEFAULT NULL,
  `log_ref3` varchar(100) DEFAULT NULL,
  `log_desc` longtext,
  `log_desc2` longtext,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fclog`
--

LOCK TABLES `fclog` WRITE;
/*!40000 ALTER TABLE `fclog` DISABLE KEYS */;
/*!40000 ALTER TABLE `fclog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fclookup`
--

DROP TABLE IF EXISTS `fclookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fclookup` (
  `lu_cat` varchar(12) NOT NULL,
  `lu_code` varchar(12) NOT NULL,
  `lu_parentcode` varchar(12) NOT NULL DEFAULT 'ROOT',
  `lu_title` varchar(50) DEFAULT NULL,
  `lu_status` varchar(12) DEFAULT 'ACTIVE',
  `lu_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lu_id`),
  UNIQUE KEY `const_hlookup_unikey` (`lu_cat`,`lu_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fclookup`
--

LOCK TABLES `fclookup` WRITE;
/*!40000 ALTER TABLE `fclookup` DISABLE KEYS */;
INSERT INTO `fclookup` VALUES ('THEME','blacktie','ROOT','Black Tie','ACTIVE',1),('THEME','blitzer','ROOT','Blitzer','ACTIVE',2),('THEME','darkness','ROOT','Darkness','ACTIVE',3),('THEME','dotluv','ROOT','Dot Luv','ACTIVE',4),('THEME','eggplant','ROOT','Eggplant','ACTIVE',5),('THEME','overcast','ROOT','Overcast','ACTIVE',6),('THEME','skyblue','ROOT','Skyblue','ACTIVE',7),('THEME','smoothness','ROOT','Smoothness','ACTIVE',8),('LANGUAGE','zh_TW','ROOT','Chinese','ACTIVE',9),('LANGUAGE','en_US','ROOT','English','ACTIVE',10);
/*!40000 ALTER TABLE `fclookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcmenu`
--

DROP TABLE IF EXISTS `fcmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcmenu` (
  `mn_id` int(11) NOT NULL AUTO_INCREMENT,
  `mn_code` varchar(32) DEFAULT NULL,
  `mn_parentid` int(11) NOT NULL,
  `mn_title` varchar(50) DEFAULT NULL,
  `mn_status` varchar(12) DEFAULT 'ACTIVE',
  `mn_order` int(11) DEFAULT NULL,
  `mn_group` varchar(1000) DEFAULT NULL,
  `mn_url` varchar(100) DEFAULT NULL,
  `mn_webflag` varchar(12) DEFAULT NULL,
  `mn_class` varchar(50) DEFAULT NULL,
  `mn_classlist` varchar(1000) DEFAULT NULL,
  `mn_func` varchar(50) DEFAULT NULL,
  `mn_funclist` varchar(1000) DEFAULT NULL,
  `mn_param` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`mn_id`),
  UNIQUE KEY `const_vmenu_unikey` (`mn_code`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcmenu`
--

LOCK TABLES `fcmenu` WRITE;
/*!40000 ALTER TABLE `fcmenu` DISABLE KEYS */;
INSERT INTO `fcmenu` VALUES (1,'HEADERMENU',0,'Top Menu','ACTIVE',0,NULL,'','Y',NULL,NULL,NULL,NULL,NULL),(3,'DASHBOARD',1,'Dashboard','INACTIVE',1000,NULL,'','Y','Dashboard',NULL,'revenueyeartodate',NULL,NULL),(4,'SHELF',1,'Shelf','INACTIVE',2000,NULL,'','Y','Shelf',NULL,'Home',NULL,NULL),(5,'REPORT',1,'Report','ACTIVE',3000,NULL,'','Y','Report',NULL,'rptrevdaily',NULL,NULL),(6,'SETTING',1,'Setting','ACTIVE',4000,NULL,'','Y','Setting',NULL,'gensetting',NULL,NULL),(12,'REVRPT',5,'Revenue Report','ACTIVE',3100,NULL,'','Y','Report',NULL,'rptrevdaily',NULL,NULL),(21,'GENSETTING',6,'General Setting','ACTIVE',4100,NULL,NULL,'Y','Setting',NULL,'gensetting',NULL,NULL),(40,'SHELFSETTING',6,'Shelf Setting','ACTIVE',4200,NULL,NULL,'Y','Setting','','shelfSetting','',''),(41,'DSHELFSETTING',40,'Shelf Setting','ACTIVE',4210,NULL,NULL,'Y','Setting','','shelfSetting','',''),(42,'SHELFGSETTING',40,'Shelf Group Setting','ACTIVE',4220,NULL,NULL,'Y','Setting','','shelfGroupSetting','',''),(43,'MAIN',1,'Main','ACTIVE',1000,'','','Y','Main','','board','',''),(44,'CUSTOMER',43,'Customer List','ACTIVE',1200,'','','Y','Main','','customer','',''),(45,'SEARCHPLATE',43,'Search Plate','ACTIVE',1100,'','','Y','Main','','searchplate','',''),(46,'OPERATION',1,'Operation','ACTIVE',2000,'','','Y','rackOperation','checkinout','','',''),(47,'CHECKINOUT',46,'Check In/Out','ACTIVE',2100,'','','Y','rackOperation','checkinout','checkinout','',''),(48,'STOCKCNT',46,'Stock Count','ACTIVE',2200,'','','Y','rackOperation','stockcount','stockcount','',''),(49,'CREATEPLATE',43,'Create Plate','ACTIVE',1050,NULL,NULL,'Y','Main',NULL,'createplate',NULL,NULL),(50,'USERSETT',6,'User Setting','ACTIVE',4300,'','','Y','Setting','','usersetup','',''),(52,'USERSETUP',50,'User Setup','ACTIVE',4310,'','','Y','Setting','','usersetup','',''),(53,'ROLESETUP',50,'Role Setup','ACTIVE',4320,'','','Y','Setting','','rolesetup','',''),(54,'PERMSETUP',50,'Permission Setup','ACTIVE',4330,'','','Y','Setting','','permissionsetup','',''),(55,'ORGSETUP',6,'Org Setting','ACTIVE',4300,NULL,NULL,'Y','Setting',NULL,'org',NULL,NULL),(56,'PCKGSETUP',6,'Package Setup','ACTIVE',4300,NULL,NULL,'Y','Setting',NULL,'packagesetup',NULL,NULL);
/*!40000 ALTER TABLE `fcmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcorg`
--

DROP TABLE IF EXISTS `fcorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcorg` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `org_code` varchar(50) DEFAULT NULL,
  `org_name` varchar(2000) DEFAULT NULL,
  `org_parentid` int(11) DEFAULT '0',
  `org_primaryid` varchar(200) DEFAULT NULL,
  `org_address` varchar(4000) DEFAULT NULL,
  `org_contactno` varchar(100) DEFAULT NULL,
  `org_status` varchar(12) DEFAULT 'ACTIVE',
  PRIMARY KEY (`org_id`),
  UNIQUE KEY `const_vorg_unikey` (`org_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcorg`
--

LOCK TABLES `fcorg` WRITE;
/*!40000 ALTER TABLE `fcorg` DISABLE KEYS */;
INSERT INTO `fcorg` VALUES (1,'SHERATON','SHERATON',NULL,'SHERATON','address',NULL,'ACTIVE'),(2,'SONY','Sony',NULL,'SONY0001','No 1, Jalan Sony','+60311111110','ACTIVE'),(3,'SONY01','Sony Sub 01',2,'SONY000101','No 1, Jalan Sony','+60311111110','ACTIVE'),(4,'SONY02','Sony02',2,'sony02','add1','cont 1','ACTIVE'),(9,'SUPERMAN','superman',NULL,'SUPERMAN','jalan superman','0161231234','ACTIVE');
/*!40000 ALTER TABLE `fcorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcpermission`
--

DROP TABLE IF EXISTS `fcpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcpermission` (
  `pms_id` int(11) NOT NULL AUTO_INCREMENT,
  `pms_code` varchar(12) DEFAULT NULL,
  `pms_desc` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`pms_id`),
  UNIQUE KEY `const_vpermission_unikey` (`pms_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcpermission`
--

LOCK TABLES `fcpermission` WRITE;
/*!40000 ALTER TABLE `fcpermission` DISABLE KEYS */;
INSERT INTO `fcpermission` VALUES (1,'VW_MAIN','View Main');
/*!40000 ALTER TABLE `fcpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcrole`
--

DROP TABLE IF EXISTS `fcrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcrole` (
  `rol_id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_code` varchar(12) DEFAULT NULL,
  `rol_desc` varchar(2000) DEFAULT NULL,
  `rol_status` varchar(32) DEFAULT 'ACTIVE',
  PRIMARY KEY (`rol_id`),
  UNIQUE KEY `const_vrole_unikey` (`rol_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcrole`
--

LOCK TABLES `fcrole` WRITE;
/*!40000 ALTER TABLE `fcrole` DISABLE KEYS */;
INSERT INTO `fcrole` VALUES (1,'admin','admin','ACTIVE'),(2,'MANAGER','Manager','ACTIVE');
/*!40000 ALTER TABLE `fcrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcroleperm`
--

DROP TABLE IF EXISTS `fcroleperm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcroleperm` (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `rp_rolid` int(11) DEFAULT NULL,
  `rp_pmsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rp_id`),
  UNIQUE KEY `const_vroleperm_unikey` (`rp_rolid`,`rp_pmsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcroleperm`
--

LOCK TABLES `fcroleperm` WRITE;
/*!40000 ALTER TABLE `fcroleperm` DISABLE KEYS */;
INSERT INTO `fcroleperm` VALUES (2,1,1),(1,2,1);
/*!40000 ALTER TABLE `fcroleperm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcsetting`
--

DROP TABLE IF EXISTS `fcsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcsetting` (
  `set_id` int(11) NOT NULL AUTO_INCREMENT,
  `set_user` varchar(100) DEFAULT 'pflex',
  `set_code` varchar(32) DEFAULT NULL,
  `set_description` varchar(4000) DEFAULT NULL,
  `set_val` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`set_id`),
  UNIQUE KEY `const_vsetting_unikey` (`set_user`,`set_code`),
  UNIQUE KEY `idx_vsetting_code_user` (`set_user`,`set_code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcsetting`
--

LOCK TABLES `fcsetting` WRITE;
/*!40000 ALTER TABLE `fcsetting` DISABLE KEYS */;
INSERT INTO `fcsetting` VALUES (1,'*','LANG','English - United States','EN-US'),(2,'*','MAXLIFETIME','Maximum Idle Time (in second)','15'),(3,'*','DEFCHECKIN','Default Check In Time',NULL),(4,'*','DEFCHECKOUT','Default Check Out Time',NULL),(5,'*','THEME','Skyblue','skyblue'),(6,'*','EICHARGE','Early Check In Charges',NULL),(7,'*','LOCHARGE','Late Check Out Charges',NULL);
/*!40000 ALTER TABLE `fcsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcuser`
--

DROP TABLE IF EXISTS `fcuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcuser` (
  `usr_userid` varchar(50) NOT NULL,
  `usr_password` varchar(50) DEFAULT NULL,
  `usr_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usr_name` varchar(100) DEFAULT NULL,
  `usr_email` varchar(50) DEFAULT NULL,
  `usr_last_active` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usr_last_success_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usr_last_fail_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usr_group` varchar(1000) DEFAULT NULL,
  `usr_sessiondata` longtext,
  `usr_langid` int(11) DEFAULT NULL,
  `usr_status` varchar(32) DEFAULT 'ACTIVE',
  PRIMARY KEY (`usr_userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcuser`
--

LOCK TABLES `fcuser` WRITE;
/*!40000 ALTER TABLE `fcuser` DISABLE KEYS */;
INSERT INTO `fcuser` VALUES ('admin','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','2013-08-15 01:55:18','Administrator','admin@email.com','2014-01-05 12:00:36','2014-01-05 09:05:15','2013-12-22 05:43:53','ADMIN','a:3:{s:14:\"urlbeforelogin\";s:9:\"/pndrack/\";s:7:\"dbosess\";a:9:{s:9:\"setup_org\";a:4:{s:6:\"lastid\";a:1:{s:6:\"org_id\";s:1:\"2\";}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"edit\";}s:9:\"platelist\";a:4:{s:6:\"lastid\";a:0:{}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"list\";}s:4:\"user\";a:4:{s:6:\"lastid\";a:1:{s:10:\"usr_userid\";s:6:\"sony02\";}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"list\";}s:10:\"permission\";a:4:{s:6:\"lastid\";a:0:{}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"list\";}s:0:\"\";a:3:{s:6:\"lastid\";a:0:{}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}}s:12:\"packagesetup\";a:4:{s:6:\"lastid\";a:1:{s:5:\"pk_id\";s:1:\"2\";}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"list\";}s:10:\"orgpackage\";a:4:{s:6:\"lastid\";a:1:{s:5:\"op_id\";s:1:\"4\";}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"edit\";}s:14:\"setup_customer\";a:4:{s:6:\"lastid\";a:1:{s:6:\"cus_id\";s:2:\"62\";}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"list\";}s:11:\"setup_shelf\";a:4:{s:6:\"lastid\";a:0:{}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"list\";}}s:9:\"dboconfig\";a:0:{}}',NULL,'ACTIVE'),('admin2','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','2013-12-15 10:31:00','admin2','admin2@email.com','2014-01-05 09:09:45','2014-01-05 09:09:44','2014-01-05 09:08:50',NULL,'a:2:{s:14:\"urlbeforelogin\";s:9:\"/pndrack/\";s:7:\"dbosess\";a:0:{}}',NULL,'ACTIVE'),('sony01','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','2013-12-15 16:59:41','Sony 01 User','sony01@email.com','2013-12-22 10:02:39','2013-12-22 09:57:17','0000-00-00 00:00:00',NULL,'a:3:{s:14:\"urlbeforelogin\";s:38:\"/pndrack/web/Setting/profile?showsql=0\";s:7:\"dbosess\";a:2:{s:7:\"profile\";a:4:{s:6:\"lastid\";a:1:{s:10:\"usr_userid\";s:6:\"sony01\";}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"edit\";}s:9:\"setup_org\";a:4:{s:6:\"lastid\";a:0:{}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"list\";}}s:9:\"dboconfig\";a:0:{}}',NULL,'ACTIVE'),('sony02','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','2013-12-22 07:09:03','sony 02','sony02@email.com','2013-12-22 09:57:14','2013-12-22 09:03:37','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE');
/*!40000 ALTER TABLE `fcuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcuserlogin`
--

DROP TABLE IF EXISTS `fcuserlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcuserlogin` (
  `ul_id` int(11) NOT NULL AUTO_INCREMENT,
  `ul_userid` varchar(50) DEFAULT NULL,
  `ul_ip` varchar(45) DEFAULT NULL,
  `ul_success` varchar(4) DEFAULT NULL,
  `ul_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_synchronized_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_synchronized` varchar(1) DEFAULT 'N',
  `cloud_refid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ul_id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcuserlogin`
--

LOCK TABLES `fcuserlogin` WRITE;
/*!40000 ALTER TABLE `fcuserlogin` DISABLE KEYS */;
INSERT INTO `fcuserlogin` VALUES (1,'admin','127.0.0.1','Y','2013-08-15 01:55:42','2013-08-15 01:55:42','2013-12-10 07:47:35','N',NULL),(2,'admin','127.0.0.1','Y','2013-08-15 02:59:43','2013-08-15 02:59:43','2013-12-10 07:47:35','N',NULL),(3,'admin','127.0.0.1','Y','2013-08-15 02:59:45','2013-08-15 02:59:45','2013-12-10 07:47:35','N',NULL),(4,'admin','127.0.0.1','Y','2013-08-15 04:31:47','2013-08-15 04:31:47','2013-12-10 07:47:35','N',NULL),(5,'admin','127.0.0.1','Y','2013-08-15 04:31:50','2013-08-15 04:31:50','2013-12-10 07:47:35','N',NULL),(6,'admin','127.0.0.1','Y','2013-08-16 01:31:41','2013-08-16 01:31:41','2013-12-10 07:47:35','N',NULL),(7,'admin','127.0.0.1','Y','2013-08-16 01:31:45','2013-08-16 01:31:45','2013-12-10 07:47:35','N',NULL),(8,'admin','127.0.0.1','Y','2013-08-16 11:30:04','2013-08-16 11:30:04','2013-12-10 07:47:35','N',NULL),(9,'admin','127.0.0.1','Y','2013-08-16 11:30:06','2013-08-16 11:30:06','2013-12-10 07:47:35','N',NULL),(10,'admin','127.0.0.1','Y','2013-08-17 04:03:56','2013-08-17 04:03:56','2013-12-10 07:47:35','N',NULL),(11,'admin','127.0.0.1','Y','2013-08-17 04:03:58','2013-08-17 04:03:58','2013-12-10 07:47:35','N',NULL),(12,'admin','127.0.0.1','Y','2013-08-17 16:07:07','2013-08-17 16:07:07','2013-12-10 07:47:35','N',NULL),(13,'admin','127.0.0.1','Y','2013-08-17 16:07:09','2013-08-17 16:07:09','2013-12-10 07:47:35','N',NULL),(14,'admin','127.0.0.1','Y','2013-08-19 01:49:37','2013-08-19 01:49:37','2013-12-10 07:47:35','N',NULL),(15,'admin','127.0.0.1','Y','2013-08-19 01:49:40','2013-08-19 01:49:40','2013-12-10 07:47:35','N',NULL),(16,'admin','127.0.0.1','Y','2013-08-19 06:05:24','2013-08-19 06:05:24','2013-12-10 07:47:35','N',NULL),(17,'admin','127.0.0.1','Y','2013-08-19 06:05:27','2013-08-19 06:05:27','2013-12-10 07:47:35','N',NULL),(18,'admin','127.0.0.1','N','2013-08-20 00:55:06','2013-08-20 00:55:06','2013-12-10 07:47:35','N',NULL),(19,'admin','127.0.0.1','Y','2013-08-20 00:55:09','2013-08-20 00:55:09','2013-12-10 07:47:35','N',NULL),(20,'admin','127.0.0.1','Y','2013-08-20 00:55:13','2013-08-20 00:55:13','2013-12-10 07:47:35','N',NULL),(21,'admin','127.0.0.1','Y','2013-08-20 12:50:37','2013-08-20 12:50:37','2013-12-10 07:47:35','N',NULL),(22,'admin','127.0.0.1','Y','2013-08-20 12:50:40','2013-08-20 12:50:40','2013-12-10 07:47:35','N',NULL),(23,'admin','127.0.0.1','Y','2013-08-20 16:05:39','2013-08-20 16:05:39','2013-12-10 07:47:35','N',NULL),(24,'admin','127.0.0.1','Y','2013-08-20 16:05:42','2013-08-20 16:05:42','2013-12-10 07:47:35','N',NULL),(25,'admin','127.0.0.1','Y','2013-08-21 01:18:20','2013-08-21 01:18:20','2013-12-10 07:47:35','N',NULL),(26,'admin','127.0.0.1','Y','2013-08-21 01:18:23','2013-08-21 01:18:23','2013-12-10 07:47:35','N',NULL),(27,'admin','127.0.0.1','Y','2013-08-21 10:05:58','2013-08-21 10:05:58','2013-12-10 07:47:35','N',NULL),(28,'admin','127.0.0.1','Y','2013-08-21 10:06:02','2013-08-21 10:06:02','2013-12-10 07:47:35','N',NULL),(29,'admin','127.0.0.1','Y','2013-08-21 13:57:25','2013-08-21 13:57:25','2013-12-10 07:47:35','N',NULL),(30,'admin','127.0.0.1','Y','2013-08-21 13:57:28','2013-08-21 13:57:28','2013-12-10 07:47:35','N',NULL),(31,'admin','127.0.0.1','Y','2013-08-21 13:59:38','2013-08-21 13:59:38','2013-12-10 07:47:35','N',NULL),(32,'admin','127.0.0.1','Y','2013-08-22 01:15:22','2013-08-22 01:15:22','2013-12-10 07:47:35','N',NULL),(33,'admin','127.0.0.1','Y','2013-08-22 01:39:36','2013-08-22 01:39:36','2013-12-10 07:47:35','N',NULL),(34,'admin','127.0.0.1','Y','2013-08-22 09:58:43','2013-08-22 09:58:43','2013-12-10 07:47:35','N',NULL),(35,'admin','127.0.0.1','Y','2013-08-22 09:58:49','2013-08-22 09:58:49','2013-12-10 07:47:35','N',NULL),(36,'admin','127.0.0.1','Y','2013-08-22 09:58:52','2013-08-22 09:58:52','2013-12-10 07:47:35','N',NULL),(37,'admin','127.0.0.1','Y','2013-08-23 02:16:44','2013-08-23 02:16:44','2013-12-10 07:47:35','N',NULL),(38,'admin','127.0.0.1','Y','2013-08-23 02:17:09','2013-08-23 02:17:09','2013-12-10 07:47:35','N',NULL),(39,'admin','127.0.0.1','Y','2013-08-23 02:18:45','2013-08-23 02:18:45','2013-12-10 07:47:35','N',NULL),(40,'admin','127.0.0.1','Y','2013-08-24 01:28:55','2013-08-24 01:28:55','2013-12-10 07:47:35','N',NULL),(41,'admin','127.0.0.1','Y','2013-08-24 01:29:00','2013-08-24 01:29:00','2013-12-10 07:47:35','N',NULL),(42,'admin','127.0.0.1','Y','2013-08-24 01:29:05','2013-08-24 01:29:05','2013-12-10 07:47:35','N',NULL),(43,'admin','127.0.0.1','Y','2013-08-25 12:55:31','2013-08-25 12:55:31','2013-12-10 07:47:35','N',NULL),(44,'admin','127.0.0.1','Y','2013-08-25 12:55:33','2013-08-25 12:55:33','2013-12-10 07:47:35','N',NULL),(45,'admin','127.0.0.1','Y','2013-08-25 13:38:38','2013-08-25 13:38:38','2013-12-10 07:47:35','N',NULL),(46,'admin','127.0.0.1','Y','2013-08-25 13:38:40','2013-08-25 13:38:40','2013-12-10 07:47:35','N',NULL),(47,'admin','127.0.0.1','Y','2013-08-26 01:23:28','2013-08-26 01:23:28','2013-12-10 07:47:35','N',NULL),(48,'admin','127.0.0.1','Y','2013-08-26 01:23:33','2013-08-26 01:23:33','2013-12-10 07:47:35','N',NULL),(49,'admin','127.0.0.1','Y','2013-08-26 12:33:59','2013-08-26 12:33:59','2013-12-10 07:47:35','N',NULL),(50,'admin','127.0.0.1','Y','2013-08-26 12:34:02','2013-08-26 12:34:02','2013-12-10 07:47:35','N',NULL),(51,'admin','127.0.0.1','Y','2013-08-26 12:34:06','2013-08-26 12:34:06','2013-12-10 07:47:35','N',NULL),(52,'admin','127.0.0.1','Y','2013-08-26 14:39:10','2013-08-26 14:39:10','2013-12-10 07:47:35','N',NULL),(53,'admin','127.0.0.1','Y','2013-08-26 14:39:13','2013-08-26 14:39:13','2013-12-10 07:47:35','N',NULL),(54,'admin','127.0.0.1','Y','2013-08-26 16:08:21','2013-08-26 16:08:21','2013-12-10 07:47:35','N',NULL),(55,'admin','127.0.0.1','Y','2013-08-26 16:08:24','2013-08-26 16:08:24','2013-12-10 07:47:35','N',NULL),(56,'admin','127.0.0.1','Y','2013-08-26 16:58:48','2013-08-26 16:58:48','2013-12-10 07:47:35','N',NULL),(57,'admin','127.0.0.1','Y','2013-08-26 16:58:50','2013-08-26 16:58:50','2013-12-10 07:47:35','N',NULL),(58,'admin','127.0.0.1','Y','2013-08-27 02:14:03','2013-08-27 02:14:03','2013-12-10 07:47:35','N',NULL),(59,'admin','127.0.0.1','Y','2013-08-27 02:14:05','2013-08-27 02:14:05','2013-12-10 07:47:35','N',NULL),(60,'admin','127.0.0.1','Y','2013-08-27 11:12:18','2013-08-27 11:12:18','2013-12-10 07:47:35','N',NULL),(61,'admin','127.0.0.1','Y','2013-08-27 11:12:21','2013-08-27 11:12:21','2013-12-10 07:47:35','N',NULL),(62,'admin','127.0.0.1','Y','2013-08-28 01:58:45','2013-08-28 01:58:45','2013-12-10 07:47:35','N',NULL),(63,'admin','127.0.0.1','Y','2013-08-28 02:00:04','2013-08-28 02:00:04','2013-12-10 07:47:35','N',NULL),(64,'admin','127.0.0.1','Y','2013-08-28 09:52:51','2013-08-28 09:52:51','2013-12-10 07:47:35','N',NULL),(65,'admin','127.0.0.1','Y','2013-08-28 09:52:55','2013-08-28 09:52:55','2013-12-10 07:47:35','N',NULL),(66,'admin','127.0.0.1','Y','2013-08-29 00:50:38','2013-08-29 00:50:38','2013-12-10 07:47:35','N',NULL),(67,'admin','127.0.0.1','Y','2013-08-29 00:50:41','2013-08-29 00:50:41','2013-12-10 07:47:35','N',NULL),(68,'admin','127.0.0.1','Y','2013-08-29 00:50:43','2013-08-29 00:50:43','2013-12-10 07:47:35','N',NULL),(69,'admin','127.0.0.1','Y','2013-08-29 04:43:53','2013-08-29 04:43:53','2013-12-10 07:47:35','N',NULL),(70,'admin','127.0.0.1','Y','2013-08-29 04:43:55','2013-08-29 04:43:55','2013-12-10 07:47:35','N',NULL),(71,'admin','127.0.0.1','Y','2013-08-30 01:35:54','2013-08-30 01:35:54','2013-12-10 07:47:35','N',NULL),(72,'admin','127.0.0.1','Y','2013-08-30 01:36:58','2013-08-30 01:36:58','2013-12-10 07:47:35','N',NULL),(73,'admin','127.0.0.1','Y','2013-08-31 00:37:13','2013-08-31 00:37:13','2013-12-10 07:47:35','N',NULL),(74,'admin','127.0.0.1','Y','2013-08-31 00:37:16','2013-08-31 00:37:16','2013-12-10 07:47:35','N',NULL),(75,'admin','127.0.0.1','Y','2013-08-31 01:32:58','2013-08-31 01:32:58','2013-12-10 07:47:35','N',NULL),(76,'admin','127.0.0.1','Y','2013-08-31 01:33:00','2013-08-31 01:33:00','2013-12-10 07:47:35','N',NULL),(77,'admin','127.0.0.1','Y','2013-08-31 03:18:25','2013-08-31 03:18:25','2013-12-10 07:47:35','N',NULL),(78,'admin','127.0.0.1','Y','2013-08-31 03:18:27','2013-08-31 03:18:27','2013-12-10 07:47:35','N',NULL),(79,'admin','127.0.0.1','Y','2013-09-02 05:10:26','2013-09-02 05:10:26','2013-12-10 07:47:35','N',NULL),(80,'admin','127.0.0.1','Y','2013-09-02 05:10:27','2013-09-02 05:10:27','2013-12-10 07:47:35','N',NULL),(81,'admin','127.0.0.1','Y','2013-09-03 01:08:40','2013-09-03 01:08:40','2013-12-10 07:47:35','N',NULL),(82,'admin','127.0.0.1','Y','2013-09-03 01:08:43','2013-09-03 01:08:43','2013-12-10 07:47:35','N',NULL),(83,'admin','127.0.0.1','Y','2013-09-06 02:12:01','2013-09-06 02:12:01','2013-12-10 07:47:35','N',NULL),(84,'admin','127.0.0.1','Y','2013-09-06 02:12:03','2013-09-06 02:12:03','2013-12-10 07:47:35','N',NULL),(85,'admin','127.0.0.1','Y','2013-09-07 04:20:53','2013-09-07 04:20:53','2013-12-10 07:47:35','N',NULL),(86,'admin','127.0.0.1','Y','2013-09-07 04:20:57','2013-09-07 04:20:57','2013-12-10 07:47:35','N',NULL),(87,'admin','127.0.0.1','Y','2013-09-07 04:20:59','2013-09-07 04:20:59','2013-12-10 07:47:35','N',NULL),(88,'admin','127.0.0.1','Y','2013-09-07 04:21:03','2013-09-07 04:21:03','2013-12-10 07:47:35','N',NULL),(89,'admin','127.0.0.1','Y','2013-09-07 07:45:14','2013-09-07 07:45:14','2013-12-10 07:47:35','N',NULL),(90,'admin','127.0.0.1','Y','2013-09-07 07:45:16','2013-09-07 07:45:16','2013-12-10 07:47:35','N',NULL),(91,'admin','127.0.0.1','Y','2013-09-07 10:25:27','2013-09-07 10:25:27','2013-12-10 07:47:35','N',NULL),(92,'admin','127.0.0.1','Y','2013-09-07 11:32:35','2013-09-07 11:32:35','2013-12-10 07:47:35','N',NULL),(93,'admin','127.0.0.1','Y','2013-09-07 11:32:37','2013-09-07 11:32:37','2013-12-10 07:47:35','N',NULL),(94,'admin','127.0.0.1','Y','2013-09-07 11:34:29','2013-09-07 11:34:29','2013-12-10 07:47:35','N',NULL),(95,'admin','127.0.0.1','Y','2013-09-07 11:34:31','2013-09-07 11:34:31','2013-12-10 07:47:35','N',NULL),(96,'admin','127.0.0.1','Y','2013-09-09 02:15:45','2013-09-09 02:15:45','2013-12-10 07:47:35','N',NULL),(97,'admin','127.0.0.1','Y','2013-09-09 02:15:47','2013-09-09 02:15:47','2013-12-10 07:47:35','N',NULL),(98,'admin','127.0.0.1','Y','2013-09-10 06:35:37','2013-09-10 06:35:37','2013-12-10 07:47:35','N',NULL),(99,'admin','127.0.0.1','Y','2013-09-10 06:35:39','2013-09-10 06:35:39','2013-12-10 07:47:35','N',NULL),(100,'admin','127.0.0.1','Y','2013-09-13 13:38:29','2013-09-13 13:38:29','2013-12-10 07:47:35','N',NULL),(101,'admin','127.0.0.1','Y','2013-09-13 13:38:31','2013-09-13 13:38:31','2013-12-10 07:47:35','N',NULL),(102,'admin','127.0.0.1','Y','2013-09-13 14:33:34','2013-09-13 14:33:34','2013-12-10 07:47:35','N',NULL),(103,'admin','127.0.0.1','Y','2013-09-13 14:33:36','2013-09-13 14:33:36','2013-12-10 07:47:35','N',NULL),(104,'admin','127.0.0.1','Y','2013-09-16 06:48:44','2013-09-16 06:48:44','2013-12-10 07:47:35','N',NULL),(105,'admin','127.0.0.1','Y','2013-09-16 06:48:48','2013-09-16 06:48:48','2013-12-10 07:47:35','N',NULL),(106,'admin','127.0.0.1','Y','2013-09-17 02:20:51','2013-09-17 02:20:51','2013-12-10 07:47:35','N',NULL),(107,'admin','127.0.0.1','Y','2013-09-17 02:20:54','2013-09-17 02:20:54','2013-12-10 07:47:35','N',NULL),(108,'admin','127.0.0.1','Y','2013-09-18 16:23:01','2013-09-18 16:23:01','2013-12-10 07:47:35','N',NULL),(109,'admin','127.0.0.1','Y','2013-09-18 16:23:03','2013-09-18 16:23:03','2013-12-10 07:47:35','N',NULL),(110,'admin','127.0.0.1','Y','2013-09-21 12:04:50','2013-09-21 12:04:50','2013-12-10 07:47:35','N',NULL),(111,'admin','127.0.0.1','Y','2013-09-21 12:04:52','2013-09-21 12:04:52','2013-12-10 07:47:35','N',NULL),(112,'admin','127.0.0.1','Y','2013-09-22 06:35:34','2013-09-22 06:35:34','2013-12-10 07:47:35','N',NULL),(113,'admin','127.0.0.1','Y','2013-09-22 06:35:36','2013-09-22 06:35:36','2013-12-10 07:47:35','N',NULL),(114,'admin','127.0.0.1','Y','2013-09-22 06:35:38','2013-09-22 06:35:38','2013-12-10 07:47:35','N',NULL),(115,'admin','127.0.0.1','Y','2013-09-23 01:04:35','2013-09-23 01:04:35','2013-12-10 07:47:35','N',NULL),(116,'admin','127.0.0.1','Y','2013-09-23 01:04:38','2013-09-23 01:04:38','2013-12-10 07:47:35','N',NULL),(117,'admin','127.0.0.1','Y','2013-09-23 15:38:32','2013-09-23 15:38:32','2013-12-10 07:47:35','N',NULL),(118,'admin','127.0.0.1','Y','2013-09-23 15:38:34','2013-09-23 15:38:34','2013-12-10 07:47:35','N',NULL),(119,'admin','127.0.0.1','Y','2013-09-24 14:30:17','2013-09-24 14:30:17','2013-12-10 07:47:35','N',NULL),(120,'admin','127.0.0.1','Y','2013-09-24 14:30:20','2013-09-24 14:30:20','2013-12-10 07:47:35','N',NULL),(121,'admin','127.0.0.1','Y','2013-09-24 14:30:22','2013-09-24 14:30:22','2013-12-10 07:47:35','N',NULL),(122,'admin','127.0.0.1','Y','2013-09-25 01:36:08','2013-09-25 01:36:08','2013-12-10 07:47:35','N',NULL),(123,'admin','127.0.0.1','Y','2013-09-25 01:36:10','2013-09-25 01:36:10','2013-12-10 07:47:35','N',NULL),(124,'admin','127.0.0.1','Y','2013-09-25 03:31:52','2013-09-25 03:31:52','2013-12-10 07:47:35','N',NULL),(125,'admin','127.0.0.1','Y','2013-09-25 03:32:04','2013-09-25 03:32:04','2013-12-10 07:47:35','N',NULL),(126,'admin','127.0.0.1','Y','2013-09-26 05:23:38','2013-09-26 05:23:38','2013-12-10 07:47:35','N',NULL),(127,'admin','127.0.0.1','Y','2013-09-26 05:23:40','2013-09-26 05:23:40','2013-12-10 07:47:35','N',NULL),(128,'admin','127.0.0.1','Y','2013-09-26 13:57:02','2013-09-26 13:57:02','2013-12-10 07:47:35','N',NULL),(129,'admin','127.0.0.1','Y','2013-09-26 13:57:03','2013-09-26 13:57:03','2013-12-10 07:47:35','N',NULL),(130,'admin','127.0.0.1','Y','2013-09-27 01:59:36','2013-09-27 01:59:36','2013-12-10 07:47:35','N',NULL),(131,'admin','127.0.0.1','Y','2013-09-27 01:59:39','2013-09-27 01:59:39','2013-12-10 07:47:35','N',NULL),(132,'admin','127.0.0.1','Y','2013-09-29 02:12:39','2013-09-29 02:12:39','2013-12-10 07:47:35','N',NULL),(133,'admin','127.0.0.1','Y','2013-09-29 02:12:41','2013-09-29 02:12:41','2013-12-10 07:47:35','N',NULL),(134,'admin','127.0.0.1','Y','2013-10-02 02:54:59','2013-10-02 02:54:59','2013-12-10 07:47:35','N',NULL),(135,'admin','127.0.0.1','Y','2013-10-02 02:55:04','2013-10-02 02:55:04','2013-12-10 07:47:35','N',NULL),(136,'admin','127.0.0.1','Y','2013-10-03 12:06:27','2013-10-03 12:06:27','2013-12-10 07:47:35','N',NULL),(137,'admin','127.0.0.1','Y','2013-10-03 12:06:29','2013-10-03 12:06:29','2013-12-10 07:47:35','N',NULL),(138,'admin','127.0.0.1','Y','2013-10-04 01:27:57','2013-10-04 01:27:57','2013-12-10 07:47:35','N',NULL),(139,'admin','127.0.0.1','Y','2013-10-04 01:28:00','2013-10-04 01:28:00','2013-12-10 07:47:35','N',NULL),(140,'admin','127.0.0.1','Y','2013-10-04 10:42:58','2013-10-04 10:42:58','2013-12-10 07:47:35','N',NULL),(141,'admin','127.0.0.1','Y','2013-10-04 10:42:59','2013-10-04 10:42:59','2013-12-10 07:47:35','N',NULL),(142,'admin','127.0.0.1','Y','2013-10-05 02:41:20','2013-10-05 02:41:20','2013-12-10 07:47:35','N',NULL),(143,'admin','127.0.0.1','Y','2013-10-05 02:41:22','2013-10-05 02:41:22','2013-12-10 07:47:35','N',NULL),(144,'admin','127.0.0.1','Y','2013-10-05 14:58:31','2013-10-05 14:58:31','2013-12-10 07:47:35','N',NULL),(145,'admin','127.0.0.1','Y','2013-10-05 14:58:33','2013-10-05 14:58:33','2013-12-10 07:47:35','N',NULL),(146,'admin','127.0.0.1','Y','2013-10-06 06:18:45','2013-10-06 06:18:45','2013-12-10 07:47:35','N',NULL),(147,'admin','127.0.0.1','Y','2013-10-06 06:18:48','2013-10-06 06:18:48','2013-12-10 07:47:35','N',NULL),(148,'admin','127.0.0.1','Y','2013-10-23 02:48:24','2013-10-23 02:48:24','2013-12-10 07:47:35','N',NULL),(149,'admin','127.0.0.1','Y','2013-10-23 02:48:28','2013-10-23 02:48:28','2013-12-10 07:47:35','N',NULL),(150,'admin','127.0.0.1','Y','2013-10-30 02:24:15','2013-10-30 02:24:15','2013-12-10 07:47:35','N',NULL),(151,'admin','127.0.0.1','Y','2013-10-30 02:24:19','2013-10-30 02:24:19','2013-12-10 07:47:35','N',NULL),(152,'admin','127.0.0.1','Y','2013-10-31 06:42:12','2013-10-31 06:42:12','2013-12-10 07:47:35','N',NULL),(153,'admin',NULL,NULL,'2013-10-31 06:46:14','2013-10-31 06:46:14','2013-12-10 07:47:35','N',NULL),(154,'admin','127.0.0.1','Y','2013-10-31 06:46:27','2013-10-31 06:46:27','2013-12-10 07:47:35','N',NULL),(155,'admin','127.0.0.1','Y','2013-10-31 06:57:26','2013-10-31 06:57:26','2013-12-10 07:47:35','N',NULL),(156,'admin','127.0.0.1','Y','2013-10-31 06:57:44','2013-10-31 06:57:44','2013-12-10 07:47:35','N',NULL),(157,'admin','127.0.0.1','Y','2013-11-01 01:45:44','2013-11-01 01:45:44','2013-12-10 07:47:35','N',NULL),(158,'admin','127.0.0.1','Y','2013-11-01 01:45:46','2013-11-01 01:45:46','2013-12-10 07:47:35','N',NULL),(159,'admin','127.0.0.1','Y','2013-11-01 03:00:52','2013-11-01 03:00:52','2013-12-10 07:47:35','N',NULL),(160,'admin','127.0.0.1','Y','2013-11-01 03:00:54','2013-11-01 03:00:54','2013-12-10 07:47:35','N',NULL),(161,'admin','127.0.0.1','Y','2013-11-01 03:07:38','2013-11-01 03:07:38','2013-12-10 07:47:35','N',NULL),(162,'admin','127.0.0.1','Y','2013-11-01 03:07:40','2013-11-01 03:07:40','2013-12-10 07:47:35','N',NULL),(163,'admin','127.0.0.1','Y','2013-11-02 05:20:41','2013-11-02 05:20:41','2013-12-10 07:47:35','N',NULL),(164,'admin','127.0.0.1','Y','2013-11-02 05:20:43','2013-11-02 05:20:43','2013-12-10 07:47:35','N',NULL),(165,'admin','127.0.0.1','Y','2013-11-04 01:16:28','2013-11-04 01:16:28','2013-12-10 07:47:35','N',NULL),(166,'admin','127.0.0.1','Y','2013-11-04 01:16:31','2013-11-04 01:16:31','2013-12-10 07:47:35','N',NULL),(167,'admin','127.0.0.1','Y','2013-11-05 06:59:33','2013-11-05 06:59:33','2013-12-10 07:47:35','N',NULL),(168,'admin','127.0.0.1','Y','2013-11-05 06:59:35','2013-11-05 06:59:35','2013-12-10 07:47:35','N',NULL),(169,'admin','127.0.0.1','Y','2013-11-06 01:27:25','2013-11-06 01:27:25','2013-12-10 07:47:35','N',NULL),(170,'admin','127.0.0.1','Y','2013-11-06 01:27:27','2013-11-06 01:27:27','2013-12-10 07:47:35','N',NULL),(171,'admin','127.0.0.1','Y','2013-11-09 07:03:55','2013-11-09 07:03:55','2013-12-10 07:47:35','N',NULL),(172,'admin','127.0.0.1','N','2013-11-09 07:03:58','2013-11-09 07:03:58','2013-12-10 07:47:35','N',NULL),(173,'admin','127.0.0.1','Y','2013-11-09 07:07:48','2013-11-09 07:07:48','2013-12-10 07:47:35','N',NULL),(174,'admin','127.0.0.1','N','2013-11-09 07:07:50','2013-11-09 07:07:50','2013-12-10 07:47:35','N',NULL),(175,'admin','127.0.0.1','Y','2013-11-09 07:09:13','2013-11-09 07:09:13','2013-12-10 07:47:35','N',NULL),(176,'admin','127.0.0.1','Y','2013-11-09 07:09:36','2013-11-09 07:09:36','2013-12-10 07:47:35','N',NULL),(177,'admin','127.0.0.1','Y','2013-11-09 07:11:30','2013-11-09 07:11:30','2013-12-10 07:47:35','N',NULL),(178,'admin','127.0.0.1','Y','2013-11-09 07:11:36','2013-11-09 07:11:36','2013-12-10 07:47:35','N',NULL),(179,'admin','192.168.1.75','Y','2013-11-09 07:39:31','2013-11-09 07:39:31','2013-12-10 07:47:35','N',NULL),(180,'admin','192.168.1.75','Y','2013-11-09 07:43:45','2013-11-09 07:43:45','2013-12-10 07:47:35','N',NULL),(181,'admin','192.168.1.75','Y','2013-11-09 07:47:06','2013-11-09 07:47:06','2013-12-10 07:47:35','N',NULL),(182,'admin','127.0.0.1','Y','2013-11-09 07:53:23','2013-11-09 07:53:23','2013-12-10 07:47:35','N',NULL),(183,'admin','127.0.0.1','Y','2013-11-11 02:18:32','2013-11-11 02:18:32','2013-12-10 07:47:35','N',NULL),(184,'admin','127.0.0.1','Y','2013-11-13 01:09:58','2013-11-13 01:09:58','2013-12-10 07:47:35','N',NULL),(185,'admin','127.0.0.1','Y','2013-11-13 05:11:58','2013-11-13 05:11:58','2013-12-10 07:47:35','N',NULL),(186,'admin','127.0.0.1','Y','2013-11-14 00:40:34','2013-11-14 00:40:34','2013-12-10 07:47:35','N',NULL),(187,'admin','127.0.0.1','Y','2013-11-15 11:06:54','2013-11-15 11:06:54','2013-12-10 07:47:35','N',NULL),(188,'admin','127.0.0.1','Y','2013-11-16 05:55:03','2013-11-16 05:55:03','2013-12-10 07:47:35','N',NULL),(189,'admin','127.0.0.1','Y','2013-11-17 10:21:41','2013-11-17 10:21:41','2013-12-10 07:47:35','N',NULL),(190,'admin','127.0.0.1','Y','2013-11-18 08:46:54','2013-11-18 08:46:54','2013-12-10 07:47:35','N',NULL),(191,'admin','127.0.0.1','Y','2013-11-19 06:20:26','2013-11-19 06:20:26','2013-12-10 07:47:35','N',NULL),(192,'admin','127.0.0.1','Y','2013-11-19 15:35:44','2013-11-19 15:35:44','2013-12-10 07:47:35','N',NULL),(193,'admin','127.0.0.1','Y','2013-11-21 08:14:15','2013-11-21 08:14:15','2013-12-10 07:47:35','N',NULL),(194,'admin','127.0.0.1','Y','2013-11-25 04:40:22','2013-11-25 04:40:22','2013-12-10 07:47:35','N',NULL),(195,'admin','127.0.0.1','Y','2013-12-10 06:00:47','2013-12-10 06:00:47','2013-12-10 07:47:35','N',NULL),(196,'admin','127.0.0.1','Y','2013-12-10 07:52:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(197,'admin','127.0.0.1','Y','2013-12-10 07:56:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(198,'admin','127.0.0.1','Y','2013-12-11 07:52:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(199,'admin','127.0.0.1','Y','2013-12-12 04:10:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(200,'admin','127.0.0.1','Y','2013-12-12 04:13:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(201,'admin','127.0.0.1','Y','2013-12-12 05:15:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(202,'admin','127.0.0.1','Y','2013-12-14 07:05:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(203,'admin','127.0.0.1','Y','2013-12-14 12:39:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(204,'admin','127.0.0.1','Y','2013-12-15 08:59:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(205,'admin','127.0.0.1','Y','2013-12-15 09:47:48','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(206,'admin','127.0.0.1','N','2013-12-15 10:16:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(207,'admin','127.0.0.1','N','2013-12-15 10:16:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(208,'admin','127.0.0.1','N','2013-12-15 10:16:31','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(209,'admin','127.0.0.1','Y','2013-12-15 10:28:49','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(210,'admin2','127.0.0.1','Y','2013-12-15 10:31:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(211,'admin2','127.0.0.1','N','2013-12-15 10:38:59','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(212,'admin2','127.0.0.1','Y','2013-12-15 10:39:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(213,'admin2','127.0.0.1','Y','2013-12-15 10:39:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(214,'admin','127.0.0.1','N','2013-12-15 15:13:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(215,'admin','127.0.0.1','N','2013-12-15 15:13:52','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(216,'admin','127.0.0.1','N','2013-12-15 15:13:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(217,'admin','127.0.0.1','N','2013-12-15 15:14:01','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(218,'admin','127.0.0.1','N','2013-12-15 15:14:05','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(219,'admin','127.0.0.1','Y','2013-12-15 15:14:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(220,'admin','127.0.0.1','Y','2013-12-15 16:00:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(221,'admin','127.0.0.1','N','2013-12-22 05:43:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(222,'admin','127.0.0.1','N','2013-12-22 05:43:39','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(223,'admin','127.0.0.1','N','2013-12-22 05:43:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(224,'admin','127.0.0.1','Y','2013-12-22 05:43:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(225,'sony02','127.0.0.1','Y','2013-12-22 07:09:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(226,'admin','127.0.0.1','Y','2013-12-22 08:43:28','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(227,'admin','127.0.0.1','Y','2013-12-22 08:55:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(228,'sony02','127.0.0.1','Y','2013-12-22 09:03:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(229,'sony01','127.0.0.1','Y','2013-12-22 09:57:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(230,'admin','127.0.0.1','Y','2013-12-23 13:58:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(231,'admin','127.0.0.1','Y','2014-01-04 09:09:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(232,'admin','127.0.0.1','Y','2014-01-05 08:20:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(233,'admin','127.0.0.1','Y','2014-01-05 09:05:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(234,'admin2','127.0.0.1','Y','2014-01-05 09:06:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(235,'admin2','127.0.0.1','N','2014-01-05 09:08:50','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(236,'admin2','127.0.0.1','Y','2014-01-05 09:09:44','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL);
/*!40000 ALTER TABLE `fcuserlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcuserorgrole`
--

DROP TABLE IF EXISTS `fcuserorgrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcuserorgrole` (
  `uor_id` int(11) NOT NULL AUTO_INCREMENT,
  `uor_usrid` varchar(50) DEFAULT NULL,
  `uor_orgid` int(11) DEFAULT NULL,
  `uor_rolid` int(11) DEFAULT NULL,
  `uor_seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`uor_id`),
  UNIQUE KEY `const_vuserorgrole_unikey` (`uor_usrid`,`uor_orgid`,`uor_rolid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcuserorgrole`
--

LOCK TABLES `fcuserorgrole` WRITE;
/*!40000 ALTER TABLE `fcuserorgrole` DISABLE KEYS */;
INSERT INTO `fcuserorgrole` VALUES (1,'admin',1,1,NULL),(9,'sony02',4,1,1),(12,'sony012',3,1,1),(13,'sony0123',3,1,1),(14,'admin2',1,1,1),(15,'sony03',3,1,1),(16,'sony01',3,1,1);
/*!40000 ALTER TABLE `fcuserorgrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcusersession`
--

DROP TABLE IF EXISTS `fcusersession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcusersession` (
  `us_id` int(11) NOT NULL AUTO_INCREMENT,
  `us_sessid` varchar(40) DEFAULT NULL,
  `us_userid` varchar(50) DEFAULT NULL,
  `us_ip` varchar(45) DEFAULT NULL,
  `us_active` varchar(4) DEFAULT 'Y',
  `us_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `us_last_active` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `us_forcecloseby` int(11) DEFAULT NULL,
  PRIMARY KEY (`us_id`),
  KEY `usersession_idx1` (`us_sessid`),
  KEY `usersession_idx2` (`us_userid`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcusersession`
--

LOCK TABLES `fcusersession` WRITE;
/*!40000 ALTER TABLE `fcusersession` DISABLE KEYS */;
INSERT INTO `fcusersession` VALUES (213,'gp83ei9d0qqiq4svsulvulf4a6','sony01','127.0.0.1','Y','2013-12-22 09:57:18','2013-12-22 09:57:18',NULL),(217,'8ku4isss00c9n87lluqa21sq77','admin','127.0.0.1','Y','2014-01-05 09:05:15','2014-01-05 09:05:15',NULL),(219,'eljgvdgr7ig4k1d42j2gef6kd4','admin2','127.0.0.1','Y','2014-01-05 09:09:44','2014-01-05 09:09:44',NULL);
/*!40000 ALTER TABLE `fcusersession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fonginput`
--

DROP TABLE IF EXISTS `fonginput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fonginput` (
  `fi_id` int(11) NOT NULL AUTO_INCREMENT,
  `fi_created` timestamp NULL DEFAULT NULL,
  `fi_text` varchar(200) DEFAULT NULL,
  `fi_textarea` text,
  `fi_select` varchar(100) DEFAULT NULL,
  `fi_multiselect` varchar(1000) DEFAULT NULL,
  `fi_checkbox` varchar(1000) DEFAULT NULL,
  `fi_radio` varchar(50) DEFAULT NULL,
  `fi_date` timestamp NULL DEFAULT NULL,
  `fi_integer` int(11) DEFAULT NULL,
  `fi_html` text,
  PRIMARY KEY (`fi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fonginput`
--

LOCK TABLES `fonginput` WRITE;
/*!40000 ALTER TABLE `fonginput` DISABLE KEYS */;
/*!40000 ALTER TABLE `fonginput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smboard`
--

DROP TABLE IF EXISTS `smboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smboard` (
  `sb_id` int(11) NOT NULL AUTO_INCREMENT,
  `sb_cusid` int(11) DEFAULT NULL,
  `sb_sgid` int(11) DEFAULT NULL,
  `sb_slfid` int(11) DEFAULT NULL,
  `sb_parentid` int(11) DEFAULT NULL,
  `sb_barcode` varchar(50) DEFAULT NULL,
  `sb_createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sb_id`),
  UNIQUE KEY `const_smboard_sb_barcode` (`sb_barcode`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smboard`
--

LOCK TABLES `smboard` WRITE;
/*!40000 ALTER TABLE `smboard` DISABLE KEYS */;
INSERT INTO `smboard` VALUES (2,2,2,2,-1,'1650-A2-00000005','2013-11-13 13:16:06'),(3,1,3,6,-1,'1000-1000-A1-00000006','2013-11-18 09:16:21'),(4,1,3,6,-1,'1000-A1-00000007','2013-11-18 09:18:02'),(5,1,3,1,-1,'1250-A1-00000008','2013-11-18 09:18:28'),(6,1,3,1,-1,'1250-A1-00000009','2013-11-18 09:18:35'),(7,1,1,2,-1,'1250-A2-00000010','2013-11-18 09:19:43'),(8,1,2,5,-1,'1650-A2-00000011','2013-11-18 09:20:33'),(9,1,2,4,-1,'1650-A1-00000012','2013-11-18 09:21:00'),(10,1,3,6,-1,'1000-A1-00000013','2013-11-18 09:22:01');
/*!40000 ALTER TABLE `smboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smbtransaction`
--

DROP TABLE IF EXISTS `smbtransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smbtransaction` (
  `smb_id` int(11) NOT NULL AUTO_INCREMENT,
  `smb_sbid` int(11) DEFAULT NULL,
  `smb_printdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `smb_printqty` int(11) DEFAULT NULL,
  `smb_saleamount` decimal(20,4) DEFAULT NULL,
  `smb_remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`smb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smbtransaction`
--

LOCK TABLES `smbtransaction` WRITE;
/*!40000 ALTER TABLE `smbtransaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `smbtransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smcustomer`
--

DROP TABLE IF EXISTS `smcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smcustomer` (
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(200) DEFAULT NULL,
  `cus_regno` varchar(100) DEFAULT NULL,
  `cus_masterid` varchar(100) DEFAULT NULL,
  `cus_contactno` varchar(20) DEFAULT NULL,
  `cus_orgid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smcustomer`
--

LOCK TABLES `smcustomer` WRITE;
/*!40000 ALTER TABLE `smcustomer` DISABLE KEYS */;
INSERT INTO `smcustomer` VALUES (1,'Sony','S13812-V','MS09-13-A31',NULL,NULL),(2,'Samsung','9014555-V','MS09-11-B31',NULL,NULL),(3,'LG','8555129-V','ML09-19-D11',NULL,NULL),(4,'Panasonic','P92141-V','MP09-31-F11',NULL,NULL),(5,'Electrolux','E22515-V','MK15-44-E11',NULL,NULL),(6,'Asus','A22515-V','MS41-77-E11',NULL,NULL),(7,'New Company','REg1234',NULL,NULL,NULL),(8,'Company 2','REg2222222',NULL,NULL,NULL),(9,'Company 3','Reg1234',NULL,NULL,NULL),(10,'New Company','Reg11','MASTE123','012-1234',NULL),(11,'CompanyA','A',NULL,NULL,NULL),(12,'CompanyB','B',NULL,NULL,NULL),(13,'CompanyC','C',NULL,NULL,NULL),(14,'CompanyD','D',NULL,NULL,NULL),(15,'CompanyE','E',NULL,NULL,NULL),(16,'CompanyF','F',NULL,NULL,NULL),(17,'CompanyG','G',NULL,NULL,NULL),(18,'CompanyH','H',NULL,NULL,NULL),(19,'CompanyI','I',NULL,NULL,NULL),(20,'CompanyJ','J',NULL,NULL,NULL),(21,'CompanyL','L',NULL,NULL,NULL),(22,'CompanyM','M',NULL,NULL,NULL),(23,'CompanyN','N',NULL,NULL,NULL),(24,'CompanyO','O',NULL,NULL,NULL),(25,'CompanyP','P',NULL,NULL,NULL),(26,'CompanyQ','Q','Q','Q',NULL),(27,'CompanyR','R','R','R',NULL),(28,'CompanyS','S','S','S',NULL),(29,'CompanyT','T','T','T',NULL),(30,'CompanyU','U','U','U',NULL),(31,'CompanyV','V','V','V',NULL),(32,'TestFinal','Final','Final','Final',NULL),(59,'New Cust 1','New Cust 1','New Cust 1','New Cust 1',NULL),(60,'Danny Foo','DF001','DF001','DF001',NULL),(61,'Fong1234','Fong1234','Fong1234','Fong1234',NULL),(62,'cusname','reg001','reg001',NULL,1),(63,'cusname','reg001','reg001',NULL,2);
/*!40000 ALTER TABLE `smcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smorgpackage`
--

DROP TABLE IF EXISTS `smorgpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smorgpackage` (
  `op_id` int(11) NOT NULL AUTO_INCREMENT,
  `op_orgid` int(11) DEFAULT NULL,
  `op_packageid` int(11) DEFAULT NULL,
  `op_created` datetime DEFAULT NULL,
  `op_createby` varchar(50) DEFAULT NULL,
  `op_status` tinyint(4) DEFAULT '0',
  `op_startdate` date DEFAULT NULL,
  `op_enddate` date DEFAULT NULL,
  `op_enddateori` date DEFAULT NULL,
  `op_previd` int(11) DEFAULT NULL,
  PRIMARY KEY (`op_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smorgpackage`
--

LOCK TABLES `smorgpackage` WRITE;
/*!40000 ALTER TABLE `smorgpackage` DISABLE KEYS */;
INSERT INTO `smorgpackage` VALUES (4,2,1,'2014-01-05 19:41:23','admin',1,'2014-01-05','2014-04-04','2014-04-04',NULL);
/*!40000 ALTER TABLE `smorgpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smpackage`
--

DROP TABLE IF EXISTS `smpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smpackage` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `pk_description` varchar(200) DEFAULT NULL,
  `pk_price` decimal(10,2) DEFAULT NULL,
  `pk_minplate` int(11) DEFAULT NULL,
  `pk_maxplate` int(11) DEFAULT NULL,
  `pk_maxuser` int(11) DEFAULT NULL,
  `pk_maxorg` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smpackage`
--

LOCK TABLES `smpackage` WRITE;
/*!40000 ALTER TABLE `smpackage` DISABLE KEYS */;
INSERT INTO `smpackage` VALUES (1,'Package 1',200.00,1,10000,10,5),(2,'Package 2',400.00,1,20000,NULL,NULL),(3,'Package 3',600.00,1,999999999,NULL,NULL);
/*!40000 ALTER TABLE `smpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smplate`
--

DROP TABLE IF EXISTS `smplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smplate` (
  `sp_id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_cusid` int(11) NOT NULL COMMENT 'Foreign key to customer id',
  `sp_sfid` int(11) NOT NULL COMMENT 'Foreign key to smshelfsetting sf_id',
  `sp_parentid` int(11) NOT NULL DEFAULT '-1',
  `sp_psid` int(11) NOT NULL COMMENT 'Foreign Key to smplateslot ps_id',
  `sp_masterid` varchar(100) DEFAULT NULL,
  `sp_platename` varchar(100) DEFAULT NULL,
  `sp_platemodel` varchar(100) DEFAULT NULL,
  `sp_createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sp_createdby` varchar(50) DEFAULT NULL,
  `sp_status` varchar(20) DEFAULT 'ACTIVE' COMMENT 'ACTIVE (Current active using) DAMAGE (Plate damage) THROW (Throw because no repeat order)',
  PRIMARY KEY (`sp_id`),
  KEY `fk_sp_psid_ps_id` (`sp_psid`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smplate`
--

LOCK TABLES `smplate` WRITE;
/*!40000 ALTER TABLE `smplate` DISABLE KEYS */;
INSERT INTO `smplate` VALUES (27,1,11,-1,272,NULL,'Sony optional plate name','Sony optional plate model','2013-12-12 08:17:05','admin','ACTIVE'),(28,3,11,-1,273,NULL,'A1','A1','2013-12-12 08:24:56','admin','ACTIVE'),(44,57,11,-1,289,NULL,'CUST20','CUST20','2013-12-12 08:44:51','admin','ACTIVE'),(45,58,11,-1,290,NULL,'CUST22','CUST22','2013-12-12 08:45:37','admin','ACTIVE'),(46,59,11,-1,291,NULL,'New Cust 1','New Cust 1','2013-12-12 08:58:37','admin','ACTIVE'),(47,60,11,-1,292,NULL,'DF001','DF001','2013-12-14 07:06:50','admin','ACTIVE'),(48,60,11,-1,293,NULL,'DF001','DF001','2013-12-14 07:07:11','admin','ACTIVE'),(49,61,11,-1,294,NULL,'Fong1234','Fong1234','2013-12-14 12:51:54','admin','ACTIVE');
/*!40000 ALTER TABLE `smplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smplateslot`
--

DROP TABLE IF EXISTS `smplateslot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smplateslot` (
  `ps_id` int(11) NOT NULL AUTO_INCREMENT,
  `ps_sfid` int(11) NOT NULL,
  `ps_slotno` varchar(20) NOT NULL,
  `ps_code` varchar(50) NOT NULL,
  `ps_available` varchar(2) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ps_id`)
) ENGINE=InnoDB AUTO_INCREMENT=851 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smplateslot`
--

LOCK TABLES `smplateslot` WRITE;
/*!40000 ALTER TABLE `smplateslot` DISABLE KEYS */;
INSERT INTO `smplateslot` VALUES (251,11,'0001','1000-A1-0001','N'),(252,11,'0002','1000-A1-0002','N'),(253,11,'0003','1000-A1-0003','N'),(254,11,'0004','1000-A1-0004','N'),(255,11,'0005','1000-A1-0005','N'),(256,11,'0006','1000-A1-0006','N'),(257,11,'0007','1000-A1-0007','N'),(258,11,'0008','1000-A1-0008','N'),(259,11,'0009','1000-A1-0009','N'),(260,11,'0010','1000-A1-0010','N'),(261,11,'0011','1000-A1-0011','N'),(262,11,'0012','1000-A1-0012','N'),(263,11,'0013','1000-A1-0013','N'),(264,11,'0014','1000-A1-0014','N'),(265,11,'0015','1000-A1-0015','N'),(266,11,'0016','1000-A1-0016','N'),(267,11,'0017','1000-A1-0017','N'),(268,11,'0018','1000-A1-0018','N'),(269,11,'0019','1000-A1-0019','N'),(270,11,'0020','1000-A1-0020','N'),(271,11,'0021','1000-A1-0021','N'),(272,11,'0022','1000-A1-0022','N'),(273,11,'0023','1000-A1-0023','N'),(274,11,'0024','1000-A1-0024','N'),(275,11,'0025','1000-A1-0025','N'),(276,11,'0026','1000-A1-0026','N'),(277,11,'0027','1000-A1-0027','N'),(278,11,'0028','1000-A1-0028','N'),(279,11,'0029','1000-A1-0029','N'),(280,11,'0030','1000-A1-0030','N'),(281,11,'0031','1000-A1-0031','N'),(282,11,'0032','1000-A1-0032','N'),(283,11,'0033','1000-A1-0033','N'),(284,11,'0034','1000-A1-0034','N'),(285,11,'0035','1000-A1-0035','N'),(286,11,'0036','1000-A1-0036','N'),(287,11,'0037','1000-A1-0037','N'),(288,11,'0038','1000-A1-0038','N'),(289,11,'0039','1000-A1-0039','N'),(290,11,'0040','1000-A1-0040','N'),(291,11,'0041','1000-A1-0041','N'),(292,11,'0042','1000-A1-0042','N'),(293,11,'0043','1000-A1-0043','N'),(294,11,'0044','1000-A1-0044','N'),(295,11,'0045','1000-A1-0045','Y'),(296,11,'0046','1000-A1-0046','Y'),(297,11,'0047','1000-A1-0047','Y'),(298,11,'0048','1000-A1-0048','Y'),(299,11,'0049','1000-A1-0049','Y'),(300,11,'0050','1000-A1-0050','Y'),(301,11,'0051','1000-A1-0051','Y'),(302,11,'0052','1000-A1-0052','Y'),(303,11,'0053','1000-A1-0053','Y'),(304,11,'0054','1000-A1-0054','Y'),(305,11,'0055','1000-A1-0055','Y'),(306,11,'0056','1000-A1-0056','Y'),(307,11,'0057','1000-A1-0057','Y'),(308,11,'0058','1000-A1-0058','Y'),(309,11,'0059','1000-A1-0059','Y'),(310,11,'0060','1000-A1-0060','Y'),(311,11,'0061','1000-A1-0061','Y'),(312,11,'0062','1000-A1-0062','Y'),(313,11,'0063','1000-A1-0063','Y'),(314,11,'0064','1000-A1-0064','Y'),(315,11,'0065','1000-A1-0065','Y'),(316,11,'0066','1000-A1-0066','Y'),(317,11,'0067','1000-A1-0067','Y'),(318,11,'0068','1000-A1-0068','Y'),(319,11,'0069','1000-A1-0069','Y'),(320,11,'0070','1000-A1-0070','Y'),(321,11,'0071','1000-A1-0071','Y'),(322,11,'0072','1000-A1-0072','Y'),(323,11,'0073','1000-A1-0073','Y'),(324,11,'0074','1000-A1-0074','Y'),(325,11,'0075','1000-A1-0075','Y'),(326,11,'0076','1000-A1-0076','Y'),(327,11,'0077','1000-A1-0077','Y'),(328,11,'0078','1000-A1-0078','Y'),(329,11,'0079','1000-A1-0079','Y'),(330,11,'0080','1000-A1-0080','Y'),(331,11,'0081','1000-A1-0081','Y'),(332,11,'0082','1000-A1-0082','Y'),(333,11,'0083','1000-A1-0083','Y'),(334,11,'0084','1000-A1-0084','Y'),(335,11,'0085','1000-A1-0085','Y'),(336,11,'0086','1000-A1-0086','Y'),(337,11,'0087','1000-A1-0087','Y'),(338,11,'0088','1000-A1-0088','Y'),(339,11,'0089','1000-A1-0089','Y'),(340,11,'0090','1000-A1-0090','Y'),(341,11,'0091','1000-A1-0091','Y'),(342,11,'0092','1000-A1-0092','Y'),(343,11,'0093','1000-A1-0093','Y'),(344,11,'0094','1000-A1-0094','Y'),(345,11,'0095','1000-A1-0095','Y'),(346,11,'0096','1000-A1-0096','Y'),(347,11,'0097','1000-A1-0097','Y'),(348,11,'0098','1000-A1-0098','Y'),(349,11,'0099','1000-A1-0099','Y'),(350,11,'0100','1000-A1-0100','Y'),(351,11,'0101','1000-A1-0101','Y'),(352,11,'0102','1000-A1-0102','Y'),(353,11,'0103','1000-A1-0103','Y'),(354,11,'0104','1000-A1-0104','Y'),(355,11,'0105','1000-A1-0105','Y'),(356,11,'0106','1000-A1-0106','Y'),(357,11,'0107','1000-A1-0107','Y'),(358,11,'0108','1000-A1-0108','Y'),(359,11,'0109','1000-A1-0109','Y'),(360,11,'0110','1000-A1-0110','Y'),(361,11,'0111','1000-A1-0111','Y'),(362,11,'0112','1000-A1-0112','Y'),(363,11,'0113','1000-A1-0113','Y'),(364,11,'0114','1000-A1-0114','Y'),(365,11,'0115','1000-A1-0115','Y'),(366,11,'0116','1000-A1-0116','Y'),(367,11,'0117','1000-A1-0117','Y'),(368,11,'0118','1000-A1-0118','Y'),(369,11,'0119','1000-A1-0119','Y'),(370,11,'0120','1000-A1-0120','Y'),(371,11,'0121','1000-A1-0121','Y'),(372,11,'0122','1000-A1-0122','Y'),(373,11,'0123','1000-A1-0123','Y'),(374,11,'0124','1000-A1-0124','Y'),(375,11,'0125','1000-A1-0125','Y'),(376,11,'0126','1000-A1-0126','Y'),(377,11,'0127','1000-A1-0127','Y'),(378,11,'0128','1000-A1-0128','Y'),(379,11,'0129','1000-A1-0129','Y'),(380,11,'0130','1000-A1-0130','Y'),(381,11,'0131','1000-A1-0131','Y'),(382,11,'0132','1000-A1-0132','Y'),(383,11,'0133','1000-A1-0133','Y'),(384,11,'0134','1000-A1-0134','Y'),(385,11,'0135','1000-A1-0135','Y'),(386,11,'0136','1000-A1-0136','Y'),(387,11,'0137','1000-A1-0137','Y'),(388,11,'0138','1000-A1-0138','Y'),(389,11,'0139','1000-A1-0139','Y'),(390,11,'0140','1000-A1-0140','Y'),(391,11,'0141','1000-A1-0141','Y'),(392,11,'0142','1000-A1-0142','Y'),(393,11,'0143','1000-A1-0143','Y'),(394,11,'0144','1000-A1-0144','Y'),(395,11,'0145','1000-A1-0145','Y'),(396,11,'0146','1000-A1-0146','Y'),(397,11,'0147','1000-A1-0147','Y'),(398,11,'0148','1000-A1-0148','Y'),(399,11,'0149','1000-A1-0149','Y'),(400,11,'0150','1000-A1-0150','Y'),(401,11,'0151','1000-A1-0151','Y'),(402,11,'0152','1000-A1-0152','Y'),(403,11,'0153','1000-A1-0153','Y'),(404,11,'0154','1000-A1-0154','Y'),(405,11,'0155','1000-A1-0155','Y'),(406,11,'0156','1000-A1-0156','Y'),(407,11,'0157','1000-A1-0157','Y'),(408,11,'0158','1000-A1-0158','Y'),(409,11,'0159','1000-A1-0159','Y'),(410,11,'0160','1000-A1-0160','Y'),(411,11,'0161','1000-A1-0161','Y'),(412,11,'0162','1000-A1-0162','Y'),(413,11,'0163','1000-A1-0163','Y'),(414,11,'0164','1000-A1-0164','Y'),(415,11,'0165','1000-A1-0165','Y'),(416,11,'0166','1000-A1-0166','Y'),(417,11,'0167','1000-A1-0167','Y'),(418,11,'0168','1000-A1-0168','Y'),(419,11,'0169','1000-A1-0169','Y'),(420,11,'0170','1000-A1-0170','Y'),(421,11,'0171','1000-A1-0171','Y'),(422,11,'0172','1000-A1-0172','Y'),(423,11,'0173','1000-A1-0173','Y'),(424,11,'0174','1000-A1-0174','Y'),(425,11,'0175','1000-A1-0175','Y'),(426,11,'0176','1000-A1-0176','Y'),(427,11,'0177','1000-A1-0177','Y'),(428,11,'0178','1000-A1-0178','Y'),(429,11,'0179','1000-A1-0179','Y'),(430,11,'0180','1000-A1-0180','Y'),(431,11,'0181','1000-A1-0181','Y'),(432,11,'0182','1000-A1-0182','Y'),(433,11,'0183','1000-A1-0183','Y'),(434,11,'0184','1000-A1-0184','Y'),(435,11,'0185','1000-A1-0185','Y'),(436,11,'0186','1000-A1-0186','Y'),(437,11,'0187','1000-A1-0187','Y'),(438,11,'0188','1000-A1-0188','Y'),(439,11,'0189','1000-A1-0189','Y'),(440,11,'0190','1000-A1-0190','Y'),(441,11,'0191','1000-A1-0191','Y'),(442,11,'0192','1000-A1-0192','Y'),(443,11,'0193','1000-A1-0193','Y'),(444,11,'0194','1000-A1-0194','Y'),(445,11,'0195','1000-A1-0195','Y'),(446,11,'0196','1000-A1-0196','Y'),(447,11,'0197','1000-A1-0197','Y'),(448,11,'0198','1000-A1-0198','Y'),(449,11,'0199','1000-A1-0199','Y'),(450,11,'0200','1000-A1-0200','Y'),(451,12,'0001','1000-A2-0001','Y'),(452,12,'0002','1000-A2-0002','Y'),(453,12,'0003','1000-A2-0003','Y'),(454,12,'0004','1000-A2-0004','Y'),(455,12,'0005','1000-A2-0005','Y'),(456,12,'0006','1000-A2-0006','Y'),(457,12,'0007','1000-A2-0007','Y'),(458,12,'0008','1000-A2-0008','Y'),(459,12,'0009','1000-A2-0009','Y'),(460,12,'0010','1000-A2-0010','Y'),(461,12,'0011','1000-A2-0011','Y'),(462,12,'0012','1000-A2-0012','Y'),(463,12,'0013','1000-A2-0013','Y'),(464,12,'0014','1000-A2-0014','Y'),(465,12,'0015','1000-A2-0015','Y'),(466,12,'0016','1000-A2-0016','Y'),(467,12,'0017','1000-A2-0017','Y'),(468,12,'0018','1000-A2-0018','Y'),(469,12,'0019','1000-A2-0019','Y'),(470,12,'0020','1000-A2-0020','Y'),(471,12,'0021','1000-A2-0021','Y'),(472,12,'0022','1000-A2-0022','Y'),(473,12,'0023','1000-A2-0023','Y'),(474,12,'0024','1000-A2-0024','Y'),(475,12,'0025','1000-A2-0025','Y'),(476,12,'0026','1000-A2-0026','Y'),(477,12,'0027','1000-A2-0027','Y'),(478,12,'0028','1000-A2-0028','Y'),(479,12,'0029','1000-A2-0029','Y'),(480,12,'0030','1000-A2-0030','Y'),(481,12,'0031','1000-A2-0031','Y'),(482,12,'0032','1000-A2-0032','Y'),(483,12,'0033','1000-A2-0033','Y'),(484,12,'0034','1000-A2-0034','Y'),(485,12,'0035','1000-A2-0035','Y'),(486,12,'0036','1000-A2-0036','Y'),(487,12,'0037','1000-A2-0037','Y'),(488,12,'0038','1000-A2-0038','Y'),(489,12,'0039','1000-A2-0039','Y'),(490,12,'0040','1000-A2-0040','Y'),(491,12,'0041','1000-A2-0041','Y'),(492,12,'0042','1000-A2-0042','Y'),(493,12,'0043','1000-A2-0043','Y'),(494,12,'0044','1000-A2-0044','Y'),(495,12,'0045','1000-A2-0045','Y'),(496,12,'0046','1000-A2-0046','Y'),(497,12,'0047','1000-A2-0047','Y'),(498,12,'0048','1000-A2-0048','Y'),(499,12,'0049','1000-A2-0049','Y'),(500,12,'0050','1000-A2-0050','Y'),(501,12,'0051','1000-A2-0051','Y'),(502,12,'0052','1000-A2-0052','Y'),(503,12,'0053','1000-A2-0053','Y'),(504,12,'0054','1000-A2-0054','Y'),(505,12,'0055','1000-A2-0055','Y'),(506,12,'0056','1000-A2-0056','Y'),(507,12,'0057','1000-A2-0057','Y'),(508,12,'0058','1000-A2-0058','Y'),(509,12,'0059','1000-A2-0059','Y'),(510,12,'0060','1000-A2-0060','Y'),(511,12,'0061','1000-A2-0061','Y'),(512,12,'0062','1000-A2-0062','Y'),(513,12,'0063','1000-A2-0063','Y'),(514,12,'0064','1000-A2-0064','Y'),(515,12,'0065','1000-A2-0065','Y'),(516,12,'0066','1000-A2-0066','Y'),(517,12,'0067','1000-A2-0067','Y'),(518,12,'0068','1000-A2-0068','Y'),(519,12,'0069','1000-A2-0069','Y'),(520,12,'0070','1000-A2-0070','Y'),(521,12,'0071','1000-A2-0071','Y'),(522,12,'0072','1000-A2-0072','Y'),(523,12,'0073','1000-A2-0073','Y'),(524,12,'0074','1000-A2-0074','Y'),(525,12,'0075','1000-A2-0075','Y'),(526,12,'0076','1000-A2-0076','Y'),(527,12,'0077','1000-A2-0077','Y'),(528,12,'0078','1000-A2-0078','Y'),(529,12,'0079','1000-A2-0079','Y'),(530,12,'0080','1000-A2-0080','Y'),(531,12,'0081','1000-A2-0081','Y'),(532,12,'0082','1000-A2-0082','Y'),(533,12,'0083','1000-A2-0083','Y'),(534,12,'0084','1000-A2-0084','Y'),(535,12,'0085','1000-A2-0085','Y'),(536,12,'0086','1000-A2-0086','Y'),(537,12,'0087','1000-A2-0087','Y'),(538,12,'0088','1000-A2-0088','Y'),(539,12,'0089','1000-A2-0089','Y'),(540,12,'0090','1000-A2-0090','Y'),(541,12,'0091','1000-A2-0091','Y'),(542,12,'0092','1000-A2-0092','Y'),(543,12,'0093','1000-A2-0093','Y'),(544,12,'0094','1000-A2-0094','Y'),(545,12,'0095','1000-A2-0095','Y'),(546,12,'0096','1000-A2-0096','Y'),(547,12,'0097','1000-A2-0097','Y'),(548,12,'0098','1000-A2-0098','Y'),(549,12,'0099','1000-A2-0099','Y'),(550,12,'0100','1000-A2-0100','Y'),(551,12,'0101','1000-A2-0101','Y'),(552,12,'0102','1000-A2-0102','Y'),(553,12,'0103','1000-A2-0103','Y'),(554,12,'0104','1000-A2-0104','Y'),(555,12,'0105','1000-A2-0105','Y'),(556,12,'0106','1000-A2-0106','Y'),(557,12,'0107','1000-A2-0107','Y'),(558,12,'0108','1000-A2-0108','Y'),(559,12,'0109','1000-A2-0109','Y'),(560,12,'0110','1000-A2-0110','Y'),(561,12,'0111','1000-A2-0111','Y'),(562,12,'0112','1000-A2-0112','Y'),(563,12,'0113','1000-A2-0113','Y'),(564,12,'0114','1000-A2-0114','Y'),(565,12,'0115','1000-A2-0115','Y'),(566,12,'0116','1000-A2-0116','Y'),(567,12,'0117','1000-A2-0117','Y'),(568,12,'0118','1000-A2-0118','Y'),(569,12,'0119','1000-A2-0119','Y'),(570,12,'0120','1000-A2-0120','Y'),(571,12,'0121','1000-A2-0121','Y'),(572,12,'0122','1000-A2-0122','Y'),(573,12,'0123','1000-A2-0123','Y'),(574,12,'0124','1000-A2-0124','Y'),(575,12,'0125','1000-A2-0125','Y'),(576,12,'0126','1000-A2-0126','Y'),(577,12,'0127','1000-A2-0127','Y'),(578,12,'0128','1000-A2-0128','Y'),(579,12,'0129','1000-A2-0129','Y'),(580,12,'0130','1000-A2-0130','Y'),(581,12,'0131','1000-A2-0131','Y'),(582,12,'0132','1000-A2-0132','Y'),(583,12,'0133','1000-A2-0133','Y'),(584,12,'0134','1000-A2-0134','Y'),(585,12,'0135','1000-A2-0135','Y'),(586,12,'0136','1000-A2-0136','Y'),(587,12,'0137','1000-A2-0137','Y'),(588,12,'0138','1000-A2-0138','Y'),(589,12,'0139','1000-A2-0139','Y'),(590,12,'0140','1000-A2-0140','Y'),(591,12,'0141','1000-A2-0141','Y'),(592,12,'0142','1000-A2-0142','Y'),(593,12,'0143','1000-A2-0143','Y'),(594,12,'0144','1000-A2-0144','Y'),(595,12,'0145','1000-A2-0145','Y'),(596,12,'0146','1000-A2-0146','Y'),(597,12,'0147','1000-A2-0147','Y'),(598,12,'0148','1000-A2-0148','Y'),(599,12,'0149','1000-A2-0149','Y'),(600,12,'0150','1000-A2-0150','Y'),(601,12,'0151','1000-A2-0151','Y'),(602,12,'0152','1000-A2-0152','Y'),(603,12,'0153','1000-A2-0153','Y'),(604,12,'0154','1000-A2-0154','Y'),(605,12,'0155','1000-A2-0155','Y'),(606,12,'0156','1000-A2-0156','Y'),(607,12,'0157','1000-A2-0157','Y'),(608,12,'0158','1000-A2-0158','Y'),(609,12,'0159','1000-A2-0159','Y'),(610,12,'0160','1000-A2-0160','Y'),(611,12,'0161','1000-A2-0161','Y'),(612,12,'0162','1000-A2-0162','Y'),(613,12,'0163','1000-A2-0163','Y'),(614,12,'0164','1000-A2-0164','Y'),(615,12,'0165','1000-A2-0165','Y'),(616,12,'0166','1000-A2-0166','Y'),(617,12,'0167','1000-A2-0167','Y'),(618,12,'0168','1000-A2-0168','Y'),(619,12,'0169','1000-A2-0169','Y'),(620,12,'0170','1000-A2-0170','Y'),(621,12,'0171','1000-A2-0171','Y'),(622,12,'0172','1000-A2-0172','Y'),(623,12,'0173','1000-A2-0173','Y'),(624,12,'0174','1000-A2-0174','Y'),(625,12,'0175','1000-A2-0175','Y'),(626,12,'0176','1000-A2-0176','Y'),(627,12,'0177','1000-A2-0177','Y'),(628,12,'0178','1000-A2-0178','Y'),(629,12,'0179','1000-A2-0179','Y'),(630,12,'0180','1000-A2-0180','Y'),(631,12,'0181','1000-A2-0181','Y'),(632,12,'0182','1000-A2-0182','Y'),(633,12,'0183','1000-A2-0183','Y'),(634,12,'0184','1000-A2-0184','Y'),(635,12,'0185','1000-A2-0185','Y'),(636,12,'0186','1000-A2-0186','Y'),(637,12,'0187','1000-A2-0187','Y'),(638,12,'0188','1000-A2-0188','Y'),(639,12,'0189','1000-A2-0189','Y'),(640,12,'0190','1000-A2-0190','Y'),(641,12,'0191','1000-A2-0191','Y'),(642,12,'0192','1000-A2-0192','Y'),(643,12,'0193','1000-A2-0193','Y'),(644,12,'0194','1000-A2-0194','Y'),(645,12,'0195','1000-A2-0195','Y'),(646,12,'0196','1000-A2-0196','Y'),(647,12,'0197','1000-A2-0197','Y'),(648,12,'0198','1000-A2-0198','Y'),(649,12,'0199','1000-A2-0199','Y'),(650,12,'0200','1000-A2-0200','Y'),(651,13,'0001','1000-A3-0001','Y'),(652,13,'0002','1000-A3-0002','Y'),(653,13,'0003','1000-A3-0003','Y'),(654,13,'0004','1000-A3-0004','Y'),(655,13,'0005','1000-A3-0005','Y'),(656,13,'0006','1000-A3-0006','Y'),(657,13,'0007','1000-A3-0007','Y'),(658,13,'0008','1000-A3-0008','Y'),(659,13,'0009','1000-A3-0009','Y'),(660,13,'0010','1000-A3-0010','Y'),(661,13,'0011','1000-A3-0011','Y'),(662,13,'0012','1000-A3-0012','Y'),(663,13,'0013','1000-A3-0013','Y'),(664,13,'0014','1000-A3-0014','Y'),(665,13,'0015','1000-A3-0015','Y'),(666,13,'0016','1000-A3-0016','Y'),(667,13,'0017','1000-A3-0017','Y'),(668,13,'0018','1000-A3-0018','Y'),(669,13,'0019','1000-A3-0019','Y'),(670,13,'0020','1000-A3-0020','Y'),(671,13,'0021','1000-A3-0021','Y'),(672,13,'0022','1000-A3-0022','Y'),(673,13,'0023','1000-A3-0023','Y'),(674,13,'0024','1000-A3-0024','Y'),(675,13,'0025','1000-A3-0025','Y'),(676,13,'0026','1000-A3-0026','Y'),(677,13,'0027','1000-A3-0027','Y'),(678,13,'0028','1000-A3-0028','Y'),(679,13,'0029','1000-A3-0029','Y'),(680,13,'0030','1000-A3-0030','Y'),(681,13,'0031','1000-A3-0031','Y'),(682,13,'0032','1000-A3-0032','Y'),(683,13,'0033','1000-A3-0033','Y'),(684,13,'0034','1000-A3-0034','Y'),(685,13,'0035','1000-A3-0035','Y'),(686,13,'0036','1000-A3-0036','Y'),(687,13,'0037','1000-A3-0037','Y'),(688,13,'0038','1000-A3-0038','Y'),(689,13,'0039','1000-A3-0039','Y'),(690,13,'0040','1000-A3-0040','Y'),(691,13,'0041','1000-A3-0041','Y'),(692,13,'0042','1000-A3-0042','Y'),(693,13,'0043','1000-A3-0043','Y'),(694,13,'0044','1000-A3-0044','Y'),(695,13,'0045','1000-A3-0045','Y'),(696,13,'0046','1000-A3-0046','Y'),(697,13,'0047','1000-A3-0047','Y'),(698,13,'0048','1000-A3-0048','Y'),(699,13,'0049','1000-A3-0049','Y'),(700,13,'0050','1000-A3-0050','Y'),(701,13,'0051','1000-A3-0051','Y'),(702,13,'0052','1000-A3-0052','Y'),(703,13,'0053','1000-A3-0053','Y'),(704,13,'0054','1000-A3-0054','Y'),(705,13,'0055','1000-A3-0055','Y'),(706,13,'0056','1000-A3-0056','Y'),(707,13,'0057','1000-A3-0057','Y'),(708,13,'0058','1000-A3-0058','Y'),(709,13,'0059','1000-A3-0059','Y'),(710,13,'0060','1000-A3-0060','Y'),(711,13,'0061','1000-A3-0061','Y'),(712,13,'0062','1000-A3-0062','Y'),(713,13,'0063','1000-A3-0063','Y'),(714,13,'0064','1000-A3-0064','Y'),(715,13,'0065','1000-A3-0065','Y'),(716,13,'0066','1000-A3-0066','Y'),(717,13,'0067','1000-A3-0067','Y'),(718,13,'0068','1000-A3-0068','Y'),(719,13,'0069','1000-A3-0069','Y'),(720,13,'0070','1000-A3-0070','Y'),(721,13,'0071','1000-A3-0071','Y'),(722,13,'0072','1000-A3-0072','Y'),(723,13,'0073','1000-A3-0073','Y'),(724,13,'0074','1000-A3-0074','Y'),(725,13,'0075','1000-A3-0075','Y'),(726,13,'0076','1000-A3-0076','Y'),(727,13,'0077','1000-A3-0077','Y'),(728,13,'0078','1000-A3-0078','Y'),(729,13,'0079','1000-A3-0079','Y'),(730,13,'0080','1000-A3-0080','Y'),(731,13,'0081','1000-A3-0081','Y'),(732,13,'0082','1000-A3-0082','Y'),(733,13,'0083','1000-A3-0083','Y'),(734,13,'0084','1000-A3-0084','Y'),(735,13,'0085','1000-A3-0085','Y'),(736,13,'0086','1000-A3-0086','Y'),(737,13,'0087','1000-A3-0087','Y'),(738,13,'0088','1000-A3-0088','Y'),(739,13,'0089','1000-A3-0089','Y'),(740,13,'0090','1000-A3-0090','Y'),(741,13,'0091','1000-A3-0091','Y'),(742,13,'0092','1000-A3-0092','Y'),(743,13,'0093','1000-A3-0093','Y'),(744,13,'0094','1000-A3-0094','Y'),(745,13,'0095','1000-A3-0095','Y'),(746,13,'0096','1000-A3-0096','Y'),(747,13,'0097','1000-A3-0097','Y'),(748,13,'0098','1000-A3-0098','Y'),(749,13,'0099','1000-A3-0099','Y'),(750,13,'0100','1000-A3-0100','Y'),(751,13,'0101','1000-A3-0101','Y'),(752,13,'0102','1000-A3-0102','Y'),(753,13,'0103','1000-A3-0103','Y'),(754,13,'0104','1000-A3-0104','Y'),(755,13,'0105','1000-A3-0105','Y'),(756,13,'0106','1000-A3-0106','Y'),(757,13,'0107','1000-A3-0107','Y'),(758,13,'0108','1000-A3-0108','Y'),(759,13,'0109','1000-A3-0109','Y'),(760,13,'0110','1000-A3-0110','Y'),(761,13,'0111','1000-A3-0111','Y'),(762,13,'0112','1000-A3-0112','Y'),(763,13,'0113','1000-A3-0113','Y'),(764,13,'0114','1000-A3-0114','Y'),(765,13,'0115','1000-A3-0115','Y'),(766,13,'0116','1000-A3-0116','Y'),(767,13,'0117','1000-A3-0117','Y'),(768,13,'0118','1000-A3-0118','Y'),(769,13,'0119','1000-A3-0119','Y'),(770,13,'0120','1000-A3-0120','Y'),(771,13,'0121','1000-A3-0121','Y'),(772,13,'0122','1000-A3-0122','Y'),(773,13,'0123','1000-A3-0123','Y'),(774,13,'0124','1000-A3-0124','Y'),(775,13,'0125','1000-A3-0125','Y'),(776,13,'0126','1000-A3-0126','Y'),(777,13,'0127','1000-A3-0127','Y'),(778,13,'0128','1000-A3-0128','Y'),(779,13,'0129','1000-A3-0129','Y'),(780,13,'0130','1000-A3-0130','Y'),(781,13,'0131','1000-A3-0131','Y'),(782,13,'0132','1000-A3-0132','Y'),(783,13,'0133','1000-A3-0133','Y'),(784,13,'0134','1000-A3-0134','Y'),(785,13,'0135','1000-A3-0135','Y'),(786,13,'0136','1000-A3-0136','Y'),(787,13,'0137','1000-A3-0137','Y'),(788,13,'0138','1000-A3-0138','Y'),(789,13,'0139','1000-A3-0139','Y'),(790,13,'0140','1000-A3-0140','Y'),(791,13,'0141','1000-A3-0141','Y'),(792,13,'0142','1000-A3-0142','Y'),(793,13,'0143','1000-A3-0143','Y'),(794,13,'0144','1000-A3-0144','Y'),(795,13,'0145','1000-A3-0145','Y'),(796,13,'0146','1000-A3-0146','Y'),(797,13,'0147','1000-A3-0147','Y'),(798,13,'0148','1000-A3-0148','Y'),(799,13,'0149','1000-A3-0149','Y'),(800,13,'0150','1000-A3-0150','Y'),(801,13,'0151','1000-A3-0151','Y'),(802,13,'0152','1000-A3-0152','Y'),(803,13,'0153','1000-A3-0153','Y'),(804,13,'0154','1000-A3-0154','Y'),(805,13,'0155','1000-A3-0155','Y'),(806,13,'0156','1000-A3-0156','Y'),(807,13,'0157','1000-A3-0157','Y'),(808,13,'0158','1000-A3-0158','Y'),(809,13,'0159','1000-A3-0159','Y'),(810,13,'0160','1000-A3-0160','Y'),(811,13,'0161','1000-A3-0161','Y'),(812,13,'0162','1000-A3-0162','Y'),(813,13,'0163','1000-A3-0163','Y'),(814,13,'0164','1000-A3-0164','Y'),(815,13,'0165','1000-A3-0165','Y'),(816,13,'0166','1000-A3-0166','Y'),(817,13,'0167','1000-A3-0167','Y'),(818,13,'0168','1000-A3-0168','Y'),(819,13,'0169','1000-A3-0169','Y'),(820,13,'0170','1000-A3-0170','Y'),(821,13,'0171','1000-A3-0171','Y'),(822,13,'0172','1000-A3-0172','Y'),(823,13,'0173','1000-A3-0173','Y'),(824,13,'0174','1000-A3-0174','Y'),(825,13,'0175','1000-A3-0175','Y'),(826,13,'0176','1000-A3-0176','Y'),(827,13,'0177','1000-A3-0177','Y'),(828,13,'0178','1000-A3-0178','Y'),(829,13,'0179','1000-A3-0179','Y'),(830,13,'0180','1000-A3-0180','Y'),(831,13,'0181','1000-A3-0181','Y'),(832,13,'0182','1000-A3-0182','Y'),(833,13,'0183','1000-A3-0183','Y'),(834,13,'0184','1000-A3-0184','Y'),(835,13,'0185','1000-A3-0185','Y'),(836,13,'0186','1000-A3-0186','Y'),(837,13,'0187','1000-A3-0187','Y'),(838,13,'0188','1000-A3-0188','Y'),(839,13,'0189','1000-A3-0189','Y'),(840,13,'0190','1000-A3-0190','Y'),(841,13,'0191','1000-A3-0191','Y'),(842,13,'0192','1000-A3-0192','Y'),(843,13,'0193','1000-A3-0193','Y'),(844,13,'0194','1000-A3-0194','Y'),(845,13,'0195','1000-A3-0195','Y'),(846,13,'0196','1000-A3-0196','Y'),(847,13,'0197','1000-A3-0197','Y'),(848,13,'0198','1000-A3-0198','Y'),(849,13,'0199','1000-A3-0199','Y'),(850,13,'0200','1000-A3-0200','Y');
/*!40000 ALTER TABLE `smplateslot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smshelf`
--

DROP TABLE IF EXISTS `smshelf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smshelf` (
  `slf_id` int(11) NOT NULL AUTO_INCREMENT,
  `slf_sfid` int(11) DEFAULT NULL,
  `slf_code` varchar(100) DEFAULT NULL,
  `slf_row` int(11) DEFAULT NULL,
  `slf_col` int(11) DEFAULT NULL,
  `slf_qty` int(11) DEFAULT '0',
  PRIMARY KEY (`slf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smshelf`
--

LOCK TABLES `smshelf` WRITE;
/*!40000 ALTER TABLE `smshelf` DISABLE KEYS */;
/*!40000 ALTER TABLE `smshelf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smshelfgroup`
--

DROP TABLE IF EXISTS `smshelfgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smshelfgroup` (
  `sg_id` int(11) NOT NULL AUTO_INCREMENT,
  `sg_code` varchar(10) DEFAULT NULL,
  `sg_groupname` varchar(200) DEFAULT NULL,
  `sg_seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`sg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smshelfgroup`
--

LOCK TABLES `smshelfgroup` WRITE;
/*!40000 ALTER TABLE `smshelfgroup` DISABLE KEYS */;
INSERT INTO `smshelfgroup` VALUES (1,'1250','1250 Group',20),(2,'1650','1650 Group',30),(3,'1000','1000 Group',10);
/*!40000 ALTER TABLE `smshelfgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smshelfitem`
--

DROP TABLE IF EXISTS `smshelfitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smshelfitem` (
  `sfi_id` int(11) NOT NULL AUTO_INCREMENT,
  `sfi_slfid` int(11) DEFAULT NULL,
  `sfi_itemname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sfi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smshelfitem`
--

LOCK TABLES `smshelfitem` WRITE;
/*!40000 ALTER TABLE `smshelfitem` DISABLE KEYS */;
INSERT INTO `smshelfitem` VALUES (1,193,'193-1'),(2,193,'193-2'),(3,194,'194-10'),(4,194,'194-20');
/*!40000 ALTER TABLE `smshelfitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smshelfsetting`
--

DROP TABLE IF EXISTS `smshelfsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smshelfsetting` (
  `sf_id` int(11) NOT NULL AUTO_INCREMENT,
  `sf_sgid` int(11) DEFAULT NULL,
  `sf_code` varchar(10) DEFAULT NULL,
  `sf_desc` varchar(200) DEFAULT NULL,
  `sf_totalplate` int(11) NOT NULL,
  `sf_seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`sf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smshelfsetting`
--

LOCK TABLES `smshelfsetting` WRITE;
/*!40000 ALTER TABLE `smshelfsetting` DISABLE KEYS */;
INSERT INTO `smshelfsetting` VALUES (11,3,'A1','1000-A1',200,10),(12,3,'A2','1000-A2',200,20),(13,3,'A3','1000-A3',200,30);
/*!40000 ALTER TABLE `smshelfsetting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-05 21:23:39
