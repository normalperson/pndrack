-- MySQL dump 10.13  Distrib 5.5.35, for Win64 (x86)
--
-- Host: localhost    Database: pflex
-- ------------------------------------------------------
-- Server version	5.5.35

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
  `mn_pmscode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mn_id`),
  UNIQUE KEY `const_vmenu_unikey` (`mn_code`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcmenu`
--

LOCK TABLES `fcmenu` WRITE;
/*!40000 ALTER TABLE `fcmenu` DISABLE KEYS */;
INSERT INTO `fcmenu` VALUES (1,'HEADERMENU',0,'Top Menu','ACTIVE',0,NULL,'','Y',NULL,NULL,NULL,NULL,NULL,NULL),(3,'DASHBOARD',1,'Dashboard','INACTIVE',1000,NULL,'','Y','Dashboard',NULL,'revenueyeartodate',NULL,NULL,NULL),(4,'SHELF',1,'Shelf','INACTIVE',2000,NULL,'','Y','Shelf',NULL,'Home',NULL,NULL,NULL),(5,'REPORT',1,'Report','ACTIVE',3000,NULL,'','Y','Report',NULL,'rptrevdaily',NULL,NULL,'VW_REPORT'),(6,'SETTING',1,'Setting','ACTIVE',4000,NULL,'','Y','Setting',NULL,'gensetting',NULL,NULL,'VW_SETTING'),(12,'RPTAGING',5,'Aging Report','ACTIVE',3100,NULL,'','Y','Report',NULL,'rptaging',NULL,NULL,'VW_REPORT'),(21,'GENSETTING',6,'General Setting','ACTIVE',4100,NULL,NULL,'Y','Setting',NULL,'gensetting',NULL,NULL,'VW_SETTING'),(40,'SHELFSETTING',6,'Shelf Setting','ACTIVE',4200,NULL,NULL,'Y','Setting','','shelfSetting','','','VW_SETTING'),(41,'DSHELFSETTING',40,'Shelf Setting','ACTIVE',4210,NULL,NULL,'Y','Setting','','shelfSetting','','','VW_SETTING'),(42,'SHELFGSETTING',40,'Shelf Group Setting','ACTIVE',4220,NULL,NULL,'Y','Setting','','shelfGroupSetting','','','VW_SETTING'),(43,'MAIN',1,'Main','ACTIVE',1000,'','','Y','Main','','board','','','VW_MAIN'),(44,'CUSTOMER',43,'Customer List','ACTIVE',1200,'','','Y','Main','','customer','','','VW_MAIN'),(45,'SEARCHPLATE',43,'Search Plate','ACTIVE',1100,'','','Y','Main','','searchplate','','','VW_MAIN'),(46,'OPERATION',1,'Operation','ACTIVE',2000,'','','Y','rackOperation','checkinout','','','','VW_OPERATION'),(47,'CHECKINOUT',46,'Check In/Out','ACTIVE',2100,'','','Y','rackOperation','checkinout','checkinout','','','VW_OPERATION'),(48,'STOCKCNT',46,'Stock Count','ACTIVE',2200,'','','Y','rackOperation','stockcount','stockcount','','','VW_OPERATION'),(49,'CREATEPLATE',43,'Create Plate','ACTIVE',1050,NULL,NULL,'Y','Main',NULL,'createplate',NULL,NULL,'VW_MAIN'),(50,'USERSETT',6,'User Setting','ACTIVE',4300,'','','Y','Setting','','usersetup','','','VW_SETTING'),(52,'USERSETUP',50,'User Setup','ACTIVE',4310,'','','Y','Setting','','usersetup','','','VW_SETTING'),(53,'ROLESETUP',50,'Role Setup','ACTIVE',4320,'','','Y','Setting','','rolesetup','','','VW_SETTING'),(54,'PERMSETUP',50,'Permission Setup','ACTIVE',4330,'','','Y','Setting','','permissionsetup','','','VW_SETTING'),(55,'ORGSETUP',6,'Org Setting','ACTIVE',4300,NULL,NULL,'Y','Setting',NULL,'org',NULL,NULL,'VW_SETTING'),(56,'CLIUSRSETUP',50,'Client User Menu','ACTIVE',4305,'','','Y','Setting','','cusersetup','','','VW_SETTING'),(57,'PCKGSETUP',6,'Package Setup','ACTIVE',4300,NULL,NULL,'Y','Setting',NULL,'packagesetup',NULL,NULL,'VW_SETTING'),(58,'CLISETTING',1,'Client Setting','ACTIVE',5000,'','','Y','Setting','','gensetting','','','VW_CLISETTING'),(59,'CLIUSERSETUP',58,'User Setup','ACTIVE',5100,'','','Y','Setting','','cusersetup','','','VW_CLISETTING'),(61,'CLISHELFSETTING',58,'Shelf Setting','ACTIVE',5200,NULL,NULL,'Y','Setting','','shelfSetting','','','VW_CLISETTING'),(62,'CLIDSHELFSETTING',61,'Shelf Setting','ACTIVE',5210,NULL,NULL,'Y','Setting','','shelfSetting','','','VW_CLISETTING'),(63,'CLISHELFGSETTING',61,'Shelf Group Setting','ACTIVE',5220,NULL,NULL,'Y','Setting','','shelfGroupSetting','','','VW_CLISETTING'),(64,'ADMSETTING',1,'Admin Setting','ACTIVE',6000,'','','Y','Setting','','usersetup','','','VW_ADMSETTING'),(65,'ADMORGSETTING',64,'Org Setting','ACTIVE',6100,'','','Y','Setting','','org','','','VW_ADMSETTING'),(68,'ADMUSERSETUP',64,'User Setup','ACTIVE',6200,'','','Y','Setting','','usersetup','','','VW_ADMSETTING'),(69,'ADMNEWORG',65,'New Org','ACTIVE',6110,'','pndrack/web/Setting/org?dboid=setup_org&dbostate=new','N','','','','','','VW_ADMSETTING'),(70,'MENUSETTING',6,'Menu Setup','ACTIVE',4400,'','','Y','Setting','','menusetup','','','VW_SETTING');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcorg`
--

LOCK TABLES `fcorg` WRITE;
/*!40000 ALTER TABLE `fcorg` DISABLE KEYS */;
INSERT INTO `fcorg` VALUES (6,'GTQCDZNN','HQ',NULL,NULL,NULL,NULL,'ACTIVE'),(9,'EYPDUKNQ','Darun',NULL,NULL,NULL,NULL,'ACTIVE'),(10,'GFPAUQUN','Deswell',NULL,NULL,NULL,NULL,'ACTIVE');
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
  `pms_code` varchar(50) DEFAULT NULL,
  `pms_desc` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`pms_id`),
  UNIQUE KEY `const_vpermission_unikey` (`pms_code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcpermission`
--

LOCK TABLES `fcpermission` WRITE;
/*!40000 ALTER TABLE `fcpermission` DISABLE KEYS */;
INSERT INTO `fcpermission` VALUES (1,'VW_MAIN','View Main'),(2,'VW_SETTING','View Setting'),(3,'VW_CLISETTING','View Client Setting'),(4,'VW_ADMSETTING','View Admin Setting'),(5,'VW_OPERATION','View Operation'),(6,'VW_REPORT','View Report');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcrole`
--

LOCK TABLES `fcrole` WRITE;
/*!40000 ALTER TABLE `fcrole` DISABLE KEYS */;
INSERT INTO `fcrole` VALUES (1,'admin','admin','ACTIVE'),(2,'PNDADMIN','PND Admin','ACTIVE'),(3,'CLADMIN','Client Admin','ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcroleperm`
--

LOCK TABLES `fcroleperm` WRITE;
/*!40000 ALTER TABLE `fcroleperm` DISABLE KEYS */;
INSERT INTO `fcroleperm` VALUES (18,1,1),(19,1,2),(20,1,5),(21,1,6),(8,2,1),(9,2,4),(10,2,5),(11,2,6),(4,3,1),(5,3,3),(6,3,5),(7,3,6);
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
INSERT INTO `fcuser` VALUES ('admin','d033e22ae348aeb5660fc2140aec35850c4da997','2013-08-15 01:55:18','Administrator',NULL,'2014-01-05 11:56:41','2014-01-05 11:54:18','2013-12-24 01:43:13','ADMIN','a:3:{s:14:\"urlbeforelogin\";s:9:\"/pndrack/\";s:7:\"dbosess\";a:1:{s:4:\"menu\";a:5:{s:6:\"lastid\";a:1:{s:5:\"mn_id\";s:2:\"69\";}s:4:\"sort\";a:0:{}s:6:\"search\";a:8:{s:7:\"mn_code\";s:0:\"\";s:8:\"mn_title\";s:0:\"\";s:9:\"mn_status\";s:0:\"\";s:10:\"mn_webflag\";s:0:\"\";s:8:\"mn_order\";s:0:\"\";s:8:\"mn_group\";s:0:\"\";s:7:\"mn_func\";s:0:\"\";s:8:\"mn_class\";s:0:\"\";}s:5:\"state\";s:4:\"edit\";s:4:\"page\";i:2;}}s:9:\"dboconfig\";a:0:{}}',NULL,'ACTIVE'),('Darun','da39a3ee5e6b4b0d3255bfef95601890afd80709','2013-12-24 02:47:06','darun',NULL,'2013-12-24 02:52:17','2013-12-24 02:47:15','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('deswell','8bf24f70498d64ba1f03ccd36207e43dc8224678','2013-12-24 02:52:43','deswell',NULL,'2014-01-05 12:13:40','2014-01-05 12:10:29','0000-00-00 00:00:00',NULL,'a:3:{s:14:\"urlbeforelogin\";s:9:\"/pndrack/\";s:7:\"dbosess\";a:1:{s:14:\"setup_customer\";a:4:{s:6:\"lastid\";a:0:{}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"list\";}}s:9:\"dboconfig\";a:0:{}}',NULL,'ACTIVE'),('pndadmin','da0717243a83694a7fbc9c11fc5fed417abd9f0e','2014-01-05 10:34:11','pndadmin',NULL,'2014-01-05 12:10:24','2014-01-05 11:50:26','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcuserlogin`
--

LOCK TABLES `fcuserlogin` WRITE;
/*!40000 ALTER TABLE `fcuserlogin` DISABLE KEYS */;
INSERT INTO `fcuserlogin` VALUES (1,'admin','127.0.0.1','Y','2013-08-15 01:55:42','2013-08-15 01:55:42','2013-12-10 07:47:35','N',NULL),(2,'admin','127.0.0.1','Y','2013-08-15 02:59:43','2013-08-15 02:59:43','2013-12-10 07:47:35','N',NULL),(3,'admin','127.0.0.1','Y','2013-08-15 02:59:45','2013-08-15 02:59:45','2013-12-10 07:47:35','N',NULL),(4,'admin','127.0.0.1','Y','2013-08-15 04:31:47','2013-08-15 04:31:47','2013-12-10 07:47:35','N',NULL),(5,'admin','127.0.0.1','Y','2013-08-15 04:31:50','2013-08-15 04:31:50','2013-12-10 07:47:35','N',NULL),(6,'admin','127.0.0.1','Y','2013-08-16 01:31:41','2013-08-16 01:31:41','2013-12-10 07:47:35','N',NULL),(7,'admin','127.0.0.1','Y','2013-08-16 01:31:45','2013-08-16 01:31:45','2013-12-10 07:47:35','N',NULL),(8,'admin','127.0.0.1','Y','2013-08-16 11:30:04','2013-08-16 11:30:04','2013-12-10 07:47:35','N',NULL),(9,'admin','127.0.0.1','Y','2013-08-16 11:30:06','2013-08-16 11:30:06','2013-12-10 07:47:35','N',NULL),(10,'admin','127.0.0.1','Y','2013-08-17 04:03:56','2013-08-17 04:03:56','2013-12-10 07:47:35','N',NULL),(11,'admin','127.0.0.1','Y','2013-08-17 04:03:58','2013-08-17 04:03:58','2013-12-10 07:47:35','N',NULL),(12,'admin','127.0.0.1','Y','2013-08-17 16:07:07','2013-08-17 16:07:07','2013-12-10 07:47:35','N',NULL),(13,'admin','127.0.0.1','Y','2013-08-17 16:07:09','2013-08-17 16:07:09','2013-12-10 07:47:35','N',NULL),(14,'admin','127.0.0.1','Y','2013-08-19 01:49:37','2013-08-19 01:49:37','2013-12-10 07:47:35','N',NULL),(15,'admin','127.0.0.1','Y','2013-08-19 01:49:40','2013-08-19 01:49:40','2013-12-10 07:47:35','N',NULL),(16,'admin','127.0.0.1','Y','2013-08-19 06:05:24','2013-08-19 06:05:24','2013-12-10 07:47:35','N',NULL),(17,'admin','127.0.0.1','Y','2013-08-19 06:05:27','2013-08-19 06:05:27','2013-12-10 07:47:35','N',NULL),(18,'admin','127.0.0.1','N','2013-08-20 00:55:06','2013-08-20 00:55:06','2013-12-10 07:47:35','N',NULL),(19,'admin','127.0.0.1','Y','2013-08-20 00:55:09','2013-08-20 00:55:09','2013-12-10 07:47:35','N',NULL),(20,'admin','127.0.0.1','Y','2013-08-20 00:55:13','2013-08-20 00:55:13','2013-12-10 07:47:35','N',NULL),(21,'admin','127.0.0.1','Y','2013-08-20 12:50:37','2013-08-20 12:50:37','2013-12-10 07:47:35','N',NULL),(22,'admin','127.0.0.1','Y','2013-08-20 12:50:40','2013-08-20 12:50:40','2013-12-10 07:47:35','N',NULL),(23,'admin','127.0.0.1','Y','2013-08-20 16:05:39','2013-08-20 16:05:39','2013-12-10 07:47:35','N',NULL),(24,'admin','127.0.0.1','Y','2013-08-20 16:05:42','2013-08-20 16:05:42','2013-12-10 07:47:35','N',NULL),(25,'admin','127.0.0.1','Y','2013-08-21 01:18:20','2013-08-21 01:18:20','2013-12-10 07:47:35','N',NULL),(26,'admin','127.0.0.1','Y','2013-08-21 01:18:23','2013-08-21 01:18:23','2013-12-10 07:47:35','N',NULL),(27,'admin','127.0.0.1','Y','2013-08-21 10:05:58','2013-08-21 10:05:58','2013-12-10 07:47:35','N',NULL),(28,'admin','127.0.0.1','Y','2013-08-21 10:06:02','2013-08-21 10:06:02','2013-12-10 07:47:35','N',NULL),(29,'admin','127.0.0.1','Y','2013-08-21 13:57:25','2013-08-21 13:57:25','2013-12-10 07:47:35','N',NULL),(30,'admin','127.0.0.1','Y','2013-08-21 13:57:28','2013-08-21 13:57:28','2013-12-10 07:47:35','N',NULL),(31,'admin','127.0.0.1','Y','2013-08-21 13:59:38','2013-08-21 13:59:38','2013-12-10 07:47:35','N',NULL),(32,'admin','127.0.0.1','Y','2013-08-22 01:15:22','2013-08-22 01:15:22','2013-12-10 07:47:35','N',NULL),(33,'admin','127.0.0.1','Y','2013-08-22 01:39:36','2013-08-22 01:39:36','2013-12-10 07:47:35','N',NULL),(34,'admin','127.0.0.1','Y','2013-08-22 09:58:43','2013-08-22 09:58:43','2013-12-10 07:47:35','N',NULL),(35,'admin','127.0.0.1','Y','2013-08-22 09:58:49','2013-08-22 09:58:49','2013-12-10 07:47:35','N',NULL),(36,'admin','127.0.0.1','Y','2013-08-22 09:58:52','2013-08-22 09:58:52','2013-12-10 07:47:35','N',NULL),(37,'admin','127.0.0.1','Y','2013-08-23 02:16:44','2013-08-23 02:16:44','2013-12-10 07:47:35','N',NULL),(38,'admin','127.0.0.1','Y','2013-08-23 02:17:09','2013-08-23 02:17:09','2013-12-10 07:47:35','N',NULL),(39,'admin','127.0.0.1','Y','2013-08-23 02:18:45','2013-08-23 02:18:45','2013-12-10 07:47:35','N',NULL),(40,'admin','127.0.0.1','Y','2013-08-24 01:28:55','2013-08-24 01:28:55','2013-12-10 07:47:35','N',NULL),(41,'admin','127.0.0.1','Y','2013-08-24 01:29:00','2013-08-24 01:29:00','2013-12-10 07:47:35','N',NULL),(42,'admin','127.0.0.1','Y','2013-08-24 01:29:05','2013-08-24 01:29:05','2013-12-10 07:47:35','N',NULL),(43,'admin','127.0.0.1','Y','2013-08-25 12:55:31','2013-08-25 12:55:31','2013-12-10 07:47:35','N',NULL),(44,'admin','127.0.0.1','Y','2013-08-25 12:55:33','2013-08-25 12:55:33','2013-12-10 07:47:35','N',NULL),(45,'admin','127.0.0.1','Y','2013-08-25 13:38:38','2013-08-25 13:38:38','2013-12-10 07:47:35','N',NULL),(46,'admin','127.0.0.1','Y','2013-08-25 13:38:40','2013-08-25 13:38:40','2013-12-10 07:47:35','N',NULL),(47,'admin','127.0.0.1','Y','2013-08-26 01:23:28','2013-08-26 01:23:28','2013-12-10 07:47:35','N',NULL),(48,'admin','127.0.0.1','Y','2013-08-26 01:23:33','2013-08-26 01:23:33','2013-12-10 07:47:35','N',NULL),(49,'admin','127.0.0.1','Y','2013-08-26 12:33:59','2013-08-26 12:33:59','2013-12-10 07:47:35','N',NULL),(50,'admin','127.0.0.1','Y','2013-08-26 12:34:02','2013-08-26 12:34:02','2013-12-10 07:47:35','N',NULL),(51,'admin','127.0.0.1','Y','2013-08-26 12:34:06','2013-08-26 12:34:06','2013-12-10 07:47:35','N',NULL),(52,'admin','127.0.0.1','Y','2013-08-26 14:39:10','2013-08-26 14:39:10','2013-12-10 07:47:35','N',NULL),(53,'admin','127.0.0.1','Y','2013-08-26 14:39:13','2013-08-26 14:39:13','2013-12-10 07:47:35','N',NULL),(54,'admin','127.0.0.1','Y','2013-08-26 16:08:21','2013-08-26 16:08:21','2013-12-10 07:47:35','N',NULL),(55,'admin','127.0.0.1','Y','2013-08-26 16:08:24','2013-08-26 16:08:24','2013-12-10 07:47:35','N',NULL),(56,'admin','127.0.0.1','Y','2013-08-26 16:58:48','2013-08-26 16:58:48','2013-12-10 07:47:35','N',NULL),(57,'admin','127.0.0.1','Y','2013-08-26 16:58:50','2013-08-26 16:58:50','2013-12-10 07:47:35','N',NULL),(58,'admin','127.0.0.1','Y','2013-08-27 02:14:03','2013-08-27 02:14:03','2013-12-10 07:47:35','N',NULL),(59,'admin','127.0.0.1','Y','2013-08-27 02:14:05','2013-08-27 02:14:05','2013-12-10 07:47:35','N',NULL),(60,'admin','127.0.0.1','Y','2013-08-27 11:12:18','2013-08-27 11:12:18','2013-12-10 07:47:35','N',NULL),(61,'admin','127.0.0.1','Y','2013-08-27 11:12:21','2013-08-27 11:12:21','2013-12-10 07:47:35','N',NULL),(62,'admin','127.0.0.1','Y','2013-08-28 01:58:45','2013-08-28 01:58:45','2013-12-10 07:47:35','N',NULL),(63,'admin','127.0.0.1','Y','2013-08-28 02:00:04','2013-08-28 02:00:04','2013-12-10 07:47:35','N',NULL),(64,'admin','127.0.0.1','Y','2013-08-28 09:52:51','2013-08-28 09:52:51','2013-12-10 07:47:35','N',NULL),(65,'admin','127.0.0.1','Y','2013-08-28 09:52:55','2013-08-28 09:52:55','2013-12-10 07:47:35','N',NULL),(66,'admin','127.0.0.1','Y','2013-08-29 00:50:38','2013-08-29 00:50:38','2013-12-10 07:47:35','N',NULL),(67,'admin','127.0.0.1','Y','2013-08-29 00:50:41','2013-08-29 00:50:41','2013-12-10 07:47:35','N',NULL),(68,'admin','127.0.0.1','Y','2013-08-29 00:50:43','2013-08-29 00:50:43','2013-12-10 07:47:35','N',NULL),(69,'admin','127.0.0.1','Y','2013-08-29 04:43:53','2013-08-29 04:43:53','2013-12-10 07:47:35','N',NULL),(70,'admin','127.0.0.1','Y','2013-08-29 04:43:55','2013-08-29 04:43:55','2013-12-10 07:47:35','N',NULL),(71,'admin','127.0.0.1','Y','2013-08-30 01:35:54','2013-08-30 01:35:54','2013-12-10 07:47:35','N',NULL),(72,'admin','127.0.0.1','Y','2013-08-30 01:36:58','2013-08-30 01:36:58','2013-12-10 07:47:35','N',NULL),(73,'admin','127.0.0.1','Y','2013-08-31 00:37:13','2013-08-31 00:37:13','2013-12-10 07:47:35','N',NULL),(74,'admin','127.0.0.1','Y','2013-08-31 00:37:16','2013-08-31 00:37:16','2013-12-10 07:47:35','N',NULL),(75,'admin','127.0.0.1','Y','2013-08-31 01:32:58','2013-08-31 01:32:58','2013-12-10 07:47:35','N',NULL),(76,'admin','127.0.0.1','Y','2013-08-31 01:33:00','2013-08-31 01:33:00','2013-12-10 07:47:35','N',NULL),(77,'admin','127.0.0.1','Y','2013-08-31 03:18:25','2013-08-31 03:18:25','2013-12-10 07:47:35','N',NULL),(78,'admin','127.0.0.1','Y','2013-08-31 03:18:27','2013-08-31 03:18:27','2013-12-10 07:47:35','N',NULL),(79,'admin','127.0.0.1','Y','2013-09-02 05:10:26','2013-09-02 05:10:26','2013-12-10 07:47:35','N',NULL),(80,'admin','127.0.0.1','Y','2013-09-02 05:10:27','2013-09-02 05:10:27','2013-12-10 07:47:35','N',NULL),(81,'admin','127.0.0.1','Y','2013-09-03 01:08:40','2013-09-03 01:08:40','2013-12-10 07:47:35','N',NULL),(82,'admin','127.0.0.1','Y','2013-09-03 01:08:43','2013-09-03 01:08:43','2013-12-10 07:47:35','N',NULL),(83,'admin','127.0.0.1','Y','2013-09-06 02:12:01','2013-09-06 02:12:01','2013-12-10 07:47:35','N',NULL),(84,'admin','127.0.0.1','Y','2013-09-06 02:12:03','2013-09-06 02:12:03','2013-12-10 07:47:35','N',NULL),(85,'admin','127.0.0.1','Y','2013-09-07 04:20:53','2013-09-07 04:20:53','2013-12-10 07:47:35','N',NULL),(86,'admin','127.0.0.1','Y','2013-09-07 04:20:57','2013-09-07 04:20:57','2013-12-10 07:47:35','N',NULL),(87,'admin','127.0.0.1','Y','2013-09-07 04:20:59','2013-09-07 04:20:59','2013-12-10 07:47:35','N',NULL),(88,'admin','127.0.0.1','Y','2013-09-07 04:21:03','2013-09-07 04:21:03','2013-12-10 07:47:35','N',NULL),(89,'admin','127.0.0.1','Y','2013-09-07 07:45:14','2013-09-07 07:45:14','2013-12-10 07:47:35','N',NULL),(90,'admin','127.0.0.1','Y','2013-09-07 07:45:16','2013-09-07 07:45:16','2013-12-10 07:47:35','N',NULL),(91,'admin','127.0.0.1','Y','2013-09-07 10:25:27','2013-09-07 10:25:27','2013-12-10 07:47:35','N',NULL),(92,'admin','127.0.0.1','Y','2013-09-07 11:32:35','2013-09-07 11:32:35','2013-12-10 07:47:35','N',NULL),(93,'admin','127.0.0.1','Y','2013-09-07 11:32:37','2013-09-07 11:32:37','2013-12-10 07:47:35','N',NULL),(94,'admin','127.0.0.1','Y','2013-09-07 11:34:29','2013-09-07 11:34:29','2013-12-10 07:47:35','N',NULL),(95,'admin','127.0.0.1','Y','2013-09-07 11:34:31','2013-09-07 11:34:31','2013-12-10 07:47:35','N',NULL),(96,'admin','127.0.0.1','Y','2013-09-09 02:15:45','2013-09-09 02:15:45','2013-12-10 07:47:35','N',NULL),(97,'admin','127.0.0.1','Y','2013-09-09 02:15:47','2013-09-09 02:15:47','2013-12-10 07:47:35','N',NULL),(98,'admin','127.0.0.1','Y','2013-09-10 06:35:37','2013-09-10 06:35:37','2013-12-10 07:47:35','N',NULL),(99,'admin','127.0.0.1','Y','2013-09-10 06:35:39','2013-09-10 06:35:39','2013-12-10 07:47:35','N',NULL),(100,'admin','127.0.0.1','Y','2013-09-13 13:38:29','2013-09-13 13:38:29','2013-12-10 07:47:35','N',NULL),(101,'admin','127.0.0.1','Y','2013-09-13 13:38:31','2013-09-13 13:38:31','2013-12-10 07:47:35','N',NULL),(102,'admin','127.0.0.1','Y','2013-09-13 14:33:34','2013-09-13 14:33:34','2013-12-10 07:47:35','N',NULL),(103,'admin','127.0.0.1','Y','2013-09-13 14:33:36','2013-09-13 14:33:36','2013-12-10 07:47:35','N',NULL),(104,'admin','127.0.0.1','Y','2013-09-16 06:48:44','2013-09-16 06:48:44','2013-12-10 07:47:35','N',NULL),(105,'admin','127.0.0.1','Y','2013-09-16 06:48:48','2013-09-16 06:48:48','2013-12-10 07:47:35','N',NULL),(106,'admin','127.0.0.1','Y','2013-09-17 02:20:51','2013-09-17 02:20:51','2013-12-10 07:47:35','N',NULL),(107,'admin','127.0.0.1','Y','2013-09-17 02:20:54','2013-09-17 02:20:54','2013-12-10 07:47:35','N',NULL),(108,'admin','127.0.0.1','Y','2013-09-18 16:23:01','2013-09-18 16:23:01','2013-12-10 07:47:35','N',NULL),(109,'admin','127.0.0.1','Y','2013-09-18 16:23:03','2013-09-18 16:23:03','2013-12-10 07:47:35','N',NULL),(110,'admin','127.0.0.1','Y','2013-09-21 12:04:50','2013-09-21 12:04:50','2013-12-10 07:47:35','N',NULL),(111,'admin','127.0.0.1','Y','2013-09-21 12:04:52','2013-09-21 12:04:52','2013-12-10 07:47:35','N',NULL),(112,'admin','127.0.0.1','Y','2013-09-22 06:35:34','2013-09-22 06:35:34','2013-12-10 07:47:35','N',NULL),(113,'admin','127.0.0.1','Y','2013-09-22 06:35:36','2013-09-22 06:35:36','2013-12-10 07:47:35','N',NULL),(114,'admin','127.0.0.1','Y','2013-09-22 06:35:38','2013-09-22 06:35:38','2013-12-10 07:47:35','N',NULL),(115,'admin','127.0.0.1','Y','2013-09-23 01:04:35','2013-09-23 01:04:35','2013-12-10 07:47:35','N',NULL),(116,'admin','127.0.0.1','Y','2013-09-23 01:04:38','2013-09-23 01:04:38','2013-12-10 07:47:35','N',NULL),(117,'admin','127.0.0.1','Y','2013-09-23 15:38:32','2013-09-23 15:38:32','2013-12-10 07:47:35','N',NULL),(118,'admin','127.0.0.1','Y','2013-09-23 15:38:34','2013-09-23 15:38:34','2013-12-10 07:47:35','N',NULL),(119,'admin','127.0.0.1','Y','2013-09-24 14:30:17','2013-09-24 14:30:17','2013-12-10 07:47:35','N',NULL),(120,'admin','127.0.0.1','Y','2013-09-24 14:30:20','2013-09-24 14:30:20','2013-12-10 07:47:35','N',NULL),(121,'admin','127.0.0.1','Y','2013-09-24 14:30:22','2013-09-24 14:30:22','2013-12-10 07:47:35','N',NULL),(122,'admin','127.0.0.1','Y','2013-09-25 01:36:08','2013-09-25 01:36:08','2013-12-10 07:47:35','N',NULL),(123,'admin','127.0.0.1','Y','2013-09-25 01:36:10','2013-09-25 01:36:10','2013-12-10 07:47:35','N',NULL),(124,'admin','127.0.0.1','Y','2013-09-25 03:31:52','2013-09-25 03:31:52','2013-12-10 07:47:35','N',NULL),(125,'admin','127.0.0.1','Y','2013-09-25 03:32:04','2013-09-25 03:32:04','2013-12-10 07:47:35','N',NULL),(126,'admin','127.0.0.1','Y','2013-09-26 05:23:38','2013-09-26 05:23:38','2013-12-10 07:47:35','N',NULL),(127,'admin','127.0.0.1','Y','2013-09-26 05:23:40','2013-09-26 05:23:40','2013-12-10 07:47:35','N',NULL),(128,'admin','127.0.0.1','Y','2013-09-26 13:57:02','2013-09-26 13:57:02','2013-12-10 07:47:35','N',NULL),(129,'admin','127.0.0.1','Y','2013-09-26 13:57:03','2013-09-26 13:57:03','2013-12-10 07:47:35','N',NULL),(130,'admin','127.0.0.1','Y','2013-09-27 01:59:36','2013-09-27 01:59:36','2013-12-10 07:47:35','N',NULL),(131,'admin','127.0.0.1','Y','2013-09-27 01:59:39','2013-09-27 01:59:39','2013-12-10 07:47:35','N',NULL),(132,'admin','127.0.0.1','Y','2013-09-29 02:12:39','2013-09-29 02:12:39','2013-12-10 07:47:35','N',NULL),(133,'admin','127.0.0.1','Y','2013-09-29 02:12:41','2013-09-29 02:12:41','2013-12-10 07:47:35','N',NULL),(134,'admin','127.0.0.1','Y','2013-10-02 02:54:59','2013-10-02 02:54:59','2013-12-10 07:47:35','N',NULL),(135,'admin','127.0.0.1','Y','2013-10-02 02:55:04','2013-10-02 02:55:04','2013-12-10 07:47:35','N',NULL),(136,'admin','127.0.0.1','Y','2013-10-03 12:06:27','2013-10-03 12:06:27','2013-12-10 07:47:35','N',NULL),(137,'admin','127.0.0.1','Y','2013-10-03 12:06:29','2013-10-03 12:06:29','2013-12-10 07:47:35','N',NULL),(138,'admin','127.0.0.1','Y','2013-10-04 01:27:57','2013-10-04 01:27:57','2013-12-10 07:47:35','N',NULL),(139,'admin','127.0.0.1','Y','2013-10-04 01:28:00','2013-10-04 01:28:00','2013-12-10 07:47:35','N',NULL),(140,'admin','127.0.0.1','Y','2013-10-04 10:42:58','2013-10-04 10:42:58','2013-12-10 07:47:35','N',NULL),(141,'admin','127.0.0.1','Y','2013-10-04 10:42:59','2013-10-04 10:42:59','2013-12-10 07:47:35','N',NULL),(142,'admin','127.0.0.1','Y','2013-10-05 02:41:20','2013-10-05 02:41:20','2013-12-10 07:47:35','N',NULL),(143,'admin','127.0.0.1','Y','2013-10-05 02:41:22','2013-10-05 02:41:22','2013-12-10 07:47:35','N',NULL),(144,'admin','127.0.0.1','Y','2013-10-05 14:58:31','2013-10-05 14:58:31','2013-12-10 07:47:35','N',NULL),(145,'admin','127.0.0.1','Y','2013-10-05 14:58:33','2013-10-05 14:58:33','2013-12-10 07:47:35','N',NULL),(146,'admin','127.0.0.1','Y','2013-10-06 06:18:45','2013-10-06 06:18:45','2013-12-10 07:47:35','N',NULL),(147,'admin','127.0.0.1','Y','2013-10-06 06:18:48','2013-10-06 06:18:48','2013-12-10 07:47:35','N',NULL),(148,'admin','127.0.0.1','Y','2013-10-23 02:48:24','2013-10-23 02:48:24','2013-12-10 07:47:35','N',NULL),(149,'admin','127.0.0.1','Y','2013-10-23 02:48:28','2013-10-23 02:48:28','2013-12-10 07:47:35','N',NULL),(150,'admin','127.0.0.1','Y','2013-10-30 02:24:15','2013-10-30 02:24:15','2013-12-10 07:47:35','N',NULL),(151,'admin','127.0.0.1','Y','2013-10-30 02:24:19','2013-10-30 02:24:19','2013-12-10 07:47:35','N',NULL),(152,'admin','127.0.0.1','Y','2013-10-31 06:42:12','2013-10-31 06:42:12','2013-12-10 07:47:35','N',NULL),(153,'admin',NULL,NULL,'2013-10-31 06:46:14','2013-10-31 06:46:14','2013-12-10 07:47:35','N',NULL),(154,'admin','127.0.0.1','Y','2013-10-31 06:46:27','2013-10-31 06:46:27','2013-12-10 07:47:35','N',NULL),(155,'admin','127.0.0.1','Y','2013-10-31 06:57:26','2013-10-31 06:57:26','2013-12-10 07:47:35','N',NULL),(156,'admin','127.0.0.1','Y','2013-10-31 06:57:44','2013-10-31 06:57:44','2013-12-10 07:47:35','N',NULL),(157,'admin','127.0.0.1','Y','2013-11-01 01:45:44','2013-11-01 01:45:44','2013-12-10 07:47:35','N',NULL),(158,'admin','127.0.0.1','Y','2013-11-01 01:45:46','2013-11-01 01:45:46','2013-12-10 07:47:35','N',NULL),(159,'admin','127.0.0.1','Y','2013-11-01 03:00:52','2013-11-01 03:00:52','2013-12-10 07:47:35','N',NULL),(160,'admin','127.0.0.1','Y','2013-11-01 03:00:54','2013-11-01 03:00:54','2013-12-10 07:47:35','N',NULL),(161,'admin','127.0.0.1','Y','2013-11-01 03:07:38','2013-11-01 03:07:38','2013-12-10 07:47:35','N',NULL),(162,'admin','127.0.0.1','Y','2013-11-01 03:07:40','2013-11-01 03:07:40','2013-12-10 07:47:35','N',NULL),(163,'admin','127.0.0.1','Y','2013-11-02 05:20:41','2013-11-02 05:20:41','2013-12-10 07:47:35','N',NULL),(164,'admin','127.0.0.1','Y','2013-11-02 05:20:43','2013-11-02 05:20:43','2013-12-10 07:47:35','N',NULL),(165,'admin','127.0.0.1','Y','2013-11-04 01:16:28','2013-11-04 01:16:28','2013-12-10 07:47:35','N',NULL),(166,'admin','127.0.0.1','Y','2013-11-04 01:16:31','2013-11-04 01:16:31','2013-12-10 07:47:35','N',NULL),(167,'admin','127.0.0.1','Y','2013-11-05 06:59:33','2013-11-05 06:59:33','2013-12-10 07:47:35','N',NULL),(168,'admin','127.0.0.1','Y','2013-11-05 06:59:35','2013-11-05 06:59:35','2013-12-10 07:47:35','N',NULL),(169,'admin','127.0.0.1','Y','2013-11-06 01:27:25','2013-11-06 01:27:25','2013-12-10 07:47:35','N',NULL),(170,'admin','127.0.0.1','Y','2013-11-06 01:27:27','2013-11-06 01:27:27','2013-12-10 07:47:35','N',NULL),(171,'admin','127.0.0.1','Y','2013-11-09 07:03:55','2013-11-09 07:03:55','2013-12-10 07:47:35','N',NULL),(172,'admin','127.0.0.1','N','2013-11-09 07:03:58','2013-11-09 07:03:58','2013-12-10 07:47:35','N',NULL),(173,'admin','127.0.0.1','Y','2013-11-09 07:07:48','2013-11-09 07:07:48','2013-12-10 07:47:35','N',NULL),(174,'admin','127.0.0.1','N','2013-11-09 07:07:50','2013-11-09 07:07:50','2013-12-10 07:47:35','N',NULL),(175,'admin','127.0.0.1','Y','2013-11-09 07:09:13','2013-11-09 07:09:13','2013-12-10 07:47:35','N',NULL),(176,'admin','127.0.0.1','Y','2013-11-09 07:09:36','2013-11-09 07:09:36','2013-12-10 07:47:35','N',NULL),(177,'admin','127.0.0.1','Y','2013-11-09 07:11:30','2013-11-09 07:11:30','2013-12-10 07:47:35','N',NULL),(178,'admin','127.0.0.1','Y','2013-11-09 07:11:36','2013-11-09 07:11:36','2013-12-10 07:47:35','N',NULL),(179,'admin','192.168.1.75','Y','2013-11-09 07:39:31','2013-11-09 07:39:31','2013-12-10 07:47:35','N',NULL),(180,'admin','192.168.1.75','Y','2013-11-09 07:43:45','2013-11-09 07:43:45','2013-12-10 07:47:35','N',NULL),(181,'admin','192.168.1.75','Y','2013-11-09 07:47:06','2013-11-09 07:47:06','2013-12-10 07:47:35','N',NULL),(182,'admin','127.0.0.1','Y','2013-11-09 07:53:23','2013-11-09 07:53:23','2013-12-10 07:47:35','N',NULL),(183,'admin','127.0.0.1','Y','2013-11-11 02:18:32','2013-11-11 02:18:32','2013-12-10 07:47:35','N',NULL),(184,'admin','127.0.0.1','Y','2013-11-13 01:09:58','2013-11-13 01:09:58','2013-12-10 07:47:35','N',NULL),(185,'admin','127.0.0.1','Y','2013-11-13 05:11:58','2013-11-13 05:11:58','2013-12-10 07:47:35','N',NULL),(186,'admin','127.0.0.1','Y','2013-11-14 00:40:34','2013-11-14 00:40:34','2013-12-10 07:47:35','N',NULL),(187,'admin','127.0.0.1','Y','2013-11-15 11:06:54','2013-11-15 11:06:54','2013-12-10 07:47:35','N',NULL),(188,'admin','127.0.0.1','Y','2013-11-16 05:55:03','2013-11-16 05:55:03','2013-12-10 07:47:35','N',NULL),(189,'admin','127.0.0.1','Y','2013-11-17 10:21:41','2013-11-17 10:21:41','2013-12-10 07:47:35','N',NULL),(190,'admin','127.0.0.1','Y','2013-11-18 08:46:54','2013-11-18 08:46:54','2013-12-10 07:47:35','N',NULL),(191,'admin','127.0.0.1','Y','2013-11-19 06:20:26','2013-11-19 06:20:26','2013-12-10 07:47:35','N',NULL),(192,'admin','127.0.0.1','Y','2013-11-19 15:35:44','2013-11-19 15:35:44','2013-12-10 07:47:35','N',NULL),(193,'admin','127.0.0.1','Y','2013-11-21 08:14:15','2013-11-21 08:14:15','2013-12-10 07:47:35','N',NULL),(194,'admin','127.0.0.1','Y','2013-11-25 04:40:22','2013-11-25 04:40:22','2013-12-10 07:47:35','N',NULL),(195,'admin','127.0.0.1','Y','2013-12-10 06:00:47','2013-12-10 06:00:47','2013-12-10 07:47:35','N',NULL),(196,'admin','127.0.0.1','Y','2013-12-10 07:52:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(197,'admin','127.0.0.1','Y','2013-12-10 07:56:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(198,'admin','127.0.0.1','Y','2013-12-11 07:52:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(199,'admin','127.0.0.1','Y','2013-12-12 04:10:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(200,'admin','127.0.0.1','Y','2013-12-12 04:13:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(201,'admin','127.0.0.1','Y','2013-12-12 05:15:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(202,'admin','127.0.0.1','Y','2013-12-14 07:05:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(203,'admin','127.0.0.1','Y','2013-12-14 12:39:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(204,'admin','127.0.0.1','Y','2013-12-19 07:13:01','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(205,'admin','127.0.0.1','Y','2013-12-19 07:16:49','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(206,'admin','127.0.0.1','Y','2013-12-20 08:06:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(207,'admin','127.0.0.1','Y','2013-12-20 11:09:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(208,'admin','127.0.0.1','Y','2013-12-22 09:06:39','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(209,'hongyee','127.0.0.1','N','2013-12-22 09:54:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(210,'admin','127.0.0.1','N','2013-12-22 09:54:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(211,'admin','127.0.0.1','N','2013-12-22 09:54:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(212,'admin','127.0.0.1','N','2013-12-22 09:54:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(213,'admin','127.0.0.1','N','2013-12-22 09:54:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(214,'admin','127.0.0.1','N','2013-12-22 09:54:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(215,'admin','127.0.0.1','N','2013-12-22 09:54:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(216,'admin','127.0.0.1','N','2013-12-22 09:54:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(217,'hongyee','127.0.0.1','Y','2013-12-22 09:55:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(218,'admin','127.0.0.1','Y','2013-12-22 09:59:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(219,'danny','127.0.0.1','Y','2013-12-22 10:04:48','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(220,'admin','127.0.0.1','Y','2013-12-22 10:10:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(221,'admin','127.0.0.1','Y','2013-12-23 05:12:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(222,'deswell','127.0.0.1','N','2013-12-23 05:25:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(223,'admin','127.0.0.1','Y','2013-12-23 05:25:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(224,'deswell','127.0.0.1','N','2013-12-23 05:33:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(225,'deswell','127.0.0.1','N','2013-12-23 05:33:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(226,'deswell','127.0.0.1','N','2013-12-23 05:33:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(227,'admin','127.0.0.1','Y','2013-12-23 05:33:47','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(228,'deswell','127.0.0.1','Y','2013-12-23 05:34:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(229,'admin','127.0.0.1','Y','2013-12-23 05:44:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(230,'admin','127.0.0.1','Y','2013-12-23 06:02:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(231,'darun','127.0.0.1','N','2013-12-23 06:54:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(232,'darun','127.0.0.1','N','2013-12-23 06:54:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(233,'deswell','127.0.0.1','Y','2013-12-23 06:54:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(234,'deswell','127.0.0.1','Y','2013-12-23 06:55:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(235,'admin','127.0.0.1','N','2013-12-23 07:29:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(236,'admin','127.0.0.1','N','2013-12-23 07:29:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(237,'admin','127.0.0.1','N','2013-12-23 07:29:59','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(238,'deswell','127.0.0.1','Y','2013-12-23 07:30:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(239,'admin','127.0.0.1','Y','2013-12-23 07:30:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(240,'admin','127.0.0.1','Y','2013-12-23 07:43:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(241,'deswell','127.0.0.1','Y','2013-12-23 07:44:04','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(242,'admin','127.0.0.1','Y','2013-12-23 07:45:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(243,'admin','127.0.0.1','N','2013-12-23 08:18:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(244,'admin','127.0.0.1','Y','2013-12-23 08:18:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(245,'deswell','127.0.0.1','Y','2013-12-23 14:12:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(246,'admin','127.0.0.1','Y','2013-12-23 14:12:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(247,'admin','127.0.0.1','Y','2013-12-24 01:08:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(248,'deswell','127.0.0.1','Y','2013-12-24 01:22:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(249,'admin','127.0.0.1','Y','2013-12-24 01:33:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(250,'darun','127.0.0.1','Y','2013-12-24 01:34:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(251,'admin','127.0.0.1','Y','2013-12-24 01:39:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(252,'darun','127.0.0.1','Y','2013-12-24 01:41:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(253,'admin','127.0.0.1','Y','2013-12-24 01:42:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(254,'darun','127.0.0.1','Y','2013-12-24 01:42:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(255,'admin','127.0.0.1','N','2013-12-24 01:43:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(256,'admin','127.0.0.1','Y','2013-12-24 01:43:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(257,'darun','127.0.0.1','Y','2013-12-24 01:44:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(258,'admin','127.0.0.1','Y','2013-12-24 02:46:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(259,'darun','127.0.0.1','Y','2013-12-24 02:47:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(260,'admin','127.0.0.1','Y','2013-12-24 02:52:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(261,'deswell','127.0.0.1','Y','2013-12-24 02:52:52','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(262,'admin','127.0.0.1','Y','2013-12-26 02:17:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(263,'admin','127.0.0.1','Y','2014-01-05 08:39:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(264,'deswell','127.0.0.1','Y','2014-01-05 10:34:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(265,'pndadmin','127.0.0.1','Y','2014-01-05 10:35:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(266,'admin','127.0.0.1','Y','2014-01-05 10:35:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(267,'admin','127.0.0.1','Y','2014-01-05 10:41:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(268,'pndadmin','127.0.0.1','Y','2014-01-05 10:41:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(269,'deswell','127.0.0.1','Y','2014-01-05 10:41:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(270,'pndadmin','127.0.0.1','Y','2014-01-05 10:42:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(271,'admin','127.0.0.1','Y','2014-01-05 11:37:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(272,'pndadmin','127.0.0.1','Y','2014-01-05 11:50:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(273,'admin','127.0.0.1','Y','2014-01-05 11:54:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(274,'deswell','127.0.0.1','Y','2014-01-05 12:10:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcuserorgrole`
--

LOCK TABLES `fcuserorgrole` WRITE;
/*!40000 ALTER TABLE `fcuserorgrole` DISABLE KEYS */;
INSERT INTO `fcuserorgrole` VALUES (3,'Hong Yee',3,1,1),(6,'danny',5,1,1),(14,'admin',6,1,1),(19,'deswell',10,3,1),(20,'Darun',9,3,1),(21,'pndadmin',6,2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcusersession`
--

LOCK TABLES `fcusersession` WRITE;
/*!40000 ALTER TABLE `fcusersession` DISABLE KEYS */;
INSERT INTO `fcusersession` VALUES (250,'um3jp8guhnjolo03hltekmvog7','admin','127.0.0.1','Y','2014-01-05 11:54:18','2014-01-05 11:54:18',NULL),(251,'re7b2qrunf49eirn6iapm0b6d1','deswell','127.0.0.1','Y','2014-01-05 12:10:30','2014-01-05 12:10:30',NULL);
/*!40000 ALTER TABLE `fcusersession` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smcustomer`
--

LOCK TABLES `smcustomer` WRITE;
/*!40000 ALTER TABLE `smcustomer` DISABLE KEYS */;
INSERT INTO `smcustomer` VALUES (67,'Sony','S5928592','SM59485',NULL,9),(68,'Samsung','S692852','S692852',NULL,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smorgpackage`
--

LOCK TABLES `smorgpackage` WRITE;
/*!40000 ALTER TABLE `smorgpackage` DISABLE KEYS */;
INSERT INTO `smorgpackage` VALUES (1,4,NULL,'2013-12-23 22:53:50','admin',1,'2013-01-12','2013-12-31',NULL,NULL);
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
INSERT INTO `smpackage` VALUES (1,'Package 1',200.00,1,10000,5,3),(2,'Package 2',400.00,1,20000,10,5),(3,'Package 3',600.00,1,999999999,20,10);
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
  `sp_orgid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sp_id`),
  KEY `fk_sp_psid_ps_id` (`sp_psid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smplate`
--

LOCK TABLES `smplate` WRITE;
/*!40000 ALTER TABLE `smplate` DISABLE KEYS */;
INSERT INTO `smplate` VALUES (69,67,26,-1,3251,NULL,'TV-532857283VB','532857283VB','2013-12-24 02:49:24','darun','ACTIVE',9),(70,67,26,-1,3252,NULL,'TV-6498696AS','6498696AS','2013-12-24 02:49:46','darun','ACTIVE',9),(71,68,27,-1,3651,NULL,'TV-5392682','5392682','2013-12-24 02:50:25','darun','ACTIVE',9);
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
  `ps_orgid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ps_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4851 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smplateslot`
--

LOCK TABLES `smplateslot` WRITE;
/*!40000 ALTER TABLE `smplateslot` DISABLE KEYS */;
INSERT INTO `smplateslot` VALUES (3251,26,'0001','1000mm-A1-0001','N',NULL),(3252,26,'0002','1000mm-A1-0002','N',NULL),(3253,26,'0003','1000mm-A1-0003','Y',NULL),(3254,26,'0004','1000mm-A1-0004','Y',NULL),(3255,26,'0005','1000mm-A1-0005','Y',NULL),(3256,26,'0006','1000mm-A1-0006','Y',NULL),(3257,26,'0007','1000mm-A1-0007','Y',NULL),(3258,26,'0008','1000mm-A1-0008','Y',NULL),(3259,26,'0009','1000mm-A1-0009','Y',NULL),(3260,26,'0010','1000mm-A1-0010','Y',NULL),(3261,26,'0011','1000mm-A1-0011','Y',NULL),(3262,26,'0012','1000mm-A1-0012','Y',NULL),(3263,26,'0013','1000mm-A1-0013','Y',NULL),(3264,26,'0014','1000mm-A1-0014','Y',NULL),(3265,26,'0015','1000mm-A1-0015','Y',NULL),(3266,26,'0016','1000mm-A1-0016','Y',NULL),(3267,26,'0017','1000mm-A1-0017','Y',NULL),(3268,26,'0018','1000mm-A1-0018','Y',NULL),(3269,26,'0019','1000mm-A1-0019','Y',NULL),(3270,26,'0020','1000mm-A1-0020','Y',NULL),(3271,26,'0021','1000mm-A1-0021','Y',NULL),(3272,26,'0022','1000mm-A1-0022','Y',NULL),(3273,26,'0023','1000mm-A1-0023','Y',NULL),(3274,26,'0024','1000mm-A1-0024','Y',NULL),(3275,26,'0025','1000mm-A1-0025','Y',NULL),(3276,26,'0026','1000mm-A1-0026','Y',NULL),(3277,26,'0027','1000mm-A1-0027','Y',NULL),(3278,26,'0028','1000mm-A1-0028','Y',NULL),(3279,26,'0029','1000mm-A1-0029','Y',NULL),(3280,26,'0030','1000mm-A1-0030','Y',NULL),(3281,26,'0031','1000mm-A1-0031','Y',NULL),(3282,26,'0032','1000mm-A1-0032','Y',NULL),(3283,26,'0033','1000mm-A1-0033','Y',NULL),(3284,26,'0034','1000mm-A1-0034','Y',NULL),(3285,26,'0035','1000mm-A1-0035','Y',NULL),(3286,26,'0036','1000mm-A1-0036','Y',NULL),(3287,26,'0037','1000mm-A1-0037','Y',NULL),(3288,26,'0038','1000mm-A1-0038','Y',NULL),(3289,26,'0039','1000mm-A1-0039','Y',NULL),(3290,26,'0040','1000mm-A1-0040','Y',NULL),(3291,26,'0041','1000mm-A1-0041','Y',NULL),(3292,26,'0042','1000mm-A1-0042','Y',NULL),(3293,26,'0043','1000mm-A1-0043','Y',NULL),(3294,26,'0044','1000mm-A1-0044','Y',NULL),(3295,26,'0045','1000mm-A1-0045','Y',NULL),(3296,26,'0046','1000mm-A1-0046','Y',NULL),(3297,26,'0047','1000mm-A1-0047','Y',NULL),(3298,26,'0048','1000mm-A1-0048','Y',NULL),(3299,26,'0049','1000mm-A1-0049','Y',NULL),(3300,26,'0050','1000mm-A1-0050','Y',NULL),(3301,26,'0051','1000mm-A1-0051','Y',NULL),(3302,26,'0052','1000mm-A1-0052','Y',NULL),(3303,26,'0053','1000mm-A1-0053','Y',NULL),(3304,26,'0054','1000mm-A1-0054','Y',NULL),(3305,26,'0055','1000mm-A1-0055','Y',NULL),(3306,26,'0056','1000mm-A1-0056','Y',NULL),(3307,26,'0057','1000mm-A1-0057','Y',NULL),(3308,26,'0058','1000mm-A1-0058','Y',NULL),(3309,26,'0059','1000mm-A1-0059','Y',NULL),(3310,26,'0060','1000mm-A1-0060','Y',NULL),(3311,26,'0061','1000mm-A1-0061','Y',NULL),(3312,26,'0062','1000mm-A1-0062','Y',NULL),(3313,26,'0063','1000mm-A1-0063','Y',NULL),(3314,26,'0064','1000mm-A1-0064','Y',NULL),(3315,26,'0065','1000mm-A1-0065','Y',NULL),(3316,26,'0066','1000mm-A1-0066','Y',NULL),(3317,26,'0067','1000mm-A1-0067','Y',NULL),(3318,26,'0068','1000mm-A1-0068','Y',NULL),(3319,26,'0069','1000mm-A1-0069','Y',NULL),(3320,26,'0070','1000mm-A1-0070','Y',NULL),(3321,26,'0071','1000mm-A1-0071','Y',NULL),(3322,26,'0072','1000mm-A1-0072','Y',NULL),(3323,26,'0073','1000mm-A1-0073','Y',NULL),(3324,26,'0074','1000mm-A1-0074','Y',NULL),(3325,26,'0075','1000mm-A1-0075','Y',NULL),(3326,26,'0076','1000mm-A1-0076','Y',NULL),(3327,26,'0077','1000mm-A1-0077','Y',NULL),(3328,26,'0078','1000mm-A1-0078','Y',NULL),(3329,26,'0079','1000mm-A1-0079','Y',NULL),(3330,26,'0080','1000mm-A1-0080','Y',NULL),(3331,26,'0081','1000mm-A1-0081','Y',NULL),(3332,26,'0082','1000mm-A1-0082','Y',NULL),(3333,26,'0083','1000mm-A1-0083','Y',NULL),(3334,26,'0084','1000mm-A1-0084','Y',NULL),(3335,26,'0085','1000mm-A1-0085','Y',NULL),(3336,26,'0086','1000mm-A1-0086','Y',NULL),(3337,26,'0087','1000mm-A1-0087','Y',NULL),(3338,26,'0088','1000mm-A1-0088','Y',NULL),(3339,26,'0089','1000mm-A1-0089','Y',NULL),(3340,26,'0090','1000mm-A1-0090','Y',NULL),(3341,26,'0091','1000mm-A1-0091','Y',NULL),(3342,26,'0092','1000mm-A1-0092','Y',NULL),(3343,26,'0093','1000mm-A1-0093','Y',NULL),(3344,26,'0094','1000mm-A1-0094','Y',NULL),(3345,26,'0095','1000mm-A1-0095','Y',NULL),(3346,26,'0096','1000mm-A1-0096','Y',NULL),(3347,26,'0097','1000mm-A1-0097','Y',NULL),(3348,26,'0098','1000mm-A1-0098','Y',NULL),(3349,26,'0099','1000mm-A1-0099','Y',NULL),(3350,26,'0100','1000mm-A1-0100','Y',NULL),(3351,26,'0101','1000mm-A1-0101','Y',NULL),(3352,26,'0102','1000mm-A1-0102','Y',NULL),(3353,26,'0103','1000mm-A1-0103','Y',NULL),(3354,26,'0104','1000mm-A1-0104','Y',NULL),(3355,26,'0105','1000mm-A1-0105','Y',NULL),(3356,26,'0106','1000mm-A1-0106','Y',NULL),(3357,26,'0107','1000mm-A1-0107','Y',NULL),(3358,26,'0108','1000mm-A1-0108','Y',NULL),(3359,26,'0109','1000mm-A1-0109','Y',NULL),(3360,26,'0110','1000mm-A1-0110','Y',NULL),(3361,26,'0111','1000mm-A1-0111','Y',NULL),(3362,26,'0112','1000mm-A1-0112','Y',NULL),(3363,26,'0113','1000mm-A1-0113','Y',NULL),(3364,26,'0114','1000mm-A1-0114','Y',NULL),(3365,26,'0115','1000mm-A1-0115','Y',NULL),(3366,26,'0116','1000mm-A1-0116','Y',NULL),(3367,26,'0117','1000mm-A1-0117','Y',NULL),(3368,26,'0118','1000mm-A1-0118','Y',NULL),(3369,26,'0119','1000mm-A1-0119','Y',NULL),(3370,26,'0120','1000mm-A1-0120','Y',NULL),(3371,26,'0121','1000mm-A1-0121','Y',NULL),(3372,26,'0122','1000mm-A1-0122','Y',NULL),(3373,26,'0123','1000mm-A1-0123','Y',NULL),(3374,26,'0124','1000mm-A1-0124','Y',NULL),(3375,26,'0125','1000mm-A1-0125','Y',NULL),(3376,26,'0126','1000mm-A1-0126','Y',NULL),(3377,26,'0127','1000mm-A1-0127','Y',NULL),(3378,26,'0128','1000mm-A1-0128','Y',NULL),(3379,26,'0129','1000mm-A1-0129','Y',NULL),(3380,26,'0130','1000mm-A1-0130','Y',NULL),(3381,26,'0131','1000mm-A1-0131','Y',NULL),(3382,26,'0132','1000mm-A1-0132','Y',NULL),(3383,26,'0133','1000mm-A1-0133','Y',NULL),(3384,26,'0134','1000mm-A1-0134','Y',NULL),(3385,26,'0135','1000mm-A1-0135','Y',NULL),(3386,26,'0136','1000mm-A1-0136','Y',NULL),(3387,26,'0137','1000mm-A1-0137','Y',NULL),(3388,26,'0138','1000mm-A1-0138','Y',NULL),(3389,26,'0139','1000mm-A1-0139','Y',NULL),(3390,26,'0140','1000mm-A1-0140','Y',NULL),(3391,26,'0141','1000mm-A1-0141','Y',NULL),(3392,26,'0142','1000mm-A1-0142','Y',NULL),(3393,26,'0143','1000mm-A1-0143','Y',NULL),(3394,26,'0144','1000mm-A1-0144','Y',NULL),(3395,26,'0145','1000mm-A1-0145','Y',NULL),(3396,26,'0146','1000mm-A1-0146','Y',NULL),(3397,26,'0147','1000mm-A1-0147','Y',NULL),(3398,26,'0148','1000mm-A1-0148','Y',NULL),(3399,26,'0149','1000mm-A1-0149','Y',NULL),(3400,26,'0150','1000mm-A1-0150','Y',NULL),(3401,26,'0151','1000mm-A1-0151','Y',NULL),(3402,26,'0152','1000mm-A1-0152','Y',NULL),(3403,26,'0153','1000mm-A1-0153','Y',NULL),(3404,26,'0154','1000mm-A1-0154','Y',NULL),(3405,26,'0155','1000mm-A1-0155','Y',NULL),(3406,26,'0156','1000mm-A1-0156','Y',NULL),(3407,26,'0157','1000mm-A1-0157','Y',NULL),(3408,26,'0158','1000mm-A1-0158','Y',NULL),(3409,26,'0159','1000mm-A1-0159','Y',NULL),(3410,26,'0160','1000mm-A1-0160','Y',NULL),(3411,26,'0161','1000mm-A1-0161','Y',NULL),(3412,26,'0162','1000mm-A1-0162','Y',NULL),(3413,26,'0163','1000mm-A1-0163','Y',NULL),(3414,26,'0164','1000mm-A1-0164','Y',NULL),(3415,26,'0165','1000mm-A1-0165','Y',NULL),(3416,26,'0166','1000mm-A1-0166','Y',NULL),(3417,26,'0167','1000mm-A1-0167','Y',NULL),(3418,26,'0168','1000mm-A1-0168','Y',NULL),(3419,26,'0169','1000mm-A1-0169','Y',NULL),(3420,26,'0170','1000mm-A1-0170','Y',NULL),(3421,26,'0171','1000mm-A1-0171','Y',NULL),(3422,26,'0172','1000mm-A1-0172','Y',NULL),(3423,26,'0173','1000mm-A1-0173','Y',NULL),(3424,26,'0174','1000mm-A1-0174','Y',NULL),(3425,26,'0175','1000mm-A1-0175','Y',NULL),(3426,26,'0176','1000mm-A1-0176','Y',NULL),(3427,26,'0177','1000mm-A1-0177','Y',NULL),(3428,26,'0178','1000mm-A1-0178','Y',NULL),(3429,26,'0179','1000mm-A1-0179','Y',NULL),(3430,26,'0180','1000mm-A1-0180','Y',NULL),(3431,26,'0181','1000mm-A1-0181','Y',NULL),(3432,26,'0182','1000mm-A1-0182','Y',NULL),(3433,26,'0183','1000mm-A1-0183','Y',NULL),(3434,26,'0184','1000mm-A1-0184','Y',NULL),(3435,26,'0185','1000mm-A1-0185','Y',NULL),(3436,26,'0186','1000mm-A1-0186','Y',NULL),(3437,26,'0187','1000mm-A1-0187','Y',NULL),(3438,26,'0188','1000mm-A1-0188','Y',NULL),(3439,26,'0189','1000mm-A1-0189','Y',NULL),(3440,26,'0190','1000mm-A1-0190','Y',NULL),(3441,26,'0191','1000mm-A1-0191','Y',NULL),(3442,26,'0192','1000mm-A1-0192','Y',NULL),(3443,26,'0193','1000mm-A1-0193','Y',NULL),(3444,26,'0194','1000mm-A1-0194','Y',NULL),(3445,26,'0195','1000mm-A1-0195','Y',NULL),(3446,26,'0196','1000mm-A1-0196','Y',NULL),(3447,26,'0197','1000mm-A1-0197','Y',NULL),(3448,26,'0198','1000mm-A1-0198','Y',NULL),(3449,26,'0199','1000mm-A1-0199','Y',NULL),(3450,26,'0200','1000mm-A1-0200','Y',NULL),(3451,26,'0201','1000mm-A1-0201','Y',NULL),(3452,26,'0202','1000mm-A1-0202','Y',NULL),(3453,26,'0203','1000mm-A1-0203','Y',NULL),(3454,26,'0204','1000mm-A1-0204','Y',NULL),(3455,26,'0205','1000mm-A1-0205','Y',NULL),(3456,26,'0206','1000mm-A1-0206','Y',NULL),(3457,26,'0207','1000mm-A1-0207','Y',NULL),(3458,26,'0208','1000mm-A1-0208','Y',NULL),(3459,26,'0209','1000mm-A1-0209','Y',NULL),(3460,26,'0210','1000mm-A1-0210','Y',NULL),(3461,26,'0211','1000mm-A1-0211','Y',NULL),(3462,26,'0212','1000mm-A1-0212','Y',NULL),(3463,26,'0213','1000mm-A1-0213','Y',NULL),(3464,26,'0214','1000mm-A1-0214','Y',NULL),(3465,26,'0215','1000mm-A1-0215','Y',NULL),(3466,26,'0216','1000mm-A1-0216','Y',NULL),(3467,26,'0217','1000mm-A1-0217','Y',NULL),(3468,26,'0218','1000mm-A1-0218','Y',NULL),(3469,26,'0219','1000mm-A1-0219','Y',NULL),(3470,26,'0220','1000mm-A1-0220','Y',NULL),(3471,26,'0221','1000mm-A1-0221','Y',NULL),(3472,26,'0222','1000mm-A1-0222','Y',NULL),(3473,26,'0223','1000mm-A1-0223','Y',NULL),(3474,26,'0224','1000mm-A1-0224','Y',NULL),(3475,26,'0225','1000mm-A1-0225','Y',NULL),(3476,26,'0226','1000mm-A1-0226','Y',NULL),(3477,26,'0227','1000mm-A1-0227','Y',NULL),(3478,26,'0228','1000mm-A1-0228','Y',NULL),(3479,26,'0229','1000mm-A1-0229','Y',NULL),(3480,26,'0230','1000mm-A1-0230','Y',NULL),(3481,26,'0231','1000mm-A1-0231','Y',NULL),(3482,26,'0232','1000mm-A1-0232','Y',NULL),(3483,26,'0233','1000mm-A1-0233','Y',NULL),(3484,26,'0234','1000mm-A1-0234','Y',NULL),(3485,26,'0235','1000mm-A1-0235','Y',NULL),(3486,26,'0236','1000mm-A1-0236','Y',NULL),(3487,26,'0237','1000mm-A1-0237','Y',NULL),(3488,26,'0238','1000mm-A1-0238','Y',NULL),(3489,26,'0239','1000mm-A1-0239','Y',NULL),(3490,26,'0240','1000mm-A1-0240','Y',NULL),(3491,26,'0241','1000mm-A1-0241','Y',NULL),(3492,26,'0242','1000mm-A1-0242','Y',NULL),(3493,26,'0243','1000mm-A1-0243','Y',NULL),(3494,26,'0244','1000mm-A1-0244','Y',NULL),(3495,26,'0245','1000mm-A1-0245','Y',NULL),(3496,26,'0246','1000mm-A1-0246','Y',NULL),(3497,26,'0247','1000mm-A1-0247','Y',NULL),(3498,26,'0248','1000mm-A1-0248','Y',NULL),(3499,26,'0249','1000mm-A1-0249','Y',NULL),(3500,26,'0250','1000mm-A1-0250','Y',NULL),(3501,26,'0251','1000mm-A1-0251','Y',NULL),(3502,26,'0252','1000mm-A1-0252','Y',NULL),(3503,26,'0253','1000mm-A1-0253','Y',NULL),(3504,26,'0254','1000mm-A1-0254','Y',NULL),(3505,26,'0255','1000mm-A1-0255','Y',NULL),(3506,26,'0256','1000mm-A1-0256','Y',NULL),(3507,26,'0257','1000mm-A1-0257','Y',NULL),(3508,26,'0258','1000mm-A1-0258','Y',NULL),(3509,26,'0259','1000mm-A1-0259','Y',NULL),(3510,26,'0260','1000mm-A1-0260','Y',NULL),(3511,26,'0261','1000mm-A1-0261','Y',NULL),(3512,26,'0262','1000mm-A1-0262','Y',NULL),(3513,26,'0263','1000mm-A1-0263','Y',NULL),(3514,26,'0264','1000mm-A1-0264','Y',NULL),(3515,26,'0265','1000mm-A1-0265','Y',NULL),(3516,26,'0266','1000mm-A1-0266','Y',NULL),(3517,26,'0267','1000mm-A1-0267','Y',NULL),(3518,26,'0268','1000mm-A1-0268','Y',NULL),(3519,26,'0269','1000mm-A1-0269','Y',NULL),(3520,26,'0270','1000mm-A1-0270','Y',NULL),(3521,26,'0271','1000mm-A1-0271','Y',NULL),(3522,26,'0272','1000mm-A1-0272','Y',NULL),(3523,26,'0273','1000mm-A1-0273','Y',NULL),(3524,26,'0274','1000mm-A1-0274','Y',NULL),(3525,26,'0275','1000mm-A1-0275','Y',NULL),(3526,26,'0276','1000mm-A1-0276','Y',NULL),(3527,26,'0277','1000mm-A1-0277','Y',NULL),(3528,26,'0278','1000mm-A1-0278','Y',NULL),(3529,26,'0279','1000mm-A1-0279','Y',NULL),(3530,26,'0280','1000mm-A1-0280','Y',NULL),(3531,26,'0281','1000mm-A1-0281','Y',NULL),(3532,26,'0282','1000mm-A1-0282','Y',NULL),(3533,26,'0283','1000mm-A1-0283','Y',NULL),(3534,26,'0284','1000mm-A1-0284','Y',NULL),(3535,26,'0285','1000mm-A1-0285','Y',NULL),(3536,26,'0286','1000mm-A1-0286','Y',NULL),(3537,26,'0287','1000mm-A1-0287','Y',NULL),(3538,26,'0288','1000mm-A1-0288','Y',NULL),(3539,26,'0289','1000mm-A1-0289','Y',NULL),(3540,26,'0290','1000mm-A1-0290','Y',NULL),(3541,26,'0291','1000mm-A1-0291','Y',NULL),(3542,26,'0292','1000mm-A1-0292','Y',NULL),(3543,26,'0293','1000mm-A1-0293','Y',NULL),(3544,26,'0294','1000mm-A1-0294','Y',NULL),(3545,26,'0295','1000mm-A1-0295','Y',NULL),(3546,26,'0296','1000mm-A1-0296','Y',NULL),(3547,26,'0297','1000mm-A1-0297','Y',NULL),(3548,26,'0298','1000mm-A1-0298','Y',NULL),(3549,26,'0299','1000mm-A1-0299','Y',NULL),(3550,26,'0300','1000mm-A1-0300','Y',NULL),(3551,26,'0301','1000mm-A1-0301','Y',NULL),(3552,26,'0302','1000mm-A1-0302','Y',NULL),(3553,26,'0303','1000mm-A1-0303','Y',NULL),(3554,26,'0304','1000mm-A1-0304','Y',NULL),(3555,26,'0305','1000mm-A1-0305','Y',NULL),(3556,26,'0306','1000mm-A1-0306','Y',NULL),(3557,26,'0307','1000mm-A1-0307','Y',NULL),(3558,26,'0308','1000mm-A1-0308','Y',NULL),(3559,26,'0309','1000mm-A1-0309','Y',NULL),(3560,26,'0310','1000mm-A1-0310','Y',NULL),(3561,26,'0311','1000mm-A1-0311','Y',NULL),(3562,26,'0312','1000mm-A1-0312','Y',NULL),(3563,26,'0313','1000mm-A1-0313','Y',NULL),(3564,26,'0314','1000mm-A1-0314','Y',NULL),(3565,26,'0315','1000mm-A1-0315','Y',NULL),(3566,26,'0316','1000mm-A1-0316','Y',NULL),(3567,26,'0317','1000mm-A1-0317','Y',NULL),(3568,26,'0318','1000mm-A1-0318','Y',NULL),(3569,26,'0319','1000mm-A1-0319','Y',NULL),(3570,26,'0320','1000mm-A1-0320','Y',NULL),(3571,26,'0321','1000mm-A1-0321','Y',NULL),(3572,26,'0322','1000mm-A1-0322','Y',NULL),(3573,26,'0323','1000mm-A1-0323','Y',NULL),(3574,26,'0324','1000mm-A1-0324','Y',NULL),(3575,26,'0325','1000mm-A1-0325','Y',NULL),(3576,26,'0326','1000mm-A1-0326','Y',NULL),(3577,26,'0327','1000mm-A1-0327','Y',NULL),(3578,26,'0328','1000mm-A1-0328','Y',NULL),(3579,26,'0329','1000mm-A1-0329','Y',NULL),(3580,26,'0330','1000mm-A1-0330','Y',NULL),(3581,26,'0331','1000mm-A1-0331','Y',NULL),(3582,26,'0332','1000mm-A1-0332','Y',NULL),(3583,26,'0333','1000mm-A1-0333','Y',NULL),(3584,26,'0334','1000mm-A1-0334','Y',NULL),(3585,26,'0335','1000mm-A1-0335','Y',NULL),(3586,26,'0336','1000mm-A1-0336','Y',NULL),(3587,26,'0337','1000mm-A1-0337','Y',NULL),(3588,26,'0338','1000mm-A1-0338','Y',NULL),(3589,26,'0339','1000mm-A1-0339','Y',NULL),(3590,26,'0340','1000mm-A1-0340','Y',NULL),(3591,26,'0341','1000mm-A1-0341','Y',NULL),(3592,26,'0342','1000mm-A1-0342','Y',NULL),(3593,26,'0343','1000mm-A1-0343','Y',NULL),(3594,26,'0344','1000mm-A1-0344','Y',NULL),(3595,26,'0345','1000mm-A1-0345','Y',NULL),(3596,26,'0346','1000mm-A1-0346','Y',NULL),(3597,26,'0347','1000mm-A1-0347','Y',NULL),(3598,26,'0348','1000mm-A1-0348','Y',NULL),(3599,26,'0349','1000mm-A1-0349','Y',NULL),(3600,26,'0350','1000mm-A1-0350','Y',NULL),(3601,26,'0351','1000mm-A1-0351','Y',NULL),(3602,26,'0352','1000mm-A1-0352','Y',NULL),(3603,26,'0353','1000mm-A1-0353','Y',NULL),(3604,26,'0354','1000mm-A1-0354','Y',NULL),(3605,26,'0355','1000mm-A1-0355','Y',NULL),(3606,26,'0356','1000mm-A1-0356','Y',NULL),(3607,26,'0357','1000mm-A1-0357','Y',NULL),(3608,26,'0358','1000mm-A1-0358','Y',NULL),(3609,26,'0359','1000mm-A1-0359','Y',NULL),(3610,26,'0360','1000mm-A1-0360','Y',NULL),(3611,26,'0361','1000mm-A1-0361','Y',NULL),(3612,26,'0362','1000mm-A1-0362','Y',NULL),(3613,26,'0363','1000mm-A1-0363','Y',NULL),(3614,26,'0364','1000mm-A1-0364','Y',NULL),(3615,26,'0365','1000mm-A1-0365','Y',NULL),(3616,26,'0366','1000mm-A1-0366','Y',NULL),(3617,26,'0367','1000mm-A1-0367','Y',NULL),(3618,26,'0368','1000mm-A1-0368','Y',NULL),(3619,26,'0369','1000mm-A1-0369','Y',NULL),(3620,26,'0370','1000mm-A1-0370','Y',NULL),(3621,26,'0371','1000mm-A1-0371','Y',NULL),(3622,26,'0372','1000mm-A1-0372','Y',NULL),(3623,26,'0373','1000mm-A1-0373','Y',NULL),(3624,26,'0374','1000mm-A1-0374','Y',NULL),(3625,26,'0375','1000mm-A1-0375','Y',NULL),(3626,26,'0376','1000mm-A1-0376','Y',NULL),(3627,26,'0377','1000mm-A1-0377','Y',NULL),(3628,26,'0378','1000mm-A1-0378','Y',NULL),(3629,26,'0379','1000mm-A1-0379','Y',NULL),(3630,26,'0380','1000mm-A1-0380','Y',NULL),(3631,26,'0381','1000mm-A1-0381','Y',NULL),(3632,26,'0382','1000mm-A1-0382','Y',NULL),(3633,26,'0383','1000mm-A1-0383','Y',NULL),(3634,26,'0384','1000mm-A1-0384','Y',NULL),(3635,26,'0385','1000mm-A1-0385','Y',NULL),(3636,26,'0386','1000mm-A1-0386','Y',NULL),(3637,26,'0387','1000mm-A1-0387','Y',NULL),(3638,26,'0388','1000mm-A1-0388','Y',NULL),(3639,26,'0389','1000mm-A1-0389','Y',NULL),(3640,26,'0390','1000mm-A1-0390','Y',NULL),(3641,26,'0391','1000mm-A1-0391','Y',NULL),(3642,26,'0392','1000mm-A1-0392','Y',NULL),(3643,26,'0393','1000mm-A1-0393','Y',NULL),(3644,26,'0394','1000mm-A1-0394','Y',NULL),(3645,26,'0395','1000mm-A1-0395','Y',NULL),(3646,26,'0396','1000mm-A1-0396','Y',NULL),(3647,26,'0397','1000mm-A1-0397','Y',NULL),(3648,26,'0398','1000mm-A1-0398','Y',NULL),(3649,26,'0399','1000mm-A1-0399','Y',NULL),(3650,26,'0400','1000mm-A1-0400','Y',NULL),(3651,27,'0001','1000-share-AA-0001','N',NULL),(3652,27,'0002','1000-share-AA-0002','Y',NULL),(3653,27,'0003','1000-share-AA-0003','Y',NULL),(3654,27,'0004','1000-share-AA-0004','Y',NULL),(3655,27,'0005','1000-share-AA-0005','Y',NULL),(3656,27,'0006','1000-share-AA-0006','Y',NULL),(3657,27,'0007','1000-share-AA-0007','Y',NULL),(3658,27,'0008','1000-share-AA-0008','Y',NULL),(3659,27,'0009','1000-share-AA-0009','Y',NULL),(3660,27,'0010','1000-share-AA-0010','Y',NULL),(3661,27,'0011','1000-share-AA-0011','Y',NULL),(3662,27,'0012','1000-share-AA-0012','Y',NULL),(3663,27,'0013','1000-share-AA-0013','Y',NULL),(3664,27,'0014','1000-share-AA-0014','Y',NULL),(3665,27,'0015','1000-share-AA-0015','Y',NULL),(3666,27,'0016','1000-share-AA-0016','Y',NULL),(3667,27,'0017','1000-share-AA-0017','Y',NULL),(3668,27,'0018','1000-share-AA-0018','Y',NULL),(3669,27,'0019','1000-share-AA-0019','Y',NULL),(3670,27,'0020','1000-share-AA-0020','Y',NULL),(3671,27,'0021','1000-share-AA-0021','Y',NULL),(3672,27,'0022','1000-share-AA-0022','Y',NULL),(3673,27,'0023','1000-share-AA-0023','Y',NULL),(3674,27,'0024','1000-share-AA-0024','Y',NULL),(3675,27,'0025','1000-share-AA-0025','Y',NULL),(3676,27,'0026','1000-share-AA-0026','Y',NULL),(3677,27,'0027','1000-share-AA-0027','Y',NULL),(3678,27,'0028','1000-share-AA-0028','Y',NULL),(3679,27,'0029','1000-share-AA-0029','Y',NULL),(3680,27,'0030','1000-share-AA-0030','Y',NULL),(3681,27,'0031','1000-share-AA-0031','Y',NULL),(3682,27,'0032','1000-share-AA-0032','Y',NULL),(3683,27,'0033','1000-share-AA-0033','Y',NULL),(3684,27,'0034','1000-share-AA-0034','Y',NULL),(3685,27,'0035','1000-share-AA-0035','Y',NULL),(3686,27,'0036','1000-share-AA-0036','Y',NULL),(3687,27,'0037','1000-share-AA-0037','Y',NULL),(3688,27,'0038','1000-share-AA-0038','Y',NULL),(3689,27,'0039','1000-share-AA-0039','Y',NULL),(3690,27,'0040','1000-share-AA-0040','Y',NULL),(3691,27,'0041','1000-share-AA-0041','Y',NULL),(3692,27,'0042','1000-share-AA-0042','Y',NULL),(3693,27,'0043','1000-share-AA-0043','Y',NULL),(3694,27,'0044','1000-share-AA-0044','Y',NULL),(3695,27,'0045','1000-share-AA-0045','Y',NULL),(3696,27,'0046','1000-share-AA-0046','Y',NULL),(3697,27,'0047','1000-share-AA-0047','Y',NULL),(3698,27,'0048','1000-share-AA-0048','Y',NULL),(3699,27,'0049','1000-share-AA-0049','Y',NULL),(3700,27,'0050','1000-share-AA-0050','Y',NULL),(3701,27,'0051','1000-share-AA-0051','Y',NULL),(3702,27,'0052','1000-share-AA-0052','Y',NULL),(3703,27,'0053','1000-share-AA-0053','Y',NULL),(3704,27,'0054','1000-share-AA-0054','Y',NULL),(3705,27,'0055','1000-share-AA-0055','Y',NULL),(3706,27,'0056','1000-share-AA-0056','Y',NULL),(3707,27,'0057','1000-share-AA-0057','Y',NULL),(3708,27,'0058','1000-share-AA-0058','Y',NULL),(3709,27,'0059','1000-share-AA-0059','Y',NULL),(3710,27,'0060','1000-share-AA-0060','Y',NULL),(3711,27,'0061','1000-share-AA-0061','Y',NULL),(3712,27,'0062','1000-share-AA-0062','Y',NULL),(3713,27,'0063','1000-share-AA-0063','Y',NULL),(3714,27,'0064','1000-share-AA-0064','Y',NULL),(3715,27,'0065','1000-share-AA-0065','Y',NULL),(3716,27,'0066','1000-share-AA-0066','Y',NULL),(3717,27,'0067','1000-share-AA-0067','Y',NULL),(3718,27,'0068','1000-share-AA-0068','Y',NULL),(3719,27,'0069','1000-share-AA-0069','Y',NULL),(3720,27,'0070','1000-share-AA-0070','Y',NULL),(3721,27,'0071','1000-share-AA-0071','Y',NULL),(3722,27,'0072','1000-share-AA-0072','Y',NULL),(3723,27,'0073','1000-share-AA-0073','Y',NULL),(3724,27,'0074','1000-share-AA-0074','Y',NULL),(3725,27,'0075','1000-share-AA-0075','Y',NULL),(3726,27,'0076','1000-share-AA-0076','Y',NULL),(3727,27,'0077','1000-share-AA-0077','Y',NULL),(3728,27,'0078','1000-share-AA-0078','Y',NULL),(3729,27,'0079','1000-share-AA-0079','Y',NULL),(3730,27,'0080','1000-share-AA-0080','Y',NULL),(3731,27,'0081','1000-share-AA-0081','Y',NULL),(3732,27,'0082','1000-share-AA-0082','Y',NULL),(3733,27,'0083','1000-share-AA-0083','Y',NULL),(3734,27,'0084','1000-share-AA-0084','Y',NULL),(3735,27,'0085','1000-share-AA-0085','Y',NULL),(3736,27,'0086','1000-share-AA-0086','Y',NULL),(3737,27,'0087','1000-share-AA-0087','Y',NULL),(3738,27,'0088','1000-share-AA-0088','Y',NULL),(3739,27,'0089','1000-share-AA-0089','Y',NULL),(3740,27,'0090','1000-share-AA-0090','Y',NULL),(3741,27,'0091','1000-share-AA-0091','Y',NULL),(3742,27,'0092','1000-share-AA-0092','Y',NULL),(3743,27,'0093','1000-share-AA-0093','Y',NULL),(3744,27,'0094','1000-share-AA-0094','Y',NULL),(3745,27,'0095','1000-share-AA-0095','Y',NULL),(3746,27,'0096','1000-share-AA-0096','Y',NULL),(3747,27,'0097','1000-share-AA-0097','Y',NULL),(3748,27,'0098','1000-share-AA-0098','Y',NULL),(3749,27,'0099','1000-share-AA-0099','Y',NULL),(3750,27,'0100','1000-share-AA-0100','Y',NULL),(3751,27,'0101','1000-share-AA-0101','Y',NULL),(3752,27,'0102','1000-share-AA-0102','Y',NULL),(3753,27,'0103','1000-share-AA-0103','Y',NULL),(3754,27,'0104','1000-share-AA-0104','Y',NULL),(3755,27,'0105','1000-share-AA-0105','Y',NULL),(3756,27,'0106','1000-share-AA-0106','Y',NULL),(3757,27,'0107','1000-share-AA-0107','Y',NULL),(3758,27,'0108','1000-share-AA-0108','Y',NULL),(3759,27,'0109','1000-share-AA-0109','Y',NULL),(3760,27,'0110','1000-share-AA-0110','Y',NULL),(3761,27,'0111','1000-share-AA-0111','Y',NULL),(3762,27,'0112','1000-share-AA-0112','Y',NULL),(3763,27,'0113','1000-share-AA-0113','Y',NULL),(3764,27,'0114','1000-share-AA-0114','Y',NULL),(3765,27,'0115','1000-share-AA-0115','Y',NULL),(3766,27,'0116','1000-share-AA-0116','Y',NULL),(3767,27,'0117','1000-share-AA-0117','Y',NULL),(3768,27,'0118','1000-share-AA-0118','Y',NULL),(3769,27,'0119','1000-share-AA-0119','Y',NULL),(3770,27,'0120','1000-share-AA-0120','Y',NULL),(3771,27,'0121','1000-share-AA-0121','Y',NULL),(3772,27,'0122','1000-share-AA-0122','Y',NULL),(3773,27,'0123','1000-share-AA-0123','Y',NULL),(3774,27,'0124','1000-share-AA-0124','Y',NULL),(3775,27,'0125','1000-share-AA-0125','Y',NULL),(3776,27,'0126','1000-share-AA-0126','Y',NULL),(3777,27,'0127','1000-share-AA-0127','Y',NULL),(3778,27,'0128','1000-share-AA-0128','Y',NULL),(3779,27,'0129','1000-share-AA-0129','Y',NULL),(3780,27,'0130','1000-share-AA-0130','Y',NULL),(3781,27,'0131','1000-share-AA-0131','Y',NULL),(3782,27,'0132','1000-share-AA-0132','Y',NULL),(3783,27,'0133','1000-share-AA-0133','Y',NULL),(3784,27,'0134','1000-share-AA-0134','Y',NULL),(3785,27,'0135','1000-share-AA-0135','Y',NULL),(3786,27,'0136','1000-share-AA-0136','Y',NULL),(3787,27,'0137','1000-share-AA-0137','Y',NULL),(3788,27,'0138','1000-share-AA-0138','Y',NULL),(3789,27,'0139','1000-share-AA-0139','Y',NULL),(3790,27,'0140','1000-share-AA-0140','Y',NULL),(3791,27,'0141','1000-share-AA-0141','Y',NULL),(3792,27,'0142','1000-share-AA-0142','Y',NULL),(3793,27,'0143','1000-share-AA-0143','Y',NULL),(3794,27,'0144','1000-share-AA-0144','Y',NULL),(3795,27,'0145','1000-share-AA-0145','Y',NULL),(3796,27,'0146','1000-share-AA-0146','Y',NULL),(3797,27,'0147','1000-share-AA-0147','Y',NULL),(3798,27,'0148','1000-share-AA-0148','Y',NULL),(3799,27,'0149','1000-share-AA-0149','Y',NULL),(3800,27,'0150','1000-share-AA-0150','Y',NULL),(3801,27,'0151','1000-share-AA-0151','Y',NULL),(3802,27,'0152','1000-share-AA-0152','Y',NULL),(3803,27,'0153','1000-share-AA-0153','Y',NULL),(3804,27,'0154','1000-share-AA-0154','Y',NULL),(3805,27,'0155','1000-share-AA-0155','Y',NULL),(3806,27,'0156','1000-share-AA-0156','Y',NULL),(3807,27,'0157','1000-share-AA-0157','Y',NULL),(3808,27,'0158','1000-share-AA-0158','Y',NULL),(3809,27,'0159','1000-share-AA-0159','Y',NULL),(3810,27,'0160','1000-share-AA-0160','Y',NULL),(3811,27,'0161','1000-share-AA-0161','Y',NULL),(3812,27,'0162','1000-share-AA-0162','Y',NULL),(3813,27,'0163','1000-share-AA-0163','Y',NULL),(3814,27,'0164','1000-share-AA-0164','Y',NULL),(3815,27,'0165','1000-share-AA-0165','Y',NULL),(3816,27,'0166','1000-share-AA-0166','Y',NULL),(3817,27,'0167','1000-share-AA-0167','Y',NULL),(3818,27,'0168','1000-share-AA-0168','Y',NULL),(3819,27,'0169','1000-share-AA-0169','Y',NULL),(3820,27,'0170','1000-share-AA-0170','Y',NULL),(3821,27,'0171','1000-share-AA-0171','Y',NULL),(3822,27,'0172','1000-share-AA-0172','Y',NULL),(3823,27,'0173','1000-share-AA-0173','Y',NULL),(3824,27,'0174','1000-share-AA-0174','Y',NULL),(3825,27,'0175','1000-share-AA-0175','Y',NULL),(3826,27,'0176','1000-share-AA-0176','Y',NULL),(3827,27,'0177','1000-share-AA-0177','Y',NULL),(3828,27,'0178','1000-share-AA-0178','Y',NULL),(3829,27,'0179','1000-share-AA-0179','Y',NULL),(3830,27,'0180','1000-share-AA-0180','Y',NULL),(3831,27,'0181','1000-share-AA-0181','Y',NULL),(3832,27,'0182','1000-share-AA-0182','Y',NULL),(3833,27,'0183','1000-share-AA-0183','Y',NULL),(3834,27,'0184','1000-share-AA-0184','Y',NULL),(3835,27,'0185','1000-share-AA-0185','Y',NULL),(3836,27,'0186','1000-share-AA-0186','Y',NULL),(3837,27,'0187','1000-share-AA-0187','Y',NULL),(3838,27,'0188','1000-share-AA-0188','Y',NULL),(3839,27,'0189','1000-share-AA-0189','Y',NULL),(3840,27,'0190','1000-share-AA-0190','Y',NULL),(3841,27,'0191','1000-share-AA-0191','Y',NULL),(3842,27,'0192','1000-share-AA-0192','Y',NULL),(3843,27,'0193','1000-share-AA-0193','Y',NULL),(3844,27,'0194','1000-share-AA-0194','Y',NULL),(3845,27,'0195','1000-share-AA-0195','Y',NULL),(3846,27,'0196','1000-share-AA-0196','Y',NULL),(3847,27,'0197','1000-share-AA-0197','Y',NULL),(3848,27,'0198','1000-share-AA-0198','Y',NULL),(3849,27,'0199','1000-share-AA-0199','Y',NULL),(3850,27,'0200','1000-share-AA-0200','Y',NULL),(3851,27,'0201','1000-share-AA-0201','Y',NULL),(3852,27,'0202','1000-share-AA-0202','Y',NULL),(3853,27,'0203','1000-share-AA-0203','Y',NULL),(3854,27,'0204','1000-share-AA-0204','Y',NULL),(3855,27,'0205','1000-share-AA-0205','Y',NULL),(3856,27,'0206','1000-share-AA-0206','Y',NULL),(3857,27,'0207','1000-share-AA-0207','Y',NULL),(3858,27,'0208','1000-share-AA-0208','Y',NULL),(3859,27,'0209','1000-share-AA-0209','Y',NULL),(3860,27,'0210','1000-share-AA-0210','Y',NULL),(3861,27,'0211','1000-share-AA-0211','Y',NULL),(3862,27,'0212','1000-share-AA-0212','Y',NULL),(3863,27,'0213','1000-share-AA-0213','Y',NULL),(3864,27,'0214','1000-share-AA-0214','Y',NULL),(3865,27,'0215','1000-share-AA-0215','Y',NULL),(3866,27,'0216','1000-share-AA-0216','Y',NULL),(3867,27,'0217','1000-share-AA-0217','Y',NULL),(3868,27,'0218','1000-share-AA-0218','Y',NULL),(3869,27,'0219','1000-share-AA-0219','Y',NULL),(3870,27,'0220','1000-share-AA-0220','Y',NULL),(3871,27,'0221','1000-share-AA-0221','Y',NULL),(3872,27,'0222','1000-share-AA-0222','Y',NULL),(3873,27,'0223','1000-share-AA-0223','Y',NULL),(3874,27,'0224','1000-share-AA-0224','Y',NULL),(3875,27,'0225','1000-share-AA-0225','Y',NULL),(3876,27,'0226','1000-share-AA-0226','Y',NULL),(3877,27,'0227','1000-share-AA-0227','Y',NULL),(3878,27,'0228','1000-share-AA-0228','Y',NULL),(3879,27,'0229','1000-share-AA-0229','Y',NULL),(3880,27,'0230','1000-share-AA-0230','Y',NULL),(3881,27,'0231','1000-share-AA-0231','Y',NULL),(3882,27,'0232','1000-share-AA-0232','Y',NULL),(3883,27,'0233','1000-share-AA-0233','Y',NULL),(3884,27,'0234','1000-share-AA-0234','Y',NULL),(3885,27,'0235','1000-share-AA-0235','Y',NULL),(3886,27,'0236','1000-share-AA-0236','Y',NULL),(3887,27,'0237','1000-share-AA-0237','Y',NULL),(3888,27,'0238','1000-share-AA-0238','Y',NULL),(3889,27,'0239','1000-share-AA-0239','Y',NULL),(3890,27,'0240','1000-share-AA-0240','Y',NULL),(3891,27,'0241','1000-share-AA-0241','Y',NULL),(3892,27,'0242','1000-share-AA-0242','Y',NULL),(3893,27,'0243','1000-share-AA-0243','Y',NULL),(3894,27,'0244','1000-share-AA-0244','Y',NULL),(3895,27,'0245','1000-share-AA-0245','Y',NULL),(3896,27,'0246','1000-share-AA-0246','Y',NULL),(3897,27,'0247','1000-share-AA-0247','Y',NULL),(3898,27,'0248','1000-share-AA-0248','Y',NULL),(3899,27,'0249','1000-share-AA-0249','Y',NULL),(3900,27,'0250','1000-share-AA-0250','Y',NULL),(3901,27,'0251','1000-share-AA-0251','Y',NULL),(3902,27,'0252','1000-share-AA-0252','Y',NULL),(3903,27,'0253','1000-share-AA-0253','Y',NULL),(3904,27,'0254','1000-share-AA-0254','Y',NULL),(3905,27,'0255','1000-share-AA-0255','Y',NULL),(3906,27,'0256','1000-share-AA-0256','Y',NULL),(3907,27,'0257','1000-share-AA-0257','Y',NULL),(3908,27,'0258','1000-share-AA-0258','Y',NULL),(3909,27,'0259','1000-share-AA-0259','Y',NULL),(3910,27,'0260','1000-share-AA-0260','Y',NULL),(3911,27,'0261','1000-share-AA-0261','Y',NULL),(3912,27,'0262','1000-share-AA-0262','Y',NULL),(3913,27,'0263','1000-share-AA-0263','Y',NULL),(3914,27,'0264','1000-share-AA-0264','Y',NULL),(3915,27,'0265','1000-share-AA-0265','Y',NULL),(3916,27,'0266','1000-share-AA-0266','Y',NULL),(3917,27,'0267','1000-share-AA-0267','Y',NULL),(3918,27,'0268','1000-share-AA-0268','Y',NULL),(3919,27,'0269','1000-share-AA-0269','Y',NULL),(3920,27,'0270','1000-share-AA-0270','Y',NULL),(3921,27,'0271','1000-share-AA-0271','Y',NULL),(3922,27,'0272','1000-share-AA-0272','Y',NULL),(3923,27,'0273','1000-share-AA-0273','Y',NULL),(3924,27,'0274','1000-share-AA-0274','Y',NULL),(3925,27,'0275','1000-share-AA-0275','Y',NULL),(3926,27,'0276','1000-share-AA-0276','Y',NULL),(3927,27,'0277','1000-share-AA-0277','Y',NULL),(3928,27,'0278','1000-share-AA-0278','Y',NULL),(3929,27,'0279','1000-share-AA-0279','Y',NULL),(3930,27,'0280','1000-share-AA-0280','Y',NULL),(3931,27,'0281','1000-share-AA-0281','Y',NULL),(3932,27,'0282','1000-share-AA-0282','Y',NULL),(3933,27,'0283','1000-share-AA-0283','Y',NULL),(3934,27,'0284','1000-share-AA-0284','Y',NULL),(3935,27,'0285','1000-share-AA-0285','Y',NULL),(3936,27,'0286','1000-share-AA-0286','Y',NULL),(3937,27,'0287','1000-share-AA-0287','Y',NULL),(3938,27,'0288','1000-share-AA-0288','Y',NULL),(3939,27,'0289','1000-share-AA-0289','Y',NULL),(3940,27,'0290','1000-share-AA-0290','Y',NULL),(3941,27,'0291','1000-share-AA-0291','Y',NULL),(3942,27,'0292','1000-share-AA-0292','Y',NULL),(3943,27,'0293','1000-share-AA-0293','Y',NULL),(3944,27,'0294','1000-share-AA-0294','Y',NULL),(3945,27,'0295','1000-share-AA-0295','Y',NULL),(3946,27,'0296','1000-share-AA-0296','Y',NULL),(3947,27,'0297','1000-share-AA-0297','Y',NULL),(3948,27,'0298','1000-share-AA-0298','Y',NULL),(3949,27,'0299','1000-share-AA-0299','Y',NULL),(3950,27,'0300','1000-share-AA-0300','Y',NULL),(3951,27,'0301','1000-share-AA-0301','Y',NULL),(3952,27,'0302','1000-share-AA-0302','Y',NULL),(3953,27,'0303','1000-share-AA-0303','Y',NULL),(3954,27,'0304','1000-share-AA-0304','Y',NULL),(3955,27,'0305','1000-share-AA-0305','Y',NULL),(3956,27,'0306','1000-share-AA-0306','Y',NULL),(3957,27,'0307','1000-share-AA-0307','Y',NULL),(3958,27,'0308','1000-share-AA-0308','Y',NULL),(3959,27,'0309','1000-share-AA-0309','Y',NULL),(3960,27,'0310','1000-share-AA-0310','Y',NULL),(3961,27,'0311','1000-share-AA-0311','Y',NULL),(3962,27,'0312','1000-share-AA-0312','Y',NULL),(3963,27,'0313','1000-share-AA-0313','Y',NULL),(3964,27,'0314','1000-share-AA-0314','Y',NULL),(3965,27,'0315','1000-share-AA-0315','Y',NULL),(3966,27,'0316','1000-share-AA-0316','Y',NULL),(3967,27,'0317','1000-share-AA-0317','Y',NULL),(3968,27,'0318','1000-share-AA-0318','Y',NULL),(3969,27,'0319','1000-share-AA-0319','Y',NULL),(3970,27,'0320','1000-share-AA-0320','Y',NULL),(3971,27,'0321','1000-share-AA-0321','Y',NULL),(3972,27,'0322','1000-share-AA-0322','Y',NULL),(3973,27,'0323','1000-share-AA-0323','Y',NULL),(3974,27,'0324','1000-share-AA-0324','Y',NULL),(3975,27,'0325','1000-share-AA-0325','Y',NULL),(3976,27,'0326','1000-share-AA-0326','Y',NULL),(3977,27,'0327','1000-share-AA-0327','Y',NULL),(3978,27,'0328','1000-share-AA-0328','Y',NULL),(3979,27,'0329','1000-share-AA-0329','Y',NULL),(3980,27,'0330','1000-share-AA-0330','Y',NULL),(3981,27,'0331','1000-share-AA-0331','Y',NULL),(3982,27,'0332','1000-share-AA-0332','Y',NULL),(3983,27,'0333','1000-share-AA-0333','Y',NULL),(3984,27,'0334','1000-share-AA-0334','Y',NULL),(3985,27,'0335','1000-share-AA-0335','Y',NULL),(3986,27,'0336','1000-share-AA-0336','Y',NULL),(3987,27,'0337','1000-share-AA-0337','Y',NULL),(3988,27,'0338','1000-share-AA-0338','Y',NULL),(3989,27,'0339','1000-share-AA-0339','Y',NULL),(3990,27,'0340','1000-share-AA-0340','Y',NULL),(3991,27,'0341','1000-share-AA-0341','Y',NULL),(3992,27,'0342','1000-share-AA-0342','Y',NULL),(3993,27,'0343','1000-share-AA-0343','Y',NULL),(3994,27,'0344','1000-share-AA-0344','Y',NULL),(3995,27,'0345','1000-share-AA-0345','Y',NULL),(3996,27,'0346','1000-share-AA-0346','Y',NULL),(3997,27,'0347','1000-share-AA-0347','Y',NULL),(3998,27,'0348','1000-share-AA-0348','Y',NULL),(3999,27,'0349','1000-share-AA-0349','Y',NULL),(4000,27,'0350','1000-share-AA-0350','Y',NULL),(4001,27,'0351','1000-share-AA-0351','Y',NULL),(4002,27,'0352','1000-share-AA-0352','Y',NULL),(4003,27,'0353','1000-share-AA-0353','Y',NULL),(4004,27,'0354','1000-share-AA-0354','Y',NULL),(4005,27,'0355','1000-share-AA-0355','Y',NULL),(4006,27,'0356','1000-share-AA-0356','Y',NULL),(4007,27,'0357','1000-share-AA-0357','Y',NULL),(4008,27,'0358','1000-share-AA-0358','Y',NULL),(4009,27,'0359','1000-share-AA-0359','Y',NULL),(4010,27,'0360','1000-share-AA-0360','Y',NULL),(4011,27,'0361','1000-share-AA-0361','Y',NULL),(4012,27,'0362','1000-share-AA-0362','Y',NULL),(4013,27,'0363','1000-share-AA-0363','Y',NULL),(4014,27,'0364','1000-share-AA-0364','Y',NULL),(4015,27,'0365','1000-share-AA-0365','Y',NULL),(4016,27,'0366','1000-share-AA-0366','Y',NULL),(4017,27,'0367','1000-share-AA-0367','Y',NULL),(4018,27,'0368','1000-share-AA-0368','Y',NULL),(4019,27,'0369','1000-share-AA-0369','Y',NULL),(4020,27,'0370','1000-share-AA-0370','Y',NULL),(4021,27,'0371','1000-share-AA-0371','Y',NULL),(4022,27,'0372','1000-share-AA-0372','Y',NULL),(4023,27,'0373','1000-share-AA-0373','Y',NULL),(4024,27,'0374','1000-share-AA-0374','Y',NULL),(4025,27,'0375','1000-share-AA-0375','Y',NULL),(4026,27,'0376','1000-share-AA-0376','Y',NULL),(4027,27,'0377','1000-share-AA-0377','Y',NULL),(4028,27,'0378','1000-share-AA-0378','Y',NULL),(4029,27,'0379','1000-share-AA-0379','Y',NULL),(4030,27,'0380','1000-share-AA-0380','Y',NULL),(4031,27,'0381','1000-share-AA-0381','Y',NULL),(4032,27,'0382','1000-share-AA-0382','Y',NULL),(4033,27,'0383','1000-share-AA-0383','Y',NULL),(4034,27,'0384','1000-share-AA-0384','Y',NULL),(4035,27,'0385','1000-share-AA-0385','Y',NULL),(4036,27,'0386','1000-share-AA-0386','Y',NULL),(4037,27,'0387','1000-share-AA-0387','Y',NULL),(4038,27,'0388','1000-share-AA-0388','Y',NULL),(4039,27,'0389','1000-share-AA-0389','Y',NULL),(4040,27,'0390','1000-share-AA-0390','Y',NULL),(4041,27,'0391','1000-share-AA-0391','Y',NULL),(4042,27,'0392','1000-share-AA-0392','Y',NULL),(4043,27,'0393','1000-share-AA-0393','Y',NULL),(4044,27,'0394','1000-share-AA-0394','Y',NULL),(4045,27,'0395','1000-share-AA-0395','Y',NULL),(4046,27,'0396','1000-share-AA-0396','Y',NULL),(4047,27,'0397','1000-share-AA-0397','Y',NULL),(4048,27,'0398','1000-share-AA-0398','Y',NULL),(4049,27,'0399','1000-share-AA-0399','Y',NULL),(4050,27,'0400','1000-share-AA-0400','Y',NULL),(4051,28,'0001','1000-A1-0001','Y',NULL),(4052,28,'0002','1000-A1-0002','Y',NULL),(4053,28,'0003','1000-A1-0003','Y',NULL),(4054,28,'0004','1000-A1-0004','Y',NULL),(4055,28,'0005','1000-A1-0005','Y',NULL),(4056,28,'0006','1000-A1-0006','Y',NULL),(4057,28,'0007','1000-A1-0007','Y',NULL),(4058,28,'0008','1000-A1-0008','Y',NULL),(4059,28,'0009','1000-A1-0009','Y',NULL),(4060,28,'0010','1000-A1-0010','Y',NULL),(4061,28,'0011','1000-A1-0011','Y',NULL),(4062,28,'0012','1000-A1-0012','Y',NULL),(4063,28,'0013','1000-A1-0013','Y',NULL),(4064,28,'0014','1000-A1-0014','Y',NULL),(4065,28,'0015','1000-A1-0015','Y',NULL),(4066,28,'0016','1000-A1-0016','Y',NULL),(4067,28,'0017','1000-A1-0017','Y',NULL),(4068,28,'0018','1000-A1-0018','Y',NULL),(4069,28,'0019','1000-A1-0019','Y',NULL),(4070,28,'0020','1000-A1-0020','Y',NULL),(4071,28,'0021','1000-A1-0021','Y',NULL),(4072,28,'0022','1000-A1-0022','Y',NULL),(4073,28,'0023','1000-A1-0023','Y',NULL),(4074,28,'0024','1000-A1-0024','Y',NULL),(4075,28,'0025','1000-A1-0025','Y',NULL),(4076,28,'0026','1000-A1-0026','Y',NULL),(4077,28,'0027','1000-A1-0027','Y',NULL),(4078,28,'0028','1000-A1-0028','Y',NULL),(4079,28,'0029','1000-A1-0029','Y',NULL),(4080,28,'0030','1000-A1-0030','Y',NULL),(4081,28,'0031','1000-A1-0031','Y',NULL),(4082,28,'0032','1000-A1-0032','Y',NULL),(4083,28,'0033','1000-A1-0033','Y',NULL),(4084,28,'0034','1000-A1-0034','Y',NULL),(4085,28,'0035','1000-A1-0035','Y',NULL),(4086,28,'0036','1000-A1-0036','Y',NULL),(4087,28,'0037','1000-A1-0037','Y',NULL),(4088,28,'0038','1000-A1-0038','Y',NULL),(4089,28,'0039','1000-A1-0039','Y',NULL),(4090,28,'0040','1000-A1-0040','Y',NULL),(4091,28,'0041','1000-A1-0041','Y',NULL),(4092,28,'0042','1000-A1-0042','Y',NULL),(4093,28,'0043','1000-A1-0043','Y',NULL),(4094,28,'0044','1000-A1-0044','Y',NULL),(4095,28,'0045','1000-A1-0045','Y',NULL),(4096,28,'0046','1000-A1-0046','Y',NULL),(4097,28,'0047','1000-A1-0047','Y',NULL),(4098,28,'0048','1000-A1-0048','Y',NULL),(4099,28,'0049','1000-A1-0049','Y',NULL),(4100,28,'0050','1000-A1-0050','Y',NULL),(4101,28,'0051','1000-A1-0051','Y',NULL),(4102,28,'0052','1000-A1-0052','Y',NULL),(4103,28,'0053','1000-A1-0053','Y',NULL),(4104,28,'0054','1000-A1-0054','Y',NULL),(4105,28,'0055','1000-A1-0055','Y',NULL),(4106,28,'0056','1000-A1-0056','Y',NULL),(4107,28,'0057','1000-A1-0057','Y',NULL),(4108,28,'0058','1000-A1-0058','Y',NULL),(4109,28,'0059','1000-A1-0059','Y',NULL),(4110,28,'0060','1000-A1-0060','Y',NULL),(4111,28,'0061','1000-A1-0061','Y',NULL),(4112,28,'0062','1000-A1-0062','Y',NULL),(4113,28,'0063','1000-A1-0063','Y',NULL),(4114,28,'0064','1000-A1-0064','Y',NULL),(4115,28,'0065','1000-A1-0065','Y',NULL),(4116,28,'0066','1000-A1-0066','Y',NULL),(4117,28,'0067','1000-A1-0067','Y',NULL),(4118,28,'0068','1000-A1-0068','Y',NULL),(4119,28,'0069','1000-A1-0069','Y',NULL),(4120,28,'0070','1000-A1-0070','Y',NULL),(4121,28,'0071','1000-A1-0071','Y',NULL),(4122,28,'0072','1000-A1-0072','Y',NULL),(4123,28,'0073','1000-A1-0073','Y',NULL),(4124,28,'0074','1000-A1-0074','Y',NULL),(4125,28,'0075','1000-A1-0075','Y',NULL),(4126,28,'0076','1000-A1-0076','Y',NULL),(4127,28,'0077','1000-A1-0077','Y',NULL),(4128,28,'0078','1000-A1-0078','Y',NULL),(4129,28,'0079','1000-A1-0079','Y',NULL),(4130,28,'0080','1000-A1-0080','Y',NULL),(4131,28,'0081','1000-A1-0081','Y',NULL),(4132,28,'0082','1000-A1-0082','Y',NULL),(4133,28,'0083','1000-A1-0083','Y',NULL),(4134,28,'0084','1000-A1-0084','Y',NULL),(4135,28,'0085','1000-A1-0085','Y',NULL),(4136,28,'0086','1000-A1-0086','Y',NULL),(4137,28,'0087','1000-A1-0087','Y',NULL),(4138,28,'0088','1000-A1-0088','Y',NULL),(4139,28,'0089','1000-A1-0089','Y',NULL),(4140,28,'0090','1000-A1-0090','Y',NULL),(4141,28,'0091','1000-A1-0091','Y',NULL),(4142,28,'0092','1000-A1-0092','Y',NULL),(4143,28,'0093','1000-A1-0093','Y',NULL),(4144,28,'0094','1000-A1-0094','Y',NULL),(4145,28,'0095','1000-A1-0095','Y',NULL),(4146,28,'0096','1000-A1-0096','Y',NULL),(4147,28,'0097','1000-A1-0097','Y',NULL),(4148,28,'0098','1000-A1-0098','Y',NULL),(4149,28,'0099','1000-A1-0099','Y',NULL),(4150,28,'0100','1000-A1-0100','Y',NULL),(4151,28,'0101','1000-A1-0101','Y',NULL),(4152,28,'0102','1000-A1-0102','Y',NULL),(4153,28,'0103','1000-A1-0103','Y',NULL),(4154,28,'0104','1000-A1-0104','Y',NULL),(4155,28,'0105','1000-A1-0105','Y',NULL),(4156,28,'0106','1000-A1-0106','Y',NULL),(4157,28,'0107','1000-A1-0107','Y',NULL),(4158,28,'0108','1000-A1-0108','Y',NULL),(4159,28,'0109','1000-A1-0109','Y',NULL),(4160,28,'0110','1000-A1-0110','Y',NULL),(4161,28,'0111','1000-A1-0111','Y',NULL),(4162,28,'0112','1000-A1-0112','Y',NULL),(4163,28,'0113','1000-A1-0113','Y',NULL),(4164,28,'0114','1000-A1-0114','Y',NULL),(4165,28,'0115','1000-A1-0115','Y',NULL),(4166,28,'0116','1000-A1-0116','Y',NULL),(4167,28,'0117','1000-A1-0117','Y',NULL),(4168,28,'0118','1000-A1-0118','Y',NULL),(4169,28,'0119','1000-A1-0119','Y',NULL),(4170,28,'0120','1000-A1-0120','Y',NULL),(4171,28,'0121','1000-A1-0121','Y',NULL),(4172,28,'0122','1000-A1-0122','Y',NULL),(4173,28,'0123','1000-A1-0123','Y',NULL),(4174,28,'0124','1000-A1-0124','Y',NULL),(4175,28,'0125','1000-A1-0125','Y',NULL),(4176,28,'0126','1000-A1-0126','Y',NULL),(4177,28,'0127','1000-A1-0127','Y',NULL),(4178,28,'0128','1000-A1-0128','Y',NULL),(4179,28,'0129','1000-A1-0129','Y',NULL),(4180,28,'0130','1000-A1-0130','Y',NULL),(4181,28,'0131','1000-A1-0131','Y',NULL),(4182,28,'0132','1000-A1-0132','Y',NULL),(4183,28,'0133','1000-A1-0133','Y',NULL),(4184,28,'0134','1000-A1-0134','Y',NULL),(4185,28,'0135','1000-A1-0135','Y',NULL),(4186,28,'0136','1000-A1-0136','Y',NULL),(4187,28,'0137','1000-A1-0137','Y',NULL),(4188,28,'0138','1000-A1-0138','Y',NULL),(4189,28,'0139','1000-A1-0139','Y',NULL),(4190,28,'0140','1000-A1-0140','Y',NULL),(4191,28,'0141','1000-A1-0141','Y',NULL),(4192,28,'0142','1000-A1-0142','Y',NULL),(4193,28,'0143','1000-A1-0143','Y',NULL),(4194,28,'0144','1000-A1-0144','Y',NULL),(4195,28,'0145','1000-A1-0145','Y',NULL),(4196,28,'0146','1000-A1-0146','Y',NULL),(4197,28,'0147','1000-A1-0147','Y',NULL),(4198,28,'0148','1000-A1-0148','Y',NULL),(4199,28,'0149','1000-A1-0149','Y',NULL),(4200,28,'0150','1000-A1-0150','Y',NULL),(4201,28,'0151','1000-A1-0151','Y',NULL),(4202,28,'0152','1000-A1-0152','Y',NULL),(4203,28,'0153','1000-A1-0153','Y',NULL),(4204,28,'0154','1000-A1-0154','Y',NULL),(4205,28,'0155','1000-A1-0155','Y',NULL),(4206,28,'0156','1000-A1-0156','Y',NULL),(4207,28,'0157','1000-A1-0157','Y',NULL),(4208,28,'0158','1000-A1-0158','Y',NULL),(4209,28,'0159','1000-A1-0159','Y',NULL),(4210,28,'0160','1000-A1-0160','Y',NULL),(4211,28,'0161','1000-A1-0161','Y',NULL),(4212,28,'0162','1000-A1-0162','Y',NULL),(4213,28,'0163','1000-A1-0163','Y',NULL),(4214,28,'0164','1000-A1-0164','Y',NULL),(4215,28,'0165','1000-A1-0165','Y',NULL),(4216,28,'0166','1000-A1-0166','Y',NULL),(4217,28,'0167','1000-A1-0167','Y',NULL),(4218,28,'0168','1000-A1-0168','Y',NULL),(4219,28,'0169','1000-A1-0169','Y',NULL),(4220,28,'0170','1000-A1-0170','Y',NULL),(4221,28,'0171','1000-A1-0171','Y',NULL),(4222,28,'0172','1000-A1-0172','Y',NULL),(4223,28,'0173','1000-A1-0173','Y',NULL),(4224,28,'0174','1000-A1-0174','Y',NULL),(4225,28,'0175','1000-A1-0175','Y',NULL),(4226,28,'0176','1000-A1-0176','Y',NULL),(4227,28,'0177','1000-A1-0177','Y',NULL),(4228,28,'0178','1000-A1-0178','Y',NULL),(4229,28,'0179','1000-A1-0179','Y',NULL),(4230,28,'0180','1000-A1-0180','Y',NULL),(4231,28,'0181','1000-A1-0181','Y',NULL),(4232,28,'0182','1000-A1-0182','Y',NULL),(4233,28,'0183','1000-A1-0183','Y',NULL),(4234,28,'0184','1000-A1-0184','Y',NULL),(4235,28,'0185','1000-A1-0185','Y',NULL),(4236,28,'0186','1000-A1-0186','Y',NULL),(4237,28,'0187','1000-A1-0187','Y',NULL),(4238,28,'0188','1000-A1-0188','Y',NULL),(4239,28,'0189','1000-A1-0189','Y',NULL),(4240,28,'0190','1000-A1-0190','Y',NULL),(4241,28,'0191','1000-A1-0191','Y',NULL),(4242,28,'0192','1000-A1-0192','Y',NULL),(4243,28,'0193','1000-A1-0193','Y',NULL),(4244,28,'0194','1000-A1-0194','Y',NULL),(4245,28,'0195','1000-A1-0195','Y',NULL),(4246,28,'0196','1000-A1-0196','Y',NULL),(4247,28,'0197','1000-A1-0197','Y',NULL),(4248,28,'0198','1000-A1-0198','Y',NULL),(4249,28,'0199','1000-A1-0199','Y',NULL),(4250,28,'0200','1000-A1-0200','Y',NULL),(4251,28,'0201','1000-A1-0201','Y',NULL),(4252,28,'0202','1000-A1-0202','Y',NULL),(4253,28,'0203','1000-A1-0203','Y',NULL),(4254,28,'0204','1000-A1-0204','Y',NULL),(4255,28,'0205','1000-A1-0205','Y',NULL),(4256,28,'0206','1000-A1-0206','Y',NULL),(4257,28,'0207','1000-A1-0207','Y',NULL),(4258,28,'0208','1000-A1-0208','Y',NULL),(4259,28,'0209','1000-A1-0209','Y',NULL),(4260,28,'0210','1000-A1-0210','Y',NULL),(4261,28,'0211','1000-A1-0211','Y',NULL),(4262,28,'0212','1000-A1-0212','Y',NULL),(4263,28,'0213','1000-A1-0213','Y',NULL),(4264,28,'0214','1000-A1-0214','Y',NULL),(4265,28,'0215','1000-A1-0215','Y',NULL),(4266,28,'0216','1000-A1-0216','Y',NULL),(4267,28,'0217','1000-A1-0217','Y',NULL),(4268,28,'0218','1000-A1-0218','Y',NULL),(4269,28,'0219','1000-A1-0219','Y',NULL),(4270,28,'0220','1000-A1-0220','Y',NULL),(4271,28,'0221','1000-A1-0221','Y',NULL),(4272,28,'0222','1000-A1-0222','Y',NULL),(4273,28,'0223','1000-A1-0223','Y',NULL),(4274,28,'0224','1000-A1-0224','Y',NULL),(4275,28,'0225','1000-A1-0225','Y',NULL),(4276,28,'0226','1000-A1-0226','Y',NULL),(4277,28,'0227','1000-A1-0227','Y',NULL),(4278,28,'0228','1000-A1-0228','Y',NULL),(4279,28,'0229','1000-A1-0229','Y',NULL),(4280,28,'0230','1000-A1-0230','Y',NULL),(4281,28,'0231','1000-A1-0231','Y',NULL),(4282,28,'0232','1000-A1-0232','Y',NULL),(4283,28,'0233','1000-A1-0233','Y',NULL),(4284,28,'0234','1000-A1-0234','Y',NULL),(4285,28,'0235','1000-A1-0235','Y',NULL),(4286,28,'0236','1000-A1-0236','Y',NULL),(4287,28,'0237','1000-A1-0237','Y',NULL),(4288,28,'0238','1000-A1-0238','Y',NULL),(4289,28,'0239','1000-A1-0239','Y',NULL),(4290,28,'0240','1000-A1-0240','Y',NULL),(4291,28,'0241','1000-A1-0241','Y',NULL),(4292,28,'0242','1000-A1-0242','Y',NULL),(4293,28,'0243','1000-A1-0243','Y',NULL),(4294,28,'0244','1000-A1-0244','Y',NULL),(4295,28,'0245','1000-A1-0245','Y',NULL),(4296,28,'0246','1000-A1-0246','Y',NULL),(4297,28,'0247','1000-A1-0247','Y',NULL),(4298,28,'0248','1000-A1-0248','Y',NULL),(4299,28,'0249','1000-A1-0249','Y',NULL),(4300,28,'0250','1000-A1-0250','Y',NULL),(4301,28,'0251','1000-A1-0251','Y',NULL),(4302,28,'0252','1000-A1-0252','Y',NULL),(4303,28,'0253','1000-A1-0253','Y',NULL),(4304,28,'0254','1000-A1-0254','Y',NULL),(4305,28,'0255','1000-A1-0255','Y',NULL),(4306,28,'0256','1000-A1-0256','Y',NULL),(4307,28,'0257','1000-A1-0257','Y',NULL),(4308,28,'0258','1000-A1-0258','Y',NULL),(4309,28,'0259','1000-A1-0259','Y',NULL),(4310,28,'0260','1000-A1-0260','Y',NULL),(4311,28,'0261','1000-A1-0261','Y',NULL),(4312,28,'0262','1000-A1-0262','Y',NULL),(4313,28,'0263','1000-A1-0263','Y',NULL),(4314,28,'0264','1000-A1-0264','Y',NULL),(4315,28,'0265','1000-A1-0265','Y',NULL),(4316,28,'0266','1000-A1-0266','Y',NULL),(4317,28,'0267','1000-A1-0267','Y',NULL),(4318,28,'0268','1000-A1-0268','Y',NULL),(4319,28,'0269','1000-A1-0269','Y',NULL),(4320,28,'0270','1000-A1-0270','Y',NULL),(4321,28,'0271','1000-A1-0271','Y',NULL),(4322,28,'0272','1000-A1-0272','Y',NULL),(4323,28,'0273','1000-A1-0273','Y',NULL),(4324,28,'0274','1000-A1-0274','Y',NULL),(4325,28,'0275','1000-A1-0275','Y',NULL),(4326,28,'0276','1000-A1-0276','Y',NULL),(4327,28,'0277','1000-A1-0277','Y',NULL),(4328,28,'0278','1000-A1-0278','Y',NULL),(4329,28,'0279','1000-A1-0279','Y',NULL),(4330,28,'0280','1000-A1-0280','Y',NULL),(4331,28,'0281','1000-A1-0281','Y',NULL),(4332,28,'0282','1000-A1-0282','Y',NULL),(4333,28,'0283','1000-A1-0283','Y',NULL),(4334,28,'0284','1000-A1-0284','Y',NULL),(4335,28,'0285','1000-A1-0285','Y',NULL),(4336,28,'0286','1000-A1-0286','Y',NULL),(4337,28,'0287','1000-A1-0287','Y',NULL),(4338,28,'0288','1000-A1-0288','Y',NULL),(4339,28,'0289','1000-A1-0289','Y',NULL),(4340,28,'0290','1000-A1-0290','Y',NULL),(4341,28,'0291','1000-A1-0291','Y',NULL),(4342,28,'0292','1000-A1-0292','Y',NULL),(4343,28,'0293','1000-A1-0293','Y',NULL),(4344,28,'0294','1000-A1-0294','Y',NULL),(4345,28,'0295','1000-A1-0295','Y',NULL),(4346,28,'0296','1000-A1-0296','Y',NULL),(4347,28,'0297','1000-A1-0297','Y',NULL),(4348,28,'0298','1000-A1-0298','Y',NULL),(4349,28,'0299','1000-A1-0299','Y',NULL),(4350,28,'0300','1000-A1-0300','Y',NULL),(4351,28,'0301','1000-A1-0301','Y',NULL),(4352,28,'0302','1000-A1-0302','Y',NULL),(4353,28,'0303','1000-A1-0303','Y',NULL),(4354,28,'0304','1000-A1-0304','Y',NULL),(4355,28,'0305','1000-A1-0305','Y',NULL),(4356,28,'0306','1000-A1-0306','Y',NULL),(4357,28,'0307','1000-A1-0307','Y',NULL),(4358,28,'0308','1000-A1-0308','Y',NULL),(4359,28,'0309','1000-A1-0309','Y',NULL),(4360,28,'0310','1000-A1-0310','Y',NULL),(4361,28,'0311','1000-A1-0311','Y',NULL),(4362,28,'0312','1000-A1-0312','Y',NULL),(4363,28,'0313','1000-A1-0313','Y',NULL),(4364,28,'0314','1000-A1-0314','Y',NULL),(4365,28,'0315','1000-A1-0315','Y',NULL),(4366,28,'0316','1000-A1-0316','Y',NULL),(4367,28,'0317','1000-A1-0317','Y',NULL),(4368,28,'0318','1000-A1-0318','Y',NULL),(4369,28,'0319','1000-A1-0319','Y',NULL),(4370,28,'0320','1000-A1-0320','Y',NULL),(4371,28,'0321','1000-A1-0321','Y',NULL),(4372,28,'0322','1000-A1-0322','Y',NULL),(4373,28,'0323','1000-A1-0323','Y',NULL),(4374,28,'0324','1000-A1-0324','Y',NULL),(4375,28,'0325','1000-A1-0325','Y',NULL),(4376,28,'0326','1000-A1-0326','Y',NULL),(4377,28,'0327','1000-A1-0327','Y',NULL),(4378,28,'0328','1000-A1-0328','Y',NULL),(4379,28,'0329','1000-A1-0329','Y',NULL),(4380,28,'0330','1000-A1-0330','Y',NULL),(4381,28,'0331','1000-A1-0331','Y',NULL),(4382,28,'0332','1000-A1-0332','Y',NULL),(4383,28,'0333','1000-A1-0333','Y',NULL),(4384,28,'0334','1000-A1-0334','Y',NULL),(4385,28,'0335','1000-A1-0335','Y',NULL),(4386,28,'0336','1000-A1-0336','Y',NULL),(4387,28,'0337','1000-A1-0337','Y',NULL),(4388,28,'0338','1000-A1-0338','Y',NULL),(4389,28,'0339','1000-A1-0339','Y',NULL),(4390,28,'0340','1000-A1-0340','Y',NULL),(4391,28,'0341','1000-A1-0341','Y',NULL),(4392,28,'0342','1000-A1-0342','Y',NULL),(4393,28,'0343','1000-A1-0343','Y',NULL),(4394,28,'0344','1000-A1-0344','Y',NULL),(4395,28,'0345','1000-A1-0345','Y',NULL),(4396,28,'0346','1000-A1-0346','Y',NULL),(4397,28,'0347','1000-A1-0347','Y',NULL),(4398,28,'0348','1000-A1-0348','Y',NULL),(4399,28,'0349','1000-A1-0349','Y',NULL),(4400,28,'0350','1000-A1-0350','Y',NULL),(4401,28,'0351','1000-A1-0351','Y',NULL),(4402,28,'0352','1000-A1-0352','Y',NULL),(4403,28,'0353','1000-A1-0353','Y',NULL),(4404,28,'0354','1000-A1-0354','Y',NULL),(4405,28,'0355','1000-A1-0355','Y',NULL),(4406,28,'0356','1000-A1-0356','Y',NULL),(4407,28,'0357','1000-A1-0357','Y',NULL),(4408,28,'0358','1000-A1-0358','Y',NULL),(4409,28,'0359','1000-A1-0359','Y',NULL),(4410,28,'0360','1000-A1-0360','Y',NULL),(4411,28,'0361','1000-A1-0361','Y',NULL),(4412,28,'0362','1000-A1-0362','Y',NULL),(4413,28,'0363','1000-A1-0363','Y',NULL),(4414,28,'0364','1000-A1-0364','Y',NULL),(4415,28,'0365','1000-A1-0365','Y',NULL),(4416,28,'0366','1000-A1-0366','Y',NULL),(4417,28,'0367','1000-A1-0367','Y',NULL),(4418,28,'0368','1000-A1-0368','Y',NULL),(4419,28,'0369','1000-A1-0369','Y',NULL),(4420,28,'0370','1000-A1-0370','Y',NULL),(4421,28,'0371','1000-A1-0371','Y',NULL),(4422,28,'0372','1000-A1-0372','Y',NULL),(4423,28,'0373','1000-A1-0373','Y',NULL),(4424,28,'0374','1000-A1-0374','Y',NULL),(4425,28,'0375','1000-A1-0375','Y',NULL),(4426,28,'0376','1000-A1-0376','Y',NULL),(4427,28,'0377','1000-A1-0377','Y',NULL),(4428,28,'0378','1000-A1-0378','Y',NULL),(4429,28,'0379','1000-A1-0379','Y',NULL),(4430,28,'0380','1000-A1-0380','Y',NULL),(4431,28,'0381','1000-A1-0381','Y',NULL),(4432,28,'0382','1000-A1-0382','Y',NULL),(4433,28,'0383','1000-A1-0383','Y',NULL),(4434,28,'0384','1000-A1-0384','Y',NULL),(4435,28,'0385','1000-A1-0385','Y',NULL),(4436,28,'0386','1000-A1-0386','Y',NULL),(4437,28,'0387','1000-A1-0387','Y',NULL),(4438,28,'0388','1000-A1-0388','Y',NULL),(4439,28,'0389','1000-A1-0389','Y',NULL),(4440,28,'0390','1000-A1-0390','Y',NULL),(4441,28,'0391','1000-A1-0391','Y',NULL),(4442,28,'0392','1000-A1-0392','Y',NULL),(4443,28,'0393','1000-A1-0393','Y',NULL),(4444,28,'0394','1000-A1-0394','Y',NULL),(4445,28,'0395','1000-A1-0395','Y',NULL),(4446,28,'0396','1000-A1-0396','Y',NULL),(4447,28,'0397','1000-A1-0397','Y',NULL),(4448,28,'0398','1000-A1-0398','Y',NULL),(4449,28,'0399','1000-A1-0399','Y',NULL),(4450,28,'0400','1000-A1-0400','Y',NULL),(4451,29,'0001','1650-A2-0001','Y',NULL),(4452,29,'0002','1650-A2-0002','Y',NULL),(4453,29,'0003','1650-A2-0003','Y',NULL),(4454,29,'0004','1650-A2-0004','Y',NULL),(4455,29,'0005','1650-A2-0005','Y',NULL),(4456,29,'0006','1650-A2-0006','Y',NULL),(4457,29,'0007','1650-A2-0007','Y',NULL),(4458,29,'0008','1650-A2-0008','Y',NULL),(4459,29,'0009','1650-A2-0009','Y',NULL),(4460,29,'0010','1650-A2-0010','Y',NULL),(4461,29,'0011','1650-A2-0011','Y',NULL),(4462,29,'0012','1650-A2-0012','Y',NULL),(4463,29,'0013','1650-A2-0013','Y',NULL),(4464,29,'0014','1650-A2-0014','Y',NULL),(4465,29,'0015','1650-A2-0015','Y',NULL),(4466,29,'0016','1650-A2-0016','Y',NULL),(4467,29,'0017','1650-A2-0017','Y',NULL),(4468,29,'0018','1650-A2-0018','Y',NULL),(4469,29,'0019','1650-A2-0019','Y',NULL),(4470,29,'0020','1650-A2-0020','Y',NULL),(4471,29,'0021','1650-A2-0021','Y',NULL),(4472,29,'0022','1650-A2-0022','Y',NULL),(4473,29,'0023','1650-A2-0023','Y',NULL),(4474,29,'0024','1650-A2-0024','Y',NULL),(4475,29,'0025','1650-A2-0025','Y',NULL),(4476,29,'0026','1650-A2-0026','Y',NULL),(4477,29,'0027','1650-A2-0027','Y',NULL),(4478,29,'0028','1650-A2-0028','Y',NULL),(4479,29,'0029','1650-A2-0029','Y',NULL),(4480,29,'0030','1650-A2-0030','Y',NULL),(4481,29,'0031','1650-A2-0031','Y',NULL),(4482,29,'0032','1650-A2-0032','Y',NULL),(4483,29,'0033','1650-A2-0033','Y',NULL),(4484,29,'0034','1650-A2-0034','Y',NULL),(4485,29,'0035','1650-A2-0035','Y',NULL),(4486,29,'0036','1650-A2-0036','Y',NULL),(4487,29,'0037','1650-A2-0037','Y',NULL),(4488,29,'0038','1650-A2-0038','Y',NULL),(4489,29,'0039','1650-A2-0039','Y',NULL),(4490,29,'0040','1650-A2-0040','Y',NULL),(4491,29,'0041','1650-A2-0041','Y',NULL),(4492,29,'0042','1650-A2-0042','Y',NULL),(4493,29,'0043','1650-A2-0043','Y',NULL),(4494,29,'0044','1650-A2-0044','Y',NULL),(4495,29,'0045','1650-A2-0045','Y',NULL),(4496,29,'0046','1650-A2-0046','Y',NULL),(4497,29,'0047','1650-A2-0047','Y',NULL),(4498,29,'0048','1650-A2-0048','Y',NULL),(4499,29,'0049','1650-A2-0049','Y',NULL),(4500,29,'0050','1650-A2-0050','Y',NULL),(4501,29,'0051','1650-A2-0051','Y',NULL),(4502,29,'0052','1650-A2-0052','Y',NULL),(4503,29,'0053','1650-A2-0053','Y',NULL),(4504,29,'0054','1650-A2-0054','Y',NULL),(4505,29,'0055','1650-A2-0055','Y',NULL),(4506,29,'0056','1650-A2-0056','Y',NULL),(4507,29,'0057','1650-A2-0057','Y',NULL),(4508,29,'0058','1650-A2-0058','Y',NULL),(4509,29,'0059','1650-A2-0059','Y',NULL),(4510,29,'0060','1650-A2-0060','Y',NULL),(4511,29,'0061','1650-A2-0061','Y',NULL),(4512,29,'0062','1650-A2-0062','Y',NULL),(4513,29,'0063','1650-A2-0063','Y',NULL),(4514,29,'0064','1650-A2-0064','Y',NULL),(4515,29,'0065','1650-A2-0065','Y',NULL),(4516,29,'0066','1650-A2-0066','Y',NULL),(4517,29,'0067','1650-A2-0067','Y',NULL),(4518,29,'0068','1650-A2-0068','Y',NULL),(4519,29,'0069','1650-A2-0069','Y',NULL),(4520,29,'0070','1650-A2-0070','Y',NULL),(4521,29,'0071','1650-A2-0071','Y',NULL),(4522,29,'0072','1650-A2-0072','Y',NULL),(4523,29,'0073','1650-A2-0073','Y',NULL),(4524,29,'0074','1650-A2-0074','Y',NULL),(4525,29,'0075','1650-A2-0075','Y',NULL),(4526,29,'0076','1650-A2-0076','Y',NULL),(4527,29,'0077','1650-A2-0077','Y',NULL),(4528,29,'0078','1650-A2-0078','Y',NULL),(4529,29,'0079','1650-A2-0079','Y',NULL),(4530,29,'0080','1650-A2-0080','Y',NULL),(4531,29,'0081','1650-A2-0081','Y',NULL),(4532,29,'0082','1650-A2-0082','Y',NULL),(4533,29,'0083','1650-A2-0083','Y',NULL),(4534,29,'0084','1650-A2-0084','Y',NULL),(4535,29,'0085','1650-A2-0085','Y',NULL),(4536,29,'0086','1650-A2-0086','Y',NULL),(4537,29,'0087','1650-A2-0087','Y',NULL),(4538,29,'0088','1650-A2-0088','Y',NULL),(4539,29,'0089','1650-A2-0089','Y',NULL),(4540,29,'0090','1650-A2-0090','Y',NULL),(4541,29,'0091','1650-A2-0091','Y',NULL),(4542,29,'0092','1650-A2-0092','Y',NULL),(4543,29,'0093','1650-A2-0093','Y',NULL),(4544,29,'0094','1650-A2-0094','Y',NULL),(4545,29,'0095','1650-A2-0095','Y',NULL),(4546,29,'0096','1650-A2-0096','Y',NULL),(4547,29,'0097','1650-A2-0097','Y',NULL),(4548,29,'0098','1650-A2-0098','Y',NULL),(4549,29,'0099','1650-A2-0099','Y',NULL),(4550,29,'0100','1650-A2-0100','Y',NULL),(4551,29,'0101','1650-A2-0101','Y',NULL),(4552,29,'0102','1650-A2-0102','Y',NULL),(4553,29,'0103','1650-A2-0103','Y',NULL),(4554,29,'0104','1650-A2-0104','Y',NULL),(4555,29,'0105','1650-A2-0105','Y',NULL),(4556,29,'0106','1650-A2-0106','Y',NULL),(4557,29,'0107','1650-A2-0107','Y',NULL),(4558,29,'0108','1650-A2-0108','Y',NULL),(4559,29,'0109','1650-A2-0109','Y',NULL),(4560,29,'0110','1650-A2-0110','Y',NULL),(4561,29,'0111','1650-A2-0111','Y',NULL),(4562,29,'0112','1650-A2-0112','Y',NULL),(4563,29,'0113','1650-A2-0113','Y',NULL),(4564,29,'0114','1650-A2-0114','Y',NULL),(4565,29,'0115','1650-A2-0115','Y',NULL),(4566,29,'0116','1650-A2-0116','Y',NULL),(4567,29,'0117','1650-A2-0117','Y',NULL),(4568,29,'0118','1650-A2-0118','Y',NULL),(4569,29,'0119','1650-A2-0119','Y',NULL),(4570,29,'0120','1650-A2-0120','Y',NULL),(4571,29,'0121','1650-A2-0121','Y',NULL),(4572,29,'0122','1650-A2-0122','Y',NULL),(4573,29,'0123','1650-A2-0123','Y',NULL),(4574,29,'0124','1650-A2-0124','Y',NULL),(4575,29,'0125','1650-A2-0125','Y',NULL),(4576,29,'0126','1650-A2-0126','Y',NULL),(4577,29,'0127','1650-A2-0127','Y',NULL),(4578,29,'0128','1650-A2-0128','Y',NULL),(4579,29,'0129','1650-A2-0129','Y',NULL),(4580,29,'0130','1650-A2-0130','Y',NULL),(4581,29,'0131','1650-A2-0131','Y',NULL),(4582,29,'0132','1650-A2-0132','Y',NULL),(4583,29,'0133','1650-A2-0133','Y',NULL),(4584,29,'0134','1650-A2-0134','Y',NULL),(4585,29,'0135','1650-A2-0135','Y',NULL),(4586,29,'0136','1650-A2-0136','Y',NULL),(4587,29,'0137','1650-A2-0137','Y',NULL),(4588,29,'0138','1650-A2-0138','Y',NULL),(4589,29,'0139','1650-A2-0139','Y',NULL),(4590,29,'0140','1650-A2-0140','Y',NULL),(4591,29,'0141','1650-A2-0141','Y',NULL),(4592,29,'0142','1650-A2-0142','Y',NULL),(4593,29,'0143','1650-A2-0143','Y',NULL),(4594,29,'0144','1650-A2-0144','Y',NULL),(4595,29,'0145','1650-A2-0145','Y',NULL),(4596,29,'0146','1650-A2-0146','Y',NULL),(4597,29,'0147','1650-A2-0147','Y',NULL),(4598,29,'0148','1650-A2-0148','Y',NULL),(4599,29,'0149','1650-A2-0149','Y',NULL),(4600,29,'0150','1650-A2-0150','Y',NULL),(4601,29,'0151','1650-A2-0151','Y',NULL),(4602,29,'0152','1650-A2-0152','Y',NULL),(4603,29,'0153','1650-A2-0153','Y',NULL),(4604,29,'0154','1650-A2-0154','Y',NULL),(4605,29,'0155','1650-A2-0155','Y',NULL),(4606,29,'0156','1650-A2-0156','Y',NULL),(4607,29,'0157','1650-A2-0157','Y',NULL),(4608,29,'0158','1650-A2-0158','Y',NULL),(4609,29,'0159','1650-A2-0159','Y',NULL),(4610,29,'0160','1650-A2-0160','Y',NULL),(4611,29,'0161','1650-A2-0161','Y',NULL),(4612,29,'0162','1650-A2-0162','Y',NULL),(4613,29,'0163','1650-A2-0163','Y',NULL),(4614,29,'0164','1650-A2-0164','Y',NULL),(4615,29,'0165','1650-A2-0165','Y',NULL),(4616,29,'0166','1650-A2-0166','Y',NULL),(4617,29,'0167','1650-A2-0167','Y',NULL),(4618,29,'0168','1650-A2-0168','Y',NULL),(4619,29,'0169','1650-A2-0169','Y',NULL),(4620,29,'0170','1650-A2-0170','Y',NULL),(4621,29,'0171','1650-A2-0171','Y',NULL),(4622,29,'0172','1650-A2-0172','Y',NULL),(4623,29,'0173','1650-A2-0173','Y',NULL),(4624,29,'0174','1650-A2-0174','Y',NULL),(4625,29,'0175','1650-A2-0175','Y',NULL),(4626,29,'0176','1650-A2-0176','Y',NULL),(4627,29,'0177','1650-A2-0177','Y',NULL),(4628,29,'0178','1650-A2-0178','Y',NULL),(4629,29,'0179','1650-A2-0179','Y',NULL),(4630,29,'0180','1650-A2-0180','Y',NULL),(4631,29,'0181','1650-A2-0181','Y',NULL),(4632,29,'0182','1650-A2-0182','Y',NULL),(4633,29,'0183','1650-A2-0183','Y',NULL),(4634,29,'0184','1650-A2-0184','Y',NULL),(4635,29,'0185','1650-A2-0185','Y',NULL),(4636,29,'0186','1650-A2-0186','Y',NULL),(4637,29,'0187','1650-A2-0187','Y',NULL),(4638,29,'0188','1650-A2-0188','Y',NULL),(4639,29,'0189','1650-A2-0189','Y',NULL),(4640,29,'0190','1650-A2-0190','Y',NULL),(4641,29,'0191','1650-A2-0191','Y',NULL),(4642,29,'0192','1650-A2-0192','Y',NULL),(4643,29,'0193','1650-A2-0193','Y',NULL),(4644,29,'0194','1650-A2-0194','Y',NULL),(4645,29,'0195','1650-A2-0195','Y',NULL),(4646,29,'0196','1650-A2-0196','Y',NULL),(4647,29,'0197','1650-A2-0197','Y',NULL),(4648,29,'0198','1650-A2-0198','Y',NULL),(4649,29,'0199','1650-A2-0199','Y',NULL),(4650,29,'0200','1650-A2-0200','Y',NULL),(4651,29,'0201','1650-A2-0201','Y',NULL),(4652,29,'0202','1650-A2-0202','Y',NULL),(4653,29,'0203','1650-A2-0203','Y',NULL),(4654,29,'0204','1650-A2-0204','Y',NULL),(4655,29,'0205','1650-A2-0205','Y',NULL),(4656,29,'0206','1650-A2-0206','Y',NULL),(4657,29,'0207','1650-A2-0207','Y',NULL),(4658,29,'0208','1650-A2-0208','Y',NULL),(4659,29,'0209','1650-A2-0209','Y',NULL),(4660,29,'0210','1650-A2-0210','Y',NULL),(4661,29,'0211','1650-A2-0211','Y',NULL),(4662,29,'0212','1650-A2-0212','Y',NULL),(4663,29,'0213','1650-A2-0213','Y',NULL),(4664,29,'0214','1650-A2-0214','Y',NULL),(4665,29,'0215','1650-A2-0215','Y',NULL),(4666,29,'0216','1650-A2-0216','Y',NULL),(4667,29,'0217','1650-A2-0217','Y',NULL),(4668,29,'0218','1650-A2-0218','Y',NULL),(4669,29,'0219','1650-A2-0219','Y',NULL),(4670,29,'0220','1650-A2-0220','Y',NULL),(4671,29,'0221','1650-A2-0221','Y',NULL),(4672,29,'0222','1650-A2-0222','Y',NULL),(4673,29,'0223','1650-A2-0223','Y',NULL),(4674,29,'0224','1650-A2-0224','Y',NULL),(4675,29,'0225','1650-A2-0225','Y',NULL),(4676,29,'0226','1650-A2-0226','Y',NULL),(4677,29,'0227','1650-A2-0227','Y',NULL),(4678,29,'0228','1650-A2-0228','Y',NULL),(4679,29,'0229','1650-A2-0229','Y',NULL),(4680,29,'0230','1650-A2-0230','Y',NULL),(4681,29,'0231','1650-A2-0231','Y',NULL),(4682,29,'0232','1650-A2-0232','Y',NULL),(4683,29,'0233','1650-A2-0233','Y',NULL),(4684,29,'0234','1650-A2-0234','Y',NULL),(4685,29,'0235','1650-A2-0235','Y',NULL),(4686,29,'0236','1650-A2-0236','Y',NULL),(4687,29,'0237','1650-A2-0237','Y',NULL),(4688,29,'0238','1650-A2-0238','Y',NULL),(4689,29,'0239','1650-A2-0239','Y',NULL),(4690,29,'0240','1650-A2-0240','Y',NULL),(4691,29,'0241','1650-A2-0241','Y',NULL),(4692,29,'0242','1650-A2-0242','Y',NULL),(4693,29,'0243','1650-A2-0243','Y',NULL),(4694,29,'0244','1650-A2-0244','Y',NULL),(4695,29,'0245','1650-A2-0245','Y',NULL),(4696,29,'0246','1650-A2-0246','Y',NULL),(4697,29,'0247','1650-A2-0247','Y',NULL),(4698,29,'0248','1650-A2-0248','Y',NULL),(4699,29,'0249','1650-A2-0249','Y',NULL),(4700,29,'0250','1650-A2-0250','Y',NULL),(4701,29,'0251','1650-A2-0251','Y',NULL),(4702,29,'0252','1650-A2-0252','Y',NULL),(4703,29,'0253','1650-A2-0253','Y',NULL),(4704,29,'0254','1650-A2-0254','Y',NULL),(4705,29,'0255','1650-A2-0255','Y',NULL),(4706,29,'0256','1650-A2-0256','Y',NULL),(4707,29,'0257','1650-A2-0257','Y',NULL),(4708,29,'0258','1650-A2-0258','Y',NULL),(4709,29,'0259','1650-A2-0259','Y',NULL),(4710,29,'0260','1650-A2-0260','Y',NULL),(4711,29,'0261','1650-A2-0261','Y',NULL),(4712,29,'0262','1650-A2-0262','Y',NULL),(4713,29,'0263','1650-A2-0263','Y',NULL),(4714,29,'0264','1650-A2-0264','Y',NULL),(4715,29,'0265','1650-A2-0265','Y',NULL),(4716,29,'0266','1650-A2-0266','Y',NULL),(4717,29,'0267','1650-A2-0267','Y',NULL),(4718,29,'0268','1650-A2-0268','Y',NULL),(4719,29,'0269','1650-A2-0269','Y',NULL),(4720,29,'0270','1650-A2-0270','Y',NULL),(4721,29,'0271','1650-A2-0271','Y',NULL),(4722,29,'0272','1650-A2-0272','Y',NULL),(4723,29,'0273','1650-A2-0273','Y',NULL),(4724,29,'0274','1650-A2-0274','Y',NULL),(4725,29,'0275','1650-A2-0275','Y',NULL),(4726,29,'0276','1650-A2-0276','Y',NULL),(4727,29,'0277','1650-A2-0277','Y',NULL),(4728,29,'0278','1650-A2-0278','Y',NULL),(4729,29,'0279','1650-A2-0279','Y',NULL),(4730,29,'0280','1650-A2-0280','Y',NULL),(4731,29,'0281','1650-A2-0281','Y',NULL),(4732,29,'0282','1650-A2-0282','Y',NULL),(4733,29,'0283','1650-A2-0283','Y',NULL),(4734,29,'0284','1650-A2-0284','Y',NULL),(4735,29,'0285','1650-A2-0285','Y',NULL),(4736,29,'0286','1650-A2-0286','Y',NULL),(4737,29,'0287','1650-A2-0287','Y',NULL),(4738,29,'0288','1650-A2-0288','Y',NULL),(4739,29,'0289','1650-A2-0289','Y',NULL),(4740,29,'0290','1650-A2-0290','Y',NULL),(4741,29,'0291','1650-A2-0291','Y',NULL),(4742,29,'0292','1650-A2-0292','Y',NULL),(4743,29,'0293','1650-A2-0293','Y',NULL),(4744,29,'0294','1650-A2-0294','Y',NULL),(4745,29,'0295','1650-A2-0295','Y',NULL),(4746,29,'0296','1650-A2-0296','Y',NULL),(4747,29,'0297','1650-A2-0297','Y',NULL),(4748,29,'0298','1650-A2-0298','Y',NULL),(4749,29,'0299','1650-A2-0299','Y',NULL),(4750,29,'0300','1650-A2-0300','Y',NULL),(4751,29,'0301','1650-A2-0301','Y',NULL),(4752,29,'0302','1650-A2-0302','Y',NULL),(4753,29,'0303','1650-A2-0303','Y',NULL),(4754,29,'0304','1650-A2-0304','Y',NULL),(4755,29,'0305','1650-A2-0305','Y',NULL),(4756,29,'0306','1650-A2-0306','Y',NULL),(4757,29,'0307','1650-A2-0307','Y',NULL),(4758,29,'0308','1650-A2-0308','Y',NULL),(4759,29,'0309','1650-A2-0309','Y',NULL),(4760,29,'0310','1650-A2-0310','Y',NULL),(4761,29,'0311','1650-A2-0311','Y',NULL),(4762,29,'0312','1650-A2-0312','Y',NULL),(4763,29,'0313','1650-A2-0313','Y',NULL),(4764,29,'0314','1650-A2-0314','Y',NULL),(4765,29,'0315','1650-A2-0315','Y',NULL),(4766,29,'0316','1650-A2-0316','Y',NULL),(4767,29,'0317','1650-A2-0317','Y',NULL),(4768,29,'0318','1650-A2-0318','Y',NULL),(4769,29,'0319','1650-A2-0319','Y',NULL),(4770,29,'0320','1650-A2-0320','Y',NULL),(4771,29,'0321','1650-A2-0321','Y',NULL),(4772,29,'0322','1650-A2-0322','Y',NULL),(4773,29,'0323','1650-A2-0323','Y',NULL),(4774,29,'0324','1650-A2-0324','Y',NULL),(4775,29,'0325','1650-A2-0325','Y',NULL),(4776,29,'0326','1650-A2-0326','Y',NULL),(4777,29,'0327','1650-A2-0327','Y',NULL),(4778,29,'0328','1650-A2-0328','Y',NULL),(4779,29,'0329','1650-A2-0329','Y',NULL),(4780,29,'0330','1650-A2-0330','Y',NULL),(4781,29,'0331','1650-A2-0331','Y',NULL),(4782,29,'0332','1650-A2-0332','Y',NULL),(4783,29,'0333','1650-A2-0333','Y',NULL),(4784,29,'0334','1650-A2-0334','Y',NULL),(4785,29,'0335','1650-A2-0335','Y',NULL),(4786,29,'0336','1650-A2-0336','Y',NULL),(4787,29,'0337','1650-A2-0337','Y',NULL),(4788,29,'0338','1650-A2-0338','Y',NULL),(4789,29,'0339','1650-A2-0339','Y',NULL),(4790,29,'0340','1650-A2-0340','Y',NULL),(4791,29,'0341','1650-A2-0341','Y',NULL),(4792,29,'0342','1650-A2-0342','Y',NULL),(4793,29,'0343','1650-A2-0343','Y',NULL),(4794,29,'0344','1650-A2-0344','Y',NULL),(4795,29,'0345','1650-A2-0345','Y',NULL),(4796,29,'0346','1650-A2-0346','Y',NULL),(4797,29,'0347','1650-A2-0347','Y',NULL),(4798,29,'0348','1650-A2-0348','Y',NULL),(4799,29,'0349','1650-A2-0349','Y',NULL),(4800,29,'0350','1650-A2-0350','Y',NULL),(4801,29,'0351','1650-A2-0351','Y',NULL),(4802,29,'0352','1650-A2-0352','Y',NULL),(4803,29,'0353','1650-A2-0353','Y',NULL),(4804,29,'0354','1650-A2-0354','Y',NULL),(4805,29,'0355','1650-A2-0355','Y',NULL),(4806,29,'0356','1650-A2-0356','Y',NULL),(4807,29,'0357','1650-A2-0357','Y',NULL),(4808,29,'0358','1650-A2-0358','Y',NULL),(4809,29,'0359','1650-A2-0359','Y',NULL),(4810,29,'0360','1650-A2-0360','Y',NULL),(4811,29,'0361','1650-A2-0361','Y',NULL),(4812,29,'0362','1650-A2-0362','Y',NULL),(4813,29,'0363','1650-A2-0363','Y',NULL),(4814,29,'0364','1650-A2-0364','Y',NULL),(4815,29,'0365','1650-A2-0365','Y',NULL),(4816,29,'0366','1650-A2-0366','Y',NULL),(4817,29,'0367','1650-A2-0367','Y',NULL),(4818,29,'0368','1650-A2-0368','Y',NULL),(4819,29,'0369','1650-A2-0369','Y',NULL),(4820,29,'0370','1650-A2-0370','Y',NULL),(4821,29,'0371','1650-A2-0371','Y',NULL),(4822,29,'0372','1650-A2-0372','Y',NULL),(4823,29,'0373','1650-A2-0373','Y',NULL),(4824,29,'0374','1650-A2-0374','Y',NULL),(4825,29,'0375','1650-A2-0375','Y',NULL),(4826,29,'0376','1650-A2-0376','Y',NULL),(4827,29,'0377','1650-A2-0377','Y',NULL),(4828,29,'0378','1650-A2-0378','Y',NULL),(4829,29,'0379','1650-A2-0379','Y',NULL),(4830,29,'0380','1650-A2-0380','Y',NULL),(4831,29,'0381','1650-A2-0381','Y',NULL),(4832,29,'0382','1650-A2-0382','Y',NULL),(4833,29,'0383','1650-A2-0383','Y',NULL),(4834,29,'0384','1650-A2-0384','Y',NULL),(4835,29,'0385','1650-A2-0385','Y',NULL),(4836,29,'0386','1650-A2-0386','Y',NULL),(4837,29,'0387','1650-A2-0387','Y',NULL),(4838,29,'0388','1650-A2-0388','Y',NULL),(4839,29,'0389','1650-A2-0389','Y',NULL),(4840,29,'0390','1650-A2-0390','Y',NULL),(4841,29,'0391','1650-A2-0391','Y',NULL),(4842,29,'0392','1650-A2-0392','Y',NULL),(4843,29,'0393','1650-A2-0393','Y',NULL),(4844,29,'0394','1650-A2-0394','Y',NULL),(4845,29,'0395','1650-A2-0395','Y',NULL),(4846,29,'0396','1650-A2-0396','Y',NULL),(4847,29,'0397','1650-A2-0397','Y',NULL),(4848,29,'0398','1650-A2-0398','Y',NULL),(4849,29,'0399','1650-A2-0399','Y',NULL),(4850,29,'0400','1650-A2-0400','Y',NULL);
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
  `sg_groupname` varchar(200) DEFAULT NULL,
  `sg_orgid` int(11) DEFAULT NULL,
  `sg_seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`sg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smshelfgroup`
--

LOCK TABLES `smshelfgroup` WRITE;
/*!40000 ALTER TABLE `smshelfgroup` DISABLE KEYS */;
INSERT INTO `smshelfgroup` VALUES (16,'1000mm',9,10),(17,'1000-share',9,20),(18,'1000',10,10),(19,'1650',10,20);
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
  `sf_orgid` int(11) DEFAULT NULL,
  `sf_seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`sf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smshelfsetting`
--

LOCK TABLES `smshelfsetting` WRITE;
/*!40000 ALTER TABLE `smshelfsetting` DISABLE KEYS */;
INSERT INTO `smshelfsetting` VALUES (26,16,'A1','1000mm-A1',400,9,10),(27,17,'AA','1000-share-AA',400,9,20),(28,18,'A1','1000-A1',400,10,10),(29,19,'A2','1650-A2',400,10,5);
/*!40000 ALTER TABLE `smshelfsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pflex'
--
/*!50003 DROP FUNCTION IF EXISTS `getslot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getslot`(p_shelfid int) RETURNS int(11)
BEGIN
  DECLARE v_slotid int  DEFAULT 0;
 
  select min(ps_id) into v_slotid from smplateslot where ps_sfid = p_shelfid and ps_available = 'Y';
  
  update smplateslot 
  set ps_available = 'N'
  where ps_id = v_slotid;

  return v_slotid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `menu_hierarchy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `menu_hierarchy`(value INT) RETURNS int(11)
    READS SQL DATA
BEGIN

        DECLARE _id INT;

        DECLARE _parent INT;

        DECLARE _next INT;

        DECLARE CONTINUE HANDLER FOR NOT FOUND SET @id = NULL;



        SET _parent = @id;

        SET _id = -1;



        IF @id IS NULL THEN

                RETURN NULL;

        END IF;



        LOOP

                SELECT  MIN(mn_id)

                INTO    @id

                FROM    fcmenu

                WHERE   mn_parentid = _parent

                        AND mn_id > _id;

                IF @id IS NOT NULL OR _parent = @start_with THEN

                        SET @level = @level + 1;

                        RETURN @id;

                END IF;

                SET @level := @level - 1;

                SELECT  mn_id, mn_parentid

                INTO    _id, _parent

                FROM    fcmenu

                WHERE   mn_id = _parent;

        END LOOP;       

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cleanup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cleanup`()
BEGIN

   delete from smshelfsetting;

   delete from smshelfgroup;
   
   delete from smcustomer;
   
   delete from smplate;
   
   delete from smplateslot;

     

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-05 21:22:07
