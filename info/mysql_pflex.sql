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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcmenu`
--

LOCK TABLES `fcmenu` WRITE;
/*!40000 ALTER TABLE `fcmenu` DISABLE KEYS */;
INSERT INTO `fcmenu` VALUES (1,'HEADERMENU',0,'Top Menu','ACTIVE',0,NULL,'','Y',NULL,NULL,NULL,NULL,NULL,NULL),(3,'DASHBOARD',1,'Dashboard','ACTIVE',1000,NULL,NULL,'Y','Dashboard',NULL,'plateSumm',NULL,NULL,'VW_DASHBOARD'),(4,'SHELF',1,'Shelf','INACTIVE',2000,NULL,'','Y','Shelf',NULL,'Home',NULL,NULL,NULL),(5,'REPORT',1,'Report','ACTIVE',3000,NULL,NULL,'Y','Report',NULL,'rptrevdaily',NULL,NULL,'VW_REPORT'),(6,'SETTING',1,'Setting','ACTIVE',4000,'VW_SETTING, VW_CLISETTING, VW_ADMSETTING',NULL,'Y','Setting',NULL,'gensetting',NULL,NULL,'VW_SETTING, VW_CLISETTING, VW_ADMSETTING'),(12,'RPTAGING',5,'Aging Report','ACTIVE',3100,NULL,NULL,'Y','Report',NULL,'rptaging',NULL,NULL,'VW_REPORT'),(21,'GENSETTING',6,'General Setting','ACTIVE',4100,NULL,NULL,'Y','Setting',NULL,'gensetting',NULL,NULL,'VW_SETTING'),(40,'SHELFSETTING',6,'Shelf Setting','ACTIVE',4200,'VW_CLISETTING',NULL,'Y','Setting','','shelfSetting','','','VW_CLISETTING'),(41,'DSHELFSETTING',40,'Shelf Setting','ACTIVE',4210,'VW_CLISETTING',NULL,'Y','Setting','','shelfSetting','','','VW_CLISETTING'),(42,'SHELFGSETTING',40,'Shelf Group Setting','ACTIVE',4220,'VW_CLISETTING',NULL,'Y','Setting','','shelfGroupSetting','','','VW_CLISETTING'),(43,'MAIN',1,'Main','ACTIVE',1000,'VW_MAIN',NULL,'Y','Main','','board','','','VW_MAIN'),(44,'CUSTOMER',43,'Customer List','ACTIVE',1200,'VW_MAIN',NULL,'Y','Main','','customer','','','VW_MAIN'),(45,'SEARCHPLATE',43,'Search Plate','ACTIVE',1100,'VW_MAIN',NULL,'Y','Main','','searchplate','','','VW_MAIN'),(46,'OPERATION',1,'Operation','ACTIVE',2000,'VW_OPERATION',NULL,'Y','rackOperation','checkinout',NULL,'','','VW_OPERATION'),(47,'CHECKINOUT',46,'Check In/Out','ACTIVE',2100,'VW_OPERATION',NULL,'Y','rackOperation','checkinout','checkinout','','','VW_OPERATION'),(48,'STOCKCNT',46,'Stock Count','ACTIVE',2200,'VW_OPERATION',NULL,'Y','rackOperation','stockcount','stockcount','','','VW_OPERATION'),(49,'CREATEPLATE',43,'Create Plate','ACTIVE',1050,'VW_MAIN',NULL,'Y','Main',NULL,'createplate',NULL,NULL,'VW_MAIN'),(50,'USERSETT',6,'Primary User Setting','ACTIVE',4300,'VW_SETTING',NULL,'Y','Setting','','usersetup','','','VW_ADMSETTING, VW_SETTING'),(52,'USERSETUP',50,'User Setup','ACTIVE',4310,'VW_SETTING',NULL,'Y','Setting','','usersetup','','','VW_SETTING'),(53,'ROLESETUP',50,'Role Setup','ACTIVE',4320,'VW_SETTING',NULL,'Y','Setting','','rolesetup','','','VW_SETTING'),(54,'PERMSETUP',50,'Permission Setup','ACTIVE',4330,'VW_SETTING',NULL,'Y','Setting','','permissionsetup','','','VW_SETTING'),(55,'ORGSETUP',6,'Organization Setting','ACTIVE',4300,'VW_SETTING, VW_ADMSETTING',NULL,'Y','Setting',NULL,'org',NULL,NULL,'VW_ADMSETTING, VW_SETTING'),(57,'PCKGSETUP',6,'Package Setup','ACTIVE',4300,'VW_SETTING',NULL,'Y','Setting',NULL,'packagesetup',NULL,NULL,'VW_SETTING'),(70,'MENUSETTING',6,'Menu Setup','ACTIVE',4400,'VW_SETTING',NULL,'Y','Setting','','menusetup','','','VW_SETTING'),(71,'CLIUSERSETT',6,'User Setup','ACTIVE',4100,'VW_SETTING, VW_CLISETTING',NULL,'Y','Setting',NULL,'cusersetup',NULL,NULL,'VW_CLIADMINSETT, VW_SETTING'),(72,'rpt_summbyplate',5,'Summary by plate report','ACTIVE',3200,NULL,NULL,'Y','Report',NULL,'rptsummbyplate',NULL,NULL,'VW_REPORT'),(73,'rpt_summbycus',5,'Summary by customer report','ACTIVE',3300,NULL,NULL,'Y','Report',NULL,'rptsummbycus',NULL,NULL,'VW_REPORT'),(74,'democustomer',6,'Customer Demo Data','ACTIVE',4700,NULL,NULL,'Y','Setting',NULL,'democustdata',NULL,NULL,'VW_ADMSETTING'),(75,'TRANSHIST',46,'Transaction History','ACTIVE',2150,NULL,NULL,'Y','rackOperation',NULL,'transactionhistory',NULL,NULL,'VW_OPERATION'),(76,'CLIORG',6,'Organization Setup','ACTIVE',4150,NULL,NULL,'Y','Setting',NULL,'corgsetup',NULL,NULL,'VW_CLIADMINSETT, VW_SETTING'),(77,'FAQSETUP',6,'FAQ Setup','ACTIVE',4600,NULL,NULL,'Y','Setting',NULL,'contentmanagement',NULL,NULL,'VW_ADMSETTING, VW_CLIADMINSETT');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcorg`
--

LOCK TABLES `fcorg` WRITE;
/*!40000 ALTER TABLE `fcorg` DISABLE KEYS */;
INSERT INTO `fcorg` VALUES (6,'GTQCDZNN','HQ',NULL,NULL,NULL,NULL,'ACTIVE'),(26,'darun','darun',NULL,NULL,NULL,NULL,'ACTIVE'),(27,'darunklang','darun klang',26,NULL,NULL,NULL,'ACTIVE'),(28,'deswell','deswell',NULL,NULL,NULL,NULL,'ACTIVE'),(29,'dsklang','deswell klang',28,NULL,NULL,NULL,'ACTIVE'),(30,'darunmuar','darun muar',26,NULL,NULL,NULL,'ACTIVE'),(31,'demo1','demo1',NULL,NULL,NULL,NULL,'ACTIVE'),(32,'demo2','demo2',NULL,NULL,NULL,NULL,'ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcpermission`
--

LOCK TABLES `fcpermission` WRITE;
/*!40000 ALTER TABLE `fcpermission` DISABLE KEYS */;
INSERT INTO `fcpermission` VALUES (1,'VW_MAIN','View Main'),(2,'VW_SETTING','View Setting'),(3,'VW_CLISETTING','View Client Setting'),(4,'VW_ADMSETTING','View Admin Setting'),(5,'VW_OPERATION','View Operation'),(6,'VW_REPORT','View Report'),(7,'VW_DASHBOARD','View Dashbord'),(8,'VW_CLIADMINSETT','View Client Admin Setting');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcrole`
--

LOCK TABLES `fcrole` WRITE;
/*!40000 ALTER TABLE `fcrole` DISABLE KEYS */;
INSERT INTO `fcrole` VALUES (1,'admin','admin','ACTIVE'),(2,'PNDADMIN','PND Admin','ACTIVE'),(3,'CLADMIN','Client Admin','ACTIVE'),(4,'CLOPROLE','Client Operation Role','ACTIVE'),(5,'CLMANAGER','Client Manager Role','ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcroleperm`
--

LOCK TABLES `fcroleperm` WRITE;
/*!40000 ALTER TABLE `fcroleperm` DISABLE KEYS */;
INSERT INTO `fcroleperm` VALUES (34,1,1),(35,1,2),(36,1,3),(37,1,4),(38,1,5),(39,1,6),(40,1,7),(8,2,1),(9,2,4),(10,2,5),(11,2,6),(57,3,1),(58,3,3),(59,3,5),(60,3,6),(61,3,7),(62,3,8),(48,4,1),(49,4,3),(50,4,5),(51,4,7),(52,5,1),(53,5,3),(54,5,5),(55,5,6),(56,5,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcsetting`
--

LOCK TABLES `fcsetting` WRITE;
/*!40000 ALTER TABLE `fcsetting` DISABLE KEYS */;
INSERT INTO `fcsetting` VALUES (1,'*','LANG','English - United States','EN-US'),(2,'*','MAXLIFETIME','Maximum Idle Time (in second)','15'),(3,'*','DEFCHECKIN','Default Check In Time',NULL),(4,'*','DEFCHECKOUT','Default Check Out Time',NULL),(5,'*','THEME','Skyblue','skyblue'),(6,'*','EICHARGE','Early Check In Charges',NULL),(7,'*','LOCHARGE','Late Check Out Charges',NULL),(8,'*','PNDEXPIRYDAYS','days notification before pnd expiry','14');
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
INSERT INTO `fcuser` VALUES ('admin','d033e22ae348aeb5660fc2140aec35850c4da997','2013-08-15 01:55:18','Administrator',NULL,'2014-01-21 07:18:05','2014-01-21 07:16:34','2014-01-16 04:11:07','ADMIN','a:0:{}',NULL,'ACTIVE'),('darun','f339ac2800c5ffc8f89db97d44eb22911a90b831','2014-01-15 01:50:43','darun',NULL,'2014-01-21 02:24:57','2014-01-21 01:37:40','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('darunalex','dc254258381f1279274a666a92f6aa998d487393','2014-01-15 02:36:57','darunalex','darunalex@darun.com','2014-01-15 04:50:01','2014-01-15 02:38:36','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('demo1','10f71961bd11dd33c1c95c771b98cf0e09d57b7c','2014-01-21 07:18:02','demo1','demo1@demo.com','2014-01-21 07:19:35','2014-01-21 07:18:37','0000-00-00 00:00:00',NULL,'a:3:{s:14:\"urlbeforelogin\";s:9:\"/pndrack/\";s:7:\"dbosess\";a:1:{s:9:\"platelist\";a:4:{s:6:\"lastid\";a:0:{}s:4:\"sort\";a:0:{}s:6:\"search\";a:5:{s:12:\"sp_platename\";s:6:\"C681F4\";s:13:\"sp_platemodel\";s:0:\"\";s:7:\"ps_code\";s:0:\"\";s:8:\"sp_cusid\";s:0:\"\";s:7:\"sp_sfid\";s:0:\"\";}s:5:\"state\";s:4:\"list\";}}s:9:\"dboconfig\";a:0:{}}',NULL,'ACTIVE'),('DEMO1ADMIN','403c5b2e8574d419c87c54719256f5392fca262a','2014-01-21 02:28:55','DEMO1ADMIN',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('DEMO1MANAGER','af0b407b8c5bede0d1af4173881d8c18408c1b59','2014-01-21 02:28:55','DEMO1MANAGER',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('DEMO1OPERATOR','52a8c48021e14cf4fd30a1dbd51fa456e09a231d','2014-01-21 02:28:55','DEMO1OPERATOR',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('DEMO2ADMIN','f593c99213228f771e95087128568b05df53f60a','2014-01-21 02:29:10','DEMO2ADMIN',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('DEMO2MANAGER','243d0ef72aabaa6979cdf98b68641766454f7b8e','2014-01-21 02:29:10','DEMO2MANAGER',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('DEMO2OPERATOR','aedd0d3b09f41bee62ff80932490662fc72c8d00','2014-01-21 02:29:10','DEMO2OPERATOR',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('deswell','8bf24f70498d64ba1f03ccd36207e43dc8224678','2014-01-15 05:20:03','deswell',NULL,'2014-01-15 05:23:17','2014-01-15 05:20:12','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('dsalex','9c8fa798879acd2ecc93df0b0da916f07eed43ef','2014-01-15 05:21:31','Alex','dsalex@deswell.com','2014-01-15 05:52:43','2014-01-15 05:23:21','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('dsdanny','34c705995d66e07132ce3eb75f432a53df3f0dcb','2014-01-15 05:22:13','Danny','dsdanny@deswell.com','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('dskeng','80288d1b2aaf85a5d1ee473f4fce63d14dc6ae47','2014-01-15 05:23:00','Eng','eng@deswell.com','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('pndadmin','da0717243a83694a7fbc9c11fc5fed417abd9f0e','2014-01-05 10:34:11','pndadmin',NULL,'2014-01-22 02:12:01','2014-01-22 02:11:57','2014-01-11 10:59:03',NULL,'a:0:{}',NULL,'ACTIVE'),('user1','b3daa77b4c04a9551b8781d03191fe098f325e67','2014-01-16 04:59:43','user1','user1@email.com','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('user2','a1881c06eec96db9901c7bbfe41c42a3f08e9cb4','2014-01-16 05:00:22','user2','user2@email.com','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcuserlogin`
--

LOCK TABLES `fcuserlogin` WRITE;
/*!40000 ALTER TABLE `fcuserlogin` DISABLE KEYS */;
INSERT INTO `fcuserlogin` VALUES (1,'admin','127.0.0.1','Y','2013-08-15 01:55:42','2013-08-15 01:55:42','2013-12-10 07:47:35','N',NULL),(2,'admin','127.0.0.1','Y','2013-08-15 02:59:43','2013-08-15 02:59:43','2013-12-10 07:47:35','N',NULL),(3,'admin','127.0.0.1','Y','2013-08-15 02:59:45','2013-08-15 02:59:45','2013-12-10 07:47:35','N',NULL),(4,'admin','127.0.0.1','Y','2013-08-15 04:31:47','2013-08-15 04:31:47','2013-12-10 07:47:35','N',NULL),(5,'admin','127.0.0.1','Y','2013-08-15 04:31:50','2013-08-15 04:31:50','2013-12-10 07:47:35','N',NULL),(6,'admin','127.0.0.1','Y','2013-08-16 01:31:41','2013-08-16 01:31:41','2013-12-10 07:47:35','N',NULL),(7,'admin','127.0.0.1','Y','2013-08-16 01:31:45','2013-08-16 01:31:45','2013-12-10 07:47:35','N',NULL),(8,'admin','127.0.0.1','Y','2013-08-16 11:30:04','2013-08-16 11:30:04','2013-12-10 07:47:35','N',NULL),(9,'admin','127.0.0.1','Y','2013-08-16 11:30:06','2013-08-16 11:30:06','2013-12-10 07:47:35','N',NULL),(10,'admin','127.0.0.1','Y','2013-08-17 04:03:56','2013-08-17 04:03:56','2013-12-10 07:47:35','N',NULL),(11,'admin','127.0.0.1','Y','2013-08-17 04:03:58','2013-08-17 04:03:58','2013-12-10 07:47:35','N',NULL),(12,'admin','127.0.0.1','Y','2013-08-17 16:07:07','2013-08-17 16:07:07','2013-12-10 07:47:35','N',NULL),(13,'admin','127.0.0.1','Y','2013-08-17 16:07:09','2013-08-17 16:07:09','2013-12-10 07:47:35','N',NULL),(14,'admin','127.0.0.1','Y','2013-08-19 01:49:37','2013-08-19 01:49:37','2013-12-10 07:47:35','N',NULL),(15,'admin','127.0.0.1','Y','2013-08-19 01:49:40','2013-08-19 01:49:40','2013-12-10 07:47:35','N',NULL),(16,'admin','127.0.0.1','Y','2013-08-19 06:05:24','2013-08-19 06:05:24','2013-12-10 07:47:35','N',NULL),(17,'admin','127.0.0.1','Y','2013-08-19 06:05:27','2013-08-19 06:05:27','2013-12-10 07:47:35','N',NULL),(18,'admin','127.0.0.1','N','2013-08-20 00:55:06','2013-08-20 00:55:06','2013-12-10 07:47:35','N',NULL),(19,'admin','127.0.0.1','Y','2013-08-20 00:55:09','2013-08-20 00:55:09','2013-12-10 07:47:35','N',NULL),(20,'admin','127.0.0.1','Y','2013-08-20 00:55:13','2013-08-20 00:55:13','2013-12-10 07:47:35','N',NULL),(21,'admin','127.0.0.1','Y','2013-08-20 12:50:37','2013-08-20 12:50:37','2013-12-10 07:47:35','N',NULL),(22,'admin','127.0.0.1','Y','2013-08-20 12:50:40','2013-08-20 12:50:40','2013-12-10 07:47:35','N',NULL),(23,'admin','127.0.0.1','Y','2013-08-20 16:05:39','2013-08-20 16:05:39','2013-12-10 07:47:35','N',NULL),(24,'admin','127.0.0.1','Y','2013-08-20 16:05:42','2013-08-20 16:05:42','2013-12-10 07:47:35','N',NULL),(25,'admin','127.0.0.1','Y','2013-08-21 01:18:20','2013-08-21 01:18:20','2013-12-10 07:47:35','N',NULL),(26,'admin','127.0.0.1','Y','2013-08-21 01:18:23','2013-08-21 01:18:23','2013-12-10 07:47:35','N',NULL),(27,'admin','127.0.0.1','Y','2013-08-21 10:05:58','2013-08-21 10:05:58','2013-12-10 07:47:35','N',NULL),(28,'admin','127.0.0.1','Y','2013-08-21 10:06:02','2013-08-21 10:06:02','2013-12-10 07:47:35','N',NULL),(29,'admin','127.0.0.1','Y','2013-08-21 13:57:25','2013-08-21 13:57:25','2013-12-10 07:47:35','N',NULL),(30,'admin','127.0.0.1','Y','2013-08-21 13:57:28','2013-08-21 13:57:28','2013-12-10 07:47:35','N',NULL),(31,'admin','127.0.0.1','Y','2013-08-21 13:59:38','2013-08-21 13:59:38','2013-12-10 07:47:35','N',NULL),(32,'admin','127.0.0.1','Y','2013-08-22 01:15:22','2013-08-22 01:15:22','2013-12-10 07:47:35','N',NULL),(33,'admin','127.0.0.1','Y','2013-08-22 01:39:36','2013-08-22 01:39:36','2013-12-10 07:47:35','N',NULL),(34,'admin','127.0.0.1','Y','2013-08-22 09:58:43','2013-08-22 09:58:43','2013-12-10 07:47:35','N',NULL),(35,'admin','127.0.0.1','Y','2013-08-22 09:58:49','2013-08-22 09:58:49','2013-12-10 07:47:35','N',NULL),(36,'admin','127.0.0.1','Y','2013-08-22 09:58:52','2013-08-22 09:58:52','2013-12-10 07:47:35','N',NULL),(37,'admin','127.0.0.1','Y','2013-08-23 02:16:44','2013-08-23 02:16:44','2013-12-10 07:47:35','N',NULL),(38,'admin','127.0.0.1','Y','2013-08-23 02:17:09','2013-08-23 02:17:09','2013-12-10 07:47:35','N',NULL),(39,'admin','127.0.0.1','Y','2013-08-23 02:18:45','2013-08-23 02:18:45','2013-12-10 07:47:35','N',NULL),(40,'admin','127.0.0.1','Y','2013-08-24 01:28:55','2013-08-24 01:28:55','2013-12-10 07:47:35','N',NULL),(41,'admin','127.0.0.1','Y','2013-08-24 01:29:00','2013-08-24 01:29:00','2013-12-10 07:47:35','N',NULL),(42,'admin','127.0.0.1','Y','2013-08-24 01:29:05','2013-08-24 01:29:05','2013-12-10 07:47:35','N',NULL),(43,'admin','127.0.0.1','Y','2013-08-25 12:55:31','2013-08-25 12:55:31','2013-12-10 07:47:35','N',NULL),(44,'admin','127.0.0.1','Y','2013-08-25 12:55:33','2013-08-25 12:55:33','2013-12-10 07:47:35','N',NULL),(45,'admin','127.0.0.1','Y','2013-08-25 13:38:38','2013-08-25 13:38:38','2013-12-10 07:47:35','N',NULL),(46,'admin','127.0.0.1','Y','2013-08-25 13:38:40','2013-08-25 13:38:40','2013-12-10 07:47:35','N',NULL),(47,'admin','127.0.0.1','Y','2013-08-26 01:23:28','2013-08-26 01:23:28','2013-12-10 07:47:35','N',NULL),(48,'admin','127.0.0.1','Y','2013-08-26 01:23:33','2013-08-26 01:23:33','2013-12-10 07:47:35','N',NULL),(49,'admin','127.0.0.1','Y','2013-08-26 12:33:59','2013-08-26 12:33:59','2013-12-10 07:47:35','N',NULL),(50,'admin','127.0.0.1','Y','2013-08-26 12:34:02','2013-08-26 12:34:02','2013-12-10 07:47:35','N',NULL),(51,'admin','127.0.0.1','Y','2013-08-26 12:34:06','2013-08-26 12:34:06','2013-12-10 07:47:35','N',NULL),(52,'admin','127.0.0.1','Y','2013-08-26 14:39:10','2013-08-26 14:39:10','2013-12-10 07:47:35','N',NULL),(53,'admin','127.0.0.1','Y','2013-08-26 14:39:13','2013-08-26 14:39:13','2013-12-10 07:47:35','N',NULL),(54,'admin','127.0.0.1','Y','2013-08-26 16:08:21','2013-08-26 16:08:21','2013-12-10 07:47:35','N',NULL),(55,'admin','127.0.0.1','Y','2013-08-26 16:08:24','2013-08-26 16:08:24','2013-12-10 07:47:35','N',NULL),(56,'admin','127.0.0.1','Y','2013-08-26 16:58:48','2013-08-26 16:58:48','2013-12-10 07:47:35','N',NULL),(57,'admin','127.0.0.1','Y','2013-08-26 16:58:50','2013-08-26 16:58:50','2013-12-10 07:47:35','N',NULL),(58,'admin','127.0.0.1','Y','2013-08-27 02:14:03','2013-08-27 02:14:03','2013-12-10 07:47:35','N',NULL),(59,'admin','127.0.0.1','Y','2013-08-27 02:14:05','2013-08-27 02:14:05','2013-12-10 07:47:35','N',NULL),(60,'admin','127.0.0.1','Y','2013-08-27 11:12:18','2013-08-27 11:12:18','2013-12-10 07:47:35','N',NULL),(61,'admin','127.0.0.1','Y','2013-08-27 11:12:21','2013-08-27 11:12:21','2013-12-10 07:47:35','N',NULL),(62,'admin','127.0.0.1','Y','2013-08-28 01:58:45','2013-08-28 01:58:45','2013-12-10 07:47:35','N',NULL),(63,'admin','127.0.0.1','Y','2013-08-28 02:00:04','2013-08-28 02:00:04','2013-12-10 07:47:35','N',NULL),(64,'admin','127.0.0.1','Y','2013-08-28 09:52:51','2013-08-28 09:52:51','2013-12-10 07:47:35','N',NULL),(65,'admin','127.0.0.1','Y','2013-08-28 09:52:55','2013-08-28 09:52:55','2013-12-10 07:47:35','N',NULL),(66,'admin','127.0.0.1','Y','2013-08-29 00:50:38','2013-08-29 00:50:38','2013-12-10 07:47:35','N',NULL),(67,'admin','127.0.0.1','Y','2013-08-29 00:50:41','2013-08-29 00:50:41','2013-12-10 07:47:35','N',NULL),(68,'admin','127.0.0.1','Y','2013-08-29 00:50:43','2013-08-29 00:50:43','2013-12-10 07:47:35','N',NULL),(69,'admin','127.0.0.1','Y','2013-08-29 04:43:53','2013-08-29 04:43:53','2013-12-10 07:47:35','N',NULL),(70,'admin','127.0.0.1','Y','2013-08-29 04:43:55','2013-08-29 04:43:55','2013-12-10 07:47:35','N',NULL),(71,'admin','127.0.0.1','Y','2013-08-30 01:35:54','2013-08-30 01:35:54','2013-12-10 07:47:35','N',NULL),(72,'admin','127.0.0.1','Y','2013-08-30 01:36:58','2013-08-30 01:36:58','2013-12-10 07:47:35','N',NULL),(73,'admin','127.0.0.1','Y','2013-08-31 00:37:13','2013-08-31 00:37:13','2013-12-10 07:47:35','N',NULL),(74,'admin','127.0.0.1','Y','2013-08-31 00:37:16','2013-08-31 00:37:16','2013-12-10 07:47:35','N',NULL),(75,'admin','127.0.0.1','Y','2013-08-31 01:32:58','2013-08-31 01:32:58','2013-12-10 07:47:35','N',NULL),(76,'admin','127.0.0.1','Y','2013-08-31 01:33:00','2013-08-31 01:33:00','2013-12-10 07:47:35','N',NULL),(77,'admin','127.0.0.1','Y','2013-08-31 03:18:25','2013-08-31 03:18:25','2013-12-10 07:47:35','N',NULL),(78,'admin','127.0.0.1','Y','2013-08-31 03:18:27','2013-08-31 03:18:27','2013-12-10 07:47:35','N',NULL),(79,'admin','127.0.0.1','Y','2013-09-02 05:10:26','2013-09-02 05:10:26','2013-12-10 07:47:35','N',NULL),(80,'admin','127.0.0.1','Y','2013-09-02 05:10:27','2013-09-02 05:10:27','2013-12-10 07:47:35','N',NULL),(81,'admin','127.0.0.1','Y','2013-09-03 01:08:40','2013-09-03 01:08:40','2013-12-10 07:47:35','N',NULL),(82,'admin','127.0.0.1','Y','2013-09-03 01:08:43','2013-09-03 01:08:43','2013-12-10 07:47:35','N',NULL),(83,'admin','127.0.0.1','Y','2013-09-06 02:12:01','2013-09-06 02:12:01','2013-12-10 07:47:35','N',NULL),(84,'admin','127.0.0.1','Y','2013-09-06 02:12:03','2013-09-06 02:12:03','2013-12-10 07:47:35','N',NULL),(85,'admin','127.0.0.1','Y','2013-09-07 04:20:53','2013-09-07 04:20:53','2013-12-10 07:47:35','N',NULL),(86,'admin','127.0.0.1','Y','2013-09-07 04:20:57','2013-09-07 04:20:57','2013-12-10 07:47:35','N',NULL),(87,'admin','127.0.0.1','Y','2013-09-07 04:20:59','2013-09-07 04:20:59','2013-12-10 07:47:35','N',NULL),(88,'admin','127.0.0.1','Y','2013-09-07 04:21:03','2013-09-07 04:21:03','2013-12-10 07:47:35','N',NULL),(89,'admin','127.0.0.1','Y','2013-09-07 07:45:14','2013-09-07 07:45:14','2013-12-10 07:47:35','N',NULL),(90,'admin','127.0.0.1','Y','2013-09-07 07:45:16','2013-09-07 07:45:16','2013-12-10 07:47:35','N',NULL),(91,'admin','127.0.0.1','Y','2013-09-07 10:25:27','2013-09-07 10:25:27','2013-12-10 07:47:35','N',NULL),(92,'admin','127.0.0.1','Y','2013-09-07 11:32:35','2013-09-07 11:32:35','2013-12-10 07:47:35','N',NULL),(93,'admin','127.0.0.1','Y','2013-09-07 11:32:37','2013-09-07 11:32:37','2013-12-10 07:47:35','N',NULL),(94,'admin','127.0.0.1','Y','2013-09-07 11:34:29','2013-09-07 11:34:29','2013-12-10 07:47:35','N',NULL),(95,'admin','127.0.0.1','Y','2013-09-07 11:34:31','2013-09-07 11:34:31','2013-12-10 07:47:35','N',NULL),(96,'admin','127.0.0.1','Y','2013-09-09 02:15:45','2013-09-09 02:15:45','2013-12-10 07:47:35','N',NULL),(97,'admin','127.0.0.1','Y','2013-09-09 02:15:47','2013-09-09 02:15:47','2013-12-10 07:47:35','N',NULL),(98,'admin','127.0.0.1','Y','2013-09-10 06:35:37','2013-09-10 06:35:37','2013-12-10 07:47:35','N',NULL),(99,'admin','127.0.0.1','Y','2013-09-10 06:35:39','2013-09-10 06:35:39','2013-12-10 07:47:35','N',NULL),(100,'admin','127.0.0.1','Y','2013-09-13 13:38:29','2013-09-13 13:38:29','2013-12-10 07:47:35','N',NULL),(101,'admin','127.0.0.1','Y','2013-09-13 13:38:31','2013-09-13 13:38:31','2013-12-10 07:47:35','N',NULL),(102,'admin','127.0.0.1','Y','2013-09-13 14:33:34','2013-09-13 14:33:34','2013-12-10 07:47:35','N',NULL),(103,'admin','127.0.0.1','Y','2013-09-13 14:33:36','2013-09-13 14:33:36','2013-12-10 07:47:35','N',NULL),(104,'admin','127.0.0.1','Y','2013-09-16 06:48:44','2013-09-16 06:48:44','2013-12-10 07:47:35','N',NULL),(105,'admin','127.0.0.1','Y','2013-09-16 06:48:48','2013-09-16 06:48:48','2013-12-10 07:47:35','N',NULL),(106,'admin','127.0.0.1','Y','2013-09-17 02:20:51','2013-09-17 02:20:51','2013-12-10 07:47:35','N',NULL),(107,'admin','127.0.0.1','Y','2013-09-17 02:20:54','2013-09-17 02:20:54','2013-12-10 07:47:35','N',NULL),(108,'admin','127.0.0.1','Y','2013-09-18 16:23:01','2013-09-18 16:23:01','2013-12-10 07:47:35','N',NULL),(109,'admin','127.0.0.1','Y','2013-09-18 16:23:03','2013-09-18 16:23:03','2013-12-10 07:47:35','N',NULL),(110,'admin','127.0.0.1','Y','2013-09-21 12:04:50','2013-09-21 12:04:50','2013-12-10 07:47:35','N',NULL),(111,'admin','127.0.0.1','Y','2013-09-21 12:04:52','2013-09-21 12:04:52','2013-12-10 07:47:35','N',NULL),(112,'admin','127.0.0.1','Y','2013-09-22 06:35:34','2013-09-22 06:35:34','2013-12-10 07:47:35','N',NULL),(113,'admin','127.0.0.1','Y','2013-09-22 06:35:36','2013-09-22 06:35:36','2013-12-10 07:47:35','N',NULL),(114,'admin','127.0.0.1','Y','2013-09-22 06:35:38','2013-09-22 06:35:38','2013-12-10 07:47:35','N',NULL),(115,'admin','127.0.0.1','Y','2013-09-23 01:04:35','2013-09-23 01:04:35','2013-12-10 07:47:35','N',NULL),(116,'admin','127.0.0.1','Y','2013-09-23 01:04:38','2013-09-23 01:04:38','2013-12-10 07:47:35','N',NULL),(117,'admin','127.0.0.1','Y','2013-09-23 15:38:32','2013-09-23 15:38:32','2013-12-10 07:47:35','N',NULL),(118,'admin','127.0.0.1','Y','2013-09-23 15:38:34','2013-09-23 15:38:34','2013-12-10 07:47:35','N',NULL),(119,'admin','127.0.0.1','Y','2013-09-24 14:30:17','2013-09-24 14:30:17','2013-12-10 07:47:35','N',NULL),(120,'admin','127.0.0.1','Y','2013-09-24 14:30:20','2013-09-24 14:30:20','2013-12-10 07:47:35','N',NULL),(121,'admin','127.0.0.1','Y','2013-09-24 14:30:22','2013-09-24 14:30:22','2013-12-10 07:47:35','N',NULL),(122,'admin','127.0.0.1','Y','2013-09-25 01:36:08','2013-09-25 01:36:08','2013-12-10 07:47:35','N',NULL),(123,'admin','127.0.0.1','Y','2013-09-25 01:36:10','2013-09-25 01:36:10','2013-12-10 07:47:35','N',NULL),(124,'admin','127.0.0.1','Y','2013-09-25 03:31:52','2013-09-25 03:31:52','2013-12-10 07:47:35','N',NULL),(125,'admin','127.0.0.1','Y','2013-09-25 03:32:04','2013-09-25 03:32:04','2013-12-10 07:47:35','N',NULL),(126,'admin','127.0.0.1','Y','2013-09-26 05:23:38','2013-09-26 05:23:38','2013-12-10 07:47:35','N',NULL),(127,'admin','127.0.0.1','Y','2013-09-26 05:23:40','2013-09-26 05:23:40','2013-12-10 07:47:35','N',NULL),(128,'admin','127.0.0.1','Y','2013-09-26 13:57:02','2013-09-26 13:57:02','2013-12-10 07:47:35','N',NULL),(129,'admin','127.0.0.1','Y','2013-09-26 13:57:03','2013-09-26 13:57:03','2013-12-10 07:47:35','N',NULL),(130,'admin','127.0.0.1','Y','2013-09-27 01:59:36','2013-09-27 01:59:36','2013-12-10 07:47:35','N',NULL),(131,'admin','127.0.0.1','Y','2013-09-27 01:59:39','2013-09-27 01:59:39','2013-12-10 07:47:35','N',NULL),(132,'admin','127.0.0.1','Y','2013-09-29 02:12:39','2013-09-29 02:12:39','2013-12-10 07:47:35','N',NULL),(133,'admin','127.0.0.1','Y','2013-09-29 02:12:41','2013-09-29 02:12:41','2013-12-10 07:47:35','N',NULL),(134,'admin','127.0.0.1','Y','2013-10-02 02:54:59','2013-10-02 02:54:59','2013-12-10 07:47:35','N',NULL),(135,'admin','127.0.0.1','Y','2013-10-02 02:55:04','2013-10-02 02:55:04','2013-12-10 07:47:35','N',NULL),(136,'admin','127.0.0.1','Y','2013-10-03 12:06:27','2013-10-03 12:06:27','2013-12-10 07:47:35','N',NULL),(137,'admin','127.0.0.1','Y','2013-10-03 12:06:29','2013-10-03 12:06:29','2013-12-10 07:47:35','N',NULL),(138,'admin','127.0.0.1','Y','2013-10-04 01:27:57','2013-10-04 01:27:57','2013-12-10 07:47:35','N',NULL),(139,'admin','127.0.0.1','Y','2013-10-04 01:28:00','2013-10-04 01:28:00','2013-12-10 07:47:35','N',NULL),(140,'admin','127.0.0.1','Y','2013-10-04 10:42:58','2013-10-04 10:42:58','2013-12-10 07:47:35','N',NULL),(141,'admin','127.0.0.1','Y','2013-10-04 10:42:59','2013-10-04 10:42:59','2013-12-10 07:47:35','N',NULL),(142,'admin','127.0.0.1','Y','2013-10-05 02:41:20','2013-10-05 02:41:20','2013-12-10 07:47:35','N',NULL),(143,'admin','127.0.0.1','Y','2013-10-05 02:41:22','2013-10-05 02:41:22','2013-12-10 07:47:35','N',NULL),(144,'admin','127.0.0.1','Y','2013-10-05 14:58:31','2013-10-05 14:58:31','2013-12-10 07:47:35','N',NULL),(145,'admin','127.0.0.1','Y','2013-10-05 14:58:33','2013-10-05 14:58:33','2013-12-10 07:47:35','N',NULL),(146,'admin','127.0.0.1','Y','2013-10-06 06:18:45','2013-10-06 06:18:45','2013-12-10 07:47:35','N',NULL),(147,'admin','127.0.0.1','Y','2013-10-06 06:18:48','2013-10-06 06:18:48','2013-12-10 07:47:35','N',NULL),(148,'admin','127.0.0.1','Y','2013-10-23 02:48:24','2013-10-23 02:48:24','2013-12-10 07:47:35','N',NULL),(149,'admin','127.0.0.1','Y','2013-10-23 02:48:28','2013-10-23 02:48:28','2013-12-10 07:47:35','N',NULL),(150,'admin','127.0.0.1','Y','2013-10-30 02:24:15','2013-10-30 02:24:15','2013-12-10 07:47:35','N',NULL),(151,'admin','127.0.0.1','Y','2013-10-30 02:24:19','2013-10-30 02:24:19','2013-12-10 07:47:35','N',NULL),(152,'admin','127.0.0.1','Y','2013-10-31 06:42:12','2013-10-31 06:42:12','2013-12-10 07:47:35','N',NULL),(153,'admin',NULL,NULL,'2013-10-31 06:46:14','2013-10-31 06:46:14','2013-12-10 07:47:35','N',NULL),(154,'admin','127.0.0.1','Y','2013-10-31 06:46:27','2013-10-31 06:46:27','2013-12-10 07:47:35','N',NULL),(155,'admin','127.0.0.1','Y','2013-10-31 06:57:26','2013-10-31 06:57:26','2013-12-10 07:47:35','N',NULL),(156,'admin','127.0.0.1','Y','2013-10-31 06:57:44','2013-10-31 06:57:44','2013-12-10 07:47:35','N',NULL),(157,'admin','127.0.0.1','Y','2013-11-01 01:45:44','2013-11-01 01:45:44','2013-12-10 07:47:35','N',NULL),(158,'admin','127.0.0.1','Y','2013-11-01 01:45:46','2013-11-01 01:45:46','2013-12-10 07:47:35','N',NULL),(159,'admin','127.0.0.1','Y','2013-11-01 03:00:52','2013-11-01 03:00:52','2013-12-10 07:47:35','N',NULL),(160,'admin','127.0.0.1','Y','2013-11-01 03:00:54','2013-11-01 03:00:54','2013-12-10 07:47:35','N',NULL),(161,'admin','127.0.0.1','Y','2013-11-01 03:07:38','2013-11-01 03:07:38','2013-12-10 07:47:35','N',NULL),(162,'admin','127.0.0.1','Y','2013-11-01 03:07:40','2013-11-01 03:07:40','2013-12-10 07:47:35','N',NULL),(163,'admin','127.0.0.1','Y','2013-11-02 05:20:41','2013-11-02 05:20:41','2013-12-10 07:47:35','N',NULL),(164,'admin','127.0.0.1','Y','2013-11-02 05:20:43','2013-11-02 05:20:43','2013-12-10 07:47:35','N',NULL),(165,'admin','127.0.0.1','Y','2013-11-04 01:16:28','2013-11-04 01:16:28','2013-12-10 07:47:35','N',NULL),(166,'admin','127.0.0.1','Y','2013-11-04 01:16:31','2013-11-04 01:16:31','2013-12-10 07:47:35','N',NULL),(167,'admin','127.0.0.1','Y','2013-11-05 06:59:33','2013-11-05 06:59:33','2013-12-10 07:47:35','N',NULL),(168,'admin','127.0.0.1','Y','2013-11-05 06:59:35','2013-11-05 06:59:35','2013-12-10 07:47:35','N',NULL),(169,'admin','127.0.0.1','Y','2013-11-06 01:27:25','2013-11-06 01:27:25','2013-12-10 07:47:35','N',NULL),(170,'admin','127.0.0.1','Y','2013-11-06 01:27:27','2013-11-06 01:27:27','2013-12-10 07:47:35','N',NULL),(171,'admin','127.0.0.1','Y','2013-11-09 07:03:55','2013-11-09 07:03:55','2013-12-10 07:47:35','N',NULL),(172,'admin','127.0.0.1','N','2013-11-09 07:03:58','2013-11-09 07:03:58','2013-12-10 07:47:35','N',NULL),(173,'admin','127.0.0.1','Y','2013-11-09 07:07:48','2013-11-09 07:07:48','2013-12-10 07:47:35','N',NULL),(174,'admin','127.0.0.1','N','2013-11-09 07:07:50','2013-11-09 07:07:50','2013-12-10 07:47:35','N',NULL),(175,'admin','127.0.0.1','Y','2013-11-09 07:09:13','2013-11-09 07:09:13','2013-12-10 07:47:35','N',NULL),(176,'admin','127.0.0.1','Y','2013-11-09 07:09:36','2013-11-09 07:09:36','2013-12-10 07:47:35','N',NULL),(177,'admin','127.0.0.1','Y','2013-11-09 07:11:30','2013-11-09 07:11:30','2013-12-10 07:47:35','N',NULL),(178,'admin','127.0.0.1','Y','2013-11-09 07:11:36','2013-11-09 07:11:36','2013-12-10 07:47:35','N',NULL),(179,'admin','192.168.1.75','Y','2013-11-09 07:39:31','2013-11-09 07:39:31','2013-12-10 07:47:35','N',NULL),(180,'admin','192.168.1.75','Y','2013-11-09 07:43:45','2013-11-09 07:43:45','2013-12-10 07:47:35','N',NULL),(181,'admin','192.168.1.75','Y','2013-11-09 07:47:06','2013-11-09 07:47:06','2013-12-10 07:47:35','N',NULL),(182,'admin','127.0.0.1','Y','2013-11-09 07:53:23','2013-11-09 07:53:23','2013-12-10 07:47:35','N',NULL),(183,'admin','127.0.0.1','Y','2013-11-11 02:18:32','2013-11-11 02:18:32','2013-12-10 07:47:35','N',NULL),(184,'admin','127.0.0.1','Y','2013-11-13 01:09:58','2013-11-13 01:09:58','2013-12-10 07:47:35','N',NULL),(185,'admin','127.0.0.1','Y','2013-11-13 05:11:58','2013-11-13 05:11:58','2013-12-10 07:47:35','N',NULL),(186,'admin','127.0.0.1','Y','2013-11-14 00:40:34','2013-11-14 00:40:34','2013-12-10 07:47:35','N',NULL),(187,'admin','127.0.0.1','Y','2013-11-15 11:06:54','2013-11-15 11:06:54','2013-12-10 07:47:35','N',NULL),(188,'admin','127.0.0.1','Y','2013-11-16 05:55:03','2013-11-16 05:55:03','2013-12-10 07:47:35','N',NULL),(189,'admin','127.0.0.1','Y','2013-11-17 10:21:41','2013-11-17 10:21:41','2013-12-10 07:47:35','N',NULL),(190,'admin','127.0.0.1','Y','2013-11-18 08:46:54','2013-11-18 08:46:54','2013-12-10 07:47:35','N',NULL),(191,'admin','127.0.0.1','Y','2013-11-19 06:20:26','2013-11-19 06:20:26','2013-12-10 07:47:35','N',NULL),(192,'admin','127.0.0.1','Y','2013-11-19 15:35:44','2013-11-19 15:35:44','2013-12-10 07:47:35','N',NULL),(193,'admin','127.0.0.1','Y','2013-11-21 08:14:15','2013-11-21 08:14:15','2013-12-10 07:47:35','N',NULL),(194,'admin','127.0.0.1','Y','2013-11-25 04:40:22','2013-11-25 04:40:22','2013-12-10 07:47:35','N',NULL),(195,'admin','127.0.0.1','Y','2013-12-10 06:00:47','2013-12-10 06:00:47','2013-12-10 07:47:35','N',NULL),(196,'admin','127.0.0.1','Y','2013-12-10 07:52:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(197,'admin','127.0.0.1','Y','2013-12-10 07:56:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(198,'admin','127.0.0.1','Y','2013-12-11 07:52:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(199,'admin','127.0.0.1','Y','2013-12-12 04:10:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(200,'admin','127.0.0.1','Y','2013-12-12 04:13:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(201,'admin','127.0.0.1','Y','2013-12-12 05:15:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(202,'admin','127.0.0.1','Y','2013-12-14 07:05:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(203,'admin','127.0.0.1','Y','2013-12-14 12:39:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(204,'admin','127.0.0.1','Y','2013-12-19 07:13:01','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(205,'admin','127.0.0.1','Y','2013-12-19 07:16:49','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(206,'admin','127.0.0.1','Y','2013-12-20 08:06:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(207,'admin','127.0.0.1','Y','2013-12-20 11:09:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(208,'admin','127.0.0.1','Y','2013-12-22 09:06:39','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(209,'hongyee','127.0.0.1','N','2013-12-22 09:54:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(210,'admin','127.0.0.1','N','2013-12-22 09:54:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(211,'admin','127.0.0.1','N','2013-12-22 09:54:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(212,'admin','127.0.0.1','N','2013-12-22 09:54:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(213,'admin','127.0.0.1','N','2013-12-22 09:54:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(214,'admin','127.0.0.1','N','2013-12-22 09:54:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(215,'admin','127.0.0.1','N','2013-12-22 09:54:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(216,'admin','127.0.0.1','N','2013-12-22 09:54:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(217,'hongyee','127.0.0.1','Y','2013-12-22 09:55:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(218,'admin','127.0.0.1','Y','2013-12-22 09:59:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(219,'danny','127.0.0.1','Y','2013-12-22 10:04:48','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(220,'admin','127.0.0.1','Y','2013-12-22 10:10:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(221,'admin','127.0.0.1','Y','2013-12-23 05:12:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(222,'deswell','127.0.0.1','N','2013-12-23 05:25:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(223,'admin','127.0.0.1','Y','2013-12-23 05:25:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(224,'deswell','127.0.0.1','N','2013-12-23 05:33:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(225,'deswell','127.0.0.1','N','2013-12-23 05:33:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(226,'deswell','127.0.0.1','N','2013-12-23 05:33:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(227,'admin','127.0.0.1','Y','2013-12-23 05:33:47','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(228,'deswell','127.0.0.1','Y','2013-12-23 05:34:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(229,'admin','127.0.0.1','Y','2013-12-23 05:44:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(230,'admin','127.0.0.1','Y','2013-12-23 06:02:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(231,'darun','127.0.0.1','N','2013-12-23 06:54:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(232,'darun','127.0.0.1','N','2013-12-23 06:54:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(233,'deswell','127.0.0.1','Y','2013-12-23 06:54:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(234,'deswell','127.0.0.1','Y','2013-12-23 06:55:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(235,'admin','127.0.0.1','N','2013-12-23 07:29:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(236,'admin','127.0.0.1','N','2013-12-23 07:29:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(237,'admin','127.0.0.1','N','2013-12-23 07:29:59','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(238,'deswell','127.0.0.1','Y','2013-12-23 07:30:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(239,'admin','127.0.0.1','Y','2013-12-23 07:30:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(240,'admin','127.0.0.1','Y','2013-12-23 07:43:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(241,'deswell','127.0.0.1','Y','2013-12-23 07:44:04','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(242,'admin','127.0.0.1','Y','2013-12-23 07:45:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(243,'admin','127.0.0.1','N','2013-12-23 08:18:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(244,'admin','127.0.0.1','Y','2013-12-23 08:18:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(245,'deswell','127.0.0.1','Y','2013-12-23 14:12:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(246,'admin','127.0.0.1','Y','2013-12-23 14:12:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(247,'admin','127.0.0.1','Y','2013-12-24 01:08:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(248,'deswell','127.0.0.1','Y','2013-12-24 01:22:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(249,'admin','127.0.0.1','Y','2013-12-24 01:33:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(250,'darun','127.0.0.1','Y','2013-12-24 01:34:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(251,'admin','127.0.0.1','Y','2013-12-24 01:39:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(252,'darun','127.0.0.1','Y','2013-12-24 01:41:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(253,'admin','127.0.0.1','Y','2013-12-24 01:42:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(254,'darun','127.0.0.1','Y','2013-12-24 01:42:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(255,'admin','127.0.0.1','N','2013-12-24 01:43:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(256,'admin','127.0.0.1','Y','2013-12-24 01:43:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(257,'darun','127.0.0.1','Y','2013-12-24 01:44:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(258,'admin','127.0.0.1','Y','2013-12-24 02:46:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(259,'darun','127.0.0.1','Y','2013-12-24 02:47:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(260,'admin','127.0.0.1','Y','2013-12-24 02:52:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(261,'deswell','127.0.0.1','Y','2013-12-24 02:52:52','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(262,'admin','127.0.0.1','Y','2013-12-26 02:17:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(263,'admin','127.0.0.1','Y','2014-01-05 08:39:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(264,'deswell','127.0.0.1','Y','2014-01-05 10:34:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(265,'pndadmin','127.0.0.1','Y','2014-01-05 10:35:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(266,'admin','127.0.0.1','Y','2014-01-05 10:35:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(267,'admin','127.0.0.1','Y','2014-01-05 10:41:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(268,'pndadmin','127.0.0.1','Y','2014-01-05 10:41:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(269,'deswell','127.0.0.1','Y','2014-01-05 10:41:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(270,'pndadmin','127.0.0.1','Y','2014-01-05 10:42:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(271,'admin','127.0.0.1','Y','2014-01-05 11:37:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(272,'pndadmin','127.0.0.1','Y','2014-01-05 11:50:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(273,'admin','127.0.0.1','Y','2014-01-05 11:54:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(274,'deswell','127.0.0.1','Y','2014-01-05 12:10:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(275,'admin','127.0.0.1','Y','2014-01-06 06:19:59','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(276,'pndadmin','127.0.0.1','Y','2014-01-06 06:56:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(277,'admin','127.0.0.1','Y','2014-01-06 06:56:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(278,'deswell','127.0.0.1','Y','2014-01-06 06:57:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(279,'pndadmin','127.0.0.1','Y','2014-01-06 06:58:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(280,'admin','127.0.0.1','Y','2014-01-06 06:58:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(281,'admin','127.0.0.1','Y','2014-01-06 06:59:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(282,'pndadmin','127.0.0.1','Y','2014-01-06 07:09:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(283,'admin','127.0.0.1','Y','2014-01-06 07:09:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(284,'pndadmin','127.0.0.1','Y','2014-01-06 08:41:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(285,'deswell','127.0.0.1','Y','2014-01-06 08:41:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(286,'admin','127.0.0.1','Y','2014-01-06 08:41:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(287,'deswell','127.0.0.1','Y','2014-01-06 08:42:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(288,'pndadmin','127.0.0.1','Y','2014-01-06 08:46:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(289,'pndadmin','127.0.0.1','Y','2014-01-06 08:52:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(290,'admin','127.0.0.1','Y','2014-01-06 08:52:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(291,'pndadmin','127.0.0.1','Y','2014-01-06 08:53:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(292,'admin','127.0.0.1','Y','2014-01-06 08:53:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(293,'pndadmin','127.0.0.1','Y','2014-01-06 08:53:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(294,'deswell','127.0.0.1','Y','2014-01-06 08:53:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(295,'deswell','127.0.0.1','Y','2014-01-06 08:58:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(296,'admin','127.0.0.1','Y','2014-01-06 09:00:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(297,'pndadmin','127.0.0.1','Y','2014-01-06 11:02:38','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(298,'cartonbox','127.0.0.1','Y','2014-01-06 11:11:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(299,'admin','127.0.0.1','Y','2014-01-06 11:17:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(300,'cartonbox','127.0.0.1','Y','2014-01-06 11:24:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(301,'admin','127.0.0.1','Y','2014-01-06 11:30:05','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(302,'pndadmin','127.0.0.1','Y','2014-01-06 11:45:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(303,'admin','127.0.0.1','Y','2014-01-06 11:47:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(304,'admin','127.0.0.1','N','2014-01-07 00:58:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(305,'admin','127.0.0.1','N','2014-01-07 01:00:48','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(306,'admin','127.0.0.1','N','2014-01-07 01:02:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(307,'admin','127.0.0.1','N','2014-01-07 01:02:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(308,'cartonbox','127.0.0.1','Y','2014-01-07 01:04:25','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(309,'admin','127.0.0.1','Y','2014-01-07 01:04:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(310,'admin','127.0.0.1','Y','2014-01-07 01:05:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(311,'deswell','127.0.0.1','Y','2014-01-07 01:05:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(312,'admin','127.0.0.1','Y','2014-01-07 01:06:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(313,'cartonbox','127.0.0.1','Y','2014-01-07 02:12:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(314,'cartonbox','127.0.0.1','Y','2014-01-07 09:19:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(315,'admin','127.0.0.1','Y','2014-01-07 09:19:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(316,'admin','127.0.0.1','Y','2014-01-07 09:20:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(317,'admin','127.0.0.1','Y','2014-01-08 06:53:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(318,'admin','127.0.0.1','Y','2014-01-09 03:02:38','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(319,'cartonbox','127.0.0.1','Y','2014-01-09 05:06:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(320,'admin','127.0.0.1','Y','2014-01-09 05:06:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(321,'cartonbox','127.0.0.1','Y','2014-01-09 05:06:52','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(322,'admin','127.0.0.1','Y','2014-01-09 05:18:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(323,'cartonbox','127.0.0.1','Y','2014-01-09 05:20:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(324,'cartonbox','127.0.0.1','Y','2014-01-09 05:21:50','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(325,'admin','127.0.0.1','Y','2014-01-09 05:51:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(326,'admin','127.0.0.1','Y','2014-01-10 05:50:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(327,'admin','127.0.0.1','Y','2014-01-11 10:52:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(328,'cartonbox','127.0.0.1','N','2014-01-11 10:58:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(329,'pndadmin','127.0.0.1','N','2014-01-11 10:59:03','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(330,'pndadmin','127.0.0.1','Y','2014-01-11 10:59:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(331,'cartonbox','127.0.0.1','Y','2014-01-11 10:59:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(332,'admin','127.0.0.1','Y','2014-01-11 12:46:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(333,'cartonbox','127.0.0.1','Y','2014-01-11 12:46:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(334,'admin','127.0.0.1','Y','2014-01-11 12:47:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(335,'cartonbox','127.0.0.1','Y','2014-01-11 12:54:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(336,'admin','127.0.0.1','Y','2014-01-11 13:00:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(337,'cartonbox','127.0.0.1','Y','2014-01-11 13:01:28','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(338,'admin','127.0.0.1','Y','2014-01-11 13:01:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(339,'cartonbox','127.0.0.1','Y','2014-01-11 13:02:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(340,'admin','127.0.0.1','Y','2014-01-11 13:12:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(341,'admin','127.0.0.1','Y','2014-01-11 13:43:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(342,'cartonbox','127.0.0.1','Y','2014-01-12 01:50:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(343,'admin','127.0.0.1','Y','2014-01-12 02:25:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(344,'cartonbox','127.0.0.1','Y','2014-01-12 02:26:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(345,'admin','127.0.0.1','Y','2014-01-12 02:27:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(346,'cartonbox','127.0.0.1','Y','2014-01-12 02:29:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(347,'admin','127.0.0.1','Y','2014-01-12 02:31:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(348,'cartonbox','127.0.0.1','Y','2014-01-12 02:35:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(349,'admin','127.0.0.1','Y','2014-01-12 05:15:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(350,'cartonbox','127.0.0.1','Y','2014-01-12 05:46:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(351,'admin','127.0.0.1','Y','2014-01-12 06:11:44','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(352,'cartonbox','127.0.0.1','Y','2014-01-12 06:16:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(353,'admin','127.0.0.1','Y','2014-01-12 06:17:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(354,'cartonbox','127.0.0.1','Y','2014-01-12 06:17:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(355,'admin','127.0.0.1','Y','2014-01-12 06:17:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(356,'cartonbox','127.0.0.1','Y','2014-01-12 07:51:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(357,'admin','127.0.0.1','Y','2014-01-12 07:51:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(358,'pndadmin','127.0.0.1','Y','2014-01-12 07:53:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(359,'darun','127.0.0.1','N','2014-01-12 07:54:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(360,'darun','127.0.0.1','N','2014-01-12 07:54:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(361,'pndadmin','127.0.0.1','Y','2014-01-12 07:54:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(362,'Darun','127.0.0.1','N','2014-01-12 07:55:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(363,'Darun','127.0.0.1','N','2014-01-12 07:55:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(364,'admin','127.0.0.1','Y','2014-01-12 07:55:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(365,'pndadmin','127.0.0.1','Y','2014-01-12 07:55:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(366,'deswell','127.0.0.1','N','2014-01-12 07:56:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(367,'pndadmin','127.0.0.1','Y','2014-01-12 07:56:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(368,'deswell','127.0.0.1','N','2014-01-12 07:56:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(369,'deswell','127.0.0.1','N','2014-01-12 07:57:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(370,'pndadmin','127.0.0.1','Y','2014-01-12 07:57:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(371,'deswell','127.0.0.1','N','2014-01-12 07:57:58','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(372,'pndadmin','127.0.0.1','Y','2014-01-12 07:58:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(373,'deswell','127.0.0.1','N','2014-01-12 07:58:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(374,'admin','127.0.0.1','Y','2014-01-12 08:02:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(375,'pndadmin','127.0.0.1','Y','2014-01-12 08:06:01','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(376,'darun','127.0.0.1','N','2014-01-12 08:06:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(377,'pndadmin','127.0.0.1','Y','2014-01-12 08:06:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(378,'darun','127.0.0.1','Y','2014-01-12 08:06:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(379,'admin','127.0.0.1','Y','2014-01-12 08:07:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(380,'darun','127.0.0.1','Y','2014-01-12 08:09:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(381,'admin','127.0.0.1','Y','2014-01-12 08:10:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(382,'darun','127.0.0.1','Y','2014-01-12 08:11:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(383,'alex','127.0.0.1','Y','2014-01-12 08:13:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(384,'admin','127.0.0.1','Y','2014-01-12 08:13:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(385,'darun','127.0.0.1','Y','2014-01-12 08:15:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(386,'alex','127.0.0.1','Y','2014-01-12 08:16:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(387,'admin','127.0.0.1','Y','2014-01-12 08:17:03','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(388,'alex','127.0.0.1','Y','2014-01-12 08:17:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(389,'admin','127.0.0.1','N','2014-01-12 08:18:05','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(390,'admin','127.0.0.1','N','2014-01-12 08:18:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(391,'admin','127.0.0.1','Y','2014-01-12 08:18:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(392,'alex','127.0.0.1','Y','2014-01-12 08:20:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(393,'admin','127.0.0.1','Y','2014-01-12 08:20:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(394,'darun','127.0.0.1','Y','2014-01-12 08:21:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(395,'darun','127.0.0.1','Y','2014-01-12 08:36:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(396,'admin','127.0.0.1','Y','2014-01-12 08:36:39','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(397,'alex','127.0.0.1','Y','2014-01-12 08:49:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(398,'admin','127.0.0.1','Y','2014-01-12 08:50:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(399,'alex','127.0.0.1','Y','2014-01-12 08:51:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(400,'admin','127.0.0.1','Y','2014-01-12 09:04:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(401,'alex','127.0.0.1','Y','2014-01-12 09:05:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(402,'admin','127.0.0.1','Y','2014-01-12 09:07:38','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(403,'pndadmin','127.0.0.1','Y','2014-01-12 09:29:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(404,'deswell','127.0.0.1','Y','2014-01-12 09:33:39','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(405,'pndadmin','127.0.0.1','Y','2014-01-12 09:34:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(406,'deswell','127.0.0.1','Y','2014-01-12 09:34:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(407,'yow','127.0.0.1','Y','2014-01-12 09:38:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(408,'fong','127.0.0.1','Y','2014-01-12 09:53:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(409,'yow','127.0.0.1','Y','2014-01-12 09:54:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(410,'admin','127.0.0.1','Y','2014-01-12 10:06:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(411,'fong','127.0.0.1','Y','2014-01-12 10:09:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(412,'admin','127.0.0.1','Y','2014-01-12 10:09:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(413,'fong','127.0.0.1','Y','2014-01-12 10:10:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(414,'admin','127.0.0.1','Y','2014-01-12 10:13:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(415,'fong','127.0.0.1','Y','2014-01-12 10:36:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(416,'fong','127.0.0.1','Y','2014-01-12 10:37:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(417,'admin','127.0.0.1','Y','2014-01-12 13:57:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(418,'admin','127.0.0.1','Y','2014-01-13 01:38:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(419,'admin','127.0.0.1','N','2014-01-13 01:39:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(420,'admin','127.0.0.1','Y','2014-01-13 01:39:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(421,'tony','127.0.0.1','N','2014-01-13 01:40:59','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(422,'tony','127.0.0.1','N','2014-01-13 01:41:03','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(423,'admin','127.0.0.1','Y','2014-01-13 01:41:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(424,'admin','127.0.0.1','Y','2014-01-13 05:18:47','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(425,'pndadmin','127.0.0.1','Y','2014-01-13 05:48:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(426,'cartonbox','127.0.0.1','N','2014-01-13 05:48:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(427,'pndadmin','127.0.0.1','Y','2014-01-13 05:48:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(428,'cartonbox','127.0.0.1','N','2014-01-13 05:49:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(429,'pndadmin','127.0.0.1','Y','2014-01-13 05:50:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(430,'cartonbox','127.0.0.1','Y','2014-01-13 05:52:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(431,'admin','127.0.0.1','Y','2014-01-13 05:54:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(432,'cartonbox','127.0.0.1','Y','2014-01-13 05:58:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(433,'admin','127.0.0.1','Y','2014-01-13 05:59:49','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(434,'admin','127.0.0.1','Y','2014-01-13 06:02:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(435,'admin','127.0.0.1','Y','2014-01-14 07:03:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(436,'pndadmin','127.0.0.1','Y','2014-01-14 07:54:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(437,'darun','127.0.0.1','Y','2014-01-14 07:55:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(438,'alex','127.0.0.1','Y','2014-01-14 07:58:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(439,'admin','127.0.0.1','Y','2014-01-14 09:34:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(440,'pndadmin','127.0.0.1','Y','2014-01-14 10:53:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(441,'deswell','127.0.0.1','N','2014-01-14 10:53:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(442,'pndadmin','127.0.0.1','Y','2014-01-14 10:53:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(443,'deswell','127.0.0.1','Y','2014-01-14 10:54:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(444,'admin','127.0.0.1','Y','2014-01-14 15:01:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(445,'darun','127.0.0.1','Y','2014-01-14 15:01:31','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(446,'admin','127.0.0.1','Y','2014-01-14 15:01:50','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(447,'darun','127.0.0.1','Y','2014-01-14 15:02:33','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(448,'admin','127.0.0.1','Y','2014-01-15 01:28:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(449,'pndadmin','127.0.0.1','Y','2014-01-15 01:28:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(450,'pndadmin','127.0.0.1','Y','2014-01-15 01:34:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(451,'pndadmin','127.0.0.1','Y','2014-01-15 01:49:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(452,'darun','127.0.0.1','Y','2014-01-15 01:55:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(453,'pndadmin','127.0.0.1','Y','2014-01-15 02:12:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(454,'darun','127.0.0.1','Y','2014-01-15 02:27:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(455,'darunalex','127.0.0.1','Y','2014-01-15 02:38:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(456,'darun','127.0.0.1','Y','2014-01-15 04:50:04','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(457,'pndadmin','127.0.0.1','Y','2014-01-15 05:19:33','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(458,'deswell','127.0.0.1','Y','2014-01-15 05:20:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(459,'dsalex','127.0.0.1','Y','2014-01-15 05:23:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(460,'pndadmin','127.0.0.1','Y','2014-01-15 05:54:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(461,'darun','127.0.0.1','Y','2014-01-15 07:45:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(462,'admin','127.0.0.1','Y','2014-01-16 02:56:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(463,'admin','127.0.0.1','Y','2014-01-16 03:44:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(464,'darun','127.0.0.1','Y','2014-01-16 03:52:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(465,'admin','127.0.0.1','N','2014-01-16 04:11:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(466,'admin','127.0.0.1','Y','2014-01-16 04:11:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(467,'admin','127.0.0.1','Y','2014-01-16 04:19:47','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(468,'darun','127.0.0.1','Y','2014-01-16 04:42:38','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(469,'admin','127.0.0.1','Y','2014-01-16 05:29:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(470,'admin','127.0.0.1','Y','2014-01-16 07:59:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(471,'admin','127.0.0.1','Y','2014-01-17 03:15:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(472,'admin','127.0.0.1','Y','2014-01-20 07:37:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(473,'darun','127.0.0.1','Y','2014-01-21 01:24:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(474,'darun','127.0.0.1','Y','2014-01-21 01:25:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(475,'admin','127.0.0.1','Y','2014-01-21 01:28:28','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(476,'darun','127.0.0.1','Y','2014-01-21 01:37:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(477,'pndadmin','127.0.0.1','Y','2014-01-21 02:25:01','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(478,'demo1','127.0.0.1','N','2014-01-21 07:16:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(479,'demo1','127.0.0.1','N','2014-01-21 07:16:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(480,'admin','127.0.0.1','Y','2014-01-21 07:16:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(481,'demo1','127.0.0.1','Y','2014-01-21 07:18:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(482,'pndadmin','127.0.0.1','Y','2014-01-22 02:11:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcuserorgrole`
--

LOCK TABLES `fcuserorgrole` WRITE;
/*!40000 ALTER TABLE `fcuserorgrole` DISABLE KEYS */;
INSERT INTO `fcuserorgrole` VALUES (3,'Hong Yee',3,1,1),(21,'pndadmin',6,2,1),(22,'admin',6,1,1),(23,'admin',6,2,NULL),(24,'admin',6,3,NULL),(47,'darun',26,3,1),(51,'alex thong',26,3,1),(53,'darunalex',26,4,1),(55,'deswell',28,3,1),(56,'dsalex',28,4,1),(57,'dsdanny',28,5,1),(58,'dskeng',29,4,1),(59,'user1',27,3,1),(60,'user2',26,4,1),(61,'DEMO1ADMIN',31,3,1),(62,'DEMO1OPERATOR',31,4,1),(63,'DEMO1MANAGER',31,5,1),(64,'DEMO2ADMIN',32,3,1),(65,'DEMO2OPERATOR',32,4,1),(66,'DEMO2MANAGER',32,5,1),(67,'demo1',31,3,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcusersession`
--

LOCK TABLES `fcusersession` WRITE;
/*!40000 ALTER TABLE `fcusersession` DISABLE KEYS */;
INSERT INTO `fcusersession` VALUES (431,'duicomhrn0fl6lcuums6227rm3','demo1','127.0.0.1','Y','2014-01-21 07:18:37','2014-01-21 07:18:37',NULL);
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
  `smb_spid` int(11) DEFAULT NULL,
  `smb_printdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `smb_printqty` int(11) DEFAULT NULL,
  `smb_saleamount` decimal(20,4) DEFAULT NULL,
  `smb_remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`smb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smbtransaction`
--

LOCK TABLES `smbtransaction` WRITE;
/*!40000 ALTER TABLE `smbtransaction` DISABLE KEYS */;
INSERT INTO `smbtransaction` VALUES (1,NULL,'2014-01-07 09:08:31',123,NULL,'123'),(2,72,'2014-01-07 09:09:06',111,NULL,'123'),(3,NULL,'2014-01-12 05:45:53',15,NULL,NULL),(4,NULL,'2014-01-12 05:47:12',20,NULL,NULL),(5,72,'2014-01-12 05:47:53',25,NULL,'25'),(6,74,'2014-01-12 05:48:04',30,NULL,'30'),(7,75,'2014-01-12 08:59:57',100,NULL,'100'),(8,79,'2014-01-12 09:49:13',200,NULL,'200'),(9,78,'2014-01-12 09:50:03',50,NULL,'50'),(10,80,'2014-01-14 08:03:00',100,NULL,'Print for...'),(11,83,'2014-01-15 05:29:22',200,NULL,'20');
/*!40000 ALTER TABLE `smbtransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smcontent`
--

DROP TABLE IF EXISTS `smcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smcontent` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_type` varchar(20) DEFAULT NULL,
  `ct_title` varchar(200) DEFAULT NULL,
  `ct_content` blob,
  `ct_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ct_created_by` varchar(20) DEFAULT NULL,
  `ct_last_modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ct_last_modified_by` varchar(50) DEFAULT NULL,
  `ct_status` varchar(20) DEFAULT NULL,
  `ct_last_status_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smcontent`
--

LOCK TABLES `smcontent` WRITE;
/*!40000 ALTER TABLE `smcontent` DISABLE KEYS */;
INSERT INTO `smcontent` VALUES (1,'FAQ','Question ','<p>Answer 1</p>','2014-01-16 08:46:47',NULL,'0000-00-00 00:00:00',NULL,'ACTIVE','0000-00-00 00:00:00'),(2,'FAQ','Question 2','Question 2','2014-01-16 09:02:17',NULL,'0000-00-00 00:00:00',NULL,'ACTIVE','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `smcontent` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smcustomer`
--

LOCK TABLES `smcustomer` WRITE;
/*!40000 ALTER TABLE `smcustomer` DISABLE KEYS */;
INSERT INTO `smcustomer` VALUES (211,'Haier','H588810-V','MHAIER-V','038854124',31),(212,'Hisense','HS9514-F','HISENSE-D','038856974',31),(213,'Huawei','HUA5815-V','HUAWEI-A581','065478512',31),(214,'Lenovo','L91518-D','LENOVO-515','0357896651',31),(215,'TCL','TCL8510-V','M235295-T','078554123',31),(216,'ZTE','ZTE95251-V','ZTEM86235','0478896421',31),(217,'Amkette','AM518510-V','AMKETTE-MAS01','0498762251',31),(218,'Beetel','B059260-V','BEETEL951','037458412',31),(219,'Bharat Electronics','BE8616-F','BHARAT-1618A','0478533651',31),(220,'Godrej','GOD51508C','GODREJ-58V','03557963412',31),(221,'HCL','HCL69106','HCL59610-D','046685912',31),(222,'iBall','IBAL95168V','IBALL861KKV','0978545631',31),(223,'Intex','INTEX59185-V','M68160V','0478852120',31),(224,'Lava','LA81N6-V','LAVA901-V','0358789641',31),(225,'Micromax','M91206I0-V','MICROMAX0661','0465845632',31),(226,'Notion Ink','N5601601','NOTIONINK9510','036698964',31),(227,'Onida','ONI6928N','ONIDA1610','0388579640',31),(228,'Voltas','VOL18610-V','VOLTAS-V591','0378855420',31),(229,'Alpine','ALPI5915-V','ALPINE61861','0354785420',31),(230,'Brother Industries','BROT5106-V','BROTHER81','038574563',31),(231,'Canon','CAN691-V','CANON961-1','0357789641',31),(232,'Casio','CAS616V','CASIO1961','0396754212',31),(233,'Fujitsu','FUTI191-V','FUJITSU519-V','03578856242',31),(234,'Hitachi','HITC9016HV','HITACHI-V619','0557745620',31),(235,'IO Data','IO519610-D','IODATA96106','0387724854',31),(236,'Epson','EP6910S','EPSON-5168','0377758412',31),(237,'Kenwood','KEN6810-D','KENWOOD-186','0328755632',31),(238,'Konica','KON86190-C','KONICA-19D','074458964',31),(239,'Mitsubishi','D816910-D','MITSUBISHI-619','064577950',31),(240,'JVC','JVC8610-D','JVCKSFJ-D','035878964',31),(241,'Panasonic','PAN9515-S','PANASONIC-6','0365589745',31),(242,'Pentax','P51851I-D','M851951','0385576210',31),(243,'Pioneer','P6926-D','PIONEER-62','038577452',31),(244,'Nikkon','NK601-V','NIKKON-618','0378554741',31),(245,'Ricoh','R60619NV-D','RICOH-1NV','038996725',31),(246,'Sony','SO69101-D','SONY951-D','0352247568',31),(247,'Toshiba','TKSJT-D','TOSHIBA-618S','0325578965',31),(248,'LG','LG01-61V','LG56100','0355879655',31);
/*!40000 ALTER TABLE `smcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smdemocustomer`
--

DROP TABLE IF EXISTS `smdemocustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smdemocustomer` (
  `dm_id` int(11) NOT NULL AUTO_INCREMENT,
  `dm_cusname` varchar(200) DEFAULT NULL,
  `dm_regno` varchar(100) DEFAULT NULL,
  `dm_masterid` varchar(100) DEFAULT NULL,
  `dm_contactno` varchar(20) DEFAULT NULL,
  `dm_industry` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smdemocustomer`
--

LOCK TABLES `smdemocustomer` WRITE;
/*!40000 ALTER TABLE `smdemocustomer` DISABLE KEYS */;
INSERT INTO `smdemocustomer` VALUES (1,'Haier','H588810-V','MHAIER-V','038854124','ELECTRONIC'),(2,'Hisense','HS9514-F','HISENSE-D','038856974','ELECTRONIC'),(3,'Huawei','HUA5815-V','HUAWEI-A581','065478512','ELECTRONIC'),(4,'Lenovo','L91518-D','LENOVO-515','0357896651','ELECTRONIC'),(5,'TCL','TCL8510-V','M235295-T','078554123','ELECTRONIC'),(6,'ZTE','ZTE95251-V','ZTEM86235','0478896421','ELECTRONIC'),(7,'Amkette','AM518510-V','AMKETTE-MAS01','0498762251','ELECTRONIC'),(8,'Beetel','B059260-V','BEETEL951','037458412','ELECTRONIC'),(9,'Bharat Electronics','BE8616-F','BHARAT-1618A','0478533651','ELECTRONIC'),(10,'Godrej','GOD51508C','GODREJ-58V','03557963412','ELECTRONIC'),(11,'HCL','HCL69106','HCL59610-D','046685912','ELECTRONIC'),(12,'iBall','IBAL95168V','IBALL861KKV','0978545631','ELECTRONIC'),(13,'Intex','INTEX59185-V','M68160V','0478852120','ELECTRONIC'),(14,'Lava','LA81N6-V','LAVA901-V','0358789641','ELECTRONIC'),(15,'Micromax','M91206I0-V','MICROMAX0661','0465845632','ELECTRONIC'),(16,'Notion Ink','N5601601','NOTIONINK9510','036698964','ELECTRONIC'),(17,'Onida','ONI6928N','ONIDA1610','0388579640','ELECTRONIC'),(18,'Voltas','VOL18610-V','VOLTAS-V591','0378855420','ELECTRONIC'),(19,'Alpine','ALPI5915-V','ALPINE61861','0354785420','ELECTRONIC'),(20,'Brother Industries','BROT5106-V','BROTHER81','038574563','ELECTRONIC'),(21,'Canon','CAN691-V','CANON961-1','0357789641','ELECTRONIC'),(22,'Casio','CAS616V','CASIO1961','0396754212','ELECTRONIC'),(23,'Fujitsu','FUTI191-V','FUJITSU519-V','03578856242','ELECTRONIC'),(24,'Hitachi','HITC9016HV','HITACHI-V619','0557745620','ELECTRONIC'),(25,'IO Data','IO519610-D','IODATA96106','0387724854','ELECTRONIC'),(26,'Epson','EP6910S','EPSON-5168','0377758412','ELECTRONIC'),(27,'Kenwood','KEN6810-D','KENWOOD-186','0328755632','ELECTRONIC'),(28,'Konica','KON86190-C','KONICA-19D','074458964','ELECTRONIC'),(29,'Mitsubishi','D816910-D','MITSUBISHI-619','064577950','ELECTRONIC'),(30,'JVC','JVC8610-D','JVCKSFJ-D','035878964','ELECTRONIC'),(31,'Panasonic','PAN9515-S','PANASONIC-6','0365589745','ELECTRONIC'),(32,'Pentax','P51851I-D','M851951','0385576210','ELECTRONIC'),(33,'Pioneer','P6926-D','PIONEER-62','038577452','ELECTRONIC'),(34,'Nikkon','NK601-V','NIKKON-618','0378554741','ELECTRONIC'),(35,'Ricoh','R60619NV-D','RICOH-1NV','038996725','ELECTRONIC'),(36,'Sony','SO69101-D','SONY951-D','0352247568','ELECTRONIC'),(37,'Toshiba','TKSJT-D','TOSHIBA-618S','0325578965','ELECTRONIC'),(38,'LG','LG01-61V','LG56100','0355879655','ELECTRONIC');
/*!40000 ALTER TABLE `smdemocustomer` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smorgpackage`
--

LOCK TABLES `smorgpackage` WRITE;
/*!40000 ALTER TABLE `smorgpackage` DISABLE KEYS */;
INSERT INTO `smorgpackage` VALUES (1,4,NULL,'2013-12-23 22:53:50','admin',1,'2013-01-12','2013-12-31',NULL,NULL),(2,11,1,'2014-01-11 18:59:28','pndadmin',1,'2014-01-11','2014-02-10','2014-02-10',NULL),(3,12,1,'2014-01-12 15:53:34','admin',1,'2014-01-12','2014-02-11','2014-02-11',NULL),(4,13,1,'2014-01-12 15:56:15','pndadmin',1,'2014-01-12','2014-02-11','2014-02-11',NULL),(5,14,1,'2014-01-12 16:06:37','pndadmin',1,'2014-01-12','2014-02-11','2014-02-11',NULL),(6,15,1,'2014-01-12 17:33:32','pndadmin',1,'2014-01-12','2014-02-11','2014-02-11',NULL),(7,16,1,'2014-01-13 13:50:12','pndadmin',1,'2014-01-13','2014-02-12','2014-02-12',NULL),(8,19,1,'2014-01-14 15:55:03','pndadmin',1,'2014-01-14','2014-02-13','2014-02-13',NULL),(10,20,1,'2014-01-14 18:54:03','pndadmin',1,'2014-01-14','2014-02-13','2014-02-13',NULL),(13,24,1,'2014-01-15 09:44:25','pndadmin',1,'2014-01-01','2014-01-31','2014-01-31',NULL),(14,26,1,'2014-01-15 09:50:43','pndadmin',1,'2014-01-15','2014-02-14','2014-02-14',NULL),(15,28,1,'2014-01-15 13:20:03','pndadmin',1,'2014-01-15','2014-02-14','2014-02-14',NULL),(16,31,1,'2014-01-21 10:28:55','pndadmin',1,'2014-01-01','2016-12-31','2016-12-31',NULL),(17,32,1,'2014-01-21 10:29:10','pndadmin',1,'2014-01-01','2015-12-31','2015-12-31',NULL);
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
INSERT INTO `smpackage` VALUES (1,'Package 1 (RM200)',200.00,1,10000,5,3),(2,'Package 2 (RM400)',400.00,1,20000,10,5),(3,'Package 3 (RM600)',600.00,1,999999999,20,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smplate`
--

LOCK TABLES `smplate` WRITE;
/*!40000 ALTER TABLE `smplate` DISABLE KEYS */;
INSERT INTO `smplate` VALUES (90,332,79,-1,2985,NULL,'3D24CF','636199F29701','2014-01-21 06:41:44','SYSTEM','ACTIVE',31),(91,270,79,-1,2986,NULL,'CCF214','B05BC2951C97','2014-01-21 06:41:44','SYSTEM','ACTIVE',31),(92,189,79,-1,2987,NULL,'789D7F','6A3D531371BC','2014-01-21 06:41:44','SYSTEM','ACTIVE',31),(93,165,79,-1,2988,NULL,'99E44C','14C4DD4C0E25','2014-01-21 06:41:44','SYSTEM','ACTIVE',31),(94,241,79,-1,2989,NULL,'7768EC','02312770C9C8','2014-01-21 06:41:44','SYSTEM','ACTIVE',31),(95,291,79,-1,2990,NULL,'27F789','5B9B9A67D16B','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(96,198,79,-1,2991,NULL,'C0717C','8281E478497A','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(97,167,79,-1,2992,NULL,'484C5F','20E7A87DFEAA','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(98,322,79,-1,2993,NULL,'21F83D','8108A2B5FD89','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(99,227,79,-1,2994,NULL,'8CDCCA','1AB6D4097C6F','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(100,292,79,-1,2995,NULL,'B1AEF5','D57DF15BD969','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(101,159,79,-1,2996,NULL,'B5BE98','822332E13F49','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(102,301,80,-1,3185,NULL,'506966','BD8D354132A6','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(103,152,80,-1,3186,NULL,'A644A2','0F25B66E3F76','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(104,294,80,-1,3187,NULL,'EC3028','1E80D78C551D','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(105,292,80,-1,3188,NULL,'63BFDB','5DC46A2CD5AA','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(106,329,80,-1,3189,NULL,'C5AF4C','1AB544C87201','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(107,211,80,-1,3190,NULL,'1EA48E','24ECDAF96F2E','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(108,319,80,-1,3191,NULL,'2DF746','0902D877D588','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(109,152,80,-1,3192,NULL,'70F46B','0B90519306DC','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(110,159,80,-1,3193,NULL,'6FDA49','EE115EF8B610','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(111,195,80,-1,3194,NULL,'93309A','559937AB4E1E','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(112,210,81,-1,3385,NULL,'10A9DC','4F161E61C3FF','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(113,246,81,-1,3386,NULL,'AC8F66','E8A13E0F0BE6','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(114,239,81,-1,3387,NULL,'501C2F','FC89B407D832','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(115,267,82,-1,3585,NULL,'92CFE2','48A0E38EE419','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(116,171,82,-1,3586,NULL,'B64DB1','828587F00AAB','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(117,284,82,-1,3587,NULL,'F16270','BF3A42ADBC9C','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(118,223,82,-1,3588,NULL,'E6CCE0','23AF7BECA4B3','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(119,306,82,-1,3589,NULL,'B2307E','A04909290D64','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(120,222,82,-1,3590,NULL,'FCE7F5','356BAD8BC0AD','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(121,289,83,-1,3785,NULL,'897D8F','C293C3B92A87','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(122,223,83,-1,3786,NULL,'3A12AA','55785787DB22','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(123,173,83,-1,3787,NULL,'F9638C','ECD558ED7A88','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(124,330,83,-1,3788,NULL,'72A5A4','D287DB06626B','2014-01-21 06:41:47','SYSTEM','ACTIVE',31),(125,216,83,-1,3789,NULL,'A5CDE2','B4A27BA626E9','2014-01-21 06:41:47','SYSTEM','ACTIVE',31),(126,181,84,-1,3985,NULL,'89B52C','03ED1CF9A093','2014-01-21 06:41:47','SYSTEM','ACTIVE',31),(127,262,84,-1,3986,NULL,'A5B53E','0BFCCA4168BE','2014-01-21 06:41:47','SYSTEM','ACTIVE',31),(128,290,84,-1,3987,NULL,'6506F7','CB3A7C68F652','2014-01-21 06:41:47','SYSTEM','ACTIVE',31),(129,430,85,-1,4185,NULL,'6D74DD','519F82AA6711','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(130,217,85,-1,4186,NULL,'C681F4','15142618962F','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(131,275,85,-1,4187,NULL,'2B68B1','73CD0DA8049D','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(132,240,85,-1,4188,NULL,'A18F26','D0BF9E57248F','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(133,359,85,-1,4189,NULL,'7E068A','667E699F1FD9','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(134,399,85,-1,4190,NULL,'802AE5','414ADF772EDD','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(135,321,85,-1,4191,NULL,'2C98AF','9A1AD262EE48','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(136,276,85,-1,4192,NULL,'1F6A45','C5D743D8213E','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(137,237,85,-1,4193,NULL,'549AFE','4C4C5ED01880','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(138,293,85,-1,4194,NULL,'BC1F5E','3E8D5229C647','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(139,358,86,-1,4385,NULL,'A72267','5674774FBDAD','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(140,333,86,-1,4386,NULL,'9C7219','66D340E110D6','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(141,352,86,-1,4387,NULL,'873955','CC42D6210EA8','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(142,276,86,-1,4388,NULL,'03A413','370E338DE024','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(143,360,86,-1,4389,NULL,'6F47E3','CD95CBF0165D','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(144,220,86,-1,4390,NULL,'5172F6','D285FB6F4198','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(145,454,86,-1,4391,NULL,'AE8325','E7CB2791BEAC','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(146,296,86,-1,4392,NULL,'2F47AC','F54327603104','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(147,225,86,-1,4393,NULL,'80E6A3','44AEF823014E','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(148,315,86,-1,4394,NULL,'AAD0F9','0E39E252E0F8','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(149,217,86,-1,4395,NULL,'9F41C9','2C84BACE5D1A','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(150,344,87,-1,4585,NULL,'0128AB','8D0E018BD7AB','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(151,290,87,-1,4586,NULL,'7136B1','FA5DCF94D75B','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(152,221,87,-1,4587,NULL,'7B8859','48833CA6E924','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(153,399,87,-1,4588,NULL,'919101','1DC72986C68A','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(154,352,87,-1,4589,NULL,'1C5457','C37B94087EE8','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(155,254,87,-1,4590,NULL,'43D4A9','C54F5E032584','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(156,375,87,-1,4591,NULL,'D0297F','5426683826A7','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(157,277,87,-1,4592,NULL,'75A141','0CED9F254F97','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(158,361,87,-1,4593,NULL,'0E75AF','B992C131695D','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(159,255,87,-1,4594,NULL,'EE5093','778F8A2B1B26','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(160,270,88,-1,4785,NULL,'9986D3','26E81B2B14C3','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(161,320,88,-1,4786,NULL,'0BA906','EC126EAFA84A','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(162,428,88,-1,4787,NULL,'1C0173','C349A328A622','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(163,249,88,-1,4788,NULL,'84FA34','F4AEF6614906','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(164,400,88,-1,4789,NULL,'BE9011','0273DB8803F4','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(165,219,88,-1,4790,NULL,'3D917B','28523072D47B','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(166,447,88,-1,4791,NULL,'9EC7BD','3C56A72636E1','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(167,272,88,-1,4792,NULL,'84DD92','52E33E5673DA','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(168,244,88,-1,4793,NULL,'3F926E','8A57016A1A9F','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(169,456,88,-1,4794,NULL,'06D8B3','8395DA12C890','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(170,327,88,-1,4795,NULL,'CBA974','B8267268C490','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(171,426,88,-1,4796,NULL,'E735CA','67CED8E60C7A','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(172,256,89,-1,4985,NULL,'914CC6','FE89E7B3F7DD','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(173,404,89,-1,4986,NULL,'53EE6D','19BA16A495F8','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(174,316,89,-1,4987,NULL,'2F90F9','058191565F72','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(175,211,89,-1,4988,NULL,'E8CF8F','7C962FC5AB32','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(176,400,89,-1,4989,NULL,'468080','7FF70148D66A','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(177,227,89,-1,4990,NULL,'581B92','782B3A8074A5','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(178,414,89,-1,4991,NULL,'2FEC8A','183B6234913D','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(179,389,89,-1,4992,NULL,'959AC7','A80A87569763','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(180,353,89,-1,4993,NULL,'5779BF','4B67C664B983','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(181,310,89,-1,4994,NULL,'50E1E0','1AD57038417F','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(182,344,89,-1,4995,NULL,'D8F594','4874564D236B','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(183,429,90,-1,5185,NULL,'E6E012','4395647C49C5','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(184,231,90,-1,5186,NULL,'0ED794','919818732208','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(185,402,90,-1,5187,NULL,'EC73D2','4586C51213EA','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(186,366,90,-1,5188,NULL,'5093BB','79ECCDAA4882','2014-01-21 07:15:53','SYSTEM','ACTIVE',31),(187,290,90,-1,5189,NULL,'DE86F6','D0E0CC38C605','2014-01-21 07:15:53','SYSTEM','ACTIVE',31),(188,396,90,-1,5190,NULL,'190A45','EC5D0DC4FCB9','2014-01-21 07:15:53','SYSTEM','ACTIVE',31);
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
) ENGINE=InnoDB AUTO_INCREMENT=5385 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smplateslot`
--

LOCK TABLES `smplateslot` WRITE;
/*!40000 ALTER TABLE `smplateslot` DISABLE KEYS */;
INSERT INTO `smplateslot` VALUES (4185,85,'0001','1000-A1-0001','N',31),(4186,85,'0002','1000-A1-0002','N',31),(4187,85,'0003','1000-A1-0003','N',31),(4188,85,'0004','1000-A1-0004','N',31),(4189,85,'0005','1000-A1-0005','N',31),(4190,85,'0006','1000-A1-0006','N',31),(4191,85,'0007','1000-A1-0007','N',31),(4192,85,'0008','1000-A1-0008','N',31),(4193,85,'0009','1000-A1-0009','N',31),(4194,85,'0010','1000-A1-0010','N',31),(4195,85,'0011','1000-A1-0011','Y',31),(4196,85,'0012','1000-A1-0012','Y',31),(4197,85,'0013','1000-A1-0013','Y',31),(4198,85,'0014','1000-A1-0014','Y',31),(4199,85,'0015','1000-A1-0015','Y',31),(4200,85,'0016','1000-A1-0016','Y',31),(4201,85,'0017','1000-A1-0017','Y',31),(4202,85,'0018','1000-A1-0018','Y',31),(4203,85,'0019','1000-A1-0019','Y',31),(4204,85,'0020','1000-A1-0020','Y',31),(4205,85,'0021','1000-A1-0021','Y',31),(4206,85,'0022','1000-A1-0022','Y',31),(4207,85,'0023','1000-A1-0023','Y',31),(4208,85,'0024','1000-A1-0024','Y',31),(4209,85,'0025','1000-A1-0025','Y',31),(4210,85,'0026','1000-A1-0026','Y',31),(4211,85,'0027','1000-A1-0027','Y',31),(4212,85,'0028','1000-A1-0028','Y',31),(4213,85,'0029','1000-A1-0029','Y',31),(4214,85,'0030','1000-A1-0030','Y',31),(4215,85,'0031','1000-A1-0031','Y',31),(4216,85,'0032','1000-A1-0032','Y',31),(4217,85,'0033','1000-A1-0033','Y',31),(4218,85,'0034','1000-A1-0034','Y',31),(4219,85,'0035','1000-A1-0035','Y',31),(4220,85,'0036','1000-A1-0036','Y',31),(4221,85,'0037','1000-A1-0037','Y',31),(4222,85,'0038','1000-A1-0038','Y',31),(4223,85,'0039','1000-A1-0039','Y',31),(4224,85,'0040','1000-A1-0040','Y',31),(4225,85,'0041','1000-A1-0041','Y',31),(4226,85,'0042','1000-A1-0042','Y',31),(4227,85,'0043','1000-A1-0043','Y',31),(4228,85,'0044','1000-A1-0044','Y',31),(4229,85,'0045','1000-A1-0045','Y',31),(4230,85,'0046','1000-A1-0046','Y',31),(4231,85,'0047','1000-A1-0047','Y',31),(4232,85,'0048','1000-A1-0048','Y',31),(4233,85,'0049','1000-A1-0049','Y',31),(4234,85,'0050','1000-A1-0050','Y',31),(4235,85,'0051','1000-A1-0051','Y',31),(4236,85,'0052','1000-A1-0052','Y',31),(4237,85,'0053','1000-A1-0053','Y',31),(4238,85,'0054','1000-A1-0054','Y',31),(4239,85,'0055','1000-A1-0055','Y',31),(4240,85,'0056','1000-A1-0056','Y',31),(4241,85,'0057','1000-A1-0057','Y',31),(4242,85,'0058','1000-A1-0058','Y',31),(4243,85,'0059','1000-A1-0059','Y',31),(4244,85,'0060','1000-A1-0060','Y',31),(4245,85,'0061','1000-A1-0061','Y',31),(4246,85,'0062','1000-A1-0062','Y',31),(4247,85,'0063','1000-A1-0063','Y',31),(4248,85,'0064','1000-A1-0064','Y',31),(4249,85,'0065','1000-A1-0065','Y',31),(4250,85,'0066','1000-A1-0066','Y',31),(4251,85,'0067','1000-A1-0067','Y',31),(4252,85,'0068','1000-A1-0068','Y',31),(4253,85,'0069','1000-A1-0069','Y',31),(4254,85,'0070','1000-A1-0070','Y',31),(4255,85,'0071','1000-A1-0071','Y',31),(4256,85,'0072','1000-A1-0072','Y',31),(4257,85,'0073','1000-A1-0073','Y',31),(4258,85,'0074','1000-A1-0074','Y',31),(4259,85,'0075','1000-A1-0075','Y',31),(4260,85,'0076','1000-A1-0076','Y',31),(4261,85,'0077','1000-A1-0077','Y',31),(4262,85,'0078','1000-A1-0078','Y',31),(4263,85,'0079','1000-A1-0079','Y',31),(4264,85,'0080','1000-A1-0080','Y',31),(4265,85,'0081','1000-A1-0081','Y',31),(4266,85,'0082','1000-A1-0082','Y',31),(4267,85,'0083','1000-A1-0083','Y',31),(4268,85,'0084','1000-A1-0084','Y',31),(4269,85,'0085','1000-A1-0085','Y',31),(4270,85,'0086','1000-A1-0086','Y',31),(4271,85,'0087','1000-A1-0087','Y',31),(4272,85,'0088','1000-A1-0088','Y',31),(4273,85,'0089','1000-A1-0089','Y',31),(4274,85,'0090','1000-A1-0090','Y',31),(4275,85,'0091','1000-A1-0091','Y',31),(4276,85,'0092','1000-A1-0092','Y',31),(4277,85,'0093','1000-A1-0093','Y',31),(4278,85,'0094','1000-A1-0094','Y',31),(4279,85,'0095','1000-A1-0095','Y',31),(4280,85,'0096','1000-A1-0096','Y',31),(4281,85,'0097','1000-A1-0097','Y',31),(4282,85,'0098','1000-A1-0098','Y',31),(4283,85,'0099','1000-A1-0099','Y',31),(4284,85,'0100','1000-A1-0100','Y',31),(4285,85,'0101','1000-A1-0101','Y',31),(4286,85,'0102','1000-A1-0102','Y',31),(4287,85,'0103','1000-A1-0103','Y',31),(4288,85,'0104','1000-A1-0104','Y',31),(4289,85,'0105','1000-A1-0105','Y',31),(4290,85,'0106','1000-A1-0106','Y',31),(4291,85,'0107','1000-A1-0107','Y',31),(4292,85,'0108','1000-A1-0108','Y',31),(4293,85,'0109','1000-A1-0109','Y',31),(4294,85,'0110','1000-A1-0110','Y',31),(4295,85,'0111','1000-A1-0111','Y',31),(4296,85,'0112','1000-A1-0112','Y',31),(4297,85,'0113','1000-A1-0113','Y',31),(4298,85,'0114','1000-A1-0114','Y',31),(4299,85,'0115','1000-A1-0115','Y',31),(4300,85,'0116','1000-A1-0116','Y',31),(4301,85,'0117','1000-A1-0117','Y',31),(4302,85,'0118','1000-A1-0118','Y',31),(4303,85,'0119','1000-A1-0119','Y',31),(4304,85,'0120','1000-A1-0120','Y',31),(4305,85,'0121','1000-A1-0121','Y',31),(4306,85,'0122','1000-A1-0122','Y',31),(4307,85,'0123','1000-A1-0123','Y',31),(4308,85,'0124','1000-A1-0124','Y',31),(4309,85,'0125','1000-A1-0125','Y',31),(4310,85,'0126','1000-A1-0126','Y',31),(4311,85,'0127','1000-A1-0127','Y',31),(4312,85,'0128','1000-A1-0128','Y',31),(4313,85,'0129','1000-A1-0129','Y',31),(4314,85,'0130','1000-A1-0130','Y',31),(4315,85,'0131','1000-A1-0131','Y',31),(4316,85,'0132','1000-A1-0132','Y',31),(4317,85,'0133','1000-A1-0133','Y',31),(4318,85,'0134','1000-A1-0134','Y',31),(4319,85,'0135','1000-A1-0135','Y',31),(4320,85,'0136','1000-A1-0136','Y',31),(4321,85,'0137','1000-A1-0137','Y',31),(4322,85,'0138','1000-A1-0138','Y',31),(4323,85,'0139','1000-A1-0139','Y',31),(4324,85,'0140','1000-A1-0140','Y',31),(4325,85,'0141','1000-A1-0141','Y',31),(4326,85,'0142','1000-A1-0142','Y',31),(4327,85,'0143','1000-A1-0143','Y',31),(4328,85,'0144','1000-A1-0144','Y',31),(4329,85,'0145','1000-A1-0145','Y',31),(4330,85,'0146','1000-A1-0146','Y',31),(4331,85,'0147','1000-A1-0147','Y',31),(4332,85,'0148','1000-A1-0148','Y',31),(4333,85,'0149','1000-A1-0149','Y',31),(4334,85,'0150','1000-A1-0150','Y',31),(4335,85,'0151','1000-A1-0151','Y',31),(4336,85,'0152','1000-A1-0152','Y',31),(4337,85,'0153','1000-A1-0153','Y',31),(4338,85,'0154','1000-A1-0154','Y',31),(4339,85,'0155','1000-A1-0155','Y',31),(4340,85,'0156','1000-A1-0156','Y',31),(4341,85,'0157','1000-A1-0157','Y',31),(4342,85,'0158','1000-A1-0158','Y',31),(4343,85,'0159','1000-A1-0159','Y',31),(4344,85,'0160','1000-A1-0160','Y',31),(4345,85,'0161','1000-A1-0161','Y',31),(4346,85,'0162','1000-A1-0162','Y',31),(4347,85,'0163','1000-A1-0163','Y',31),(4348,85,'0164','1000-A1-0164','Y',31),(4349,85,'0165','1000-A1-0165','Y',31),(4350,85,'0166','1000-A1-0166','Y',31),(4351,85,'0167','1000-A1-0167','Y',31),(4352,85,'0168','1000-A1-0168','Y',31),(4353,85,'0169','1000-A1-0169','Y',31),(4354,85,'0170','1000-A1-0170','Y',31),(4355,85,'0171','1000-A1-0171','Y',31),(4356,85,'0172','1000-A1-0172','Y',31),(4357,85,'0173','1000-A1-0173','Y',31),(4358,85,'0174','1000-A1-0174','Y',31),(4359,85,'0175','1000-A1-0175','Y',31),(4360,85,'0176','1000-A1-0176','Y',31),(4361,85,'0177','1000-A1-0177','Y',31),(4362,85,'0178','1000-A1-0178','Y',31),(4363,85,'0179','1000-A1-0179','Y',31),(4364,85,'0180','1000-A1-0180','Y',31),(4365,85,'0181','1000-A1-0181','Y',31),(4366,85,'0182','1000-A1-0182','Y',31),(4367,85,'0183','1000-A1-0183','Y',31),(4368,85,'0184','1000-A1-0184','Y',31),(4369,85,'0185','1000-A1-0185','Y',31),(4370,85,'0186','1000-A1-0186','Y',31),(4371,85,'0187','1000-A1-0187','Y',31),(4372,85,'0188','1000-A1-0188','Y',31),(4373,85,'0189','1000-A1-0189','Y',31),(4374,85,'0190','1000-A1-0190','Y',31),(4375,85,'0191','1000-A1-0191','Y',31),(4376,85,'0192','1000-A1-0192','Y',31),(4377,85,'0193','1000-A1-0193','Y',31),(4378,85,'0194','1000-A1-0194','Y',31),(4379,85,'0195','1000-A1-0195','Y',31),(4380,85,'0196','1000-A1-0196','Y',31),(4381,85,'0197','1000-A1-0197','Y',31),(4382,85,'0198','1000-A1-0198','Y',31),(4383,85,'0199','1000-A1-0199','Y',31),(4384,85,'0200','1000-A1-0200','Y',31),(4385,86,'0001','1000-A2-0001','N',31),(4386,86,'0002','1000-A2-0002','N',31),(4387,86,'0003','1000-A2-0003','N',31),(4388,86,'0004','1000-A2-0004','N',31),(4389,86,'0005','1000-A2-0005','N',31),(4390,86,'0006','1000-A2-0006','N',31),(4391,86,'0007','1000-A2-0007','N',31),(4392,86,'0008','1000-A2-0008','N',31),(4393,86,'0009','1000-A2-0009','N',31),(4394,86,'0010','1000-A2-0010','N',31),(4395,86,'0011','1000-A2-0011','N',31),(4396,86,'0012','1000-A2-0012','Y',31),(4397,86,'0013','1000-A2-0013','Y',31),(4398,86,'0014','1000-A2-0014','Y',31),(4399,86,'0015','1000-A2-0015','Y',31),(4400,86,'0016','1000-A2-0016','Y',31),(4401,86,'0017','1000-A2-0017','Y',31),(4402,86,'0018','1000-A2-0018','Y',31),(4403,86,'0019','1000-A2-0019','Y',31),(4404,86,'0020','1000-A2-0020','Y',31),(4405,86,'0021','1000-A2-0021','Y',31),(4406,86,'0022','1000-A2-0022','Y',31),(4407,86,'0023','1000-A2-0023','Y',31),(4408,86,'0024','1000-A2-0024','Y',31),(4409,86,'0025','1000-A2-0025','Y',31),(4410,86,'0026','1000-A2-0026','Y',31),(4411,86,'0027','1000-A2-0027','Y',31),(4412,86,'0028','1000-A2-0028','Y',31),(4413,86,'0029','1000-A2-0029','Y',31),(4414,86,'0030','1000-A2-0030','Y',31),(4415,86,'0031','1000-A2-0031','Y',31),(4416,86,'0032','1000-A2-0032','Y',31),(4417,86,'0033','1000-A2-0033','Y',31),(4418,86,'0034','1000-A2-0034','Y',31),(4419,86,'0035','1000-A2-0035','Y',31),(4420,86,'0036','1000-A2-0036','Y',31),(4421,86,'0037','1000-A2-0037','Y',31),(4422,86,'0038','1000-A2-0038','Y',31),(4423,86,'0039','1000-A2-0039','Y',31),(4424,86,'0040','1000-A2-0040','Y',31),(4425,86,'0041','1000-A2-0041','Y',31),(4426,86,'0042','1000-A2-0042','Y',31),(4427,86,'0043','1000-A2-0043','Y',31),(4428,86,'0044','1000-A2-0044','Y',31),(4429,86,'0045','1000-A2-0045','Y',31),(4430,86,'0046','1000-A2-0046','Y',31),(4431,86,'0047','1000-A2-0047','Y',31),(4432,86,'0048','1000-A2-0048','Y',31),(4433,86,'0049','1000-A2-0049','Y',31),(4434,86,'0050','1000-A2-0050','Y',31),(4435,86,'0051','1000-A2-0051','Y',31),(4436,86,'0052','1000-A2-0052','Y',31),(4437,86,'0053','1000-A2-0053','Y',31),(4438,86,'0054','1000-A2-0054','Y',31),(4439,86,'0055','1000-A2-0055','Y',31),(4440,86,'0056','1000-A2-0056','Y',31),(4441,86,'0057','1000-A2-0057','Y',31),(4442,86,'0058','1000-A2-0058','Y',31),(4443,86,'0059','1000-A2-0059','Y',31),(4444,86,'0060','1000-A2-0060','Y',31),(4445,86,'0061','1000-A2-0061','Y',31),(4446,86,'0062','1000-A2-0062','Y',31),(4447,86,'0063','1000-A2-0063','Y',31),(4448,86,'0064','1000-A2-0064','Y',31),(4449,86,'0065','1000-A2-0065','Y',31),(4450,86,'0066','1000-A2-0066','Y',31),(4451,86,'0067','1000-A2-0067','Y',31),(4452,86,'0068','1000-A2-0068','Y',31),(4453,86,'0069','1000-A2-0069','Y',31),(4454,86,'0070','1000-A2-0070','Y',31),(4455,86,'0071','1000-A2-0071','Y',31),(4456,86,'0072','1000-A2-0072','Y',31),(4457,86,'0073','1000-A2-0073','Y',31),(4458,86,'0074','1000-A2-0074','Y',31),(4459,86,'0075','1000-A2-0075','Y',31),(4460,86,'0076','1000-A2-0076','Y',31),(4461,86,'0077','1000-A2-0077','Y',31),(4462,86,'0078','1000-A2-0078','Y',31),(4463,86,'0079','1000-A2-0079','Y',31),(4464,86,'0080','1000-A2-0080','Y',31),(4465,86,'0081','1000-A2-0081','Y',31),(4466,86,'0082','1000-A2-0082','Y',31),(4467,86,'0083','1000-A2-0083','Y',31),(4468,86,'0084','1000-A2-0084','Y',31),(4469,86,'0085','1000-A2-0085','Y',31),(4470,86,'0086','1000-A2-0086','Y',31),(4471,86,'0087','1000-A2-0087','Y',31),(4472,86,'0088','1000-A2-0088','Y',31),(4473,86,'0089','1000-A2-0089','Y',31),(4474,86,'0090','1000-A2-0090','Y',31),(4475,86,'0091','1000-A2-0091','Y',31),(4476,86,'0092','1000-A2-0092','Y',31),(4477,86,'0093','1000-A2-0093','Y',31),(4478,86,'0094','1000-A2-0094','Y',31),(4479,86,'0095','1000-A2-0095','Y',31),(4480,86,'0096','1000-A2-0096','Y',31),(4481,86,'0097','1000-A2-0097','Y',31),(4482,86,'0098','1000-A2-0098','Y',31),(4483,86,'0099','1000-A2-0099','Y',31),(4484,86,'0100','1000-A2-0100','Y',31),(4485,86,'0101','1000-A2-0101','Y',31),(4486,86,'0102','1000-A2-0102','Y',31),(4487,86,'0103','1000-A2-0103','Y',31),(4488,86,'0104','1000-A2-0104','Y',31),(4489,86,'0105','1000-A2-0105','Y',31),(4490,86,'0106','1000-A2-0106','Y',31),(4491,86,'0107','1000-A2-0107','Y',31),(4492,86,'0108','1000-A2-0108','Y',31),(4493,86,'0109','1000-A2-0109','Y',31),(4494,86,'0110','1000-A2-0110','Y',31),(4495,86,'0111','1000-A2-0111','Y',31),(4496,86,'0112','1000-A2-0112','Y',31),(4497,86,'0113','1000-A2-0113','Y',31),(4498,86,'0114','1000-A2-0114','Y',31),(4499,86,'0115','1000-A2-0115','Y',31),(4500,86,'0116','1000-A2-0116','Y',31),(4501,86,'0117','1000-A2-0117','Y',31),(4502,86,'0118','1000-A2-0118','Y',31),(4503,86,'0119','1000-A2-0119','Y',31),(4504,86,'0120','1000-A2-0120','Y',31),(4505,86,'0121','1000-A2-0121','Y',31),(4506,86,'0122','1000-A2-0122','Y',31),(4507,86,'0123','1000-A2-0123','Y',31),(4508,86,'0124','1000-A2-0124','Y',31),(4509,86,'0125','1000-A2-0125','Y',31),(4510,86,'0126','1000-A2-0126','Y',31),(4511,86,'0127','1000-A2-0127','Y',31),(4512,86,'0128','1000-A2-0128','Y',31),(4513,86,'0129','1000-A2-0129','Y',31),(4514,86,'0130','1000-A2-0130','Y',31),(4515,86,'0131','1000-A2-0131','Y',31),(4516,86,'0132','1000-A2-0132','Y',31),(4517,86,'0133','1000-A2-0133','Y',31),(4518,86,'0134','1000-A2-0134','Y',31),(4519,86,'0135','1000-A2-0135','Y',31),(4520,86,'0136','1000-A2-0136','Y',31),(4521,86,'0137','1000-A2-0137','Y',31),(4522,86,'0138','1000-A2-0138','Y',31),(4523,86,'0139','1000-A2-0139','Y',31),(4524,86,'0140','1000-A2-0140','Y',31),(4525,86,'0141','1000-A2-0141','Y',31),(4526,86,'0142','1000-A2-0142','Y',31),(4527,86,'0143','1000-A2-0143','Y',31),(4528,86,'0144','1000-A2-0144','Y',31),(4529,86,'0145','1000-A2-0145','Y',31),(4530,86,'0146','1000-A2-0146','Y',31),(4531,86,'0147','1000-A2-0147','Y',31),(4532,86,'0148','1000-A2-0148','Y',31),(4533,86,'0149','1000-A2-0149','Y',31),(4534,86,'0150','1000-A2-0150','Y',31),(4535,86,'0151','1000-A2-0151','Y',31),(4536,86,'0152','1000-A2-0152','Y',31),(4537,86,'0153','1000-A2-0153','Y',31),(4538,86,'0154','1000-A2-0154','Y',31),(4539,86,'0155','1000-A2-0155','Y',31),(4540,86,'0156','1000-A2-0156','Y',31),(4541,86,'0157','1000-A2-0157','Y',31),(4542,86,'0158','1000-A2-0158','Y',31),(4543,86,'0159','1000-A2-0159','Y',31),(4544,86,'0160','1000-A2-0160','Y',31),(4545,86,'0161','1000-A2-0161','Y',31),(4546,86,'0162','1000-A2-0162','Y',31),(4547,86,'0163','1000-A2-0163','Y',31),(4548,86,'0164','1000-A2-0164','Y',31),(4549,86,'0165','1000-A2-0165','Y',31),(4550,86,'0166','1000-A2-0166','Y',31),(4551,86,'0167','1000-A2-0167','Y',31),(4552,86,'0168','1000-A2-0168','Y',31),(4553,86,'0169','1000-A2-0169','Y',31),(4554,86,'0170','1000-A2-0170','Y',31),(4555,86,'0171','1000-A2-0171','Y',31),(4556,86,'0172','1000-A2-0172','Y',31),(4557,86,'0173','1000-A2-0173','Y',31),(4558,86,'0174','1000-A2-0174','Y',31),(4559,86,'0175','1000-A2-0175','Y',31),(4560,86,'0176','1000-A2-0176','Y',31),(4561,86,'0177','1000-A2-0177','Y',31),(4562,86,'0178','1000-A2-0178','Y',31),(4563,86,'0179','1000-A2-0179','Y',31),(4564,86,'0180','1000-A2-0180','Y',31),(4565,86,'0181','1000-A2-0181','Y',31),(4566,86,'0182','1000-A2-0182','Y',31),(4567,86,'0183','1000-A2-0183','Y',31),(4568,86,'0184','1000-A2-0184','Y',31),(4569,86,'0185','1000-A2-0185','Y',31),(4570,86,'0186','1000-A2-0186','Y',31),(4571,86,'0187','1000-A2-0187','Y',31),(4572,86,'0188','1000-A2-0188','Y',31),(4573,86,'0189','1000-A2-0189','Y',31),(4574,86,'0190','1000-A2-0190','Y',31),(4575,86,'0191','1000-A2-0191','Y',31),(4576,86,'0192','1000-A2-0192','Y',31),(4577,86,'0193','1000-A2-0193','Y',31),(4578,86,'0194','1000-A2-0194','Y',31),(4579,86,'0195','1000-A2-0195','Y',31),(4580,86,'0196','1000-A2-0196','Y',31),(4581,86,'0197','1000-A2-0197','Y',31),(4582,86,'0198','1000-A2-0198','Y',31),(4583,86,'0199','1000-A2-0199','Y',31),(4584,86,'0200','1000-A2-0200','Y',31),(4585,87,'0001','1000-A3-0001','N',31),(4586,87,'0002','1000-A3-0002','N',31),(4587,87,'0003','1000-A3-0003','N',31),(4588,87,'0004','1000-A3-0004','N',31),(4589,87,'0005','1000-A3-0005','N',31),(4590,87,'0006','1000-A3-0006','N',31),(4591,87,'0007','1000-A3-0007','N',31),(4592,87,'0008','1000-A3-0008','N',31),(4593,87,'0009','1000-A3-0009','N',31),(4594,87,'0010','1000-A3-0010','N',31),(4595,87,'0011','1000-A3-0011','Y',31),(4596,87,'0012','1000-A3-0012','Y',31),(4597,87,'0013','1000-A3-0013','Y',31),(4598,87,'0014','1000-A3-0014','Y',31),(4599,87,'0015','1000-A3-0015','Y',31),(4600,87,'0016','1000-A3-0016','Y',31),(4601,87,'0017','1000-A3-0017','Y',31),(4602,87,'0018','1000-A3-0018','Y',31),(4603,87,'0019','1000-A3-0019','Y',31),(4604,87,'0020','1000-A3-0020','Y',31),(4605,87,'0021','1000-A3-0021','Y',31),(4606,87,'0022','1000-A3-0022','Y',31),(4607,87,'0023','1000-A3-0023','Y',31),(4608,87,'0024','1000-A3-0024','Y',31),(4609,87,'0025','1000-A3-0025','Y',31),(4610,87,'0026','1000-A3-0026','Y',31),(4611,87,'0027','1000-A3-0027','Y',31),(4612,87,'0028','1000-A3-0028','Y',31),(4613,87,'0029','1000-A3-0029','Y',31),(4614,87,'0030','1000-A3-0030','Y',31),(4615,87,'0031','1000-A3-0031','Y',31),(4616,87,'0032','1000-A3-0032','Y',31),(4617,87,'0033','1000-A3-0033','Y',31),(4618,87,'0034','1000-A3-0034','Y',31),(4619,87,'0035','1000-A3-0035','Y',31),(4620,87,'0036','1000-A3-0036','Y',31),(4621,87,'0037','1000-A3-0037','Y',31),(4622,87,'0038','1000-A3-0038','Y',31),(4623,87,'0039','1000-A3-0039','Y',31),(4624,87,'0040','1000-A3-0040','Y',31),(4625,87,'0041','1000-A3-0041','Y',31),(4626,87,'0042','1000-A3-0042','Y',31),(4627,87,'0043','1000-A3-0043','Y',31),(4628,87,'0044','1000-A3-0044','Y',31),(4629,87,'0045','1000-A3-0045','Y',31),(4630,87,'0046','1000-A3-0046','Y',31),(4631,87,'0047','1000-A3-0047','Y',31),(4632,87,'0048','1000-A3-0048','Y',31),(4633,87,'0049','1000-A3-0049','Y',31),(4634,87,'0050','1000-A3-0050','Y',31),(4635,87,'0051','1000-A3-0051','Y',31),(4636,87,'0052','1000-A3-0052','Y',31),(4637,87,'0053','1000-A3-0053','Y',31),(4638,87,'0054','1000-A3-0054','Y',31),(4639,87,'0055','1000-A3-0055','Y',31),(4640,87,'0056','1000-A3-0056','Y',31),(4641,87,'0057','1000-A3-0057','Y',31),(4642,87,'0058','1000-A3-0058','Y',31),(4643,87,'0059','1000-A3-0059','Y',31),(4644,87,'0060','1000-A3-0060','Y',31),(4645,87,'0061','1000-A3-0061','Y',31),(4646,87,'0062','1000-A3-0062','Y',31),(4647,87,'0063','1000-A3-0063','Y',31),(4648,87,'0064','1000-A3-0064','Y',31),(4649,87,'0065','1000-A3-0065','Y',31),(4650,87,'0066','1000-A3-0066','Y',31),(4651,87,'0067','1000-A3-0067','Y',31),(4652,87,'0068','1000-A3-0068','Y',31),(4653,87,'0069','1000-A3-0069','Y',31),(4654,87,'0070','1000-A3-0070','Y',31),(4655,87,'0071','1000-A3-0071','Y',31),(4656,87,'0072','1000-A3-0072','Y',31),(4657,87,'0073','1000-A3-0073','Y',31),(4658,87,'0074','1000-A3-0074','Y',31),(4659,87,'0075','1000-A3-0075','Y',31),(4660,87,'0076','1000-A3-0076','Y',31),(4661,87,'0077','1000-A3-0077','Y',31),(4662,87,'0078','1000-A3-0078','Y',31),(4663,87,'0079','1000-A3-0079','Y',31),(4664,87,'0080','1000-A3-0080','Y',31),(4665,87,'0081','1000-A3-0081','Y',31),(4666,87,'0082','1000-A3-0082','Y',31),(4667,87,'0083','1000-A3-0083','Y',31),(4668,87,'0084','1000-A3-0084','Y',31),(4669,87,'0085','1000-A3-0085','Y',31),(4670,87,'0086','1000-A3-0086','Y',31),(4671,87,'0087','1000-A3-0087','Y',31),(4672,87,'0088','1000-A3-0088','Y',31),(4673,87,'0089','1000-A3-0089','Y',31),(4674,87,'0090','1000-A3-0090','Y',31),(4675,87,'0091','1000-A3-0091','Y',31),(4676,87,'0092','1000-A3-0092','Y',31),(4677,87,'0093','1000-A3-0093','Y',31),(4678,87,'0094','1000-A3-0094','Y',31),(4679,87,'0095','1000-A3-0095','Y',31),(4680,87,'0096','1000-A3-0096','Y',31),(4681,87,'0097','1000-A3-0097','Y',31),(4682,87,'0098','1000-A3-0098','Y',31),(4683,87,'0099','1000-A3-0099','Y',31),(4684,87,'0100','1000-A3-0100','Y',31),(4685,87,'0101','1000-A3-0101','Y',31),(4686,87,'0102','1000-A3-0102','Y',31),(4687,87,'0103','1000-A3-0103','Y',31),(4688,87,'0104','1000-A3-0104','Y',31),(4689,87,'0105','1000-A3-0105','Y',31),(4690,87,'0106','1000-A3-0106','Y',31),(4691,87,'0107','1000-A3-0107','Y',31),(4692,87,'0108','1000-A3-0108','Y',31),(4693,87,'0109','1000-A3-0109','Y',31),(4694,87,'0110','1000-A3-0110','Y',31),(4695,87,'0111','1000-A3-0111','Y',31),(4696,87,'0112','1000-A3-0112','Y',31),(4697,87,'0113','1000-A3-0113','Y',31),(4698,87,'0114','1000-A3-0114','Y',31),(4699,87,'0115','1000-A3-0115','Y',31),(4700,87,'0116','1000-A3-0116','Y',31),(4701,87,'0117','1000-A3-0117','Y',31),(4702,87,'0118','1000-A3-0118','Y',31),(4703,87,'0119','1000-A3-0119','Y',31),(4704,87,'0120','1000-A3-0120','Y',31),(4705,87,'0121','1000-A3-0121','Y',31),(4706,87,'0122','1000-A3-0122','Y',31),(4707,87,'0123','1000-A3-0123','Y',31),(4708,87,'0124','1000-A3-0124','Y',31),(4709,87,'0125','1000-A3-0125','Y',31),(4710,87,'0126','1000-A3-0126','Y',31),(4711,87,'0127','1000-A3-0127','Y',31),(4712,87,'0128','1000-A3-0128','Y',31),(4713,87,'0129','1000-A3-0129','Y',31),(4714,87,'0130','1000-A3-0130','Y',31),(4715,87,'0131','1000-A3-0131','Y',31),(4716,87,'0132','1000-A3-0132','Y',31),(4717,87,'0133','1000-A3-0133','Y',31),(4718,87,'0134','1000-A3-0134','Y',31),(4719,87,'0135','1000-A3-0135','Y',31),(4720,87,'0136','1000-A3-0136','Y',31),(4721,87,'0137','1000-A3-0137','Y',31),(4722,87,'0138','1000-A3-0138','Y',31),(4723,87,'0139','1000-A3-0139','Y',31),(4724,87,'0140','1000-A3-0140','Y',31),(4725,87,'0141','1000-A3-0141','Y',31),(4726,87,'0142','1000-A3-0142','Y',31),(4727,87,'0143','1000-A3-0143','Y',31),(4728,87,'0144','1000-A3-0144','Y',31),(4729,87,'0145','1000-A3-0145','Y',31),(4730,87,'0146','1000-A3-0146','Y',31),(4731,87,'0147','1000-A3-0147','Y',31),(4732,87,'0148','1000-A3-0148','Y',31),(4733,87,'0149','1000-A3-0149','Y',31),(4734,87,'0150','1000-A3-0150','Y',31),(4735,87,'0151','1000-A3-0151','Y',31),(4736,87,'0152','1000-A3-0152','Y',31),(4737,87,'0153','1000-A3-0153','Y',31),(4738,87,'0154','1000-A3-0154','Y',31),(4739,87,'0155','1000-A3-0155','Y',31),(4740,87,'0156','1000-A3-0156','Y',31),(4741,87,'0157','1000-A3-0157','Y',31),(4742,87,'0158','1000-A3-0158','Y',31),(4743,87,'0159','1000-A3-0159','Y',31),(4744,87,'0160','1000-A3-0160','Y',31),(4745,87,'0161','1000-A3-0161','Y',31),(4746,87,'0162','1000-A3-0162','Y',31),(4747,87,'0163','1000-A3-0163','Y',31),(4748,87,'0164','1000-A3-0164','Y',31),(4749,87,'0165','1000-A3-0165','Y',31),(4750,87,'0166','1000-A3-0166','Y',31),(4751,87,'0167','1000-A3-0167','Y',31),(4752,87,'0168','1000-A3-0168','Y',31),(4753,87,'0169','1000-A3-0169','Y',31),(4754,87,'0170','1000-A3-0170','Y',31),(4755,87,'0171','1000-A3-0171','Y',31),(4756,87,'0172','1000-A3-0172','Y',31),(4757,87,'0173','1000-A3-0173','Y',31),(4758,87,'0174','1000-A3-0174','Y',31),(4759,87,'0175','1000-A3-0175','Y',31),(4760,87,'0176','1000-A3-0176','Y',31),(4761,87,'0177','1000-A3-0177','Y',31),(4762,87,'0178','1000-A3-0178','Y',31),(4763,87,'0179','1000-A3-0179','Y',31),(4764,87,'0180','1000-A3-0180','Y',31),(4765,87,'0181','1000-A3-0181','Y',31),(4766,87,'0182','1000-A3-0182','Y',31),(4767,87,'0183','1000-A3-0183','Y',31),(4768,87,'0184','1000-A3-0184','Y',31),(4769,87,'0185','1000-A3-0185','Y',31),(4770,87,'0186','1000-A3-0186','Y',31),(4771,87,'0187','1000-A3-0187','Y',31),(4772,87,'0188','1000-A3-0188','Y',31),(4773,87,'0189','1000-A3-0189','Y',31),(4774,87,'0190','1000-A3-0190','Y',31),(4775,87,'0191','1000-A3-0191','Y',31),(4776,87,'0192','1000-A3-0192','Y',31),(4777,87,'0193','1000-A3-0193','Y',31),(4778,87,'0194','1000-A3-0194','Y',31),(4779,87,'0195','1000-A3-0195','Y',31),(4780,87,'0196','1000-A3-0196','Y',31),(4781,87,'0197','1000-A3-0197','Y',31),(4782,87,'0198','1000-A3-0198','Y',31),(4783,87,'0199','1000-A3-0199','Y',31),(4784,87,'0200','1000-A3-0200','Y',31),(4785,88,'0001','1250-AA-0001','N',31),(4786,88,'0002','1250-AA-0002','N',31),(4787,88,'0003','1250-AA-0003','N',31),(4788,88,'0004','1250-AA-0004','N',31),(4789,88,'0005','1250-AA-0005','N',31),(4790,88,'0006','1250-AA-0006','N',31),(4791,88,'0007','1250-AA-0007','N',31),(4792,88,'0008','1250-AA-0008','N',31),(4793,88,'0009','1250-AA-0009','N',31),(4794,88,'0010','1250-AA-0010','N',31),(4795,88,'0011','1250-AA-0011','N',31),(4796,88,'0012','1250-AA-0012','N',31),(4797,88,'0013','1250-AA-0013','Y',31),(4798,88,'0014','1250-AA-0014','Y',31),(4799,88,'0015','1250-AA-0015','Y',31),(4800,88,'0016','1250-AA-0016','Y',31),(4801,88,'0017','1250-AA-0017','Y',31),(4802,88,'0018','1250-AA-0018','Y',31),(4803,88,'0019','1250-AA-0019','Y',31),(4804,88,'0020','1250-AA-0020','Y',31),(4805,88,'0021','1250-AA-0021','Y',31),(4806,88,'0022','1250-AA-0022','Y',31),(4807,88,'0023','1250-AA-0023','Y',31),(4808,88,'0024','1250-AA-0024','Y',31),(4809,88,'0025','1250-AA-0025','Y',31),(4810,88,'0026','1250-AA-0026','Y',31),(4811,88,'0027','1250-AA-0027','Y',31),(4812,88,'0028','1250-AA-0028','Y',31),(4813,88,'0029','1250-AA-0029','Y',31),(4814,88,'0030','1250-AA-0030','Y',31),(4815,88,'0031','1250-AA-0031','Y',31),(4816,88,'0032','1250-AA-0032','Y',31),(4817,88,'0033','1250-AA-0033','Y',31),(4818,88,'0034','1250-AA-0034','Y',31),(4819,88,'0035','1250-AA-0035','Y',31),(4820,88,'0036','1250-AA-0036','Y',31),(4821,88,'0037','1250-AA-0037','Y',31),(4822,88,'0038','1250-AA-0038','Y',31),(4823,88,'0039','1250-AA-0039','Y',31),(4824,88,'0040','1250-AA-0040','Y',31),(4825,88,'0041','1250-AA-0041','Y',31),(4826,88,'0042','1250-AA-0042','Y',31),(4827,88,'0043','1250-AA-0043','Y',31),(4828,88,'0044','1250-AA-0044','Y',31),(4829,88,'0045','1250-AA-0045','Y',31),(4830,88,'0046','1250-AA-0046','Y',31),(4831,88,'0047','1250-AA-0047','Y',31),(4832,88,'0048','1250-AA-0048','Y',31),(4833,88,'0049','1250-AA-0049','Y',31),(4834,88,'0050','1250-AA-0050','Y',31),(4835,88,'0051','1250-AA-0051','Y',31),(4836,88,'0052','1250-AA-0052','Y',31),(4837,88,'0053','1250-AA-0053','Y',31),(4838,88,'0054','1250-AA-0054','Y',31),(4839,88,'0055','1250-AA-0055','Y',31),(4840,88,'0056','1250-AA-0056','Y',31),(4841,88,'0057','1250-AA-0057','Y',31),(4842,88,'0058','1250-AA-0058','Y',31),(4843,88,'0059','1250-AA-0059','Y',31),(4844,88,'0060','1250-AA-0060','Y',31),(4845,88,'0061','1250-AA-0061','Y',31),(4846,88,'0062','1250-AA-0062','Y',31),(4847,88,'0063','1250-AA-0063','Y',31),(4848,88,'0064','1250-AA-0064','Y',31),(4849,88,'0065','1250-AA-0065','Y',31),(4850,88,'0066','1250-AA-0066','Y',31),(4851,88,'0067','1250-AA-0067','Y',31),(4852,88,'0068','1250-AA-0068','Y',31),(4853,88,'0069','1250-AA-0069','Y',31),(4854,88,'0070','1250-AA-0070','Y',31),(4855,88,'0071','1250-AA-0071','Y',31),(4856,88,'0072','1250-AA-0072','Y',31),(4857,88,'0073','1250-AA-0073','Y',31),(4858,88,'0074','1250-AA-0074','Y',31),(4859,88,'0075','1250-AA-0075','Y',31),(4860,88,'0076','1250-AA-0076','Y',31),(4861,88,'0077','1250-AA-0077','Y',31),(4862,88,'0078','1250-AA-0078','Y',31),(4863,88,'0079','1250-AA-0079','Y',31),(4864,88,'0080','1250-AA-0080','Y',31),(4865,88,'0081','1250-AA-0081','Y',31),(4866,88,'0082','1250-AA-0082','Y',31),(4867,88,'0083','1250-AA-0083','Y',31),(4868,88,'0084','1250-AA-0084','Y',31),(4869,88,'0085','1250-AA-0085','Y',31),(4870,88,'0086','1250-AA-0086','Y',31),(4871,88,'0087','1250-AA-0087','Y',31),(4872,88,'0088','1250-AA-0088','Y',31),(4873,88,'0089','1250-AA-0089','Y',31),(4874,88,'0090','1250-AA-0090','Y',31),(4875,88,'0091','1250-AA-0091','Y',31),(4876,88,'0092','1250-AA-0092','Y',31),(4877,88,'0093','1250-AA-0093','Y',31),(4878,88,'0094','1250-AA-0094','Y',31),(4879,88,'0095','1250-AA-0095','Y',31),(4880,88,'0096','1250-AA-0096','Y',31),(4881,88,'0097','1250-AA-0097','Y',31),(4882,88,'0098','1250-AA-0098','Y',31),(4883,88,'0099','1250-AA-0099','Y',31),(4884,88,'0100','1250-AA-0100','Y',31),(4885,88,'0101','1250-AA-0101','Y',31),(4886,88,'0102','1250-AA-0102','Y',31),(4887,88,'0103','1250-AA-0103','Y',31),(4888,88,'0104','1250-AA-0104','Y',31),(4889,88,'0105','1250-AA-0105','Y',31),(4890,88,'0106','1250-AA-0106','Y',31),(4891,88,'0107','1250-AA-0107','Y',31),(4892,88,'0108','1250-AA-0108','Y',31),(4893,88,'0109','1250-AA-0109','Y',31),(4894,88,'0110','1250-AA-0110','Y',31),(4895,88,'0111','1250-AA-0111','Y',31),(4896,88,'0112','1250-AA-0112','Y',31),(4897,88,'0113','1250-AA-0113','Y',31),(4898,88,'0114','1250-AA-0114','Y',31),(4899,88,'0115','1250-AA-0115','Y',31),(4900,88,'0116','1250-AA-0116','Y',31),(4901,88,'0117','1250-AA-0117','Y',31),(4902,88,'0118','1250-AA-0118','Y',31),(4903,88,'0119','1250-AA-0119','Y',31),(4904,88,'0120','1250-AA-0120','Y',31),(4905,88,'0121','1250-AA-0121','Y',31),(4906,88,'0122','1250-AA-0122','Y',31),(4907,88,'0123','1250-AA-0123','Y',31),(4908,88,'0124','1250-AA-0124','Y',31),(4909,88,'0125','1250-AA-0125','Y',31),(4910,88,'0126','1250-AA-0126','Y',31),(4911,88,'0127','1250-AA-0127','Y',31),(4912,88,'0128','1250-AA-0128','Y',31),(4913,88,'0129','1250-AA-0129','Y',31),(4914,88,'0130','1250-AA-0130','Y',31),(4915,88,'0131','1250-AA-0131','Y',31),(4916,88,'0132','1250-AA-0132','Y',31),(4917,88,'0133','1250-AA-0133','Y',31),(4918,88,'0134','1250-AA-0134','Y',31),(4919,88,'0135','1250-AA-0135','Y',31),(4920,88,'0136','1250-AA-0136','Y',31),(4921,88,'0137','1250-AA-0137','Y',31),(4922,88,'0138','1250-AA-0138','Y',31),(4923,88,'0139','1250-AA-0139','Y',31),(4924,88,'0140','1250-AA-0140','Y',31),(4925,88,'0141','1250-AA-0141','Y',31),(4926,88,'0142','1250-AA-0142','Y',31),(4927,88,'0143','1250-AA-0143','Y',31),(4928,88,'0144','1250-AA-0144','Y',31),(4929,88,'0145','1250-AA-0145','Y',31),(4930,88,'0146','1250-AA-0146','Y',31),(4931,88,'0147','1250-AA-0147','Y',31),(4932,88,'0148','1250-AA-0148','Y',31),(4933,88,'0149','1250-AA-0149','Y',31),(4934,88,'0150','1250-AA-0150','Y',31),(4935,88,'0151','1250-AA-0151','Y',31),(4936,88,'0152','1250-AA-0152','Y',31),(4937,88,'0153','1250-AA-0153','Y',31),(4938,88,'0154','1250-AA-0154','Y',31),(4939,88,'0155','1250-AA-0155','Y',31),(4940,88,'0156','1250-AA-0156','Y',31),(4941,88,'0157','1250-AA-0157','Y',31),(4942,88,'0158','1250-AA-0158','Y',31),(4943,88,'0159','1250-AA-0159','Y',31),(4944,88,'0160','1250-AA-0160','Y',31),(4945,88,'0161','1250-AA-0161','Y',31),(4946,88,'0162','1250-AA-0162','Y',31),(4947,88,'0163','1250-AA-0163','Y',31),(4948,88,'0164','1250-AA-0164','Y',31),(4949,88,'0165','1250-AA-0165','Y',31),(4950,88,'0166','1250-AA-0166','Y',31),(4951,88,'0167','1250-AA-0167','Y',31),(4952,88,'0168','1250-AA-0168','Y',31),(4953,88,'0169','1250-AA-0169','Y',31),(4954,88,'0170','1250-AA-0170','Y',31),(4955,88,'0171','1250-AA-0171','Y',31),(4956,88,'0172','1250-AA-0172','Y',31),(4957,88,'0173','1250-AA-0173','Y',31),(4958,88,'0174','1250-AA-0174','Y',31),(4959,88,'0175','1250-AA-0175','Y',31),(4960,88,'0176','1250-AA-0176','Y',31),(4961,88,'0177','1250-AA-0177','Y',31),(4962,88,'0178','1250-AA-0178','Y',31),(4963,88,'0179','1250-AA-0179','Y',31),(4964,88,'0180','1250-AA-0180','Y',31),(4965,88,'0181','1250-AA-0181','Y',31),(4966,88,'0182','1250-AA-0182','Y',31),(4967,88,'0183','1250-AA-0183','Y',31),(4968,88,'0184','1250-AA-0184','Y',31),(4969,88,'0185','1250-AA-0185','Y',31),(4970,88,'0186','1250-AA-0186','Y',31),(4971,88,'0187','1250-AA-0187','Y',31),(4972,88,'0188','1250-AA-0188','Y',31),(4973,88,'0189','1250-AA-0189','Y',31),(4974,88,'0190','1250-AA-0190','Y',31),(4975,88,'0191','1250-AA-0191','Y',31),(4976,88,'0192','1250-AA-0192','Y',31),(4977,88,'0193','1250-AA-0193','Y',31),(4978,88,'0194','1250-AA-0194','Y',31),(4979,88,'0195','1250-AA-0195','Y',31),(4980,88,'0196','1250-AA-0196','Y',31),(4981,88,'0197','1250-AA-0197','Y',31),(4982,88,'0198','1250-AA-0198','Y',31),(4983,88,'0199','1250-AA-0199','Y',31),(4984,88,'0200','1250-AA-0200','Y',31),(4985,89,'0001','1250-BB-0001','N',31),(4986,89,'0002','1250-BB-0002','N',31),(4987,89,'0003','1250-BB-0003','N',31),(4988,89,'0004','1250-BB-0004','N',31),(4989,89,'0005','1250-BB-0005','N',31),(4990,89,'0006','1250-BB-0006','N',31),(4991,89,'0007','1250-BB-0007','N',31),(4992,89,'0008','1250-BB-0008','N',31),(4993,89,'0009','1250-BB-0009','N',31),(4994,89,'0010','1250-BB-0010','N',31),(4995,89,'0011','1250-BB-0011','N',31),(4996,89,'0012','1250-BB-0012','Y',31),(4997,89,'0013','1250-BB-0013','Y',31),(4998,89,'0014','1250-BB-0014','Y',31),(4999,89,'0015','1250-BB-0015','Y',31),(5000,89,'0016','1250-BB-0016','Y',31),(5001,89,'0017','1250-BB-0017','Y',31),(5002,89,'0018','1250-BB-0018','Y',31),(5003,89,'0019','1250-BB-0019','Y',31),(5004,89,'0020','1250-BB-0020','Y',31),(5005,89,'0021','1250-BB-0021','Y',31),(5006,89,'0022','1250-BB-0022','Y',31),(5007,89,'0023','1250-BB-0023','Y',31),(5008,89,'0024','1250-BB-0024','Y',31),(5009,89,'0025','1250-BB-0025','Y',31),(5010,89,'0026','1250-BB-0026','Y',31),(5011,89,'0027','1250-BB-0027','Y',31),(5012,89,'0028','1250-BB-0028','Y',31),(5013,89,'0029','1250-BB-0029','Y',31),(5014,89,'0030','1250-BB-0030','Y',31),(5015,89,'0031','1250-BB-0031','Y',31),(5016,89,'0032','1250-BB-0032','Y',31),(5017,89,'0033','1250-BB-0033','Y',31),(5018,89,'0034','1250-BB-0034','Y',31),(5019,89,'0035','1250-BB-0035','Y',31),(5020,89,'0036','1250-BB-0036','Y',31),(5021,89,'0037','1250-BB-0037','Y',31),(5022,89,'0038','1250-BB-0038','Y',31),(5023,89,'0039','1250-BB-0039','Y',31),(5024,89,'0040','1250-BB-0040','Y',31),(5025,89,'0041','1250-BB-0041','Y',31),(5026,89,'0042','1250-BB-0042','Y',31),(5027,89,'0043','1250-BB-0043','Y',31),(5028,89,'0044','1250-BB-0044','Y',31),(5029,89,'0045','1250-BB-0045','Y',31),(5030,89,'0046','1250-BB-0046','Y',31),(5031,89,'0047','1250-BB-0047','Y',31),(5032,89,'0048','1250-BB-0048','Y',31),(5033,89,'0049','1250-BB-0049','Y',31),(5034,89,'0050','1250-BB-0050','Y',31),(5035,89,'0051','1250-BB-0051','Y',31),(5036,89,'0052','1250-BB-0052','Y',31),(5037,89,'0053','1250-BB-0053','Y',31),(5038,89,'0054','1250-BB-0054','Y',31),(5039,89,'0055','1250-BB-0055','Y',31),(5040,89,'0056','1250-BB-0056','Y',31),(5041,89,'0057','1250-BB-0057','Y',31),(5042,89,'0058','1250-BB-0058','Y',31),(5043,89,'0059','1250-BB-0059','Y',31),(5044,89,'0060','1250-BB-0060','Y',31),(5045,89,'0061','1250-BB-0061','Y',31),(5046,89,'0062','1250-BB-0062','Y',31),(5047,89,'0063','1250-BB-0063','Y',31),(5048,89,'0064','1250-BB-0064','Y',31),(5049,89,'0065','1250-BB-0065','Y',31),(5050,89,'0066','1250-BB-0066','Y',31),(5051,89,'0067','1250-BB-0067','Y',31),(5052,89,'0068','1250-BB-0068','Y',31),(5053,89,'0069','1250-BB-0069','Y',31),(5054,89,'0070','1250-BB-0070','Y',31),(5055,89,'0071','1250-BB-0071','Y',31),(5056,89,'0072','1250-BB-0072','Y',31),(5057,89,'0073','1250-BB-0073','Y',31),(5058,89,'0074','1250-BB-0074','Y',31),(5059,89,'0075','1250-BB-0075','Y',31),(5060,89,'0076','1250-BB-0076','Y',31),(5061,89,'0077','1250-BB-0077','Y',31),(5062,89,'0078','1250-BB-0078','Y',31),(5063,89,'0079','1250-BB-0079','Y',31),(5064,89,'0080','1250-BB-0080','Y',31),(5065,89,'0081','1250-BB-0081','Y',31),(5066,89,'0082','1250-BB-0082','Y',31),(5067,89,'0083','1250-BB-0083','Y',31),(5068,89,'0084','1250-BB-0084','Y',31),(5069,89,'0085','1250-BB-0085','Y',31),(5070,89,'0086','1250-BB-0086','Y',31),(5071,89,'0087','1250-BB-0087','Y',31),(5072,89,'0088','1250-BB-0088','Y',31),(5073,89,'0089','1250-BB-0089','Y',31),(5074,89,'0090','1250-BB-0090','Y',31),(5075,89,'0091','1250-BB-0091','Y',31),(5076,89,'0092','1250-BB-0092','Y',31),(5077,89,'0093','1250-BB-0093','Y',31),(5078,89,'0094','1250-BB-0094','Y',31),(5079,89,'0095','1250-BB-0095','Y',31),(5080,89,'0096','1250-BB-0096','Y',31),(5081,89,'0097','1250-BB-0097','Y',31),(5082,89,'0098','1250-BB-0098','Y',31),(5083,89,'0099','1250-BB-0099','Y',31),(5084,89,'0100','1250-BB-0100','Y',31),(5085,89,'0101','1250-BB-0101','Y',31),(5086,89,'0102','1250-BB-0102','Y',31),(5087,89,'0103','1250-BB-0103','Y',31),(5088,89,'0104','1250-BB-0104','Y',31),(5089,89,'0105','1250-BB-0105','Y',31),(5090,89,'0106','1250-BB-0106','Y',31),(5091,89,'0107','1250-BB-0107','Y',31),(5092,89,'0108','1250-BB-0108','Y',31),(5093,89,'0109','1250-BB-0109','Y',31),(5094,89,'0110','1250-BB-0110','Y',31),(5095,89,'0111','1250-BB-0111','Y',31),(5096,89,'0112','1250-BB-0112','Y',31),(5097,89,'0113','1250-BB-0113','Y',31),(5098,89,'0114','1250-BB-0114','Y',31),(5099,89,'0115','1250-BB-0115','Y',31),(5100,89,'0116','1250-BB-0116','Y',31),(5101,89,'0117','1250-BB-0117','Y',31),(5102,89,'0118','1250-BB-0118','Y',31),(5103,89,'0119','1250-BB-0119','Y',31),(5104,89,'0120','1250-BB-0120','Y',31),(5105,89,'0121','1250-BB-0121','Y',31),(5106,89,'0122','1250-BB-0122','Y',31),(5107,89,'0123','1250-BB-0123','Y',31),(5108,89,'0124','1250-BB-0124','Y',31),(5109,89,'0125','1250-BB-0125','Y',31),(5110,89,'0126','1250-BB-0126','Y',31),(5111,89,'0127','1250-BB-0127','Y',31),(5112,89,'0128','1250-BB-0128','Y',31),(5113,89,'0129','1250-BB-0129','Y',31),(5114,89,'0130','1250-BB-0130','Y',31),(5115,89,'0131','1250-BB-0131','Y',31),(5116,89,'0132','1250-BB-0132','Y',31),(5117,89,'0133','1250-BB-0133','Y',31),(5118,89,'0134','1250-BB-0134','Y',31),(5119,89,'0135','1250-BB-0135','Y',31),(5120,89,'0136','1250-BB-0136','Y',31),(5121,89,'0137','1250-BB-0137','Y',31),(5122,89,'0138','1250-BB-0138','Y',31),(5123,89,'0139','1250-BB-0139','Y',31),(5124,89,'0140','1250-BB-0140','Y',31),(5125,89,'0141','1250-BB-0141','Y',31),(5126,89,'0142','1250-BB-0142','Y',31),(5127,89,'0143','1250-BB-0143','Y',31),(5128,89,'0144','1250-BB-0144','Y',31),(5129,89,'0145','1250-BB-0145','Y',31),(5130,89,'0146','1250-BB-0146','Y',31),(5131,89,'0147','1250-BB-0147','Y',31),(5132,89,'0148','1250-BB-0148','Y',31),(5133,89,'0149','1250-BB-0149','Y',31),(5134,89,'0150','1250-BB-0150','Y',31),(5135,89,'0151','1250-BB-0151','Y',31),(5136,89,'0152','1250-BB-0152','Y',31),(5137,89,'0153','1250-BB-0153','Y',31),(5138,89,'0154','1250-BB-0154','Y',31),(5139,89,'0155','1250-BB-0155','Y',31),(5140,89,'0156','1250-BB-0156','Y',31),(5141,89,'0157','1250-BB-0157','Y',31),(5142,89,'0158','1250-BB-0158','Y',31),(5143,89,'0159','1250-BB-0159','Y',31),(5144,89,'0160','1250-BB-0160','Y',31),(5145,89,'0161','1250-BB-0161','Y',31),(5146,89,'0162','1250-BB-0162','Y',31),(5147,89,'0163','1250-BB-0163','Y',31),(5148,89,'0164','1250-BB-0164','Y',31),(5149,89,'0165','1250-BB-0165','Y',31),(5150,89,'0166','1250-BB-0166','Y',31),(5151,89,'0167','1250-BB-0167','Y',31),(5152,89,'0168','1250-BB-0168','Y',31),(5153,89,'0169','1250-BB-0169','Y',31),(5154,89,'0170','1250-BB-0170','Y',31),(5155,89,'0171','1250-BB-0171','Y',31),(5156,89,'0172','1250-BB-0172','Y',31),(5157,89,'0173','1250-BB-0173','Y',31),(5158,89,'0174','1250-BB-0174','Y',31),(5159,89,'0175','1250-BB-0175','Y',31),(5160,89,'0176','1250-BB-0176','Y',31),(5161,89,'0177','1250-BB-0177','Y',31),(5162,89,'0178','1250-BB-0178','Y',31),(5163,89,'0179','1250-BB-0179','Y',31),(5164,89,'0180','1250-BB-0180','Y',31),(5165,89,'0181','1250-BB-0181','Y',31),(5166,89,'0182','1250-BB-0182','Y',31),(5167,89,'0183','1250-BB-0183','Y',31),(5168,89,'0184','1250-BB-0184','Y',31),(5169,89,'0185','1250-BB-0185','Y',31),(5170,89,'0186','1250-BB-0186','Y',31),(5171,89,'0187','1250-BB-0187','Y',31),(5172,89,'0188','1250-BB-0188','Y',31),(5173,89,'0189','1250-BB-0189','Y',31),(5174,89,'0190','1250-BB-0190','Y',31),(5175,89,'0191','1250-BB-0191','Y',31),(5176,89,'0192','1250-BB-0192','Y',31),(5177,89,'0193','1250-BB-0193','Y',31),(5178,89,'0194','1250-BB-0194','Y',31),(5179,89,'0195','1250-BB-0195','Y',31),(5180,89,'0196','1250-BB-0196','Y',31),(5181,89,'0197','1250-BB-0197','Y',31),(5182,89,'0198','1250-BB-0198','Y',31),(5183,89,'0199','1250-BB-0199','Y',31),(5184,89,'0200','1250-BB-0200','Y',31),(5185,90,'0001','1250-AA1-0001','N',31),(5186,90,'0002','1250-AA1-0002','N',31),(5187,90,'0003','1250-AA1-0003','N',31),(5188,90,'0004','1250-AA1-0004','N',31),(5189,90,'0005','1250-AA1-0005','N',31),(5190,90,'0006','1250-AA1-0006','N',31),(5191,90,'0007','1250-AA1-0007','Y',31),(5192,90,'0008','1250-AA1-0008','Y',31),(5193,90,'0009','1250-AA1-0009','Y',31),(5194,90,'0010','1250-AA1-0010','Y',31),(5195,90,'0011','1250-AA1-0011','Y',31),(5196,90,'0012','1250-AA1-0012','Y',31),(5197,90,'0013','1250-AA1-0013','Y',31),(5198,90,'0014','1250-AA1-0014','Y',31),(5199,90,'0015','1250-AA1-0015','Y',31),(5200,90,'0016','1250-AA1-0016','Y',31),(5201,90,'0017','1250-AA1-0017','Y',31),(5202,90,'0018','1250-AA1-0018','Y',31),(5203,90,'0019','1250-AA1-0019','Y',31),(5204,90,'0020','1250-AA1-0020','Y',31),(5205,90,'0021','1250-AA1-0021','Y',31),(5206,90,'0022','1250-AA1-0022','Y',31),(5207,90,'0023','1250-AA1-0023','Y',31),(5208,90,'0024','1250-AA1-0024','Y',31),(5209,90,'0025','1250-AA1-0025','Y',31),(5210,90,'0026','1250-AA1-0026','Y',31),(5211,90,'0027','1250-AA1-0027','Y',31),(5212,90,'0028','1250-AA1-0028','Y',31),(5213,90,'0029','1250-AA1-0029','Y',31),(5214,90,'0030','1250-AA1-0030','Y',31),(5215,90,'0031','1250-AA1-0031','Y',31),(5216,90,'0032','1250-AA1-0032','Y',31),(5217,90,'0033','1250-AA1-0033','Y',31),(5218,90,'0034','1250-AA1-0034','Y',31),(5219,90,'0035','1250-AA1-0035','Y',31),(5220,90,'0036','1250-AA1-0036','Y',31),(5221,90,'0037','1250-AA1-0037','Y',31),(5222,90,'0038','1250-AA1-0038','Y',31),(5223,90,'0039','1250-AA1-0039','Y',31),(5224,90,'0040','1250-AA1-0040','Y',31),(5225,90,'0041','1250-AA1-0041','Y',31),(5226,90,'0042','1250-AA1-0042','Y',31),(5227,90,'0043','1250-AA1-0043','Y',31),(5228,90,'0044','1250-AA1-0044','Y',31),(5229,90,'0045','1250-AA1-0045','Y',31),(5230,90,'0046','1250-AA1-0046','Y',31),(5231,90,'0047','1250-AA1-0047','Y',31),(5232,90,'0048','1250-AA1-0048','Y',31),(5233,90,'0049','1250-AA1-0049','Y',31),(5234,90,'0050','1250-AA1-0050','Y',31),(5235,90,'0051','1250-AA1-0051','Y',31),(5236,90,'0052','1250-AA1-0052','Y',31),(5237,90,'0053','1250-AA1-0053','Y',31),(5238,90,'0054','1250-AA1-0054','Y',31),(5239,90,'0055','1250-AA1-0055','Y',31),(5240,90,'0056','1250-AA1-0056','Y',31),(5241,90,'0057','1250-AA1-0057','Y',31),(5242,90,'0058','1250-AA1-0058','Y',31),(5243,90,'0059','1250-AA1-0059','Y',31),(5244,90,'0060','1250-AA1-0060','Y',31),(5245,90,'0061','1250-AA1-0061','Y',31),(5246,90,'0062','1250-AA1-0062','Y',31),(5247,90,'0063','1250-AA1-0063','Y',31),(5248,90,'0064','1250-AA1-0064','Y',31),(5249,90,'0065','1250-AA1-0065','Y',31),(5250,90,'0066','1250-AA1-0066','Y',31),(5251,90,'0067','1250-AA1-0067','Y',31),(5252,90,'0068','1250-AA1-0068','Y',31),(5253,90,'0069','1250-AA1-0069','Y',31),(5254,90,'0070','1250-AA1-0070','Y',31),(5255,90,'0071','1250-AA1-0071','Y',31),(5256,90,'0072','1250-AA1-0072','Y',31),(5257,90,'0073','1250-AA1-0073','Y',31),(5258,90,'0074','1250-AA1-0074','Y',31),(5259,90,'0075','1250-AA1-0075','Y',31),(5260,90,'0076','1250-AA1-0076','Y',31),(5261,90,'0077','1250-AA1-0077','Y',31),(5262,90,'0078','1250-AA1-0078','Y',31),(5263,90,'0079','1250-AA1-0079','Y',31),(5264,90,'0080','1250-AA1-0080','Y',31),(5265,90,'0081','1250-AA1-0081','Y',31),(5266,90,'0082','1250-AA1-0082','Y',31),(5267,90,'0083','1250-AA1-0083','Y',31),(5268,90,'0084','1250-AA1-0084','Y',31),(5269,90,'0085','1250-AA1-0085','Y',31),(5270,90,'0086','1250-AA1-0086','Y',31),(5271,90,'0087','1250-AA1-0087','Y',31),(5272,90,'0088','1250-AA1-0088','Y',31),(5273,90,'0089','1250-AA1-0089','Y',31),(5274,90,'0090','1250-AA1-0090','Y',31),(5275,90,'0091','1250-AA1-0091','Y',31),(5276,90,'0092','1250-AA1-0092','Y',31),(5277,90,'0093','1250-AA1-0093','Y',31),(5278,90,'0094','1250-AA1-0094','Y',31),(5279,90,'0095','1250-AA1-0095','Y',31),(5280,90,'0096','1250-AA1-0096','Y',31),(5281,90,'0097','1250-AA1-0097','Y',31),(5282,90,'0098','1250-AA1-0098','Y',31),(5283,90,'0099','1250-AA1-0099','Y',31),(5284,90,'0100','1250-AA1-0100','Y',31),(5285,90,'0101','1250-AA1-0101','Y',31),(5286,90,'0102','1250-AA1-0102','Y',31),(5287,90,'0103','1250-AA1-0103','Y',31),(5288,90,'0104','1250-AA1-0104','Y',31),(5289,90,'0105','1250-AA1-0105','Y',31),(5290,90,'0106','1250-AA1-0106','Y',31),(5291,90,'0107','1250-AA1-0107','Y',31),(5292,90,'0108','1250-AA1-0108','Y',31),(5293,90,'0109','1250-AA1-0109','Y',31),(5294,90,'0110','1250-AA1-0110','Y',31),(5295,90,'0111','1250-AA1-0111','Y',31),(5296,90,'0112','1250-AA1-0112','Y',31),(5297,90,'0113','1250-AA1-0113','Y',31),(5298,90,'0114','1250-AA1-0114','Y',31),(5299,90,'0115','1250-AA1-0115','Y',31),(5300,90,'0116','1250-AA1-0116','Y',31),(5301,90,'0117','1250-AA1-0117','Y',31),(5302,90,'0118','1250-AA1-0118','Y',31),(5303,90,'0119','1250-AA1-0119','Y',31),(5304,90,'0120','1250-AA1-0120','Y',31),(5305,90,'0121','1250-AA1-0121','Y',31),(5306,90,'0122','1250-AA1-0122','Y',31),(5307,90,'0123','1250-AA1-0123','Y',31),(5308,90,'0124','1250-AA1-0124','Y',31),(5309,90,'0125','1250-AA1-0125','Y',31),(5310,90,'0126','1250-AA1-0126','Y',31),(5311,90,'0127','1250-AA1-0127','Y',31),(5312,90,'0128','1250-AA1-0128','Y',31),(5313,90,'0129','1250-AA1-0129','Y',31),(5314,90,'0130','1250-AA1-0130','Y',31),(5315,90,'0131','1250-AA1-0131','Y',31),(5316,90,'0132','1250-AA1-0132','Y',31),(5317,90,'0133','1250-AA1-0133','Y',31),(5318,90,'0134','1250-AA1-0134','Y',31),(5319,90,'0135','1250-AA1-0135','Y',31),(5320,90,'0136','1250-AA1-0136','Y',31),(5321,90,'0137','1250-AA1-0137','Y',31),(5322,90,'0138','1250-AA1-0138','Y',31),(5323,90,'0139','1250-AA1-0139','Y',31),(5324,90,'0140','1250-AA1-0140','Y',31),(5325,90,'0141','1250-AA1-0141','Y',31),(5326,90,'0142','1250-AA1-0142','Y',31),(5327,90,'0143','1250-AA1-0143','Y',31),(5328,90,'0144','1250-AA1-0144','Y',31),(5329,90,'0145','1250-AA1-0145','Y',31),(5330,90,'0146','1250-AA1-0146','Y',31),(5331,90,'0147','1250-AA1-0147','Y',31),(5332,90,'0148','1250-AA1-0148','Y',31),(5333,90,'0149','1250-AA1-0149','Y',31),(5334,90,'0150','1250-AA1-0150','Y',31),(5335,90,'0151','1250-AA1-0151','Y',31),(5336,90,'0152','1250-AA1-0152','Y',31),(5337,90,'0153','1250-AA1-0153','Y',31),(5338,90,'0154','1250-AA1-0154','Y',31),(5339,90,'0155','1250-AA1-0155','Y',31),(5340,90,'0156','1250-AA1-0156','Y',31),(5341,90,'0157','1250-AA1-0157','Y',31),(5342,90,'0158','1250-AA1-0158','Y',31),(5343,90,'0159','1250-AA1-0159','Y',31),(5344,90,'0160','1250-AA1-0160','Y',31),(5345,90,'0161','1250-AA1-0161','Y',31),(5346,90,'0162','1250-AA1-0162','Y',31),(5347,90,'0163','1250-AA1-0163','Y',31),(5348,90,'0164','1250-AA1-0164','Y',31),(5349,90,'0165','1250-AA1-0165','Y',31),(5350,90,'0166','1250-AA1-0166','Y',31),(5351,90,'0167','1250-AA1-0167','Y',31),(5352,90,'0168','1250-AA1-0168','Y',31),(5353,90,'0169','1250-AA1-0169','Y',31),(5354,90,'0170','1250-AA1-0170','Y',31),(5355,90,'0171','1250-AA1-0171','Y',31),(5356,90,'0172','1250-AA1-0172','Y',31),(5357,90,'0173','1250-AA1-0173','Y',31),(5358,90,'0174','1250-AA1-0174','Y',31),(5359,90,'0175','1250-AA1-0175','Y',31),(5360,90,'0176','1250-AA1-0176','Y',31),(5361,90,'0177','1250-AA1-0177','Y',31),(5362,90,'0178','1250-AA1-0178','Y',31),(5363,90,'0179','1250-AA1-0179','Y',31),(5364,90,'0180','1250-AA1-0180','Y',31),(5365,90,'0181','1250-AA1-0181','Y',31),(5366,90,'0182','1250-AA1-0182','Y',31),(5367,90,'0183','1250-AA1-0183','Y',31),(5368,90,'0184','1250-AA1-0184','Y',31),(5369,90,'0185','1250-AA1-0185','Y',31),(5370,90,'0186','1250-AA1-0186','Y',31),(5371,90,'0187','1250-AA1-0187','Y',31),(5372,90,'0188','1250-AA1-0188','Y',31),(5373,90,'0189','1250-AA1-0189','Y',31),(5374,90,'0190','1250-AA1-0190','Y',31),(5375,90,'0191','1250-AA1-0191','Y',31),(5376,90,'0192','1250-AA1-0192','Y',31),(5377,90,'0193','1250-AA1-0193','Y',31),(5378,90,'0194','1250-AA1-0194','Y',31),(5379,90,'0195','1250-AA1-0195','Y',31),(5380,90,'0196','1250-AA1-0196','Y',31),(5381,90,'0197','1250-AA1-0197','Y',31),(5382,90,'0198','1250-AA1-0198','Y',31),(5383,90,'0199','1250-AA1-0199','Y',31),(5384,90,'0200','1250-AA1-0200','Y',31);
/*!40000 ALTER TABLE `smplateslot` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pflex`.`tri_smplateslot_updshelf` AFTER UPDATE ON pflex.smplateslot FOR EACH ROW
BEGIN
  DECLARE cnt INT;
  
  select count(*) into cnt from smplateslot 
  where ps_sfid = new.ps_sfid
  and ps_available = 'Y';
  
  if cnt = 0 then
    update smshelfsetting
    set sf_freeslot = 'N'
    where sf_id = new.ps_sfid;
  else 
    update smshelfsetting
    set sf_freeslot = 'Y'
    where sf_id = new.ps_sfid;
  end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smshelfgroup`
--

LOCK TABLES `smshelfgroup` WRITE;
/*!40000 ALTER TABLE `smshelfgroup` DISABLE KEYS */;
INSERT INTO `smshelfgroup` VALUES (70,'1000',31,10),(71,'1250',31,20),(72,'1650',31,30);
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
  `sf_freeslot` varchar(20) DEFAULT 'Y',
  `sf_seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`sf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smshelfsetting`
--

LOCK TABLES `smshelfsetting` WRITE;
/*!40000 ALTER TABLE `smshelfsetting` DISABLE KEYS */;
INSERT INTO `smshelfsetting` VALUES (85,70,'A1','1000-A1',200,31,'Y',10),(86,70,'A2','1000-A2',200,31,'Y',20),(87,70,'A3','1000-A3',200,31,'Y',30),(88,71,'AA','1250-AA',200,31,'Y',30),(89,71,'BB','1250-BB',200,31,'Y',30),(90,72,'AA1','1250-AA1',200,31,'Y',30);
/*!40000 ALTER TABLE `smshelfsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testtimezone`
--

DROP TABLE IF EXISTS `testtimezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testtimezone` (
  `tz_id` int(11) NOT NULL AUTO_INCREMENT,
  `tz_currenttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tz_inserttime` datetime DEFAULT NULL,
  PRIMARY KEY (`tz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testtimezone`
--

LOCK TABLES `testtimezone` WRITE;
/*!40000 ALTER TABLE `testtimezone` DISABLE KEYS */;
INSERT INTO `testtimezone` VALUES (1,'2014-01-12 14:18:43','2014-01-12 09:18:43'),(2,'2014-01-12 14:18:43','2014-01-12 09:18:43'),(3,'2014-01-12 14:18:43','2014-01-12 09:18:43'),(4,'2014-01-12 14:18:43','2014-01-12 09:18:43');
/*!40000 ALTER TABLE `testtimezone` ENABLE KEYS */;
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
/*!50003 DROP FUNCTION IF EXISTS `get_random_integer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_random_integer`(start int,end int) RETURNS int(11)
BEGIN

   declare randint int default 0;



   select FLOOR(start + (RAND() * end)) into randint;



   return randint;

  

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

   delete from fcorg
   where org_code not in ('demo1','demo2','GTQCDZNN');
   
   delete from fcuser
   where usr_userid not in ('admin','pndadmin','DEMO1ADMIN','DEMO1MANAGER','DEMO1OPERATOR','DEMO2ADMIN','DEMO2MANAGER','DEMO2OPERATOR');
   
   delete from fcuserorgrole
   where uor_usrid not in ('admin','pndadmin','DEMO1ADMIN','DEMO1MANAGER','DEMO1OPERATOR','DEMO2ADMIN','DEMO2MANAGER','DEMO2OPERATOR');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `doLog` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `doLog`(in logMsg varchar(512))
BEGIN

  Declare continue handler for 1146 

  BEGIN

     call setupTmpLog();

     insert into tmplog values('resetup tmp table');

     insert into tmplog values(logMsg);

  END;

  insert into tmplog values(logMsg);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `generatedata` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generatedata`(p_orgid integer)
BEGIN
  declare cnt,sgid,sfid,mincustid,maxcustid,cusid,slotid,randplate int default 0;  
  declare totplate int default 200;
  declare i int default 1;
  declare pscode varchar(20);
  DECLARE done INT DEFAULT FALSE;
  -- declare the cursor
  declare shelfcur cursor for select sf_id from smshelfsetting where sf_orgid = p_orgid;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
  -- clean existing data
  delete from smshelfgroup where sg_orgid = p_orgid;
  delete from smshelfsetting where sf_orgid = p_orgid;
  delete from smplateslot where ps_orgid = p_orgid;
  delete from smcustomer where cus_orgid = p_orgid;
  
  -- check is there shelf group under this org?
  select count(*) into cnt from smshelfgroup where sg_orgid = p_orgid;
  if cnt = 0 then
    -- create 3 shelf group
    insert into smshelfgroup(sg_groupname,sg_seq,sg_orgid) 
    values('1000',10,p_orgid);
    
    insert into smshelfgroup(sg_groupname,sg_seq,sg_orgid) 
    values('1250',20,p_orgid);
    
    insert into smshelfgroup(sg_groupname,sg_seq,sg_orgid) 
    values('1650',30,p_orgid);
  end if;
  
  select count(*) into cnt from smshelfsetting where sf_orgid = p_orgid;
  if cnt = 0 then  
      select sg_id into sgid from smshelfgroup where sg_orgid = p_orgid and sg_groupname = '1000';      
      -- create 3 shelf for 1000 group
      insert into smshelfsetting (sf_sgid,sf_code,sf_desc,sf_totalplate,sf_orgid,sf_seq)
      values(sgid,'A1','1000-A1',totplate,p_orgid,10);
      
      select LAST_INSERT_ID() into sfid;
      set i = 1;      
      -- call dolog(concat('first shelf = ',sfid));
      -- insert slot data
      loop_plate1: LOOP     
         SELECT CONCAT('1000-A1-',LPAD(i,4,'0')) into pscode;
         insert into smplateslot(ps_sfid,ps_slotno,ps_code,ps_available,ps_orgid)
         values (sfid,LPAD(i,4,'0'),pscode, 'Y',p_orgid);
         SET i=i+1;
         IF i>totplate THEN
          LEAVE loop_plate1;
         END IF;
      END LOOP loop_plate1;
      
      insert into smshelfsetting (sf_sgid,sf_code,sf_desc,sf_totalplate,sf_orgid,sf_seq)
      values(sgid,'A2','1000-A2',totplate,p_orgid,20);
      
      select LAST_INSERT_ID() into sfid;
      set i = 1;
      -- insert slot data
      loop_plate2: LOOP     
         SELECT CONCAT('1000-A2-',LPAD(i,4,'0')) into pscode;
         insert into smplateslot(ps_sfid,ps_slotno,ps_code,ps_available,ps_orgid)
         values (sfid,LPAD(i,4,'0'),pscode, 'Y',p_orgid);
         SET i=i+1;
         IF i>totplate THEN
          LEAVE loop_plate2;
         END IF;
      END LOOP loop_plate2;
      
      insert into smshelfsetting (sf_sgid,sf_code,sf_desc,sf_totalplate,sf_orgid,sf_seq)
      values(sgid,'A3','1000-A3',totplate,p_orgid,30);
      select LAST_INSERT_ID() into sfid;
      set i = 1;
      -- insert slot data
      loop_plate3: LOOP     
         SELECT CONCAT('1000-A3-',LPAD(i,4,'0')) into pscode;
         insert into smplateslot(ps_sfid,ps_slotno,ps_code,ps_available,ps_orgid)
         values (sfid,LPAD(i,4,'0'),pscode, 'Y',p_orgid);
         SET i=i+1;
         IF i>totplate THEN
          LEAVE loop_plate3;
         END IF;
      END LOOP loop_plate3;
      
      -- create 2 shelf for 1250 group
      select sg_id into sgid from smshelfgroup where sg_orgid = p_orgid and sg_groupname = '1250';            
      
      insert into smshelfsetting (sf_sgid,sf_code,sf_desc,sf_totalplate,sf_orgid,sf_seq)
      values(sgid,'AA','1250-AA',totplate,p_orgid,30);
      select LAST_INSERT_ID() into sfid;
      set i = 1;
      -- insert slot data
      loop_plate4: LOOP     
         SELECT CONCAT('1250-AA-',LPAD(i,4,'0')) into pscode;
         insert into smplateslot(ps_sfid,ps_slotno,ps_code,ps_available,ps_orgid)
         values (sfid,LPAD(i,4,'0'),pscode, 'Y',p_orgid);
         SET i=i+1;
         IF i>totplate THEN
          LEAVE loop_plate4;
         END IF;
      END LOOP loop_plate4;
      
      insert into smshelfsetting (sf_sgid,sf_code,sf_desc,sf_totalplate,sf_orgid,sf_seq)
      values(sgid,'BB','1250-BB',totplate,p_orgid,30);
      select LAST_INSERT_ID() into sfid;
      set i = 1;
      -- insert slot data
      loop_plate5: LOOP     
         SELECT CONCAT('1250-BB-',LPAD(i,4,'0')) into pscode;
         insert into smplateslot(ps_sfid,ps_slotno,ps_code,ps_available,ps_orgid)
         values (sfid,LPAD(i,4,'0'),pscode, 'Y',p_orgid);
         SET i=i+1;
         IF i>totplate THEN
          LEAVE loop_plate5;
         END IF;
      END LOOP loop_plate5;

      -- create 1 shelf for 1650 group
      select sg_id into sgid from smshelfgroup where sg_orgid = p_orgid and sg_groupname = '1650';            
      
      insert into smshelfsetting (sf_sgid,sf_code,sf_desc,sf_totalplate,sf_orgid,sf_seq)
      values(sgid,'AA1','1250-AA1',totplate,p_orgid,30);
      select LAST_INSERT_ID() into sfid;
      set i = 1;
      -- insert slot data
      loop_plate6: LOOP     
         SELECT CONCAT('1250-AA1-',LPAD(i,4,'0')) into pscode;
         insert into smplateslot(ps_sfid,ps_slotno,ps_code,ps_available,ps_orgid)
         values (sfid,LPAD(i,4,'0'),pscode, 'Y',p_orgid);
         SET i=i+1;
         IF i>totplate THEN
          LEAVE loop_plate6;
         END IF;
      END LOOP loop_plate6;

      -- insert all the customer
     insert into smcustomer(cus_name,cus_regno,cus_masterid,cus_contactno,cus_orgid)
     select dm_cusname, dm_regno, dm_masterid, dm_contactno, p_orgid from smdemocustomer;
      
      select max(cus_id) , min(cus_id) into maxcustid,mincustid
      from smcustomer where cus_orgid = p_orgid;           

      
      open shelfcur;
      
      -- loop all the 6 shelf
      read_loop: loop
        fetch shelfcur into sfid;
        if done then
           leave read_loop;
        end if;                
        -- get random plateno
        select get_random_integer(10,25) into randplate;
        set i = 1;
         ins_plate: LOOP           
        -- get random cusid 
        select get_random_integer(mincustid,maxcustid) into cusid;
        -- get slot
        select getslot(sfid) into slotid;
        -- insert plate 
        insert into smplate(sp_cusid,sp_sfid,sp_psid,sp_platename,sp_platemodel,sp_createdby,sp_orgid)
        values(cusid,sfid,slotid,substring(upper(MD5(RAND())),1,6),substring(upper(MD5(RAND())),1,12),'SYSTEM',p_orgid);       
         SET i=i+1;
          IF i>randplate THEN
          LEAVE ins_plate;
         END IF;
         END LOOP ins_plate;                
      end loop;            
  end if;      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setupTmpLog` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setupTmpLog`()
BEGIN

     create temporary table if not exists tmplog (msg varchar(512)) engine = memory;

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

-- Dump completed on 2014-01-22 10:15:02
