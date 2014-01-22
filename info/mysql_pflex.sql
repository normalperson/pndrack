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
INSERT INTO `fcuser` VALUES ('admin','d033e22ae348aeb5660fc2140aec35850c4da997','2013-08-15 01:55:18','Administrator',NULL,'2014-01-22 07:45:07','2014-01-22 06:32:49','2014-01-22 03:23:20','ADMIN','a:0:{}',53,'ACTIVE'),('darun','f339ac2800c5ffc8f89db97d44eb22911a90b831','2014-01-15 01:50:43','darun',NULL,'2014-01-21 02:24:57','2014-01-21 01:37:40','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('darunalex','dc254258381f1279274a666a92f6aa998d487393','2014-01-15 02:36:57','darunalex','darunalex@darun.com','2014-01-15 04:50:01','2014-01-15 02:38:36','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('demo1','10f71961bd11dd33c1c95c771b98cf0e09d57b7c','2014-01-21 07:18:02','demo1','demo1@demo.com','2014-01-21 07:19:35','2014-01-21 07:18:37','0000-00-00 00:00:00',NULL,'a:3:{s:14:\"urlbeforelogin\";s:9:\"/pndrack/\";s:7:\"dbosess\";a:1:{s:9:\"platelist\";a:4:{s:6:\"lastid\";a:0:{}s:4:\"sort\";a:0:{}s:6:\"search\";a:5:{s:12:\"sp_platename\";s:6:\"C681F4\";s:13:\"sp_platemodel\";s:0:\"\";s:7:\"ps_code\";s:0:\"\";s:8:\"sp_cusid\";s:0:\"\";s:7:\"sp_sfid\";s:0:\"\";}s:5:\"state\";s:4:\"list\";}}s:9:\"dboconfig\";a:0:{}}',NULL,'ACTIVE'),('DEMO1ADMIN','403c5b2e8574d419c87c54719256f5392fca262a','2014-01-21 02:28:55','DEMO1ADMIN',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('DEMO1MANAGER','af0b407b8c5bede0d1af4173881d8c18408c1b59','2014-01-21 02:28:55','DEMO1MANAGER',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('DEMO1OPERATOR','52a8c48021e14cf4fd30a1dbd51fa456e09a231d','2014-01-21 02:28:55','DEMO1OPERATOR',NULL,'2014-01-22 06:40:34','2014-01-22 06:34:20','0000-00-00 00:00:00',NULL,'a:3:{s:14:\"urlbeforelogin\";s:9:\"/pndrack/\";s:7:\"dbosess\";a:1:{s:11:\"setup_shelf\";a:4:{s:6:\"lastid\";a:0:{}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"list\";}}s:9:\"dboconfig\";a:0:{}}',NULL,'ACTIVE'),('DEMO2ADMIN','f593c99213228f771e95087128568b05df53f60a','2014-01-21 02:29:10','DEMO2ADMIN',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('DEMO2MANAGER','243d0ef72aabaa6979cdf98b68641766454f7b8e','2014-01-21 02:29:10','DEMO2MANAGER',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('DEMO2OPERATOR','aedd0d3b09f41bee62ff80932490662fc72c8d00','2014-01-21 02:29:10','DEMO2OPERATOR',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('deswell','8bf24f70498d64ba1f03ccd36207e43dc8224678','2014-01-15 05:20:03','deswell',NULL,'2014-01-15 05:23:17','2014-01-15 05:20:12','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('dsalex','9c8fa798879acd2ecc93df0b0da916f07eed43ef','2014-01-15 05:21:31','Alex','dsalex@deswell.com','2014-01-15 05:52:43','2014-01-15 05:23:21','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('dsdanny','34c705995d66e07132ce3eb75f432a53df3f0dcb','2014-01-15 05:22:13','Danny','dsdanny@deswell.com','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('dskeng','80288d1b2aaf85a5d1ee473f4fce63d14dc6ae47','2014-01-15 05:23:00','Eng','eng@deswell.com','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('pndadmin','da0717243a83694a7fbc9c11fc5fed417abd9f0e','2014-01-05 10:34:11','pndadmin',NULL,'2014-01-22 02:12:01','2014-01-22 02:11:57','2014-01-11 10:59:03',NULL,'a:0:{}',NULL,'ACTIVE'),('user1','b3daa77b4c04a9551b8781d03191fe098f325e67','2014-01-16 04:59:43','user1','user1@email.com','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('user2','a1881c06eec96db9901c7bbfe41c42a3f08e9cb4','2014-01-16 05:00:22','user2','user2@email.com','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcuserlogin`
--

LOCK TABLES `fcuserlogin` WRITE;
/*!40000 ALTER TABLE `fcuserlogin` DISABLE KEYS */;
INSERT INTO `fcuserlogin` VALUES (1,'admin','127.0.0.1','Y','2013-08-15 01:55:42','2013-08-15 01:55:42','2013-12-10 07:47:35','N',NULL),(2,'admin','127.0.0.1','Y','2013-08-15 02:59:43','2013-08-15 02:59:43','2013-12-10 07:47:35','N',NULL),(3,'admin','127.0.0.1','Y','2013-08-15 02:59:45','2013-08-15 02:59:45','2013-12-10 07:47:35','N',NULL),(4,'admin','127.0.0.1','Y','2013-08-15 04:31:47','2013-08-15 04:31:47','2013-12-10 07:47:35','N',NULL),(5,'admin','127.0.0.1','Y','2013-08-15 04:31:50','2013-08-15 04:31:50','2013-12-10 07:47:35','N',NULL),(6,'admin','127.0.0.1','Y','2013-08-16 01:31:41','2013-08-16 01:31:41','2013-12-10 07:47:35','N',NULL),(7,'admin','127.0.0.1','Y','2013-08-16 01:31:45','2013-08-16 01:31:45','2013-12-10 07:47:35','N',NULL),(8,'admin','127.0.0.1','Y','2013-08-16 11:30:04','2013-08-16 11:30:04','2013-12-10 07:47:35','N',NULL),(9,'admin','127.0.0.1','Y','2013-08-16 11:30:06','2013-08-16 11:30:06','2013-12-10 07:47:35','N',NULL),(10,'admin','127.0.0.1','Y','2013-08-17 04:03:56','2013-08-17 04:03:56','2013-12-10 07:47:35','N',NULL),(11,'admin','127.0.0.1','Y','2013-08-17 04:03:58','2013-08-17 04:03:58','2013-12-10 07:47:35','N',NULL),(12,'admin','127.0.0.1','Y','2013-08-17 16:07:07','2013-08-17 16:07:07','2013-12-10 07:47:35','N',NULL),(13,'admin','127.0.0.1','Y','2013-08-17 16:07:09','2013-08-17 16:07:09','2013-12-10 07:47:35','N',NULL),(14,'admin','127.0.0.1','Y','2013-08-19 01:49:37','2013-08-19 01:49:37','2013-12-10 07:47:35','N',NULL),(15,'admin','127.0.0.1','Y','2013-08-19 01:49:40','2013-08-19 01:49:40','2013-12-10 07:47:35','N',NULL),(16,'admin','127.0.0.1','Y','2013-08-19 06:05:24','2013-08-19 06:05:24','2013-12-10 07:47:35','N',NULL),(17,'admin','127.0.0.1','Y','2013-08-19 06:05:27','2013-08-19 06:05:27','2013-12-10 07:47:35','N',NULL),(18,'admin','127.0.0.1','N','2013-08-20 00:55:06','2013-08-20 00:55:06','2013-12-10 07:47:35','N',NULL),(19,'admin','127.0.0.1','Y','2013-08-20 00:55:09','2013-08-20 00:55:09','2013-12-10 07:47:35','N',NULL),(20,'admin','127.0.0.1','Y','2013-08-20 00:55:13','2013-08-20 00:55:13','2013-12-10 07:47:35','N',NULL),(21,'admin','127.0.0.1','Y','2013-08-20 12:50:37','2013-08-20 12:50:37','2013-12-10 07:47:35','N',NULL),(22,'admin','127.0.0.1','Y','2013-08-20 12:50:40','2013-08-20 12:50:40','2013-12-10 07:47:35','N',NULL),(23,'admin','127.0.0.1','Y','2013-08-20 16:05:39','2013-08-20 16:05:39','2013-12-10 07:47:35','N',NULL),(24,'admin','127.0.0.1','Y','2013-08-20 16:05:42','2013-08-20 16:05:42','2013-12-10 07:47:35','N',NULL),(25,'admin','127.0.0.1','Y','2013-08-21 01:18:20','2013-08-21 01:18:20','2013-12-10 07:47:35','N',NULL),(26,'admin','127.0.0.1','Y','2013-08-21 01:18:23','2013-08-21 01:18:23','2013-12-10 07:47:35','N',NULL),(27,'admin','127.0.0.1','Y','2013-08-21 10:05:58','2013-08-21 10:05:58','2013-12-10 07:47:35','N',NULL),(28,'admin','127.0.0.1','Y','2013-08-21 10:06:02','2013-08-21 10:06:02','2013-12-10 07:47:35','N',NULL),(29,'admin','127.0.0.1','Y','2013-08-21 13:57:25','2013-08-21 13:57:25','2013-12-10 07:47:35','N',NULL),(30,'admin','127.0.0.1','Y','2013-08-21 13:57:28','2013-08-21 13:57:28','2013-12-10 07:47:35','N',NULL),(31,'admin','127.0.0.1','Y','2013-08-21 13:59:38','2013-08-21 13:59:38','2013-12-10 07:47:35','N',NULL),(32,'admin','127.0.0.1','Y','2013-08-22 01:15:22','2013-08-22 01:15:22','2013-12-10 07:47:35','N',NULL),(33,'admin','127.0.0.1','Y','2013-08-22 01:39:36','2013-08-22 01:39:36','2013-12-10 07:47:35','N',NULL),(34,'admin','127.0.0.1','Y','2013-08-22 09:58:43','2013-08-22 09:58:43','2013-12-10 07:47:35','N',NULL),(35,'admin','127.0.0.1','Y','2013-08-22 09:58:49','2013-08-22 09:58:49','2013-12-10 07:47:35','N',NULL),(36,'admin','127.0.0.1','Y','2013-08-22 09:58:52','2013-08-22 09:58:52','2013-12-10 07:47:35','N',NULL),(37,'admin','127.0.0.1','Y','2013-08-23 02:16:44','2013-08-23 02:16:44','2013-12-10 07:47:35','N',NULL),(38,'admin','127.0.0.1','Y','2013-08-23 02:17:09','2013-08-23 02:17:09','2013-12-10 07:47:35','N',NULL),(39,'admin','127.0.0.1','Y','2013-08-23 02:18:45','2013-08-23 02:18:45','2013-12-10 07:47:35','N',NULL),(40,'admin','127.0.0.1','Y','2013-08-24 01:28:55','2013-08-24 01:28:55','2013-12-10 07:47:35','N',NULL),(41,'admin','127.0.0.1','Y','2013-08-24 01:29:00','2013-08-24 01:29:00','2013-12-10 07:47:35','N',NULL),(42,'admin','127.0.0.1','Y','2013-08-24 01:29:05','2013-08-24 01:29:05','2013-12-10 07:47:35','N',NULL),(43,'admin','127.0.0.1','Y','2013-08-25 12:55:31','2013-08-25 12:55:31','2013-12-10 07:47:35','N',NULL),(44,'admin','127.0.0.1','Y','2013-08-25 12:55:33','2013-08-25 12:55:33','2013-12-10 07:47:35','N',NULL),(45,'admin','127.0.0.1','Y','2013-08-25 13:38:38','2013-08-25 13:38:38','2013-12-10 07:47:35','N',NULL),(46,'admin','127.0.0.1','Y','2013-08-25 13:38:40','2013-08-25 13:38:40','2013-12-10 07:47:35','N',NULL),(47,'admin','127.0.0.1','Y','2013-08-26 01:23:28','2013-08-26 01:23:28','2013-12-10 07:47:35','N',NULL),(48,'admin','127.0.0.1','Y','2013-08-26 01:23:33','2013-08-26 01:23:33','2013-12-10 07:47:35','N',NULL),(49,'admin','127.0.0.1','Y','2013-08-26 12:33:59','2013-08-26 12:33:59','2013-12-10 07:47:35','N',NULL),(50,'admin','127.0.0.1','Y','2013-08-26 12:34:02','2013-08-26 12:34:02','2013-12-10 07:47:35','N',NULL),(51,'admin','127.0.0.1','Y','2013-08-26 12:34:06','2013-08-26 12:34:06','2013-12-10 07:47:35','N',NULL),(52,'admin','127.0.0.1','Y','2013-08-26 14:39:10','2013-08-26 14:39:10','2013-12-10 07:47:35','N',NULL),(53,'admin','127.0.0.1','Y','2013-08-26 14:39:13','2013-08-26 14:39:13','2013-12-10 07:47:35','N',NULL),(54,'admin','127.0.0.1','Y','2013-08-26 16:08:21','2013-08-26 16:08:21','2013-12-10 07:47:35','N',NULL),(55,'admin','127.0.0.1','Y','2013-08-26 16:08:24','2013-08-26 16:08:24','2013-12-10 07:47:35','N',NULL),(56,'admin','127.0.0.1','Y','2013-08-26 16:58:48','2013-08-26 16:58:48','2013-12-10 07:47:35','N',NULL),(57,'admin','127.0.0.1','Y','2013-08-26 16:58:50','2013-08-26 16:58:50','2013-12-10 07:47:35','N',NULL),(58,'admin','127.0.0.1','Y','2013-08-27 02:14:03','2013-08-27 02:14:03','2013-12-10 07:47:35','N',NULL),(59,'admin','127.0.0.1','Y','2013-08-27 02:14:05','2013-08-27 02:14:05','2013-12-10 07:47:35','N',NULL),(60,'admin','127.0.0.1','Y','2013-08-27 11:12:18','2013-08-27 11:12:18','2013-12-10 07:47:35','N',NULL),(61,'admin','127.0.0.1','Y','2013-08-27 11:12:21','2013-08-27 11:12:21','2013-12-10 07:47:35','N',NULL),(62,'admin','127.0.0.1','Y','2013-08-28 01:58:45','2013-08-28 01:58:45','2013-12-10 07:47:35','N',NULL),(63,'admin','127.0.0.1','Y','2013-08-28 02:00:04','2013-08-28 02:00:04','2013-12-10 07:47:35','N',NULL),(64,'admin','127.0.0.1','Y','2013-08-28 09:52:51','2013-08-28 09:52:51','2013-12-10 07:47:35','N',NULL),(65,'admin','127.0.0.1','Y','2013-08-28 09:52:55','2013-08-28 09:52:55','2013-12-10 07:47:35','N',NULL),(66,'admin','127.0.0.1','Y','2013-08-29 00:50:38','2013-08-29 00:50:38','2013-12-10 07:47:35','N',NULL),(67,'admin','127.0.0.1','Y','2013-08-29 00:50:41','2013-08-29 00:50:41','2013-12-10 07:47:35','N',NULL),(68,'admin','127.0.0.1','Y','2013-08-29 00:50:43','2013-08-29 00:50:43','2013-12-10 07:47:35','N',NULL),(69,'admin','127.0.0.1','Y','2013-08-29 04:43:53','2013-08-29 04:43:53','2013-12-10 07:47:35','N',NULL),(70,'admin','127.0.0.1','Y','2013-08-29 04:43:55','2013-08-29 04:43:55','2013-12-10 07:47:35','N',NULL),(71,'admin','127.0.0.1','Y','2013-08-30 01:35:54','2013-08-30 01:35:54','2013-12-10 07:47:35','N',NULL),(72,'admin','127.0.0.1','Y','2013-08-30 01:36:58','2013-08-30 01:36:58','2013-12-10 07:47:35','N',NULL),(73,'admin','127.0.0.1','Y','2013-08-31 00:37:13','2013-08-31 00:37:13','2013-12-10 07:47:35','N',NULL),(74,'admin','127.0.0.1','Y','2013-08-31 00:37:16','2013-08-31 00:37:16','2013-12-10 07:47:35','N',NULL),(75,'admin','127.0.0.1','Y','2013-08-31 01:32:58','2013-08-31 01:32:58','2013-12-10 07:47:35','N',NULL),(76,'admin','127.0.0.1','Y','2013-08-31 01:33:00','2013-08-31 01:33:00','2013-12-10 07:47:35','N',NULL),(77,'admin','127.0.0.1','Y','2013-08-31 03:18:25','2013-08-31 03:18:25','2013-12-10 07:47:35','N',NULL),(78,'admin','127.0.0.1','Y','2013-08-31 03:18:27','2013-08-31 03:18:27','2013-12-10 07:47:35','N',NULL),(79,'admin','127.0.0.1','Y','2013-09-02 05:10:26','2013-09-02 05:10:26','2013-12-10 07:47:35','N',NULL),(80,'admin','127.0.0.1','Y','2013-09-02 05:10:27','2013-09-02 05:10:27','2013-12-10 07:47:35','N',NULL),(81,'admin','127.0.0.1','Y','2013-09-03 01:08:40','2013-09-03 01:08:40','2013-12-10 07:47:35','N',NULL),(82,'admin','127.0.0.1','Y','2013-09-03 01:08:43','2013-09-03 01:08:43','2013-12-10 07:47:35','N',NULL),(83,'admin','127.0.0.1','Y','2013-09-06 02:12:01','2013-09-06 02:12:01','2013-12-10 07:47:35','N',NULL),(84,'admin','127.0.0.1','Y','2013-09-06 02:12:03','2013-09-06 02:12:03','2013-12-10 07:47:35','N',NULL),(85,'admin','127.0.0.1','Y','2013-09-07 04:20:53','2013-09-07 04:20:53','2013-12-10 07:47:35','N',NULL),(86,'admin','127.0.0.1','Y','2013-09-07 04:20:57','2013-09-07 04:20:57','2013-12-10 07:47:35','N',NULL),(87,'admin','127.0.0.1','Y','2013-09-07 04:20:59','2013-09-07 04:20:59','2013-12-10 07:47:35','N',NULL),(88,'admin','127.0.0.1','Y','2013-09-07 04:21:03','2013-09-07 04:21:03','2013-12-10 07:47:35','N',NULL),(89,'admin','127.0.0.1','Y','2013-09-07 07:45:14','2013-09-07 07:45:14','2013-12-10 07:47:35','N',NULL),(90,'admin','127.0.0.1','Y','2013-09-07 07:45:16','2013-09-07 07:45:16','2013-12-10 07:47:35','N',NULL),(91,'admin','127.0.0.1','Y','2013-09-07 10:25:27','2013-09-07 10:25:27','2013-12-10 07:47:35','N',NULL),(92,'admin','127.0.0.1','Y','2013-09-07 11:32:35','2013-09-07 11:32:35','2013-12-10 07:47:35','N',NULL),(93,'admin','127.0.0.1','Y','2013-09-07 11:32:37','2013-09-07 11:32:37','2013-12-10 07:47:35','N',NULL),(94,'admin','127.0.0.1','Y','2013-09-07 11:34:29','2013-09-07 11:34:29','2013-12-10 07:47:35','N',NULL),(95,'admin','127.0.0.1','Y','2013-09-07 11:34:31','2013-09-07 11:34:31','2013-12-10 07:47:35','N',NULL),(96,'admin','127.0.0.1','Y','2013-09-09 02:15:45','2013-09-09 02:15:45','2013-12-10 07:47:35','N',NULL),(97,'admin','127.0.0.1','Y','2013-09-09 02:15:47','2013-09-09 02:15:47','2013-12-10 07:47:35','N',NULL),(98,'admin','127.0.0.1','Y','2013-09-10 06:35:37','2013-09-10 06:35:37','2013-12-10 07:47:35','N',NULL),(99,'admin','127.0.0.1','Y','2013-09-10 06:35:39','2013-09-10 06:35:39','2013-12-10 07:47:35','N',NULL),(100,'admin','127.0.0.1','Y','2013-09-13 13:38:29','2013-09-13 13:38:29','2013-12-10 07:47:35','N',NULL),(101,'admin','127.0.0.1','Y','2013-09-13 13:38:31','2013-09-13 13:38:31','2013-12-10 07:47:35','N',NULL),(102,'admin','127.0.0.1','Y','2013-09-13 14:33:34','2013-09-13 14:33:34','2013-12-10 07:47:35','N',NULL),(103,'admin','127.0.0.1','Y','2013-09-13 14:33:36','2013-09-13 14:33:36','2013-12-10 07:47:35','N',NULL),(104,'admin','127.0.0.1','Y','2013-09-16 06:48:44','2013-09-16 06:48:44','2013-12-10 07:47:35','N',NULL),(105,'admin','127.0.0.1','Y','2013-09-16 06:48:48','2013-09-16 06:48:48','2013-12-10 07:47:35','N',NULL),(106,'admin','127.0.0.1','Y','2013-09-17 02:20:51','2013-09-17 02:20:51','2013-12-10 07:47:35','N',NULL),(107,'admin','127.0.0.1','Y','2013-09-17 02:20:54','2013-09-17 02:20:54','2013-12-10 07:47:35','N',NULL),(108,'admin','127.0.0.1','Y','2013-09-18 16:23:01','2013-09-18 16:23:01','2013-12-10 07:47:35','N',NULL),(109,'admin','127.0.0.1','Y','2013-09-18 16:23:03','2013-09-18 16:23:03','2013-12-10 07:47:35','N',NULL),(110,'admin','127.0.0.1','Y','2013-09-21 12:04:50','2013-09-21 12:04:50','2013-12-10 07:47:35','N',NULL),(111,'admin','127.0.0.1','Y','2013-09-21 12:04:52','2013-09-21 12:04:52','2013-12-10 07:47:35','N',NULL),(112,'admin','127.0.0.1','Y','2013-09-22 06:35:34','2013-09-22 06:35:34','2013-12-10 07:47:35','N',NULL),(113,'admin','127.0.0.1','Y','2013-09-22 06:35:36','2013-09-22 06:35:36','2013-12-10 07:47:35','N',NULL),(114,'admin','127.0.0.1','Y','2013-09-22 06:35:38','2013-09-22 06:35:38','2013-12-10 07:47:35','N',NULL),(115,'admin','127.0.0.1','Y','2013-09-23 01:04:35','2013-09-23 01:04:35','2013-12-10 07:47:35','N',NULL),(116,'admin','127.0.0.1','Y','2013-09-23 01:04:38','2013-09-23 01:04:38','2013-12-10 07:47:35','N',NULL),(117,'admin','127.0.0.1','Y','2013-09-23 15:38:32','2013-09-23 15:38:32','2013-12-10 07:47:35','N',NULL),(118,'admin','127.0.0.1','Y','2013-09-23 15:38:34','2013-09-23 15:38:34','2013-12-10 07:47:35','N',NULL),(119,'admin','127.0.0.1','Y','2013-09-24 14:30:17','2013-09-24 14:30:17','2013-12-10 07:47:35','N',NULL),(120,'admin','127.0.0.1','Y','2013-09-24 14:30:20','2013-09-24 14:30:20','2013-12-10 07:47:35','N',NULL),(121,'admin','127.0.0.1','Y','2013-09-24 14:30:22','2013-09-24 14:30:22','2013-12-10 07:47:35','N',NULL),(122,'admin','127.0.0.1','Y','2013-09-25 01:36:08','2013-09-25 01:36:08','2013-12-10 07:47:35','N',NULL),(123,'admin','127.0.0.1','Y','2013-09-25 01:36:10','2013-09-25 01:36:10','2013-12-10 07:47:35','N',NULL),(124,'admin','127.0.0.1','Y','2013-09-25 03:31:52','2013-09-25 03:31:52','2013-12-10 07:47:35','N',NULL),(125,'admin','127.0.0.1','Y','2013-09-25 03:32:04','2013-09-25 03:32:04','2013-12-10 07:47:35','N',NULL),(126,'admin','127.0.0.1','Y','2013-09-26 05:23:38','2013-09-26 05:23:38','2013-12-10 07:47:35','N',NULL),(127,'admin','127.0.0.1','Y','2013-09-26 05:23:40','2013-09-26 05:23:40','2013-12-10 07:47:35','N',NULL),(128,'admin','127.0.0.1','Y','2013-09-26 13:57:02','2013-09-26 13:57:02','2013-12-10 07:47:35','N',NULL),(129,'admin','127.0.0.1','Y','2013-09-26 13:57:03','2013-09-26 13:57:03','2013-12-10 07:47:35','N',NULL),(130,'admin','127.0.0.1','Y','2013-09-27 01:59:36','2013-09-27 01:59:36','2013-12-10 07:47:35','N',NULL),(131,'admin','127.0.0.1','Y','2013-09-27 01:59:39','2013-09-27 01:59:39','2013-12-10 07:47:35','N',NULL),(132,'admin','127.0.0.1','Y','2013-09-29 02:12:39','2013-09-29 02:12:39','2013-12-10 07:47:35','N',NULL),(133,'admin','127.0.0.1','Y','2013-09-29 02:12:41','2013-09-29 02:12:41','2013-12-10 07:47:35','N',NULL),(134,'admin','127.0.0.1','Y','2013-10-02 02:54:59','2013-10-02 02:54:59','2013-12-10 07:47:35','N',NULL),(135,'admin','127.0.0.1','Y','2013-10-02 02:55:04','2013-10-02 02:55:04','2013-12-10 07:47:35','N',NULL),(136,'admin','127.0.0.1','Y','2013-10-03 12:06:27','2013-10-03 12:06:27','2013-12-10 07:47:35','N',NULL),(137,'admin','127.0.0.1','Y','2013-10-03 12:06:29','2013-10-03 12:06:29','2013-12-10 07:47:35','N',NULL),(138,'admin','127.0.0.1','Y','2013-10-04 01:27:57','2013-10-04 01:27:57','2013-12-10 07:47:35','N',NULL),(139,'admin','127.0.0.1','Y','2013-10-04 01:28:00','2013-10-04 01:28:00','2013-12-10 07:47:35','N',NULL),(140,'admin','127.0.0.1','Y','2013-10-04 10:42:58','2013-10-04 10:42:58','2013-12-10 07:47:35','N',NULL),(141,'admin','127.0.0.1','Y','2013-10-04 10:42:59','2013-10-04 10:42:59','2013-12-10 07:47:35','N',NULL),(142,'admin','127.0.0.1','Y','2013-10-05 02:41:20','2013-10-05 02:41:20','2013-12-10 07:47:35','N',NULL),(143,'admin','127.0.0.1','Y','2013-10-05 02:41:22','2013-10-05 02:41:22','2013-12-10 07:47:35','N',NULL),(144,'admin','127.0.0.1','Y','2013-10-05 14:58:31','2013-10-05 14:58:31','2013-12-10 07:47:35','N',NULL),(145,'admin','127.0.0.1','Y','2013-10-05 14:58:33','2013-10-05 14:58:33','2013-12-10 07:47:35','N',NULL),(146,'admin','127.0.0.1','Y','2013-10-06 06:18:45','2013-10-06 06:18:45','2013-12-10 07:47:35','N',NULL),(147,'admin','127.0.0.1','Y','2013-10-06 06:18:48','2013-10-06 06:18:48','2013-12-10 07:47:35','N',NULL),(148,'admin','127.0.0.1','Y','2013-10-23 02:48:24','2013-10-23 02:48:24','2013-12-10 07:47:35','N',NULL),(149,'admin','127.0.0.1','Y','2013-10-23 02:48:28','2013-10-23 02:48:28','2013-12-10 07:47:35','N',NULL),(150,'admin','127.0.0.1','Y','2013-10-30 02:24:15','2013-10-30 02:24:15','2013-12-10 07:47:35','N',NULL),(151,'admin','127.0.0.1','Y','2013-10-30 02:24:19','2013-10-30 02:24:19','2013-12-10 07:47:35','N',NULL),(152,'admin','127.0.0.1','Y','2013-10-31 06:42:12','2013-10-31 06:42:12','2013-12-10 07:47:35','N',NULL),(153,'admin',NULL,NULL,'2013-10-31 06:46:14','2013-10-31 06:46:14','2013-12-10 07:47:35','N',NULL),(154,'admin','127.0.0.1','Y','2013-10-31 06:46:27','2013-10-31 06:46:27','2013-12-10 07:47:35','N',NULL),(155,'admin','127.0.0.1','Y','2013-10-31 06:57:26','2013-10-31 06:57:26','2013-12-10 07:47:35','N',NULL),(156,'admin','127.0.0.1','Y','2013-10-31 06:57:44','2013-10-31 06:57:44','2013-12-10 07:47:35','N',NULL),(157,'admin','127.0.0.1','Y','2013-11-01 01:45:44','2013-11-01 01:45:44','2013-12-10 07:47:35','N',NULL),(158,'admin','127.0.0.1','Y','2013-11-01 01:45:46','2013-11-01 01:45:46','2013-12-10 07:47:35','N',NULL),(159,'admin','127.0.0.1','Y','2013-11-01 03:00:52','2013-11-01 03:00:52','2013-12-10 07:47:35','N',NULL),(160,'admin','127.0.0.1','Y','2013-11-01 03:00:54','2013-11-01 03:00:54','2013-12-10 07:47:35','N',NULL),(161,'admin','127.0.0.1','Y','2013-11-01 03:07:38','2013-11-01 03:07:38','2013-12-10 07:47:35','N',NULL),(162,'admin','127.0.0.1','Y','2013-11-01 03:07:40','2013-11-01 03:07:40','2013-12-10 07:47:35','N',NULL),(163,'admin','127.0.0.1','Y','2013-11-02 05:20:41','2013-11-02 05:20:41','2013-12-10 07:47:35','N',NULL),(164,'admin','127.0.0.1','Y','2013-11-02 05:20:43','2013-11-02 05:20:43','2013-12-10 07:47:35','N',NULL),(165,'admin','127.0.0.1','Y','2013-11-04 01:16:28','2013-11-04 01:16:28','2013-12-10 07:47:35','N',NULL),(166,'admin','127.0.0.1','Y','2013-11-04 01:16:31','2013-11-04 01:16:31','2013-12-10 07:47:35','N',NULL),(167,'admin','127.0.0.1','Y','2013-11-05 06:59:33','2013-11-05 06:59:33','2013-12-10 07:47:35','N',NULL),(168,'admin','127.0.0.1','Y','2013-11-05 06:59:35','2013-11-05 06:59:35','2013-12-10 07:47:35','N',NULL),(169,'admin','127.0.0.1','Y','2013-11-06 01:27:25','2013-11-06 01:27:25','2013-12-10 07:47:35','N',NULL),(170,'admin','127.0.0.1','Y','2013-11-06 01:27:27','2013-11-06 01:27:27','2013-12-10 07:47:35','N',NULL),(171,'admin','127.0.0.1','Y','2013-11-09 07:03:55','2013-11-09 07:03:55','2013-12-10 07:47:35','N',NULL),(172,'admin','127.0.0.1','N','2013-11-09 07:03:58','2013-11-09 07:03:58','2013-12-10 07:47:35','N',NULL),(173,'admin','127.0.0.1','Y','2013-11-09 07:07:48','2013-11-09 07:07:48','2013-12-10 07:47:35','N',NULL),(174,'admin','127.0.0.1','N','2013-11-09 07:07:50','2013-11-09 07:07:50','2013-12-10 07:47:35','N',NULL),(175,'admin','127.0.0.1','Y','2013-11-09 07:09:13','2013-11-09 07:09:13','2013-12-10 07:47:35','N',NULL),(176,'admin','127.0.0.1','Y','2013-11-09 07:09:36','2013-11-09 07:09:36','2013-12-10 07:47:35','N',NULL),(177,'admin','127.0.0.1','Y','2013-11-09 07:11:30','2013-11-09 07:11:30','2013-12-10 07:47:35','N',NULL),(178,'admin','127.0.0.1','Y','2013-11-09 07:11:36','2013-11-09 07:11:36','2013-12-10 07:47:35','N',NULL),(179,'admin','192.168.1.75','Y','2013-11-09 07:39:31','2013-11-09 07:39:31','2013-12-10 07:47:35','N',NULL),(180,'admin','192.168.1.75','Y','2013-11-09 07:43:45','2013-11-09 07:43:45','2013-12-10 07:47:35','N',NULL),(181,'admin','192.168.1.75','Y','2013-11-09 07:47:06','2013-11-09 07:47:06','2013-12-10 07:47:35','N',NULL),(182,'admin','127.0.0.1','Y','2013-11-09 07:53:23','2013-11-09 07:53:23','2013-12-10 07:47:35','N',NULL),(183,'admin','127.0.0.1','Y','2013-11-11 02:18:32','2013-11-11 02:18:32','2013-12-10 07:47:35','N',NULL),(184,'admin','127.0.0.1','Y','2013-11-13 01:09:58','2013-11-13 01:09:58','2013-12-10 07:47:35','N',NULL),(185,'admin','127.0.0.1','Y','2013-11-13 05:11:58','2013-11-13 05:11:58','2013-12-10 07:47:35','N',NULL),(186,'admin','127.0.0.1','Y','2013-11-14 00:40:34','2013-11-14 00:40:34','2013-12-10 07:47:35','N',NULL),(187,'admin','127.0.0.1','Y','2013-11-15 11:06:54','2013-11-15 11:06:54','2013-12-10 07:47:35','N',NULL),(188,'admin','127.0.0.1','Y','2013-11-16 05:55:03','2013-11-16 05:55:03','2013-12-10 07:47:35','N',NULL),(189,'admin','127.0.0.1','Y','2013-11-17 10:21:41','2013-11-17 10:21:41','2013-12-10 07:47:35','N',NULL),(190,'admin','127.0.0.1','Y','2013-11-18 08:46:54','2013-11-18 08:46:54','2013-12-10 07:47:35','N',NULL),(191,'admin','127.0.0.1','Y','2013-11-19 06:20:26','2013-11-19 06:20:26','2013-12-10 07:47:35','N',NULL),(192,'admin','127.0.0.1','Y','2013-11-19 15:35:44','2013-11-19 15:35:44','2013-12-10 07:47:35','N',NULL),(193,'admin','127.0.0.1','Y','2013-11-21 08:14:15','2013-11-21 08:14:15','2013-12-10 07:47:35','N',NULL),(194,'admin','127.0.0.1','Y','2013-11-25 04:40:22','2013-11-25 04:40:22','2013-12-10 07:47:35','N',NULL),(195,'admin','127.0.0.1','Y','2013-12-10 06:00:47','2013-12-10 06:00:47','2013-12-10 07:47:35','N',NULL),(196,'admin','127.0.0.1','Y','2013-12-10 07:52:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(197,'admin','127.0.0.1','Y','2013-12-10 07:56:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(198,'admin','127.0.0.1','Y','2013-12-11 07:52:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(199,'admin','127.0.0.1','Y','2013-12-12 04:10:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(200,'admin','127.0.0.1','Y','2013-12-12 04:13:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(201,'admin','127.0.0.1','Y','2013-12-12 05:15:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(202,'admin','127.0.0.1','Y','2013-12-14 07:05:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(203,'admin','127.0.0.1','Y','2013-12-14 12:39:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(204,'admin','127.0.0.1','Y','2013-12-19 07:13:01','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(205,'admin','127.0.0.1','Y','2013-12-19 07:16:49','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(206,'admin','127.0.0.1','Y','2013-12-20 08:06:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(207,'admin','127.0.0.1','Y','2013-12-20 11:09:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(208,'admin','127.0.0.1','Y','2013-12-22 09:06:39','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(209,'hongyee','127.0.0.1','N','2013-12-22 09:54:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(210,'admin','127.0.0.1','N','2013-12-22 09:54:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(211,'admin','127.0.0.1','N','2013-12-22 09:54:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(212,'admin','127.0.0.1','N','2013-12-22 09:54:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(213,'admin','127.0.0.1','N','2013-12-22 09:54:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(214,'admin','127.0.0.1','N','2013-12-22 09:54:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(215,'admin','127.0.0.1','N','2013-12-22 09:54:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(216,'admin','127.0.0.1','N','2013-12-22 09:54:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(217,'hongyee','127.0.0.1','Y','2013-12-22 09:55:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(218,'admin','127.0.0.1','Y','2013-12-22 09:59:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(219,'danny','127.0.0.1','Y','2013-12-22 10:04:48','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(220,'admin','127.0.0.1','Y','2013-12-22 10:10:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(221,'admin','127.0.0.1','Y','2013-12-23 05:12:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(222,'deswell','127.0.0.1','N','2013-12-23 05:25:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(223,'admin','127.0.0.1','Y','2013-12-23 05:25:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(224,'deswell','127.0.0.1','N','2013-12-23 05:33:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(225,'deswell','127.0.0.1','N','2013-12-23 05:33:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(226,'deswell','127.0.0.1','N','2013-12-23 05:33:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(227,'admin','127.0.0.1','Y','2013-12-23 05:33:47','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(228,'deswell','127.0.0.1','Y','2013-12-23 05:34:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(229,'admin','127.0.0.1','Y','2013-12-23 05:44:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(230,'admin','127.0.0.1','Y','2013-12-23 06:02:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(231,'darun','127.0.0.1','N','2013-12-23 06:54:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(232,'darun','127.0.0.1','N','2013-12-23 06:54:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(233,'deswell','127.0.0.1','Y','2013-12-23 06:54:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(234,'deswell','127.0.0.1','Y','2013-12-23 06:55:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(235,'admin','127.0.0.1','N','2013-12-23 07:29:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(236,'admin','127.0.0.1','N','2013-12-23 07:29:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(237,'admin','127.0.0.1','N','2013-12-23 07:29:59','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(238,'deswell','127.0.0.1','Y','2013-12-23 07:30:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(239,'admin','127.0.0.1','Y','2013-12-23 07:30:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(240,'admin','127.0.0.1','Y','2013-12-23 07:43:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(241,'deswell','127.0.0.1','Y','2013-12-23 07:44:04','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(242,'admin','127.0.0.1','Y','2013-12-23 07:45:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(243,'admin','127.0.0.1','N','2013-12-23 08:18:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(244,'admin','127.0.0.1','Y','2013-12-23 08:18:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(245,'deswell','127.0.0.1','Y','2013-12-23 14:12:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(246,'admin','127.0.0.1','Y','2013-12-23 14:12:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(247,'admin','127.0.0.1','Y','2013-12-24 01:08:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(248,'deswell','127.0.0.1','Y','2013-12-24 01:22:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(249,'admin','127.0.0.1','Y','2013-12-24 01:33:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(250,'darun','127.0.0.1','Y','2013-12-24 01:34:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(251,'admin','127.0.0.1','Y','2013-12-24 01:39:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(252,'darun','127.0.0.1','Y','2013-12-24 01:41:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(253,'admin','127.0.0.1','Y','2013-12-24 01:42:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(254,'darun','127.0.0.1','Y','2013-12-24 01:42:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(255,'admin','127.0.0.1','N','2013-12-24 01:43:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(256,'admin','127.0.0.1','Y','2013-12-24 01:43:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(257,'darun','127.0.0.1','Y','2013-12-24 01:44:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(258,'admin','127.0.0.1','Y','2013-12-24 02:46:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(259,'darun','127.0.0.1','Y','2013-12-24 02:47:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(260,'admin','127.0.0.1','Y','2013-12-24 02:52:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(261,'deswell','127.0.0.1','Y','2013-12-24 02:52:52','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(262,'admin','127.0.0.1','Y','2013-12-26 02:17:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(263,'admin','127.0.0.1','Y','2014-01-05 08:39:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(264,'deswell','127.0.0.1','Y','2014-01-05 10:34:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(265,'pndadmin','127.0.0.1','Y','2014-01-05 10:35:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(266,'admin','127.0.0.1','Y','2014-01-05 10:35:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(267,'admin','127.0.0.1','Y','2014-01-05 10:41:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(268,'pndadmin','127.0.0.1','Y','2014-01-05 10:41:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(269,'deswell','127.0.0.1','Y','2014-01-05 10:41:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(270,'pndadmin','127.0.0.1','Y','2014-01-05 10:42:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(271,'admin','127.0.0.1','Y','2014-01-05 11:37:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(272,'pndadmin','127.0.0.1','Y','2014-01-05 11:50:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(273,'admin','127.0.0.1','Y','2014-01-05 11:54:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(274,'deswell','127.0.0.1','Y','2014-01-05 12:10:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(275,'admin','127.0.0.1','Y','2014-01-06 06:19:59','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(276,'pndadmin','127.0.0.1','Y','2014-01-06 06:56:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(277,'admin','127.0.0.1','Y','2014-01-06 06:56:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(278,'deswell','127.0.0.1','Y','2014-01-06 06:57:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(279,'pndadmin','127.0.0.1','Y','2014-01-06 06:58:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(280,'admin','127.0.0.1','Y','2014-01-06 06:58:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(281,'admin','127.0.0.1','Y','2014-01-06 06:59:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(282,'pndadmin','127.0.0.1','Y','2014-01-06 07:09:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(283,'admin','127.0.0.1','Y','2014-01-06 07:09:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(284,'pndadmin','127.0.0.1','Y','2014-01-06 08:41:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(285,'deswell','127.0.0.1','Y','2014-01-06 08:41:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(286,'admin','127.0.0.1','Y','2014-01-06 08:41:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(287,'deswell','127.0.0.1','Y','2014-01-06 08:42:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(288,'pndadmin','127.0.0.1','Y','2014-01-06 08:46:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(289,'pndadmin','127.0.0.1','Y','2014-01-06 08:52:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(290,'admin','127.0.0.1','Y','2014-01-06 08:52:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(291,'pndadmin','127.0.0.1','Y','2014-01-06 08:53:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(292,'admin','127.0.0.1','Y','2014-01-06 08:53:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(293,'pndadmin','127.0.0.1','Y','2014-01-06 08:53:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(294,'deswell','127.0.0.1','Y','2014-01-06 08:53:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(295,'deswell','127.0.0.1','Y','2014-01-06 08:58:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(296,'admin','127.0.0.1','Y','2014-01-06 09:00:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(297,'pndadmin','127.0.0.1','Y','2014-01-06 11:02:38','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(298,'cartonbox','127.0.0.1','Y','2014-01-06 11:11:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(299,'admin','127.0.0.1','Y','2014-01-06 11:17:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(300,'cartonbox','127.0.0.1','Y','2014-01-06 11:24:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(301,'admin','127.0.0.1','Y','2014-01-06 11:30:05','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(302,'pndadmin','127.0.0.1','Y','2014-01-06 11:45:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(303,'admin','127.0.0.1','Y','2014-01-06 11:47:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(304,'admin','127.0.0.1','N','2014-01-07 00:58:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(305,'admin','127.0.0.1','N','2014-01-07 01:00:48','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(306,'admin','127.0.0.1','N','2014-01-07 01:02:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(307,'admin','127.0.0.1','N','2014-01-07 01:02:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(308,'cartonbox','127.0.0.1','Y','2014-01-07 01:04:25','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(309,'admin','127.0.0.1','Y','2014-01-07 01:04:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(310,'admin','127.0.0.1','Y','2014-01-07 01:05:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(311,'deswell','127.0.0.1','Y','2014-01-07 01:05:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(312,'admin','127.0.0.1','Y','2014-01-07 01:06:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(313,'cartonbox','127.0.0.1','Y','2014-01-07 02:12:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(314,'cartonbox','127.0.0.1','Y','2014-01-07 09:19:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(315,'admin','127.0.0.1','Y','2014-01-07 09:19:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(316,'admin','127.0.0.1','Y','2014-01-07 09:20:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(317,'admin','127.0.0.1','Y','2014-01-08 06:53:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(318,'admin','127.0.0.1','Y','2014-01-09 03:02:38','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(319,'cartonbox','127.0.0.1','Y','2014-01-09 05:06:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(320,'admin','127.0.0.1','Y','2014-01-09 05:06:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(321,'cartonbox','127.0.0.1','Y','2014-01-09 05:06:52','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(322,'admin','127.0.0.1','Y','2014-01-09 05:18:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(323,'cartonbox','127.0.0.1','Y','2014-01-09 05:20:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(324,'cartonbox','127.0.0.1','Y','2014-01-09 05:21:50','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(325,'admin','127.0.0.1','Y','2014-01-09 05:51:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(326,'admin','127.0.0.1','Y','2014-01-10 05:50:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(327,'admin','127.0.0.1','Y','2014-01-11 10:52:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(328,'cartonbox','127.0.0.1','N','2014-01-11 10:58:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(329,'pndadmin','127.0.0.1','N','2014-01-11 10:59:03','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(330,'pndadmin','127.0.0.1','Y','2014-01-11 10:59:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(331,'cartonbox','127.0.0.1','Y','2014-01-11 10:59:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(332,'admin','127.0.0.1','Y','2014-01-11 12:46:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(333,'cartonbox','127.0.0.1','Y','2014-01-11 12:46:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(334,'admin','127.0.0.1','Y','2014-01-11 12:47:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(335,'cartonbox','127.0.0.1','Y','2014-01-11 12:54:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(336,'admin','127.0.0.1','Y','2014-01-11 13:00:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(337,'cartonbox','127.0.0.1','Y','2014-01-11 13:01:28','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(338,'admin','127.0.0.1','Y','2014-01-11 13:01:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(339,'cartonbox','127.0.0.1','Y','2014-01-11 13:02:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(340,'admin','127.0.0.1','Y','2014-01-11 13:12:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(341,'admin','127.0.0.1','Y','2014-01-11 13:43:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(342,'cartonbox','127.0.0.1','Y','2014-01-12 01:50:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(343,'admin','127.0.0.1','Y','2014-01-12 02:25:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(344,'cartonbox','127.0.0.1','Y','2014-01-12 02:26:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(345,'admin','127.0.0.1','Y','2014-01-12 02:27:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(346,'cartonbox','127.0.0.1','Y','2014-01-12 02:29:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(347,'admin','127.0.0.1','Y','2014-01-12 02:31:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(348,'cartonbox','127.0.0.1','Y','2014-01-12 02:35:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(349,'admin','127.0.0.1','Y','2014-01-12 05:15:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(350,'cartonbox','127.0.0.1','Y','2014-01-12 05:46:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(351,'admin','127.0.0.1','Y','2014-01-12 06:11:44','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(352,'cartonbox','127.0.0.1','Y','2014-01-12 06:16:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(353,'admin','127.0.0.1','Y','2014-01-12 06:17:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(354,'cartonbox','127.0.0.1','Y','2014-01-12 06:17:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(355,'admin','127.0.0.1','Y','2014-01-12 06:17:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(356,'cartonbox','127.0.0.1','Y','2014-01-12 07:51:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(357,'admin','127.0.0.1','Y','2014-01-12 07:51:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(358,'pndadmin','127.0.0.1','Y','2014-01-12 07:53:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(359,'darun','127.0.0.1','N','2014-01-12 07:54:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(360,'darun','127.0.0.1','N','2014-01-12 07:54:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(361,'pndadmin','127.0.0.1','Y','2014-01-12 07:54:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(362,'Darun','127.0.0.1','N','2014-01-12 07:55:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(363,'Darun','127.0.0.1','N','2014-01-12 07:55:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(364,'admin','127.0.0.1','Y','2014-01-12 07:55:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(365,'pndadmin','127.0.0.1','Y','2014-01-12 07:55:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(366,'deswell','127.0.0.1','N','2014-01-12 07:56:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(367,'pndadmin','127.0.0.1','Y','2014-01-12 07:56:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(368,'deswell','127.0.0.1','N','2014-01-12 07:56:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(369,'deswell','127.0.0.1','N','2014-01-12 07:57:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(370,'pndadmin','127.0.0.1','Y','2014-01-12 07:57:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(371,'deswell','127.0.0.1','N','2014-01-12 07:57:58','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(372,'pndadmin','127.0.0.1','Y','2014-01-12 07:58:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(373,'deswell','127.0.0.1','N','2014-01-12 07:58:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(374,'admin','127.0.0.1','Y','2014-01-12 08:02:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(375,'pndadmin','127.0.0.1','Y','2014-01-12 08:06:01','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(376,'darun','127.0.0.1','N','2014-01-12 08:06:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(377,'pndadmin','127.0.0.1','Y','2014-01-12 08:06:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(378,'darun','127.0.0.1','Y','2014-01-12 08:06:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(379,'admin','127.0.0.1','Y','2014-01-12 08:07:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(380,'darun','127.0.0.1','Y','2014-01-12 08:09:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(381,'admin','127.0.0.1','Y','2014-01-12 08:10:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(382,'darun','127.0.0.1','Y','2014-01-12 08:11:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(383,'alex','127.0.0.1','Y','2014-01-12 08:13:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(384,'admin','127.0.0.1','Y','2014-01-12 08:13:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(385,'darun','127.0.0.1','Y','2014-01-12 08:15:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(386,'alex','127.0.0.1','Y','2014-01-12 08:16:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(387,'admin','127.0.0.1','Y','2014-01-12 08:17:03','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(388,'alex','127.0.0.1','Y','2014-01-12 08:17:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(389,'admin','127.0.0.1','N','2014-01-12 08:18:05','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(390,'admin','127.0.0.1','N','2014-01-12 08:18:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(391,'admin','127.0.0.1','Y','2014-01-12 08:18:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(392,'alex','127.0.0.1','Y','2014-01-12 08:20:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(393,'admin','127.0.0.1','Y','2014-01-12 08:20:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(394,'darun','127.0.0.1','Y','2014-01-12 08:21:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(395,'darun','127.0.0.1','Y','2014-01-12 08:36:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(396,'admin','127.0.0.1','Y','2014-01-12 08:36:39','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(397,'alex','127.0.0.1','Y','2014-01-12 08:49:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(398,'admin','127.0.0.1','Y','2014-01-12 08:50:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(399,'alex','127.0.0.1','Y','2014-01-12 08:51:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(400,'admin','127.0.0.1','Y','2014-01-12 09:04:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(401,'alex','127.0.0.1','Y','2014-01-12 09:05:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(402,'admin','127.0.0.1','Y','2014-01-12 09:07:38','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(403,'pndadmin','127.0.0.1','Y','2014-01-12 09:29:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(404,'deswell','127.0.0.1','Y','2014-01-12 09:33:39','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(405,'pndadmin','127.0.0.1','Y','2014-01-12 09:34:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(406,'deswell','127.0.0.1','Y','2014-01-12 09:34:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(407,'yow','127.0.0.1','Y','2014-01-12 09:38:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(408,'fong','127.0.0.1','Y','2014-01-12 09:53:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(409,'yow','127.0.0.1','Y','2014-01-12 09:54:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(410,'admin','127.0.0.1','Y','2014-01-12 10:06:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(411,'fong','127.0.0.1','Y','2014-01-12 10:09:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(412,'admin','127.0.0.1','Y','2014-01-12 10:09:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(413,'fong','127.0.0.1','Y','2014-01-12 10:10:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(414,'admin','127.0.0.1','Y','2014-01-12 10:13:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(415,'fong','127.0.0.1','Y','2014-01-12 10:36:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(416,'fong','127.0.0.1','Y','2014-01-12 10:37:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(417,'admin','127.0.0.1','Y','2014-01-12 13:57:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(418,'admin','127.0.0.1','Y','2014-01-13 01:38:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(419,'admin','127.0.0.1','N','2014-01-13 01:39:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(420,'admin','127.0.0.1','Y','2014-01-13 01:39:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(421,'tony','127.0.0.1','N','2014-01-13 01:40:59','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(422,'tony','127.0.0.1','N','2014-01-13 01:41:03','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(423,'admin','127.0.0.1','Y','2014-01-13 01:41:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(424,'admin','127.0.0.1','Y','2014-01-13 05:18:47','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(425,'pndadmin','127.0.0.1','Y','2014-01-13 05:48:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(426,'cartonbox','127.0.0.1','N','2014-01-13 05:48:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(427,'pndadmin','127.0.0.1','Y','2014-01-13 05:48:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(428,'cartonbox','127.0.0.1','N','2014-01-13 05:49:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(429,'pndadmin','127.0.0.1','Y','2014-01-13 05:50:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(430,'cartonbox','127.0.0.1','Y','2014-01-13 05:52:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(431,'admin','127.0.0.1','Y','2014-01-13 05:54:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(432,'cartonbox','127.0.0.1','Y','2014-01-13 05:58:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(433,'admin','127.0.0.1','Y','2014-01-13 05:59:49','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(434,'admin','127.0.0.1','Y','2014-01-13 06:02:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(435,'admin','127.0.0.1','Y','2014-01-14 07:03:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(436,'pndadmin','127.0.0.1','Y','2014-01-14 07:54:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(437,'darun','127.0.0.1','Y','2014-01-14 07:55:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(438,'alex','127.0.0.1','Y','2014-01-14 07:58:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(439,'admin','127.0.0.1','Y','2014-01-14 09:34:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(440,'pndadmin','127.0.0.1','Y','2014-01-14 10:53:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(441,'deswell','127.0.0.1','N','2014-01-14 10:53:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(442,'pndadmin','127.0.0.1','Y','2014-01-14 10:53:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(443,'deswell','127.0.0.1','Y','2014-01-14 10:54:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(444,'admin','127.0.0.1','Y','2014-01-14 15:01:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(445,'darun','127.0.0.1','Y','2014-01-14 15:01:31','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(446,'admin','127.0.0.1','Y','2014-01-14 15:01:50','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(447,'darun','127.0.0.1','Y','2014-01-14 15:02:33','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(448,'admin','127.0.0.1','Y','2014-01-15 01:28:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(449,'pndadmin','127.0.0.1','Y','2014-01-15 01:28:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(450,'pndadmin','127.0.0.1','Y','2014-01-15 01:34:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(451,'pndadmin','127.0.0.1','Y','2014-01-15 01:49:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(452,'darun','127.0.0.1','Y','2014-01-15 01:55:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(453,'pndadmin','127.0.0.1','Y','2014-01-15 02:12:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(454,'darun','127.0.0.1','Y','2014-01-15 02:27:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(455,'darunalex','127.0.0.1','Y','2014-01-15 02:38:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(456,'darun','127.0.0.1','Y','2014-01-15 04:50:04','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(457,'pndadmin','127.0.0.1','Y','2014-01-15 05:19:33','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(458,'deswell','127.0.0.1','Y','2014-01-15 05:20:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(459,'dsalex','127.0.0.1','Y','2014-01-15 05:23:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(460,'pndadmin','127.0.0.1','Y','2014-01-15 05:54:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(461,'darun','127.0.0.1','Y','2014-01-15 07:45:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(462,'admin','127.0.0.1','Y','2014-01-16 02:56:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(463,'admin','127.0.0.1','Y','2014-01-16 03:44:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(464,'darun','127.0.0.1','Y','2014-01-16 03:52:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(465,'admin','127.0.0.1','N','2014-01-16 04:11:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(466,'admin','127.0.0.1','Y','2014-01-16 04:11:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(467,'admin','127.0.0.1','Y','2014-01-16 04:19:47','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(468,'darun','127.0.0.1','Y','2014-01-16 04:42:38','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(469,'admin','127.0.0.1','Y','2014-01-16 05:29:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(470,'admin','127.0.0.1','Y','2014-01-16 07:59:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(471,'admin','127.0.0.1','Y','2014-01-17 03:15:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(472,'admin','127.0.0.1','Y','2014-01-20 07:37:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(473,'darun','127.0.0.1','Y','2014-01-21 01:24:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(474,'darun','127.0.0.1','Y','2014-01-21 01:25:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(475,'admin','127.0.0.1','Y','2014-01-21 01:28:28','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(476,'darun','127.0.0.1','Y','2014-01-21 01:37:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(477,'pndadmin','127.0.0.1','Y','2014-01-21 02:25:01','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(478,'demo1','127.0.0.1','N','2014-01-21 07:16:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(479,'demo1','127.0.0.1','N','2014-01-21 07:16:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(480,'admin','127.0.0.1','Y','2014-01-21 07:16:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(481,'demo1','127.0.0.1','Y','2014-01-21 07:18:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(482,'pndadmin','127.0.0.1','Y','2014-01-22 02:11:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(483,'admin','127.0.0.1','N','2014-01-22 03:23:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(484,'admin','127.0.0.1','Y','2014-01-22 03:23:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(485,'ADMIN','127.0.0.1','Y','2014-01-22 03:36:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(486,'DEMO1OPERATOR','127.0.0.1','Y','2014-01-22 03:41:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(487,'ADMIN','127.0.0.1','Y','2014-01-22 03:43:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(488,'demo1operator','127.0.0.1','Y','2014-01-22 03:50:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(489,'admin','127.0.0.1','Y','2014-01-22 03:53:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(490,'DEMO1OPERATOR','127.0.0.1','Y','2014-01-22 03:56:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(491,'admin','127.0.0.1','Y','2014-01-22 04:01:50','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(492,'admin','127.0.0.1','Y','2014-01-22 04:05:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(493,'admin','127.0.0.1','Y','2014-01-22 05:05:03','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(494,'DEMO1OPERATION','127.0.0.1','N','2014-01-22 05:24:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(495,'DEMO1OPERATION','127.0.0.1','N','2014-01-22 05:24:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(496,'DEMO1OPERATION','127.0.0.1','N','2014-01-22 05:24:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(497,'admin','127.0.0.1','Y','2014-01-22 05:24:28','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(498,'DEMO1OPERATOR','127.0.0.1','Y','2014-01-22 05:24:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(499,'admin','127.0.0.1','Y','2014-01-22 05:29:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(500,'admin','127.0.0.1','Y','2014-01-22 06:07:44','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(501,'admin','127.0.0.1','Y','2014-01-22 06:32:49','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(502,'DEMO1OPERATOR','127.0.0.1','Y','2014-01-22 06:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcuserorgrole`
--

LOCK TABLES `fcuserorgrole` WRITE;
/*!40000 ALTER TABLE `fcuserorgrole` DISABLE KEYS */;
INSERT INTO `fcuserorgrole` VALUES (3,'Hong Yee',3,1,1),(21,'pndadmin',6,2,1),(47,'darun',26,3,1),(51,'alex thong',26,3,1),(53,'darunalex',26,4,1),(55,'deswell',28,3,1),(56,'dsalex',28,4,1),(57,'dsdanny',28,5,1),(58,'dskeng',29,4,1),(59,'user1',27,3,1),(60,'user2',26,4,1),(61,'DEMO1ADMIN',31,3,1),(62,'DEMO1OPERATOR',31,4,1),(63,'DEMO1MANAGER',31,5,1),(64,'DEMO2ADMIN',32,3,1),(65,'DEMO2OPERATOR',32,4,1),(66,'DEMO2MANAGER',32,5,1),(67,'demo1',31,3,1),(71,'admin',6,1,1),(72,'admin',6,2,NULL),(73,'admin',6,3,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcusersession`
--

LOCK TABLES `fcusersession` WRITE;
/*!40000 ALTER TABLE `fcusersession` DISABLE KEYS */;
INSERT INTO `fcusersession` VALUES (431,'duicomhrn0fl6lcuums6227rm3','demo1','127.0.0.1','Y','2014-01-21 07:18:37','2014-01-21 07:18:37',NULL),(448,'l754p8fq4i0fso9il5pltl2fo1','DEMO1OPERATOR','127.0.0.1','Y','2014-01-22 06:34:20','2014-01-22 06:34:20',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smbtransaction`
--

LOCK TABLES `smbtransaction` WRITE;
/*!40000 ALTER TABLE `smbtransaction` DISABLE KEYS */;
INSERT INTO `smbtransaction` VALUES (2,72,'2011-12-09 09:09:06',111,NULL,'123'),(5,72,'2011-12-14 05:47:53',25,NULL,'25'),(6,74,'2011-12-14 05:48:04',30,NULL,'30'),(7,75,'2011-12-14 08:59:57',100,NULL,'100'),(8,79,'2011-12-14 09:49:13',200,NULL,'200'),(9,78,'2011-12-14 09:50:03',50,NULL,'50'),(10,80,'2011-12-16 08:03:00',100,NULL,'Print for...'),(11,83,'2011-12-17 05:29:22',200,NULL,'20'),(12,297,'2013-01-07 05:28:53',15,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smcontent`
--

LOCK TABLES `smcontent` WRITE;
/*!40000 ALTER TABLE `smcontent` DISABLE KEYS */;
INSERT INTO `smcontent` VALUES (3,'FAQ','How to create shelf?','<p>&nbsp;</p>\r\n<p>Pre-requirement. You must created shelf group before you can create shelf.</p>\r\n<p>Go Setting, mouse over to shelf setting and select shelfsetting.</p>\r\n<p>&nbsp;</p>\r\n<p>Click on plus button</p>\r\n<p>Key in the shelf information</p>\r\n<p>&nbsp;</p>','2014-01-22 06:41:36',NULL,'0000-00-00 00:00:00',NULL,'ACTIVE','0000-00-00 00:00:00'),(4,'FAQ','How to create user?',NULL,'2014-01-22 06:43:24',NULL,'0000-00-00 00:00:00',NULL,'ACTIVE','0000-00-00 00:00:00'),(5,'FAQ','How to create additional organization?',NULL,'2014-01-22 06:43:48',NULL,'0000-00-00 00:00:00',NULL,'ACTIVE','0000-00-00 00:00:00'),(6,'FAQ','How to renew ?',NULL,'2014-01-22 06:44:08',NULL,'0000-00-00 00:00:00',NULL,'ACTIVE','0000-00-00 00:00:00'),(7,'FAQ','How to create plate?',NULL,'2014-01-22 06:44:25',NULL,'0000-00-00 00:00:00',NULL,'ACTIVE','0000-00-00 00:00:00'),(8,'FAQ','How to search plate?',NULL,'2014-01-22 06:44:48',NULL,'0000-00-00 00:00:00',NULL,'ACTIVE','0000-00-00 00:00:00'),(9,'FAQ','How to edit plate location?',NULL,'2014-01-22 06:45:42',NULL,'0000-00-00 00:00:00',NULL,'ACTIVE','0000-00-00 00:00:00'),(10,'FAQ','What is the purpose of having report?',NULL,'2014-01-22 06:46:09',NULL,'0000-00-00 00:00:00',NULL,'ACTIVE','0000-00-00 00:00:00'),(11,'FAQ','What is operation/ check in out?',NULL,'2014-01-22 06:53:26',NULL,'0000-00-00 00:00:00',NULL,'ACTIVE','0000-00-00 00:00:00'),(12,'FAQ','What is the purpose having stock count?',NULL,'2014-01-22 06:53:51',NULL,'0000-00-00 00:00:00',NULL,'ACTIVE','0000-00-00 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=400 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smcustomer`
--

LOCK TABLES `smcustomer` WRITE;
/*!40000 ALTER TABLE `smcustomer` DISABLE KEYS */;
INSERT INTO `smcustomer` VALUES (337,'Haier','H588810-V','MHAIER-V','038854124',31),(338,'Hisense','HS9514-F','HISENSE-D','038856974',31),(339,'Huawei','HUA5815-V','HUAWEI-A581','065478512',31),(340,'Lenovo','L91518-D','LENOVO-515','0357896651',31),(341,'TCL','TCL8510-V','M235295-T','078554123',31),(342,'ZTE','ZTE95251-V','ZTEM86235','0478896421',31),(343,'Amkette','AM518510-V','AMKETTE-MAS01','0498762251',31),(344,'Beetel','B059260-V','BEETEL951','037458412',31),(345,'Bharat Electronics','BE8616-F','BHARAT-1618A','0478533651',31),(346,'Godrej','GOD51508C','GODREJ-58V','03557963412',31),(347,'HCL','HCL69106','HCL59610-D','046685912',31),(348,'iBall','IBAL95168V','IBALL861KKV','0978545631',31),(349,'Intex','INTEX59185-V','M68160V','0478852120',31),(350,'Lava','LA81N6-V','LAVA901-V','0358789641',31),(351,'Micromax','M91206I0-V','MICROMAX0661','0465845632',31),(352,'Notion Ink','N5601601','NOTIONINK9510','036698964',31),(353,'Onida','ONI6928N','ONIDA1610','0388579640',31),(354,'Voltas','VOL18610-V','VOLTAS-V591','0378855420',31),(355,'Alpine','ALPI5915-V','ALPINE61861','0354785420',31),(356,'Brother Industries','BROT5106-V','BROTHER81','038574563',31),(357,'Canon','CAN691-V','CANON961-1','0357789641',31),(358,'Casio','CAS616V','CASIO1961','0396754212',31),(359,'Fujitsu','FUTI191-V','FUJITSU519-V','03578856242',31),(360,'Hitachi','HITC9016HV','HITACHI-V619','0557745620',31),(361,'IO Data','IO519610-D','IODATA96106','0387724854',31),(362,'Epson','EP6910S','EPSON-5168','0377758412',31),(363,'Kenwood','KEN6810-D','KENWOOD-186','0328755632',31),(364,'Konica','KON86190-C','KONICA-19D','074458964',31),(365,'Mitsubishi','D816910-D','MITSUBISHI-619','064577950',31),(366,'JVC','JVC8610-D','JVCKSFJ-D','035878964',31),(367,'Panasonic','PAN9515-S','PANASONIC-6','0365589745',31),(368,'Pentax','P51851I-D','M851951','0385576210',31),(369,'Pioneer','P6926-D','PIONEER-62','038577452',31),(370,'Nikkon','NK601-V','NIKKON-618','0378554741',31),(371,'Ricoh','R60619NV-D','RICOH-1NV','038996725',31),(372,'Sony','SO69101-D','SONY951-D','0352247568',31),(373,'Toshiba','TKSJT-D','TOSHIBA-618S','0325578965',31),(374,'LG','LG01-61V','LG56100','0355879655',31);
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
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smplate`
--

LOCK TABLES `smplate` WRITE;
/*!40000 ALTER TABLE `smplate` DISABLE KEYS */;
INSERT INTO `smplate` VALUES (90,332,79,-1,2985,NULL,'3D24CF','636199F29701','2014-01-21 06:41:44','SYSTEM','ACTIVE',31),(91,270,79,-1,2986,NULL,'CCF214','B05BC2951C97','2014-01-21 06:41:44','SYSTEM','ACTIVE',31),(92,189,79,-1,2987,NULL,'789D7F','6A3D531371BC','2014-01-21 06:41:44','SYSTEM','ACTIVE',31),(93,165,79,-1,2988,NULL,'99E44C','14C4DD4C0E25','2014-01-21 06:41:44','SYSTEM','ACTIVE',31),(94,241,79,-1,2989,NULL,'7768EC','02312770C9C8','2014-01-21 06:41:44','SYSTEM','ACTIVE',31),(95,291,79,-1,2990,NULL,'27F789','5B9B9A67D16B','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(96,198,79,-1,2991,NULL,'C0717C','8281E478497A','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(97,167,79,-1,2992,NULL,'484C5F','20E7A87DFEAA','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(98,322,79,-1,2993,NULL,'21F83D','8108A2B5FD89','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(99,227,79,-1,2994,NULL,'8CDCCA','1AB6D4097C6F','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(100,292,79,-1,2995,NULL,'B1AEF5','D57DF15BD969','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(101,159,79,-1,2996,NULL,'B5BE98','822332E13F49','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(102,301,80,-1,3185,NULL,'506966','BD8D354132A6','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(103,152,80,-1,3186,NULL,'A644A2','0F25B66E3F76','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(104,294,80,-1,3187,NULL,'EC3028','1E80D78C551D','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(105,292,80,-1,3188,NULL,'63BFDB','5DC46A2CD5AA','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(106,329,80,-1,3189,NULL,'C5AF4C','1AB544C87201','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(107,211,80,-1,3190,NULL,'1EA48E','24ECDAF96F2E','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(108,319,80,-1,3191,NULL,'2DF746','0902D877D588','2014-01-21 06:41:45','SYSTEM','ACTIVE',31),(109,152,80,-1,3192,NULL,'70F46B','0B90519306DC','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(110,159,80,-1,3193,NULL,'6FDA49','EE115EF8B610','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(111,195,80,-1,3194,NULL,'93309A','559937AB4E1E','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(112,210,81,-1,3385,NULL,'10A9DC','4F161E61C3FF','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(113,246,81,-1,3386,NULL,'AC8F66','E8A13E0F0BE6','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(114,239,81,-1,3387,NULL,'501C2F','FC89B407D832','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(115,267,82,-1,3585,NULL,'92CFE2','48A0E38EE419','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(116,171,82,-1,3586,NULL,'B64DB1','828587F00AAB','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(117,284,82,-1,3587,NULL,'F16270','BF3A42ADBC9C','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(118,223,82,-1,3588,NULL,'E6CCE0','23AF7BECA4B3','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(119,306,82,-1,3589,NULL,'B2307E','A04909290D64','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(120,222,82,-1,3590,NULL,'FCE7F5','356BAD8BC0AD','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(121,289,83,-1,3785,NULL,'897D8F','C293C3B92A87','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(122,223,83,-1,3786,NULL,'3A12AA','55785787DB22','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(123,173,83,-1,3787,NULL,'F9638C','ECD558ED7A88','2014-01-21 06:41:46','SYSTEM','ACTIVE',31),(124,330,83,-1,3788,NULL,'72A5A4','D287DB06626B','2014-01-21 06:41:47','SYSTEM','ACTIVE',31),(125,216,83,-1,3789,NULL,'A5CDE2','B4A27BA626E9','2014-01-21 06:41:47','SYSTEM','ACTIVE',31),(126,181,84,-1,3985,NULL,'89B52C','03ED1CF9A093','2014-01-21 06:41:47','SYSTEM','ACTIVE',31),(127,262,84,-1,3986,NULL,'A5B53E','0BFCCA4168BE','2014-01-21 06:41:47','SYSTEM','ACTIVE',31),(128,290,84,-1,3987,NULL,'6506F7','CB3A7C68F652','2014-01-21 06:41:47','SYSTEM','ACTIVE',31),(129,430,85,-1,4185,NULL,'6D74DD','519F82AA6711','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(130,217,85,-1,4186,NULL,'C681F4','15142618962F','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(131,275,85,-1,4187,NULL,'2B68B1','73CD0DA8049D','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(132,240,85,-1,4188,NULL,'A18F26','D0BF9E57248F','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(133,359,85,-1,4189,NULL,'7E068A','667E699F1FD9','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(134,399,85,-1,4190,NULL,'802AE5','414ADF772EDD','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(135,321,85,-1,4191,NULL,'2C98AF','9A1AD262EE48','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(136,276,85,-1,4192,NULL,'1F6A45','C5D743D8213E','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(137,237,85,-1,4193,NULL,'549AFE','4C4C5ED01880','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(138,293,85,-1,4194,NULL,'BC1F5E','3E8D5229C647','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(139,358,86,-1,4385,NULL,'A72267','5674774FBDAD','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(140,333,86,-1,4386,NULL,'9C7219','66D340E110D6','2014-01-21 07:15:49','SYSTEM','ACTIVE',31),(141,352,86,-1,4387,NULL,'873955','CC42D6210EA8','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(142,276,86,-1,4388,NULL,'03A413','370E338DE024','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(143,360,86,-1,4389,NULL,'6F47E3','CD95CBF0165D','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(144,220,86,-1,4390,NULL,'5172F6','D285FB6F4198','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(145,454,86,-1,4391,NULL,'AE8325','E7CB2791BEAC','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(146,296,86,-1,4392,NULL,'2F47AC','F54327603104','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(147,225,86,-1,4393,NULL,'80E6A3','44AEF823014E','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(148,315,86,-1,4394,NULL,'AAD0F9','0E39E252E0F8','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(149,217,86,-1,4395,NULL,'9F41C9','2C84BACE5D1A','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(150,344,87,-1,4585,NULL,'0128AB','8D0E018BD7AB','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(151,290,87,-1,4586,NULL,'7136B1','FA5DCF94D75B','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(152,221,87,-1,4587,NULL,'7B8859','48833CA6E924','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(153,399,87,-1,4588,NULL,'919101','1DC72986C68A','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(154,352,87,-1,4589,NULL,'1C5457','C37B94087EE8','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(155,254,87,-1,4590,NULL,'43D4A9','C54F5E032584','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(156,375,87,-1,4591,NULL,'D0297F','5426683826A7','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(157,277,87,-1,4592,NULL,'75A141','0CED9F254F97','2014-01-21 07:15:50','SYSTEM','ACTIVE',31),(158,361,87,-1,4593,NULL,'0E75AF','B992C131695D','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(159,255,87,-1,4594,NULL,'EE5093','778F8A2B1B26','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(160,270,88,-1,4785,NULL,'9986D3','26E81B2B14C3','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(161,320,88,-1,4786,NULL,'0BA906','EC126EAFA84A','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(162,428,88,-1,4787,NULL,'1C0173','C349A328A622','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(163,249,88,-1,4788,NULL,'84FA34','F4AEF6614906','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(164,400,88,-1,4789,NULL,'BE9011','0273DB8803F4','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(165,219,88,-1,4790,NULL,'3D917B','28523072D47B','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(166,447,88,-1,4791,NULL,'9EC7BD','3C56A72636E1','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(167,272,88,-1,4792,NULL,'84DD92','52E33E5673DA','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(168,244,88,-1,4793,NULL,'3F926E','8A57016A1A9F','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(169,456,88,-1,4794,NULL,'06D8B3','8395DA12C890','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(170,327,88,-1,4795,NULL,'CBA974','B8267268C490','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(171,426,88,-1,4796,NULL,'E735CA','67CED8E60C7A','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(172,256,89,-1,4985,NULL,'914CC6','FE89E7B3F7DD','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(173,404,89,-1,4986,NULL,'53EE6D','19BA16A495F8','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(174,316,89,-1,4987,NULL,'2F90F9','058191565F72','2014-01-21 07:15:51','SYSTEM','ACTIVE',31),(175,211,89,-1,4988,NULL,'E8CF8F','7C962FC5AB32','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(176,400,89,-1,4989,NULL,'468080','7FF70148D66A','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(177,227,89,-1,4990,NULL,'581B92','782B3A8074A5','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(178,414,89,-1,4991,NULL,'2FEC8A','183B6234913D','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(179,389,89,-1,4992,NULL,'959AC7','A80A87569763','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(180,353,89,-1,4993,NULL,'5779BF','4B67C664B983','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(181,310,89,-1,4994,NULL,'50E1E0','1AD57038417F','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(182,344,89,-1,4995,NULL,'D8F594','4874564D236B','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(183,429,90,-1,5185,NULL,'E6E012','4395647C49C5','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(184,231,90,-1,5186,NULL,'0ED794','919818732208','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(185,402,90,-1,5187,NULL,'EC73D2','4586C51213EA','2014-01-21 07:15:52','SYSTEM','ACTIVE',31),(186,366,90,-1,5188,NULL,'5093BB','79ECCDAA4882','2014-01-21 07:15:53','SYSTEM','ACTIVE',31),(187,290,90,-1,5189,NULL,'DE86F6','D0E0CC38C605','2014-01-21 07:15:53','SYSTEM','ACTIVE',31),(188,396,90,-1,5190,NULL,'190A45','EC5D0DC4FCB9','2014-01-21 07:15:53','SYSTEM','ACTIVE',31),(189,457,91,-1,5385,NULL,'579D84','4030BA74D98B','2014-01-22 03:40:30','SYSTEM','ACTIVE',31),(190,389,91,-1,5386,NULL,'AF2ED1','E36CD62C2B17','2014-01-22 03:40:30','SYSTEM','ACTIVE',31),(191,518,91,-1,5387,NULL,'306B65','95234ECB0AFB','2014-01-22 03:40:30','SYSTEM','ACTIVE',31),(192,578,91,-1,5388,NULL,'82CA97','4A52F5426560','2014-01-22 03:40:30','SYSTEM','ACTIVE',31),(193,579,91,-1,5389,NULL,'E724A4','C81E163F200F','2014-01-22 03:40:31','SYSTEM','ACTIVE',31),(194,299,91,-1,5390,NULL,'6E213C','143D879C2721','2014-01-22 03:40:31','SYSTEM','THROW',31),(197,564,91,-1,5393,NULL,'87D6C9','15664E5ED3C9','2014-01-22 03:40:31','SYSTEM','ACTIVE',31),(198,449,91,-1,5394,NULL,'230440','BF0EE2E1833D','2014-01-22 03:40:31','SYSTEM','ACTIVE',31),(199,533,91,-1,5395,NULL,'4C39B5','1E4504739ADE','2014-01-22 03:40:32','SYSTEM','ACTIVE',31),(200,461,91,-1,5396,NULL,'D89E30','18841370056E','2014-01-22 03:40:32','SYSTEM','ACTIVE',31),(201,472,91,-1,5397,NULL,'6160EC','00BF777937CC','2014-01-22 03:40:32','SYSTEM','ACTIVE',31),(202,531,91,-1,5398,NULL,'B2224C','03BADC5BBF74','2014-01-22 03:40:32','SYSTEM','ACTIVE',31),(203,394,92,-1,5585,NULL,'A543FE','473B75CA450B','2014-01-22 03:40:32','SYSTEM','ACTIVE',31),(204,313,92,-1,5586,NULL,'7E88E6','2DDE5FBAC931','2014-01-22 03:40:32','SYSTEM','ACTIVE',31),(205,517,92,-1,5587,NULL,'C59A6C','2CE8DE546AFD','2014-01-22 03:40:32','SYSTEM','ACTIVE',31),(206,336,92,-1,5588,NULL,'548590','48B57C4F5EE8','2014-01-22 03:40:32','SYSTEM','ACTIVE',31),(207,540,92,-1,5589,NULL,'936AE1','891C14646ADA','2014-01-22 03:40:32','SYSTEM','ACTIVE',31),(210,322,92,-1,5592,NULL,'048EE1','DB9EF36E2AFF','2014-01-22 03:40:32','SYSTEM','ACTIVE',31),(211,355,92,-1,5593,NULL,'5D27E0','DFA6A0CA3D01','2014-01-22 03:40:33','SYSTEM','ACTIVE',31),(212,492,92,-1,5594,NULL,'107DDC','F986C9AC36E0','2014-01-22 03:40:33','SYSTEM','ACTIVE',31),(214,551,93,-1,5785,NULL,'EB6AAE','475D90EDA638','2014-01-22 03:40:33','SYSTEM','ACTIVE',31),(216,362,93,-1,5787,NULL,'AB7564','A7CA93456CAE','2014-01-22 03:40:33','SYSTEM','ACTIVE',31),(217,546,93,-1,5788,NULL,'34DB0E','9C0EC11AB2FF','2014-01-22 03:40:33','SYSTEM','ACTIVE',31),(218,386,93,-1,5789,NULL,'4AABA5','3D60355299F1','2014-01-22 03:40:33','SYSTEM','ACTIVE',31),(219,351,93,-1,5790,NULL,'9BFB95','A7C716C96EE7','2014-01-22 03:40:33','SYSTEM','ACTIVE',31),(220,343,93,-1,5791,NULL,'A0D9FB','B7B40F9D7180','2014-01-22 03:40:33','SYSTEM','ACTIVE',31),(221,350,93,-1,5792,NULL,'D3AB5A','3A18D7C72450','2014-01-22 03:40:33','SYSTEM','ACTIVE',31),(222,438,93,-1,5793,NULL,'506F19','7819D65B85EB','2014-01-22 03:40:33','SYSTEM','ACTIVE',31),(223,501,93,-1,5794,NULL,'450ACF','ECD1B596A27A','2014-01-22 03:40:34','SYSTEM','ACTIVE',31),(224,359,93,-1,5795,NULL,'6F155B','5C0F748D5BA1','2014-01-22 03:40:34','SYSTEM','ACTIVE',31),(225,330,93,-1,5796,NULL,'B08058','829D0F6F50EF','2014-01-22 03:40:34','SYSTEM','ACTIVE',31),(227,524,93,-1,5798,NULL,'898252','BC0829C0FE7B','2014-01-22 03:40:34','SYSTEM','ACTIVE',31),(228,466,94,-1,5985,NULL,'B0527F','D2F8435738D8','2014-01-22 03:40:34','SYSTEM','ACTIVE',31),(231,368,94,-1,5988,NULL,'37BE8B','617A7285E04B','2014-01-22 03:40:34','SYSTEM','ACTIVE',31),(232,361,94,-1,5989,NULL,'B161C3','FF221E486B8A','2014-01-22 03:40:34','SYSTEM','ACTIVE',31),(233,361,94,-1,5990,NULL,'CDE9C3','F6798AF062CF','2014-01-22 03:40:34','SYSTEM','ACTIVE',31),(234,522,94,-1,5991,NULL,'7E1F59','529FC5D7B614','2014-01-22 03:40:34','SYSTEM','ACTIVE',31),(235,398,94,-1,5992,NULL,'3DB1F6','64181AC611AA','2014-01-22 03:40:35','SYSTEM','ACTIVE',31),(236,438,94,-1,5993,NULL,'DA7457','53069063CD94','2014-01-22 03:40:35','SYSTEM','ACTIVE',31),(237,385,94,-1,5994,NULL,'87B75E','781FF7666C79','2014-01-22 03:40:35','SYSTEM','ACTIVE',31),(238,379,94,-1,5995,NULL,'21DD60','3D41D8EB2B19','2014-01-22 03:40:35','SYSTEM','ACTIVE',31),(239,392,94,-1,5996,NULL,'C30D36','53113EAA156F','2014-01-22 03:40:35','SYSTEM','ACTIVE',31),(240,346,94,-1,5997,NULL,'9FF4C1','ED8750A526BD','2014-01-22 03:40:35','SYSTEM','ACTIVE',31),(241,402,94,-1,5998,NULL,'B9672B','20771B354546','2014-01-22 03:40:35','SYSTEM','ACTIVE',31),(242,530,94,-1,5999,NULL,'98492B','FD76D3386818','2014-01-22 03:40:35','SYSTEM','ACTIVE',31),(243,547,94,-1,6000,NULL,'7CA919','0BD5FD4D1111','2014-01-22 03:40:35','SYSTEM','ACTIVE',31),(245,512,94,-1,6002,NULL,'1E0D8E','A6C4EA431754','2014-01-22 03:40:35','SYSTEM','ACTIVE',31),(246,526,94,-1,6003,NULL,'B9D980','2D6F35D3C9CC','2014-01-22 03:40:35','SYSTEM','ACTIVE',31),(247,332,94,-1,6004,NULL,'4BBDC9','E95ADB5B617D','2014-01-22 03:40:35','SYSTEM','ACTIVE',31),(248,358,95,-1,6185,NULL,'7C6AB9','98DF8BD3EABF','2014-01-22 03:40:36','SYSTEM','ACTIVE',31),(250,582,95,-1,6187,NULL,'6E91B0','87DF90796E76','2014-01-22 03:40:36','SYSTEM','ACTIVE',31),(251,468,95,-1,6188,NULL,'C4E90D','154F240E9BFB','2014-01-22 03:40:36','SYSTEM','ACTIVE',31),(252,346,95,-1,6189,NULL,'2F6296','4A41A4534259','2014-01-22 03:40:36','SYSTEM','ACTIVE',31),(253,501,95,-1,6190,NULL,'026AF6','CB1DD48ED357','2014-01-22 03:40:36','SYSTEM','ACTIVE',31),(254,322,95,-1,6191,NULL,'14E9AE','80CB46FBAC0E','2014-01-22 03:40:36','SYSTEM','ACTIVE',31),(255,531,95,-1,6192,NULL,'244CC2','1B0CD6C11CB4','2014-01-22 03:40:36','SYSTEM','ACTIVE',31),(256,581,95,-1,6193,NULL,'43541D','0A50E551BB0B','2014-01-22 03:40:36','SYSTEM','ACTIVE',31),(257,496,95,-1,6194,NULL,'0009CC','5C8A4AF5ED63','2014-01-22 03:40:36','SYSTEM','ACTIVE',31),(258,477,95,-1,6195,NULL,'F4E953','9D4439CC91C1','2014-01-22 03:40:36','SYSTEM','ACTIVE',31),(260,476,96,-1,6385,NULL,'537046','0DAD9F6D721E','2014-01-22 03:40:36','SYSTEM','ACTIVE',31),(261,421,96,-1,6386,NULL,'6EE3AA','0C6B786471DC','2014-01-22 03:40:37','SYSTEM','ACTIVE',31),(262,396,96,-1,6387,NULL,'843C00','B99F21883B31','2014-01-22 03:40:37','SYSTEM','ACTIVE',31),(263,509,96,-1,6388,NULL,'35F336','44372DD815CF','2014-01-22 03:40:37','SYSTEM','ACTIVE',31),(264,549,96,-1,6389,NULL,'6AA605','8871851BC1B7','2014-01-22 03:40:37','SYSTEM','ACTIVE',31),(265,420,96,-1,6390,NULL,'B16D23','7D39BB3D0376','2014-01-22 03:40:37','SYSTEM','ACTIVE',31),(266,521,96,-1,6391,NULL,'354057','744F60226A3C','2014-01-22 03:40:37','SYSTEM','ACTIVE',31),(267,535,96,-1,6392,NULL,'8CCB34','E9E53D6FC00F','2014-01-22 03:40:37','SYSTEM','ACTIVE',31),(268,518,96,-1,6393,NULL,'227DB0','20DB6F26FA63','2014-01-22 03:40:37','SYSTEM','ACTIVE',31),(269,328,96,-1,6394,NULL,'C11D2E','7031FF1974CC','2014-01-22 03:40:37','SYSTEM','ACTIVE',31),(270,557,96,-1,6395,NULL,'D1D461','218FC4FB740A','2014-01-22 03:40:37','SYSTEM','ACTIVE',31),(273,360,96,-1,6398,NULL,'63ED8C','A001D857EC11','2014-01-22 03:40:37','SYSTEM','ACTIVE',31),(274,546,96,-1,6399,NULL,'793A6F','204AA1CEE7C6','2014-01-22 03:40:38','SYSTEM','ACTIVE',31),(275,462,96,-1,6400,NULL,'90095D','96C3ACAC895E','2014-01-22 03:40:38','SYSTEM','ACTIVE',31),(276,524,96,-1,6401,NULL,'CFEDD4','22A601221A76','2014-01-22 03:40:38','SYSTEM','ACTIVE',31),(277,314,96,-1,6402,NULL,'38390F','8543823EEC6D','2014-01-22 03:40:38','SYSTEM','ACTIVE',31),(278,511,96,-1,6403,NULL,'D07584','4FBEAA810A40','2014-01-22 03:40:38','SYSTEM','ACTIVE',31),(279,402,96,-1,6404,NULL,'429497','34E0CCBBE1C0','2014-01-22 03:40:38','SYSTEM','ACTIVE',31),(280,458,96,-1,6405,NULL,'2E3BDF','EBB312EA8FD6','2014-01-22 03:40:38','SYSTEM','ACTIVE',31),(281,387,96,-1,6406,NULL,'E303D7','0B0FD407DF8C','2014-01-22 03:40:38','SYSTEM','ACTIVE',31),(282,314,96,-1,6407,NULL,'BB9B95','1B8E04C953F0','2014-01-22 03:40:38','SYSTEM','ACTIVE',31),(283,480,96,-1,6408,NULL,'EE5129','08A34DFD6235','2014-01-22 03:40:38','SYSTEM','ACTIVE',31),(284,468,96,-1,6409,NULL,'E8705F','5F989190D605','2014-01-22 03:40:38','SYSTEM','ACTIVE',31),(286,488,96,-1,6411,NULL,'3DA127','70665E4FCC9E','2014-01-22 03:40:38','SYSTEM','ACTIVE',31),(287,430,96,-1,6412,NULL,'90A0BB','034045DF6AB2','2014-01-22 03:40:39','SYSTEM','ACTIVE',31),(288,490,96,-1,6413,NULL,'C0B020','AFCB221C2C9A','2014-01-22 03:40:39','SYSTEM','ACTIVE',31),(289,321,96,-1,6414,NULL,'2CC8F9','4429326F6034','2014-01-22 03:40:39','SYSTEM','ACTIVE',31),(290,419,96,-1,6415,NULL,'A5CC48','180A1F458FD6','2014-01-22 03:40:39','SYSTEM','ACTIVE',31),(291,391,96,-1,6416,NULL,'946DDE','678280EEC1BA','2014-01-22 03:40:39','SYSTEM','ACTIVE',31),(292,430,96,-1,6417,NULL,'C18D9A','E118F0FFEEDB','2014-01-22 03:40:39','SYSTEM','ACTIVE',31),(293,324,96,-1,6418,NULL,'65FEDE','128110C4F68E','2014-01-22 03:40:39','SYSTEM','ACTIVE',31),(294,499,97,-1,6585,NULL,'747C88','B9A5F9B459EF','2014-01-22 05:26:16','SYSTEM','ACTIVE',31),(295,537,97,-1,6586,NULL,'74000C','DF33BD75E5FF','2014-01-22 05:26:16','SYSTEM','ACTIVE',31),(296,381,97,-1,6587,NULL,'739667','5FA103917F1A','2014-01-22 05:26:16','SYSTEM','ACTIVE',31),(297,359,97,-1,6588,NULL,'DB771D','E1D506053AD2','2014-01-22 05:26:17','SYSTEM','ACTIVE',31),(298,570,97,-1,6589,NULL,'F079BF','F381FF17BEF3','2014-01-22 05:26:17','SYSTEM','ACTIVE',31),(299,428,97,-1,6590,NULL,'BCCD6B','1122B859F41D','2014-01-22 05:26:17','SYSTEM','ACTIVE',31),(300,631,97,-1,6591,NULL,'C030DD','52BE26828BF2','2014-01-22 05:26:17','SYSTEM','ACTIVE',31),(301,457,97,-1,6592,NULL,'BA764D','DE019032BF0A','2014-01-22 05:26:17','SYSTEM','ACTIVE',31),(302,507,97,-1,6593,NULL,'F7AED2','437A8DF413F1','2014-01-22 05:26:17','SYSTEM','ACTIVE',31),(303,672,97,-1,6594,NULL,'526D7C','EDC8D01872B9','2014-01-22 05:26:17','SYSTEM','ACTIVE',31),(304,504,97,-1,6595,NULL,'1075A4','A63F85920073','2014-01-22 05:26:17','SYSTEM','ACTIVE',31),(305,561,97,-1,6596,NULL,'8F3FA3','0F74CB94A3A5','2014-01-22 05:26:17','SYSTEM','ACTIVE',31),(306,705,97,-1,6597,NULL,'F5326C','1C428979F32D','2014-01-22 05:26:18','SYSTEM','ACTIVE',31),(307,582,97,-1,6598,NULL,'D328A3','77F9A5075090','2014-01-22 05:26:18','SYSTEM','ACTIVE',31),(308,640,97,-1,6599,NULL,'05A3B7','967AD6E8688C','2014-01-22 05:26:18','SYSTEM','ACTIVE',31),(309,438,97,-1,6600,NULL,'D50E8A','7CE90CB05987','2014-01-22 05:26:18','SYSTEM','ACTIVE',31),(310,658,97,-1,6601,NULL,'73F3CA','6623C6381399','2014-01-22 05:26:18','SYSTEM','ACTIVE',31),(311,504,97,-1,6602,NULL,'E39F12','D342A1A1D99B','2014-01-22 05:26:18','SYSTEM','ACTIVE',31),(312,531,97,-1,6603,NULL,'BE88B3','43F690B6F5A0','2014-01-22 05:26:18','SYSTEM','ACTIVE',31),(313,571,97,-1,6604,NULL,'63A528','482D3D2CC1B1','2014-01-22 05:26:18','SYSTEM','ACTIVE',31),(314,369,97,-1,6605,NULL,'965E29','B3DEC2A0630B','2014-01-22 05:26:18','SYSTEM','ACTIVE',31),(315,338,97,-1,6606,NULL,'372184','AEA63C82E6D8','2014-01-22 05:26:19','SYSTEM','ACTIVE',31),(316,609,98,-1,6785,NULL,'77F707','14532360DE5C','2014-01-22 05:26:19','SYSTEM','ACTIVE',31),(317,708,98,-1,6786,NULL,'60CC2D','986710A9E550','2014-01-22 05:26:19','SYSTEM','ACTIVE',31),(318,645,98,-1,6787,NULL,'E0D568','4E714E79CAA0','2014-01-22 05:26:19','SYSTEM','ACTIVE',31),(319,419,98,-1,6788,NULL,'B09544','9A69EDD786EC','2014-01-22 05:26:19','SYSTEM','ACTIVE',31),(320,441,98,-1,6789,NULL,'0EAB0E','8EEA6D1E5016','2014-01-22 05:26:19','SYSTEM','ACTIVE',31),(321,467,98,-1,6790,NULL,'4048AA','06D8A79545BC','2014-01-22 05:26:19','SYSTEM','ACTIVE',31),(322,514,98,-1,6791,NULL,'F60892','362C3CCB7FB3','2014-01-22 05:26:19','SYSTEM','ACTIVE',31),(323,547,98,-1,6792,NULL,'4EC828','A400B0C9DF85','2014-01-22 05:26:19','SYSTEM','ACTIVE',31),(324,381,98,-1,6793,NULL,'991C95','0046CE5A9689','2014-01-22 05:26:20','SYSTEM','ACTIVE',31),(325,430,98,-1,6794,NULL,'CCAA38','6CFD50B7A71D','2014-01-22 05:26:20','SYSTEM','ACTIVE',31),(326,625,98,-1,6795,NULL,'437E50','60A6F3E03B30','2014-01-22 05:26:20','SYSTEM','ACTIVE',31),(327,689,98,-1,6796,NULL,'A1CCC2','483F50D182B1','2014-01-22 05:26:20','SYSTEM','ACTIVE',31),(328,582,98,-1,6797,NULL,'4A028D','653B6B03B976','2014-01-22 05:26:20','SYSTEM','ACTIVE',31),(329,358,98,-1,6798,NULL,'90244E','381B690DF696','2014-01-22 05:26:20','SYSTEM','ACTIVE',31),(330,700,98,-1,6799,NULL,'B45B55','D1ADF56E535F','2014-01-22 05:26:20','SYSTEM','ACTIVE',31),(331,393,98,-1,6800,NULL,'ED97A1','1DC491579B17','2014-01-22 05:26:20','SYSTEM','ACTIVE',31),(332,670,98,-1,6801,NULL,'F297E9','9ABDCAC07E88','2014-01-22 05:26:20','SYSTEM','ACTIVE',31),(333,437,98,-1,6802,NULL,'9414CE','D6919B3B4B79','2014-01-22 05:26:20','SYSTEM','ACTIVE',31),(334,454,98,-1,6803,NULL,'51A00C','8E38A264615B','2014-01-22 05:26:21','SYSTEM','ACTIVE',31),(335,640,98,-1,6804,NULL,'614E0A','CE6F8CD8EF84','2014-01-22 05:26:21','SYSTEM','ACTIVE',31),(336,552,98,-1,6805,NULL,'CCB614','F8DE288F0BB0','2014-01-22 05:26:21','SYSTEM','ACTIVE',31),(337,360,98,-1,6806,NULL,'73CF21','F354DAC842CF','2014-01-22 05:26:21','SYSTEM','ACTIVE',31),(338,547,98,-1,6807,NULL,'C4F594','4CD7C11624A9','2014-01-22 05:26:21','SYSTEM','ACTIVE',31),(339,429,98,-1,6808,NULL,'65862F','79DE75B7123E','2014-01-22 05:26:21','SYSTEM','ACTIVE',31),(340,562,98,-1,6809,NULL,'851E2E','ACAACFEB27AC','2014-01-22 05:26:21','SYSTEM','ACTIVE',31),(341,549,98,-1,6810,NULL,'E3F7CA','0A8B3B613CE9','2014-01-22 05:26:21','SYSTEM','ACTIVE',31),(342,383,98,-1,6811,NULL,'862719','2572E92AF6CB','2014-01-22 05:26:21','SYSTEM','ACTIVE',31),(343,543,98,-1,6812,NULL,'443FAB','470090860903','2014-01-22 05:26:22','SYSTEM','ACTIVE',31),(344,659,98,-1,6813,NULL,'DE7218','9AE298024AFD','2014-01-22 05:26:22','SYSTEM','ACTIVE',31),(345,377,98,-1,6814,NULL,'3A9603','17671732A73C','2014-01-22 05:26:22','SYSTEM','ACTIVE',31),(346,441,98,-1,6815,NULL,'3679A3','DF1E42D6C277','2014-01-22 05:26:22','SYSTEM','ACTIVE',31),(347,502,98,-1,6816,NULL,'6DAA88','3D27C2096EE8','2014-01-22 05:26:22','SYSTEM','ACTIVE',31),(348,680,98,-1,6817,NULL,'6BB513','7163C03E04AC','2014-01-22 05:26:22','SYSTEM','ACTIVE',31),(349,570,99,-1,6985,NULL,'80E639','DE266D29EFE1','2014-01-22 05:26:22','SYSTEM','ACTIVE',31),(350,526,99,-1,6986,NULL,'FAE2D9','8CA710C6FDB9','2014-01-22 05:26:22','SYSTEM','ACTIVE',31),(351,554,99,-1,6987,NULL,'EBF854','58012786FA50','2014-01-22 05:26:23','SYSTEM','ACTIVE',31),(352,647,99,-1,6988,NULL,'3D8F5E','ADB0962D2417','2014-01-22 05:26:23','SYSTEM','ACTIVE',31),(353,644,99,-1,6989,NULL,'5BABE9','4DE449752E49','2014-01-22 05:26:23','SYSTEM','ACTIVE',31),(354,453,99,-1,6990,NULL,'80DF6C','53A4E0D2405D','2014-01-22 05:26:23','SYSTEM','ACTIVE',31),(355,642,99,-1,6991,NULL,'6A086D','6F3FFAA811C6','2014-01-22 05:26:23','SYSTEM','ACTIVE',31),(356,659,99,-1,6992,NULL,'CEF45E','10F20AA73453','2014-01-22 05:26:23','SYSTEM','ACTIVE',31),(357,691,99,-1,6993,NULL,'7B05BE','FE35F5214565','2014-01-22 05:26:23','SYSTEM','ACTIVE',31),(358,514,99,-1,6994,NULL,'55C8BE','0929FAB7FB27','2014-01-22 05:26:23','SYSTEM','ACTIVE',31),(359,478,99,-1,6995,NULL,'034DA4','D2C714DFFD9E','2014-01-22 05:26:23','SYSTEM','ACTIVE',31),(360,481,99,-1,6996,NULL,'EF0A44','A95B82688565','2014-01-22 05:26:23','SYSTEM','ACTIVE',31),(361,600,99,-1,6997,NULL,'F65CFD','72A24A70E982','2014-01-22 05:26:23','SYSTEM','ACTIVE',31),(362,657,99,-1,6998,NULL,'DBB533','283EE32C725E','2014-01-22 05:26:24','SYSTEM','ACTIVE',31),(363,557,99,-1,6999,NULL,'34B9DF','9B40FB3A8975','2014-01-22 05:26:24','SYSTEM','ACTIVE',31),(364,371,99,-1,7000,NULL,'0D0F4F','C2304CEC1B22','2014-01-22 05:26:24','SYSTEM','ACTIVE',31),(365,478,99,-1,7001,NULL,'83C7FD','203BD87573A0','2014-01-22 05:26:25','SYSTEM','ACTIVE',31),(366,616,99,-1,7002,NULL,'A988A5','38B6C1671E9B','2014-01-22 05:26:25','SYSTEM','ACTIVE',31),(367,563,99,-1,7003,NULL,'55910F','D808702CD7B4','2014-01-22 05:26:25','SYSTEM','ACTIVE',31),(368,413,99,-1,7004,NULL,'6456EA','5EDF33DCA06B','2014-01-22 05:26:25','SYSTEM','ACTIVE',31),(369,347,99,-1,7005,NULL,'EDBB56','F5DBE3FE8B7E','2014-01-22 05:26:25','SYSTEM','ACTIVE',31),(370,627,99,-1,7006,NULL,'DFA9FC','1474402C397F','2014-01-22 05:26:25','SYSTEM','ACTIVE',31),(371,500,99,-1,7007,NULL,'C8FFF6','E82B97F2897E','2014-01-22 05:26:25','SYSTEM','ACTIVE',31),(372,634,100,-1,7185,NULL,'A93A7E','25166C12AD98','2014-01-22 05:26:25','SYSTEM','ACTIVE',31),(373,572,100,-1,7186,NULL,'DD4A34','2EC4450121BE','2014-01-22 05:26:26','SYSTEM','ACTIVE',31),(374,671,100,-1,7187,NULL,'0EEB7A','B98A53469205','2014-01-22 05:26:26','SYSTEM','ACTIVE',31),(375,573,100,-1,7188,NULL,'871636','190CD0F714AE','2014-01-22 05:26:26','SYSTEM','ACTIVE',31),(376,515,100,-1,7189,NULL,'384D46','7EF914A535B8','2014-01-22 05:26:26','SYSTEM','ACTIVE',31),(377,367,100,-1,7190,NULL,'0365A0','A377F2DD5620','2014-01-22 05:26:26','SYSTEM','ACTIVE',31),(378,569,100,-1,7191,NULL,'084071','230710901A12','2014-01-22 05:26:26','SYSTEM','ACTIVE',31),(379,567,100,-1,7192,NULL,'2218BF','76B2E89A0104','2014-01-22 05:26:26','SYSTEM','ACTIVE',31),(380,505,100,-1,7193,NULL,'D8CCEA','85F627DC4EC0','2014-01-22 05:26:26','SYSTEM','ACTIVE',31),(381,482,100,-1,7194,NULL,'6F0277','84A6AA84FA79','2014-01-22 05:26:26','SYSTEM','ACTIVE',31),(382,381,101,-1,7385,NULL,'87B28E','20C43735B9DE','2014-01-22 05:26:27','SYSTEM','ACTIVE',31),(383,437,101,-1,7386,NULL,'D4370D','CFB55D244497','2014-01-22 05:26:27','SYSTEM','ACTIVE',31),(384,471,101,-1,7387,NULL,'5F79E0','7BEA162490FD','2014-01-22 05:26:27','SYSTEM','ACTIVE',31),(385,511,101,-1,7388,NULL,'4C9247','CCB43C9FDADC','2014-01-22 05:26:27','SYSTEM','ACTIVE',31),(386,596,101,-1,7389,NULL,'98E0F3','0E5EA1260502','2014-01-22 05:26:27','SYSTEM','ACTIVE',31),(387,643,101,-1,7390,NULL,'FFF8FA','D8A9CD581B00','2014-01-22 05:26:27','SYSTEM','ACTIVE',31),(388,615,101,-1,7391,NULL,'248C8F','5D9C2754EC06','2014-01-22 05:26:27','SYSTEM','ACTIVE',31),(389,506,101,-1,7392,NULL,'8E7FC9','7DC6998CC741','2014-01-22 05:26:27','SYSTEM','ACTIVE',31),(390,382,101,-1,7393,NULL,'6BC54E','F7C4749D130C','2014-01-22 05:26:27','SYSTEM','ACTIVE',31),(391,528,101,-1,7394,NULL,'419FCB','2B609678EF9B','2014-01-22 05:26:27','SYSTEM','ACTIVE',31),(392,572,101,-1,7395,NULL,'12FD77','1B175549B77D','2014-01-22 05:26:27','SYSTEM','ACTIVE',31),(393,551,101,-1,7396,NULL,'30BF35','8E2F4F4F5264','2014-01-22 05:26:28','SYSTEM','ACTIVE',31),(394,660,101,-1,7397,NULL,'B6F610','89D0AE385143','2014-01-22 05:26:28','SYSTEM','ACTIVE',31),(395,597,101,-1,7398,NULL,'A5208A','63622C3980A8','2014-01-22 05:26:28','SYSTEM','ACTIVE',31),(396,469,101,-1,7399,NULL,'4634B6','3003A0193B99','2014-01-22 05:26:28','SYSTEM','ACTIVE',31),(397,578,101,-1,7400,NULL,'086755','BA82A70DC9F9','2014-01-22 05:26:28','SYSTEM','ACTIVE',31),(398,372,101,-1,7401,NULL,'C80D54','61906C4D560A','2014-01-22 05:26:28','SYSTEM','ACTIVE',31),(399,353,101,-1,7402,NULL,'DF9A12','52A8A00FE036','2014-01-22 05:26:28','SYSTEM','ACTIVE',31),(400,343,101,-1,7403,NULL,'B6157E','118A1CCCF8B4','2014-01-22 05:26:28','SYSTEM','ACTIVE',31),(401,405,101,-1,7404,NULL,'617E59','DE92AAC7B943','2014-01-22 05:26:28','SYSTEM','ACTIVE',31),(402,406,101,-1,7405,NULL,'1F1A2C','297EC3ABE71A','2014-01-22 05:26:29','SYSTEM','ACTIVE',31),(403,646,101,-1,7406,NULL,'700CCA','13E16F390720','2014-01-22 05:26:29','SYSTEM','ACTIVE',31),(404,388,101,-1,7407,NULL,'83C681','A63BE9CE2DF1','2014-01-22 05:26:29','SYSTEM','ACTIVE',31),(405,631,101,-1,7408,NULL,'840283','E0978596A6DF','2014-01-22 05:26:29','SYSTEM','ACTIVE',31),(406,407,101,-1,7409,NULL,'F6AF3D','51D17FD2B58B','2014-01-22 05:26:29','SYSTEM','ACTIVE',31),(407,679,101,-1,7410,NULL,'5CCF89','CFFBDE6698BC','2014-01-22 05:26:29','SYSTEM','ACTIVE',31),(408,365,101,-1,7411,NULL,'73494E','F4090E21F936','2014-01-22 05:26:29','SYSTEM','ACTIVE',31),(409,482,101,-1,7412,NULL,'B18A4C','1BFB13BEC779','2014-01-22 05:26:29','SYSTEM','ACTIVE',31),(410,702,101,-1,7413,NULL,'9AAC97','7B36FC8C7A06','2014-01-22 05:26:30','SYSTEM','ACTIVE',31),(411,573,101,-1,7414,NULL,'DF2F2C','F4DD9176243A','2014-01-22 05:26:30','SYSTEM','ACTIVE',31),(412,396,101,-1,7415,NULL,'20DA11','1E5778857418','2014-01-22 05:26:30','SYSTEM','ACTIVE',31),(413,568,101,-1,7416,NULL,'CBC425','774E5ECEC010','2014-01-22 05:26:30','SYSTEM','ACTIVE',31),(414,529,102,-1,7585,NULL,'7BEFAC','87CE0749D783','2014-01-22 05:26:30','SYSTEM','ACTIVE',31),(415,556,102,-1,7586,NULL,'26AF9A','BF2C85124D85','2014-01-22 05:26:30','SYSTEM','ACTIVE',31),(416,378,102,-1,7587,NULL,'0A589B','37A611F60E2B','2014-01-22 05:26:30','SYSTEM','ACTIVE',31),(417,367,102,-1,7588,NULL,'6D51F7','3E1CEAFE739C','2014-01-22 05:26:31','SYSTEM','ACTIVE',31),(418,526,102,-1,7589,NULL,'2E2500','389AF19DCB1C','2014-01-22 05:26:31','SYSTEM','ACTIVE',31),(419,476,102,-1,7590,NULL,'DE0495','6AF4813D16B8','2014-01-22 05:26:31','SYSTEM','ACTIVE',31),(420,392,102,-1,7591,NULL,'979897','4F80F2B785C3','2014-01-22 05:26:31','SYSTEM','ACTIVE',31),(421,612,102,-1,7592,NULL,'DD91CB','F029ACCBBEA0','2014-01-22 05:26:31','SYSTEM','ACTIVE',31),(422,703,102,-1,7593,NULL,'E982CD','89D13CFF283B','2014-01-22 05:26:31','SYSTEM','ACTIVE',31),(423,487,102,-1,7594,NULL,'29B4CE','11CF625F4AB6','2014-01-22 05:26:31','SYSTEM','ACTIVE',31),(424,647,102,-1,7595,NULL,'16431C','7F453633F188','2014-01-22 05:26:31','SYSTEM','ACTIVE',31),(425,523,102,-1,7596,NULL,'6CD7A8','8C5E3F7649C5','2014-01-22 05:26:31','SYSTEM','ACTIVE',31),(426,485,102,-1,7597,NULL,'853EC3','31ACBE295332','2014-01-22 05:26:32','SYSTEM','ACTIVE',31),(427,476,102,-1,7598,NULL,'8FA42A','4D4B17E6D8CE','2014-01-22 05:26:32','SYSTEM','ACTIVE',31),(428,356,102,-1,7599,NULL,'790ECD','129605E55F85','2014-01-22 05:26:32','SYSTEM','ACTIVE',31);
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
) ENGINE=InnoDB AUTO_INCREMENT=7785 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smplateslot`
--

LOCK TABLES `smplateslot` WRITE;
/*!40000 ALTER TABLE `smplateslot` DISABLE KEYS */;
INSERT INTO `smplateslot` VALUES (6585,97,'0001','1000-A1-0001','N',31),(6586,97,'0002','1000-A1-0002','N',31),(6587,97,'0003','1000-A1-0003','N',31),(6588,97,'0004','1000-A1-0004','N',31),(6589,97,'0005','1000-A1-0005','N',31),(6590,97,'0006','1000-A1-0006','N',31),(6591,97,'0007','1000-A1-0007','N',31),(6592,97,'0008','1000-A1-0008','N',31),(6593,97,'0009','1000-A1-0009','N',31),(6594,97,'0010','1000-A1-0010','N',31),(6595,97,'0011','1000-A1-0011','N',31),(6596,97,'0012','1000-A1-0012','N',31),(6597,97,'0013','1000-A1-0013','N',31),(6598,97,'0014','1000-A1-0014','N',31),(6599,97,'0015','1000-A1-0015','N',31),(6600,97,'0016','1000-A1-0016','N',31),(6601,97,'0017','1000-A1-0017','N',31),(6602,97,'0018','1000-A1-0018','N',31),(6603,97,'0019','1000-A1-0019','N',31),(6604,97,'0020','1000-A1-0020','N',31),(6605,97,'0021','1000-A1-0021','N',31),(6606,97,'0022','1000-A1-0022','N',31),(6607,97,'0023','1000-A1-0023','Y',31),(6608,97,'0024','1000-A1-0024','Y',31),(6609,97,'0025','1000-A1-0025','Y',31),(6610,97,'0026','1000-A1-0026','Y',31),(6611,97,'0027','1000-A1-0027','Y',31),(6612,97,'0028','1000-A1-0028','Y',31),(6613,97,'0029','1000-A1-0029','Y',31),(6614,97,'0030','1000-A1-0030','Y',31),(6615,97,'0031','1000-A1-0031','Y',31),(6616,97,'0032','1000-A1-0032','Y',31),(6617,97,'0033','1000-A1-0033','Y',31),(6618,97,'0034','1000-A1-0034','Y',31),(6619,97,'0035','1000-A1-0035','Y',31),(6620,97,'0036','1000-A1-0036','Y',31),(6621,97,'0037','1000-A1-0037','Y',31),(6622,97,'0038','1000-A1-0038','Y',31),(6623,97,'0039','1000-A1-0039','Y',31),(6624,97,'0040','1000-A1-0040','Y',31),(6625,97,'0041','1000-A1-0041','Y',31),(6626,97,'0042','1000-A1-0042','Y',31),(6627,97,'0043','1000-A1-0043','Y',31),(6628,97,'0044','1000-A1-0044','Y',31),(6629,97,'0045','1000-A1-0045','Y',31),(6630,97,'0046','1000-A1-0046','Y',31),(6631,97,'0047','1000-A1-0047','Y',31),(6632,97,'0048','1000-A1-0048','Y',31),(6633,97,'0049','1000-A1-0049','Y',31),(6634,97,'0050','1000-A1-0050','Y',31),(6635,97,'0051','1000-A1-0051','Y',31),(6636,97,'0052','1000-A1-0052','Y',31),(6637,97,'0053','1000-A1-0053','Y',31),(6638,97,'0054','1000-A1-0054','Y',31),(6639,97,'0055','1000-A1-0055','Y',31),(6640,97,'0056','1000-A1-0056','Y',31),(6641,97,'0057','1000-A1-0057','Y',31),(6642,97,'0058','1000-A1-0058','Y',31),(6643,97,'0059','1000-A1-0059','Y',31),(6644,97,'0060','1000-A1-0060','Y',31),(6645,97,'0061','1000-A1-0061','Y',31),(6646,97,'0062','1000-A1-0062','Y',31),(6647,97,'0063','1000-A1-0063','Y',31),(6648,97,'0064','1000-A1-0064','Y',31),(6649,97,'0065','1000-A1-0065','Y',31),(6650,97,'0066','1000-A1-0066','Y',31),(6651,97,'0067','1000-A1-0067','Y',31),(6652,97,'0068','1000-A1-0068','Y',31),(6653,97,'0069','1000-A1-0069','Y',31),(6654,97,'0070','1000-A1-0070','Y',31),(6655,97,'0071','1000-A1-0071','Y',31),(6656,97,'0072','1000-A1-0072','Y',31),(6657,97,'0073','1000-A1-0073','Y',31),(6658,97,'0074','1000-A1-0074','Y',31),(6659,97,'0075','1000-A1-0075','Y',31),(6660,97,'0076','1000-A1-0076','Y',31),(6661,97,'0077','1000-A1-0077','Y',31),(6662,97,'0078','1000-A1-0078','Y',31),(6663,97,'0079','1000-A1-0079','Y',31),(6664,97,'0080','1000-A1-0080','Y',31),(6665,97,'0081','1000-A1-0081','Y',31),(6666,97,'0082','1000-A1-0082','Y',31),(6667,97,'0083','1000-A1-0083','Y',31),(6668,97,'0084','1000-A1-0084','Y',31),(6669,97,'0085','1000-A1-0085','Y',31),(6670,97,'0086','1000-A1-0086','Y',31),(6671,97,'0087','1000-A1-0087','Y',31),(6672,97,'0088','1000-A1-0088','Y',31),(6673,97,'0089','1000-A1-0089','Y',31),(6674,97,'0090','1000-A1-0090','Y',31),(6675,97,'0091','1000-A1-0091','Y',31),(6676,97,'0092','1000-A1-0092','Y',31),(6677,97,'0093','1000-A1-0093','Y',31),(6678,97,'0094','1000-A1-0094','Y',31),(6679,97,'0095','1000-A1-0095','Y',31),(6680,97,'0096','1000-A1-0096','Y',31),(6681,97,'0097','1000-A1-0097','Y',31),(6682,97,'0098','1000-A1-0098','Y',31),(6683,97,'0099','1000-A1-0099','Y',31),(6684,97,'0100','1000-A1-0100','Y',31),(6685,97,'0101','1000-A1-0101','Y',31),(6686,97,'0102','1000-A1-0102','Y',31),(6687,97,'0103','1000-A1-0103','Y',31),(6688,97,'0104','1000-A1-0104','Y',31),(6689,97,'0105','1000-A1-0105','Y',31),(6690,97,'0106','1000-A1-0106','Y',31),(6691,97,'0107','1000-A1-0107','Y',31),(6692,97,'0108','1000-A1-0108','Y',31),(6693,97,'0109','1000-A1-0109','Y',31),(6694,97,'0110','1000-A1-0110','Y',31),(6695,97,'0111','1000-A1-0111','Y',31),(6696,97,'0112','1000-A1-0112','Y',31),(6697,97,'0113','1000-A1-0113','Y',31),(6698,97,'0114','1000-A1-0114','Y',31),(6699,97,'0115','1000-A1-0115','Y',31),(6700,97,'0116','1000-A1-0116','Y',31),(6701,97,'0117','1000-A1-0117','Y',31),(6702,97,'0118','1000-A1-0118','Y',31),(6703,97,'0119','1000-A1-0119','Y',31),(6704,97,'0120','1000-A1-0120','Y',31),(6705,97,'0121','1000-A1-0121','Y',31),(6706,97,'0122','1000-A1-0122','Y',31),(6707,97,'0123','1000-A1-0123','Y',31),(6708,97,'0124','1000-A1-0124','Y',31),(6709,97,'0125','1000-A1-0125','Y',31),(6710,97,'0126','1000-A1-0126','Y',31),(6711,97,'0127','1000-A1-0127','Y',31),(6712,97,'0128','1000-A1-0128','Y',31),(6713,97,'0129','1000-A1-0129','Y',31),(6714,97,'0130','1000-A1-0130','Y',31),(6715,97,'0131','1000-A1-0131','Y',31),(6716,97,'0132','1000-A1-0132','Y',31),(6717,97,'0133','1000-A1-0133','Y',31),(6718,97,'0134','1000-A1-0134','Y',31),(6719,97,'0135','1000-A1-0135','Y',31),(6720,97,'0136','1000-A1-0136','Y',31),(6721,97,'0137','1000-A1-0137','Y',31),(6722,97,'0138','1000-A1-0138','Y',31),(6723,97,'0139','1000-A1-0139','Y',31),(6724,97,'0140','1000-A1-0140','Y',31),(6725,97,'0141','1000-A1-0141','Y',31),(6726,97,'0142','1000-A1-0142','Y',31),(6727,97,'0143','1000-A1-0143','Y',31),(6728,97,'0144','1000-A1-0144','Y',31),(6729,97,'0145','1000-A1-0145','Y',31),(6730,97,'0146','1000-A1-0146','Y',31),(6731,97,'0147','1000-A1-0147','Y',31),(6732,97,'0148','1000-A1-0148','Y',31),(6733,97,'0149','1000-A1-0149','Y',31),(6734,97,'0150','1000-A1-0150','Y',31),(6735,97,'0151','1000-A1-0151','Y',31),(6736,97,'0152','1000-A1-0152','Y',31),(6737,97,'0153','1000-A1-0153','Y',31),(6738,97,'0154','1000-A1-0154','Y',31),(6739,97,'0155','1000-A1-0155','Y',31),(6740,97,'0156','1000-A1-0156','Y',31),(6741,97,'0157','1000-A1-0157','Y',31),(6742,97,'0158','1000-A1-0158','Y',31),(6743,97,'0159','1000-A1-0159','Y',31),(6744,97,'0160','1000-A1-0160','Y',31),(6745,97,'0161','1000-A1-0161','Y',31),(6746,97,'0162','1000-A1-0162','Y',31),(6747,97,'0163','1000-A1-0163','Y',31),(6748,97,'0164','1000-A1-0164','Y',31),(6749,97,'0165','1000-A1-0165','Y',31),(6750,97,'0166','1000-A1-0166','Y',31),(6751,97,'0167','1000-A1-0167','Y',31),(6752,97,'0168','1000-A1-0168','Y',31),(6753,97,'0169','1000-A1-0169','Y',31),(6754,97,'0170','1000-A1-0170','Y',31),(6755,97,'0171','1000-A1-0171','Y',31),(6756,97,'0172','1000-A1-0172','Y',31),(6757,97,'0173','1000-A1-0173','Y',31),(6758,97,'0174','1000-A1-0174','Y',31),(6759,97,'0175','1000-A1-0175','Y',31),(6760,97,'0176','1000-A1-0176','Y',31),(6761,97,'0177','1000-A1-0177','Y',31),(6762,97,'0178','1000-A1-0178','Y',31),(6763,97,'0179','1000-A1-0179','Y',31),(6764,97,'0180','1000-A1-0180','Y',31),(6765,97,'0181','1000-A1-0181','Y',31),(6766,97,'0182','1000-A1-0182','Y',31),(6767,97,'0183','1000-A1-0183','Y',31),(6768,97,'0184','1000-A1-0184','Y',31),(6769,97,'0185','1000-A1-0185','Y',31),(6770,97,'0186','1000-A1-0186','Y',31),(6771,97,'0187','1000-A1-0187','Y',31),(6772,97,'0188','1000-A1-0188','Y',31),(6773,97,'0189','1000-A1-0189','Y',31),(6774,97,'0190','1000-A1-0190','Y',31),(6775,97,'0191','1000-A1-0191','Y',31),(6776,97,'0192','1000-A1-0192','Y',31),(6777,97,'0193','1000-A1-0193','Y',31),(6778,97,'0194','1000-A1-0194','Y',31),(6779,97,'0195','1000-A1-0195','Y',31),(6780,97,'0196','1000-A1-0196','Y',31),(6781,97,'0197','1000-A1-0197','Y',31),(6782,97,'0198','1000-A1-0198','Y',31),(6783,97,'0199','1000-A1-0199','Y',31),(6784,97,'0200','1000-A1-0200','Y',31),(6785,98,'0001','1000-A2-0001','N',31),(6786,98,'0002','1000-A2-0002','N',31),(6787,98,'0003','1000-A2-0003','N',31),(6788,98,'0004','1000-A2-0004','N',31),(6789,98,'0005','1000-A2-0005','N',31),(6790,98,'0006','1000-A2-0006','N',31),(6791,98,'0007','1000-A2-0007','N',31),(6792,98,'0008','1000-A2-0008','N',31),(6793,98,'0009','1000-A2-0009','N',31),(6794,98,'0010','1000-A2-0010','N',31),(6795,98,'0011','1000-A2-0011','N',31),(6796,98,'0012','1000-A2-0012','N',31),(6797,98,'0013','1000-A2-0013','N',31),(6798,98,'0014','1000-A2-0014','N',31),(6799,98,'0015','1000-A2-0015','N',31),(6800,98,'0016','1000-A2-0016','N',31),(6801,98,'0017','1000-A2-0017','N',31),(6802,98,'0018','1000-A2-0018','N',31),(6803,98,'0019','1000-A2-0019','N',31),(6804,98,'0020','1000-A2-0020','N',31),(6805,98,'0021','1000-A2-0021','N',31),(6806,98,'0022','1000-A2-0022','N',31),(6807,98,'0023','1000-A2-0023','N',31),(6808,98,'0024','1000-A2-0024','N',31),(6809,98,'0025','1000-A2-0025','N',31),(6810,98,'0026','1000-A2-0026','N',31),(6811,98,'0027','1000-A2-0027','N',31),(6812,98,'0028','1000-A2-0028','N',31),(6813,98,'0029','1000-A2-0029','N',31),(6814,98,'0030','1000-A2-0030','N',31),(6815,98,'0031','1000-A2-0031','N',31),(6816,98,'0032','1000-A2-0032','N',31),(6817,98,'0033','1000-A2-0033','N',31),(6818,98,'0034','1000-A2-0034','Y',31),(6819,98,'0035','1000-A2-0035','Y',31),(6820,98,'0036','1000-A2-0036','Y',31),(6821,98,'0037','1000-A2-0037','Y',31),(6822,98,'0038','1000-A2-0038','Y',31),(6823,98,'0039','1000-A2-0039','Y',31),(6824,98,'0040','1000-A2-0040','Y',31),(6825,98,'0041','1000-A2-0041','Y',31),(6826,98,'0042','1000-A2-0042','Y',31),(6827,98,'0043','1000-A2-0043','Y',31),(6828,98,'0044','1000-A2-0044','Y',31),(6829,98,'0045','1000-A2-0045','Y',31),(6830,98,'0046','1000-A2-0046','Y',31),(6831,98,'0047','1000-A2-0047','Y',31),(6832,98,'0048','1000-A2-0048','Y',31),(6833,98,'0049','1000-A2-0049','Y',31),(6834,98,'0050','1000-A2-0050','Y',31),(6835,98,'0051','1000-A2-0051','Y',31),(6836,98,'0052','1000-A2-0052','Y',31),(6837,98,'0053','1000-A2-0053','Y',31),(6838,98,'0054','1000-A2-0054','Y',31),(6839,98,'0055','1000-A2-0055','Y',31),(6840,98,'0056','1000-A2-0056','Y',31),(6841,98,'0057','1000-A2-0057','Y',31),(6842,98,'0058','1000-A2-0058','Y',31),(6843,98,'0059','1000-A2-0059','Y',31),(6844,98,'0060','1000-A2-0060','Y',31),(6845,98,'0061','1000-A2-0061','Y',31),(6846,98,'0062','1000-A2-0062','Y',31),(6847,98,'0063','1000-A2-0063','Y',31),(6848,98,'0064','1000-A2-0064','Y',31),(6849,98,'0065','1000-A2-0065','Y',31),(6850,98,'0066','1000-A2-0066','Y',31),(6851,98,'0067','1000-A2-0067','Y',31),(6852,98,'0068','1000-A2-0068','Y',31),(6853,98,'0069','1000-A2-0069','Y',31),(6854,98,'0070','1000-A2-0070','Y',31),(6855,98,'0071','1000-A2-0071','Y',31),(6856,98,'0072','1000-A2-0072','Y',31),(6857,98,'0073','1000-A2-0073','Y',31),(6858,98,'0074','1000-A2-0074','Y',31),(6859,98,'0075','1000-A2-0075','Y',31),(6860,98,'0076','1000-A2-0076','Y',31),(6861,98,'0077','1000-A2-0077','Y',31),(6862,98,'0078','1000-A2-0078','Y',31),(6863,98,'0079','1000-A2-0079','Y',31),(6864,98,'0080','1000-A2-0080','Y',31),(6865,98,'0081','1000-A2-0081','Y',31),(6866,98,'0082','1000-A2-0082','Y',31),(6867,98,'0083','1000-A2-0083','Y',31),(6868,98,'0084','1000-A2-0084','Y',31),(6869,98,'0085','1000-A2-0085','Y',31),(6870,98,'0086','1000-A2-0086','Y',31),(6871,98,'0087','1000-A2-0087','Y',31),(6872,98,'0088','1000-A2-0088','Y',31),(6873,98,'0089','1000-A2-0089','Y',31),(6874,98,'0090','1000-A2-0090','Y',31),(6875,98,'0091','1000-A2-0091','Y',31),(6876,98,'0092','1000-A2-0092','Y',31),(6877,98,'0093','1000-A2-0093','Y',31),(6878,98,'0094','1000-A2-0094','Y',31),(6879,98,'0095','1000-A2-0095','Y',31),(6880,98,'0096','1000-A2-0096','Y',31),(6881,98,'0097','1000-A2-0097','Y',31),(6882,98,'0098','1000-A2-0098','Y',31),(6883,98,'0099','1000-A2-0099','Y',31),(6884,98,'0100','1000-A2-0100','Y',31),(6885,98,'0101','1000-A2-0101','Y',31),(6886,98,'0102','1000-A2-0102','Y',31),(6887,98,'0103','1000-A2-0103','Y',31),(6888,98,'0104','1000-A2-0104','Y',31),(6889,98,'0105','1000-A2-0105','Y',31),(6890,98,'0106','1000-A2-0106','Y',31),(6891,98,'0107','1000-A2-0107','Y',31),(6892,98,'0108','1000-A2-0108','Y',31),(6893,98,'0109','1000-A2-0109','Y',31),(6894,98,'0110','1000-A2-0110','Y',31),(6895,98,'0111','1000-A2-0111','Y',31),(6896,98,'0112','1000-A2-0112','Y',31),(6897,98,'0113','1000-A2-0113','Y',31),(6898,98,'0114','1000-A2-0114','Y',31),(6899,98,'0115','1000-A2-0115','Y',31),(6900,98,'0116','1000-A2-0116','Y',31),(6901,98,'0117','1000-A2-0117','Y',31),(6902,98,'0118','1000-A2-0118','Y',31),(6903,98,'0119','1000-A2-0119','Y',31),(6904,98,'0120','1000-A2-0120','Y',31),(6905,98,'0121','1000-A2-0121','Y',31),(6906,98,'0122','1000-A2-0122','Y',31),(6907,98,'0123','1000-A2-0123','Y',31),(6908,98,'0124','1000-A2-0124','Y',31),(6909,98,'0125','1000-A2-0125','Y',31),(6910,98,'0126','1000-A2-0126','Y',31),(6911,98,'0127','1000-A2-0127','Y',31),(6912,98,'0128','1000-A2-0128','Y',31),(6913,98,'0129','1000-A2-0129','Y',31),(6914,98,'0130','1000-A2-0130','Y',31),(6915,98,'0131','1000-A2-0131','Y',31),(6916,98,'0132','1000-A2-0132','Y',31),(6917,98,'0133','1000-A2-0133','Y',31),(6918,98,'0134','1000-A2-0134','Y',31),(6919,98,'0135','1000-A2-0135','Y',31),(6920,98,'0136','1000-A2-0136','Y',31),(6921,98,'0137','1000-A2-0137','Y',31),(6922,98,'0138','1000-A2-0138','Y',31),(6923,98,'0139','1000-A2-0139','Y',31),(6924,98,'0140','1000-A2-0140','Y',31),(6925,98,'0141','1000-A2-0141','Y',31),(6926,98,'0142','1000-A2-0142','Y',31),(6927,98,'0143','1000-A2-0143','Y',31),(6928,98,'0144','1000-A2-0144','Y',31),(6929,98,'0145','1000-A2-0145','Y',31),(6930,98,'0146','1000-A2-0146','Y',31),(6931,98,'0147','1000-A2-0147','Y',31),(6932,98,'0148','1000-A2-0148','Y',31),(6933,98,'0149','1000-A2-0149','Y',31),(6934,98,'0150','1000-A2-0150','Y',31),(6935,98,'0151','1000-A2-0151','Y',31),(6936,98,'0152','1000-A2-0152','Y',31),(6937,98,'0153','1000-A2-0153','Y',31),(6938,98,'0154','1000-A2-0154','Y',31),(6939,98,'0155','1000-A2-0155','Y',31),(6940,98,'0156','1000-A2-0156','Y',31),(6941,98,'0157','1000-A2-0157','Y',31),(6942,98,'0158','1000-A2-0158','Y',31),(6943,98,'0159','1000-A2-0159','Y',31),(6944,98,'0160','1000-A2-0160','Y',31),(6945,98,'0161','1000-A2-0161','Y',31),(6946,98,'0162','1000-A2-0162','Y',31),(6947,98,'0163','1000-A2-0163','Y',31),(6948,98,'0164','1000-A2-0164','Y',31),(6949,98,'0165','1000-A2-0165','Y',31),(6950,98,'0166','1000-A2-0166','Y',31),(6951,98,'0167','1000-A2-0167','Y',31),(6952,98,'0168','1000-A2-0168','Y',31),(6953,98,'0169','1000-A2-0169','Y',31),(6954,98,'0170','1000-A2-0170','Y',31),(6955,98,'0171','1000-A2-0171','Y',31),(6956,98,'0172','1000-A2-0172','Y',31),(6957,98,'0173','1000-A2-0173','Y',31),(6958,98,'0174','1000-A2-0174','Y',31),(6959,98,'0175','1000-A2-0175','Y',31),(6960,98,'0176','1000-A2-0176','Y',31),(6961,98,'0177','1000-A2-0177','Y',31),(6962,98,'0178','1000-A2-0178','Y',31),(6963,98,'0179','1000-A2-0179','Y',31),(6964,98,'0180','1000-A2-0180','Y',31),(6965,98,'0181','1000-A2-0181','Y',31),(6966,98,'0182','1000-A2-0182','Y',31),(6967,98,'0183','1000-A2-0183','Y',31),(6968,98,'0184','1000-A2-0184','Y',31),(6969,98,'0185','1000-A2-0185','Y',31),(6970,98,'0186','1000-A2-0186','Y',31),(6971,98,'0187','1000-A2-0187','Y',31),(6972,98,'0188','1000-A2-0188','Y',31),(6973,98,'0189','1000-A2-0189','Y',31),(6974,98,'0190','1000-A2-0190','Y',31),(6975,98,'0191','1000-A2-0191','Y',31),(6976,98,'0192','1000-A2-0192','Y',31),(6977,98,'0193','1000-A2-0193','Y',31),(6978,98,'0194','1000-A2-0194','Y',31),(6979,98,'0195','1000-A2-0195','Y',31),(6980,98,'0196','1000-A2-0196','Y',31),(6981,98,'0197','1000-A2-0197','Y',31),(6982,98,'0198','1000-A2-0198','Y',31),(6983,98,'0199','1000-A2-0199','Y',31),(6984,98,'0200','1000-A2-0200','Y',31),(6985,99,'0001','1000-A3-0001','N',31),(6986,99,'0002','1000-A3-0002','N',31),(6987,99,'0003','1000-A3-0003','N',31),(6988,99,'0004','1000-A3-0004','N',31),(6989,99,'0005','1000-A3-0005','N',31),(6990,99,'0006','1000-A3-0006','N',31),(6991,99,'0007','1000-A3-0007','N',31),(6992,99,'0008','1000-A3-0008','N',31),(6993,99,'0009','1000-A3-0009','N',31),(6994,99,'0010','1000-A3-0010','N',31),(6995,99,'0011','1000-A3-0011','N',31),(6996,99,'0012','1000-A3-0012','N',31),(6997,99,'0013','1000-A3-0013','N',31),(6998,99,'0014','1000-A3-0014','N',31),(6999,99,'0015','1000-A3-0015','N',31),(7000,99,'0016','1000-A3-0016','N',31),(7001,99,'0017','1000-A3-0017','N',31),(7002,99,'0018','1000-A3-0018','N',31),(7003,99,'0019','1000-A3-0019','N',31),(7004,99,'0020','1000-A3-0020','N',31),(7005,99,'0021','1000-A3-0021','N',31),(7006,99,'0022','1000-A3-0022','N',31),(7007,99,'0023','1000-A3-0023','N',31),(7008,99,'0024','1000-A3-0024','Y',31),(7009,99,'0025','1000-A3-0025','Y',31),(7010,99,'0026','1000-A3-0026','Y',31),(7011,99,'0027','1000-A3-0027','Y',31),(7012,99,'0028','1000-A3-0028','Y',31),(7013,99,'0029','1000-A3-0029','Y',31),(7014,99,'0030','1000-A3-0030','Y',31),(7015,99,'0031','1000-A3-0031','Y',31),(7016,99,'0032','1000-A3-0032','Y',31),(7017,99,'0033','1000-A3-0033','Y',31),(7018,99,'0034','1000-A3-0034','Y',31),(7019,99,'0035','1000-A3-0035','Y',31),(7020,99,'0036','1000-A3-0036','Y',31),(7021,99,'0037','1000-A3-0037','Y',31),(7022,99,'0038','1000-A3-0038','Y',31),(7023,99,'0039','1000-A3-0039','Y',31),(7024,99,'0040','1000-A3-0040','Y',31),(7025,99,'0041','1000-A3-0041','Y',31),(7026,99,'0042','1000-A3-0042','Y',31),(7027,99,'0043','1000-A3-0043','Y',31),(7028,99,'0044','1000-A3-0044','Y',31),(7029,99,'0045','1000-A3-0045','Y',31),(7030,99,'0046','1000-A3-0046','Y',31),(7031,99,'0047','1000-A3-0047','Y',31),(7032,99,'0048','1000-A3-0048','Y',31),(7033,99,'0049','1000-A3-0049','Y',31),(7034,99,'0050','1000-A3-0050','Y',31),(7035,99,'0051','1000-A3-0051','Y',31),(7036,99,'0052','1000-A3-0052','Y',31),(7037,99,'0053','1000-A3-0053','Y',31),(7038,99,'0054','1000-A3-0054','Y',31),(7039,99,'0055','1000-A3-0055','Y',31),(7040,99,'0056','1000-A3-0056','Y',31),(7041,99,'0057','1000-A3-0057','Y',31),(7042,99,'0058','1000-A3-0058','Y',31),(7043,99,'0059','1000-A3-0059','Y',31),(7044,99,'0060','1000-A3-0060','Y',31),(7045,99,'0061','1000-A3-0061','Y',31),(7046,99,'0062','1000-A3-0062','Y',31),(7047,99,'0063','1000-A3-0063','Y',31),(7048,99,'0064','1000-A3-0064','Y',31),(7049,99,'0065','1000-A3-0065','Y',31),(7050,99,'0066','1000-A3-0066','Y',31),(7051,99,'0067','1000-A3-0067','Y',31),(7052,99,'0068','1000-A3-0068','Y',31),(7053,99,'0069','1000-A3-0069','Y',31),(7054,99,'0070','1000-A3-0070','Y',31),(7055,99,'0071','1000-A3-0071','Y',31),(7056,99,'0072','1000-A3-0072','Y',31),(7057,99,'0073','1000-A3-0073','Y',31),(7058,99,'0074','1000-A3-0074','Y',31),(7059,99,'0075','1000-A3-0075','Y',31),(7060,99,'0076','1000-A3-0076','Y',31),(7061,99,'0077','1000-A3-0077','Y',31),(7062,99,'0078','1000-A3-0078','Y',31),(7063,99,'0079','1000-A3-0079','Y',31),(7064,99,'0080','1000-A3-0080','Y',31),(7065,99,'0081','1000-A3-0081','Y',31),(7066,99,'0082','1000-A3-0082','Y',31),(7067,99,'0083','1000-A3-0083','Y',31),(7068,99,'0084','1000-A3-0084','Y',31),(7069,99,'0085','1000-A3-0085','Y',31),(7070,99,'0086','1000-A3-0086','Y',31),(7071,99,'0087','1000-A3-0087','Y',31),(7072,99,'0088','1000-A3-0088','Y',31),(7073,99,'0089','1000-A3-0089','Y',31),(7074,99,'0090','1000-A3-0090','Y',31),(7075,99,'0091','1000-A3-0091','Y',31),(7076,99,'0092','1000-A3-0092','Y',31),(7077,99,'0093','1000-A3-0093','Y',31),(7078,99,'0094','1000-A3-0094','Y',31),(7079,99,'0095','1000-A3-0095','Y',31),(7080,99,'0096','1000-A3-0096','Y',31),(7081,99,'0097','1000-A3-0097','Y',31),(7082,99,'0098','1000-A3-0098','Y',31),(7083,99,'0099','1000-A3-0099','Y',31),(7084,99,'0100','1000-A3-0100','Y',31),(7085,99,'0101','1000-A3-0101','Y',31),(7086,99,'0102','1000-A3-0102','Y',31),(7087,99,'0103','1000-A3-0103','Y',31),(7088,99,'0104','1000-A3-0104','Y',31),(7089,99,'0105','1000-A3-0105','Y',31),(7090,99,'0106','1000-A3-0106','Y',31),(7091,99,'0107','1000-A3-0107','Y',31),(7092,99,'0108','1000-A3-0108','Y',31),(7093,99,'0109','1000-A3-0109','Y',31),(7094,99,'0110','1000-A3-0110','Y',31),(7095,99,'0111','1000-A3-0111','Y',31),(7096,99,'0112','1000-A3-0112','Y',31),(7097,99,'0113','1000-A3-0113','Y',31),(7098,99,'0114','1000-A3-0114','Y',31),(7099,99,'0115','1000-A3-0115','Y',31),(7100,99,'0116','1000-A3-0116','Y',31),(7101,99,'0117','1000-A3-0117','Y',31),(7102,99,'0118','1000-A3-0118','Y',31),(7103,99,'0119','1000-A3-0119','Y',31),(7104,99,'0120','1000-A3-0120','Y',31),(7105,99,'0121','1000-A3-0121','Y',31),(7106,99,'0122','1000-A3-0122','Y',31),(7107,99,'0123','1000-A3-0123','Y',31),(7108,99,'0124','1000-A3-0124','Y',31),(7109,99,'0125','1000-A3-0125','Y',31),(7110,99,'0126','1000-A3-0126','Y',31),(7111,99,'0127','1000-A3-0127','Y',31),(7112,99,'0128','1000-A3-0128','Y',31),(7113,99,'0129','1000-A3-0129','Y',31),(7114,99,'0130','1000-A3-0130','Y',31),(7115,99,'0131','1000-A3-0131','Y',31),(7116,99,'0132','1000-A3-0132','Y',31),(7117,99,'0133','1000-A3-0133','Y',31),(7118,99,'0134','1000-A3-0134','Y',31),(7119,99,'0135','1000-A3-0135','Y',31),(7120,99,'0136','1000-A3-0136','Y',31),(7121,99,'0137','1000-A3-0137','Y',31),(7122,99,'0138','1000-A3-0138','Y',31),(7123,99,'0139','1000-A3-0139','Y',31),(7124,99,'0140','1000-A3-0140','Y',31),(7125,99,'0141','1000-A3-0141','Y',31),(7126,99,'0142','1000-A3-0142','Y',31),(7127,99,'0143','1000-A3-0143','Y',31),(7128,99,'0144','1000-A3-0144','Y',31),(7129,99,'0145','1000-A3-0145','Y',31),(7130,99,'0146','1000-A3-0146','Y',31),(7131,99,'0147','1000-A3-0147','Y',31),(7132,99,'0148','1000-A3-0148','Y',31),(7133,99,'0149','1000-A3-0149','Y',31),(7134,99,'0150','1000-A3-0150','Y',31),(7135,99,'0151','1000-A3-0151','Y',31),(7136,99,'0152','1000-A3-0152','Y',31),(7137,99,'0153','1000-A3-0153','Y',31),(7138,99,'0154','1000-A3-0154','Y',31),(7139,99,'0155','1000-A3-0155','Y',31),(7140,99,'0156','1000-A3-0156','Y',31),(7141,99,'0157','1000-A3-0157','Y',31),(7142,99,'0158','1000-A3-0158','Y',31),(7143,99,'0159','1000-A3-0159','Y',31),(7144,99,'0160','1000-A3-0160','Y',31),(7145,99,'0161','1000-A3-0161','Y',31),(7146,99,'0162','1000-A3-0162','Y',31),(7147,99,'0163','1000-A3-0163','Y',31),(7148,99,'0164','1000-A3-0164','Y',31),(7149,99,'0165','1000-A3-0165','Y',31),(7150,99,'0166','1000-A3-0166','Y',31),(7151,99,'0167','1000-A3-0167','Y',31),(7152,99,'0168','1000-A3-0168','Y',31),(7153,99,'0169','1000-A3-0169','Y',31),(7154,99,'0170','1000-A3-0170','Y',31),(7155,99,'0171','1000-A3-0171','Y',31),(7156,99,'0172','1000-A3-0172','Y',31),(7157,99,'0173','1000-A3-0173','Y',31),(7158,99,'0174','1000-A3-0174','Y',31),(7159,99,'0175','1000-A3-0175','Y',31),(7160,99,'0176','1000-A3-0176','Y',31),(7161,99,'0177','1000-A3-0177','Y',31),(7162,99,'0178','1000-A3-0178','Y',31),(7163,99,'0179','1000-A3-0179','Y',31),(7164,99,'0180','1000-A3-0180','Y',31),(7165,99,'0181','1000-A3-0181','Y',31),(7166,99,'0182','1000-A3-0182','Y',31),(7167,99,'0183','1000-A3-0183','Y',31),(7168,99,'0184','1000-A3-0184','Y',31),(7169,99,'0185','1000-A3-0185','Y',31),(7170,99,'0186','1000-A3-0186','Y',31),(7171,99,'0187','1000-A3-0187','Y',31),(7172,99,'0188','1000-A3-0188','Y',31),(7173,99,'0189','1000-A3-0189','Y',31),(7174,99,'0190','1000-A3-0190','Y',31),(7175,99,'0191','1000-A3-0191','Y',31),(7176,99,'0192','1000-A3-0192','Y',31),(7177,99,'0193','1000-A3-0193','Y',31),(7178,99,'0194','1000-A3-0194','Y',31),(7179,99,'0195','1000-A3-0195','Y',31),(7180,99,'0196','1000-A3-0196','Y',31),(7181,99,'0197','1000-A3-0197','Y',31),(7182,99,'0198','1000-A3-0198','Y',31),(7183,99,'0199','1000-A3-0199','Y',31),(7184,99,'0200','1000-A3-0200','Y',31),(7185,100,'0001','1250-AA-0001','N',31),(7186,100,'0002','1250-AA-0002','N',31),(7187,100,'0003','1250-AA-0003','N',31),(7188,100,'0004','1250-AA-0004','N',31),(7189,100,'0005','1250-AA-0005','N',31),(7190,100,'0006','1250-AA-0006','N',31),(7191,100,'0007','1250-AA-0007','N',31),(7192,100,'0008','1250-AA-0008','N',31),(7193,100,'0009','1250-AA-0009','N',31),(7194,100,'0010','1250-AA-0010','N',31),(7195,100,'0011','1250-AA-0011','Y',31),(7196,100,'0012','1250-AA-0012','Y',31),(7197,100,'0013','1250-AA-0013','Y',31),(7198,100,'0014','1250-AA-0014','Y',31),(7199,100,'0015','1250-AA-0015','Y',31),(7200,100,'0016','1250-AA-0016','Y',31),(7201,100,'0017','1250-AA-0017','Y',31),(7202,100,'0018','1250-AA-0018','Y',31),(7203,100,'0019','1250-AA-0019','Y',31),(7204,100,'0020','1250-AA-0020','Y',31),(7205,100,'0021','1250-AA-0021','Y',31),(7206,100,'0022','1250-AA-0022','Y',31),(7207,100,'0023','1250-AA-0023','Y',31),(7208,100,'0024','1250-AA-0024','Y',31),(7209,100,'0025','1250-AA-0025','Y',31),(7210,100,'0026','1250-AA-0026','Y',31),(7211,100,'0027','1250-AA-0027','Y',31),(7212,100,'0028','1250-AA-0028','Y',31),(7213,100,'0029','1250-AA-0029','Y',31),(7214,100,'0030','1250-AA-0030','Y',31),(7215,100,'0031','1250-AA-0031','Y',31),(7216,100,'0032','1250-AA-0032','Y',31),(7217,100,'0033','1250-AA-0033','Y',31),(7218,100,'0034','1250-AA-0034','Y',31),(7219,100,'0035','1250-AA-0035','Y',31),(7220,100,'0036','1250-AA-0036','Y',31),(7221,100,'0037','1250-AA-0037','Y',31),(7222,100,'0038','1250-AA-0038','Y',31),(7223,100,'0039','1250-AA-0039','Y',31),(7224,100,'0040','1250-AA-0040','Y',31),(7225,100,'0041','1250-AA-0041','Y',31),(7226,100,'0042','1250-AA-0042','Y',31),(7227,100,'0043','1250-AA-0043','Y',31),(7228,100,'0044','1250-AA-0044','Y',31),(7229,100,'0045','1250-AA-0045','Y',31),(7230,100,'0046','1250-AA-0046','Y',31),(7231,100,'0047','1250-AA-0047','Y',31),(7232,100,'0048','1250-AA-0048','Y',31),(7233,100,'0049','1250-AA-0049','Y',31),(7234,100,'0050','1250-AA-0050','Y',31),(7235,100,'0051','1250-AA-0051','Y',31),(7236,100,'0052','1250-AA-0052','Y',31),(7237,100,'0053','1250-AA-0053','Y',31),(7238,100,'0054','1250-AA-0054','Y',31),(7239,100,'0055','1250-AA-0055','Y',31),(7240,100,'0056','1250-AA-0056','Y',31),(7241,100,'0057','1250-AA-0057','Y',31),(7242,100,'0058','1250-AA-0058','Y',31),(7243,100,'0059','1250-AA-0059','Y',31),(7244,100,'0060','1250-AA-0060','Y',31),(7245,100,'0061','1250-AA-0061','Y',31),(7246,100,'0062','1250-AA-0062','Y',31),(7247,100,'0063','1250-AA-0063','Y',31),(7248,100,'0064','1250-AA-0064','Y',31),(7249,100,'0065','1250-AA-0065','Y',31),(7250,100,'0066','1250-AA-0066','Y',31),(7251,100,'0067','1250-AA-0067','Y',31),(7252,100,'0068','1250-AA-0068','Y',31),(7253,100,'0069','1250-AA-0069','Y',31),(7254,100,'0070','1250-AA-0070','Y',31),(7255,100,'0071','1250-AA-0071','Y',31),(7256,100,'0072','1250-AA-0072','Y',31),(7257,100,'0073','1250-AA-0073','Y',31),(7258,100,'0074','1250-AA-0074','Y',31),(7259,100,'0075','1250-AA-0075','Y',31),(7260,100,'0076','1250-AA-0076','Y',31),(7261,100,'0077','1250-AA-0077','Y',31),(7262,100,'0078','1250-AA-0078','Y',31),(7263,100,'0079','1250-AA-0079','Y',31),(7264,100,'0080','1250-AA-0080','Y',31),(7265,100,'0081','1250-AA-0081','Y',31),(7266,100,'0082','1250-AA-0082','Y',31),(7267,100,'0083','1250-AA-0083','Y',31),(7268,100,'0084','1250-AA-0084','Y',31),(7269,100,'0085','1250-AA-0085','Y',31),(7270,100,'0086','1250-AA-0086','Y',31),(7271,100,'0087','1250-AA-0087','Y',31),(7272,100,'0088','1250-AA-0088','Y',31),(7273,100,'0089','1250-AA-0089','Y',31),(7274,100,'0090','1250-AA-0090','Y',31),(7275,100,'0091','1250-AA-0091','Y',31),(7276,100,'0092','1250-AA-0092','Y',31),(7277,100,'0093','1250-AA-0093','Y',31),(7278,100,'0094','1250-AA-0094','Y',31),(7279,100,'0095','1250-AA-0095','Y',31),(7280,100,'0096','1250-AA-0096','Y',31),(7281,100,'0097','1250-AA-0097','Y',31),(7282,100,'0098','1250-AA-0098','Y',31),(7283,100,'0099','1250-AA-0099','Y',31),(7284,100,'0100','1250-AA-0100','Y',31),(7285,100,'0101','1250-AA-0101','Y',31),(7286,100,'0102','1250-AA-0102','Y',31),(7287,100,'0103','1250-AA-0103','Y',31),(7288,100,'0104','1250-AA-0104','Y',31),(7289,100,'0105','1250-AA-0105','Y',31),(7290,100,'0106','1250-AA-0106','Y',31),(7291,100,'0107','1250-AA-0107','Y',31),(7292,100,'0108','1250-AA-0108','Y',31),(7293,100,'0109','1250-AA-0109','Y',31),(7294,100,'0110','1250-AA-0110','Y',31),(7295,100,'0111','1250-AA-0111','Y',31),(7296,100,'0112','1250-AA-0112','Y',31),(7297,100,'0113','1250-AA-0113','Y',31),(7298,100,'0114','1250-AA-0114','Y',31),(7299,100,'0115','1250-AA-0115','Y',31),(7300,100,'0116','1250-AA-0116','Y',31),(7301,100,'0117','1250-AA-0117','Y',31),(7302,100,'0118','1250-AA-0118','Y',31),(7303,100,'0119','1250-AA-0119','Y',31),(7304,100,'0120','1250-AA-0120','Y',31),(7305,100,'0121','1250-AA-0121','Y',31),(7306,100,'0122','1250-AA-0122','Y',31),(7307,100,'0123','1250-AA-0123','Y',31),(7308,100,'0124','1250-AA-0124','Y',31),(7309,100,'0125','1250-AA-0125','Y',31),(7310,100,'0126','1250-AA-0126','Y',31),(7311,100,'0127','1250-AA-0127','Y',31),(7312,100,'0128','1250-AA-0128','Y',31),(7313,100,'0129','1250-AA-0129','Y',31),(7314,100,'0130','1250-AA-0130','Y',31),(7315,100,'0131','1250-AA-0131','Y',31),(7316,100,'0132','1250-AA-0132','Y',31),(7317,100,'0133','1250-AA-0133','Y',31),(7318,100,'0134','1250-AA-0134','Y',31),(7319,100,'0135','1250-AA-0135','Y',31),(7320,100,'0136','1250-AA-0136','Y',31),(7321,100,'0137','1250-AA-0137','Y',31),(7322,100,'0138','1250-AA-0138','Y',31),(7323,100,'0139','1250-AA-0139','Y',31),(7324,100,'0140','1250-AA-0140','Y',31),(7325,100,'0141','1250-AA-0141','Y',31),(7326,100,'0142','1250-AA-0142','Y',31),(7327,100,'0143','1250-AA-0143','Y',31),(7328,100,'0144','1250-AA-0144','Y',31),(7329,100,'0145','1250-AA-0145','Y',31),(7330,100,'0146','1250-AA-0146','Y',31),(7331,100,'0147','1250-AA-0147','Y',31),(7332,100,'0148','1250-AA-0148','Y',31),(7333,100,'0149','1250-AA-0149','Y',31),(7334,100,'0150','1250-AA-0150','Y',31),(7335,100,'0151','1250-AA-0151','Y',31),(7336,100,'0152','1250-AA-0152','Y',31),(7337,100,'0153','1250-AA-0153','Y',31),(7338,100,'0154','1250-AA-0154','Y',31),(7339,100,'0155','1250-AA-0155','Y',31),(7340,100,'0156','1250-AA-0156','Y',31),(7341,100,'0157','1250-AA-0157','Y',31),(7342,100,'0158','1250-AA-0158','Y',31),(7343,100,'0159','1250-AA-0159','Y',31),(7344,100,'0160','1250-AA-0160','Y',31),(7345,100,'0161','1250-AA-0161','Y',31),(7346,100,'0162','1250-AA-0162','Y',31),(7347,100,'0163','1250-AA-0163','Y',31),(7348,100,'0164','1250-AA-0164','Y',31),(7349,100,'0165','1250-AA-0165','Y',31),(7350,100,'0166','1250-AA-0166','Y',31),(7351,100,'0167','1250-AA-0167','Y',31),(7352,100,'0168','1250-AA-0168','Y',31),(7353,100,'0169','1250-AA-0169','Y',31),(7354,100,'0170','1250-AA-0170','Y',31),(7355,100,'0171','1250-AA-0171','Y',31),(7356,100,'0172','1250-AA-0172','Y',31),(7357,100,'0173','1250-AA-0173','Y',31),(7358,100,'0174','1250-AA-0174','Y',31),(7359,100,'0175','1250-AA-0175','Y',31),(7360,100,'0176','1250-AA-0176','Y',31),(7361,100,'0177','1250-AA-0177','Y',31),(7362,100,'0178','1250-AA-0178','Y',31),(7363,100,'0179','1250-AA-0179','Y',31),(7364,100,'0180','1250-AA-0180','Y',31),(7365,100,'0181','1250-AA-0181','Y',31),(7366,100,'0182','1250-AA-0182','Y',31),(7367,100,'0183','1250-AA-0183','Y',31),(7368,100,'0184','1250-AA-0184','Y',31),(7369,100,'0185','1250-AA-0185','Y',31),(7370,100,'0186','1250-AA-0186','Y',31),(7371,100,'0187','1250-AA-0187','Y',31),(7372,100,'0188','1250-AA-0188','Y',31),(7373,100,'0189','1250-AA-0189','Y',31),(7374,100,'0190','1250-AA-0190','Y',31),(7375,100,'0191','1250-AA-0191','Y',31),(7376,100,'0192','1250-AA-0192','Y',31),(7377,100,'0193','1250-AA-0193','Y',31),(7378,100,'0194','1250-AA-0194','Y',31),(7379,100,'0195','1250-AA-0195','Y',31),(7380,100,'0196','1250-AA-0196','Y',31),(7381,100,'0197','1250-AA-0197','Y',31),(7382,100,'0198','1250-AA-0198','Y',31),(7383,100,'0199','1250-AA-0199','Y',31),(7384,100,'0200','1250-AA-0200','Y',31),(7385,101,'0001','1250-BB-0001','N',31),(7386,101,'0002','1250-BB-0002','N',31),(7387,101,'0003','1250-BB-0003','N',31),(7388,101,'0004','1250-BB-0004','N',31),(7389,101,'0005','1250-BB-0005','N',31),(7390,101,'0006','1250-BB-0006','N',31),(7391,101,'0007','1250-BB-0007','N',31),(7392,101,'0008','1250-BB-0008','N',31),(7393,101,'0009','1250-BB-0009','N',31),(7394,101,'0010','1250-BB-0010','N',31),(7395,101,'0011','1250-BB-0011','N',31),(7396,101,'0012','1250-BB-0012','N',31),(7397,101,'0013','1250-BB-0013','N',31),(7398,101,'0014','1250-BB-0014','N',31),(7399,101,'0015','1250-BB-0015','N',31),(7400,101,'0016','1250-BB-0016','N',31),(7401,101,'0017','1250-BB-0017','N',31),(7402,101,'0018','1250-BB-0018','N',31),(7403,101,'0019','1250-BB-0019','N',31),(7404,101,'0020','1250-BB-0020','N',31),(7405,101,'0021','1250-BB-0021','N',31),(7406,101,'0022','1250-BB-0022','N',31),(7407,101,'0023','1250-BB-0023','N',31),(7408,101,'0024','1250-BB-0024','N',31),(7409,101,'0025','1250-BB-0025','N',31),(7410,101,'0026','1250-BB-0026','N',31),(7411,101,'0027','1250-BB-0027','N',31),(7412,101,'0028','1250-BB-0028','N',31),(7413,101,'0029','1250-BB-0029','N',31),(7414,101,'0030','1250-BB-0030','N',31),(7415,101,'0031','1250-BB-0031','N',31),(7416,101,'0032','1250-BB-0032','N',31),(7417,101,'0033','1250-BB-0033','Y',31),(7418,101,'0034','1250-BB-0034','Y',31),(7419,101,'0035','1250-BB-0035','Y',31),(7420,101,'0036','1250-BB-0036','Y',31),(7421,101,'0037','1250-BB-0037','Y',31),(7422,101,'0038','1250-BB-0038','Y',31),(7423,101,'0039','1250-BB-0039','Y',31),(7424,101,'0040','1250-BB-0040','Y',31),(7425,101,'0041','1250-BB-0041','Y',31),(7426,101,'0042','1250-BB-0042','Y',31),(7427,101,'0043','1250-BB-0043','Y',31),(7428,101,'0044','1250-BB-0044','Y',31),(7429,101,'0045','1250-BB-0045','Y',31),(7430,101,'0046','1250-BB-0046','Y',31),(7431,101,'0047','1250-BB-0047','Y',31),(7432,101,'0048','1250-BB-0048','Y',31),(7433,101,'0049','1250-BB-0049','Y',31),(7434,101,'0050','1250-BB-0050','Y',31),(7435,101,'0051','1250-BB-0051','Y',31),(7436,101,'0052','1250-BB-0052','Y',31),(7437,101,'0053','1250-BB-0053','Y',31),(7438,101,'0054','1250-BB-0054','Y',31),(7439,101,'0055','1250-BB-0055','Y',31),(7440,101,'0056','1250-BB-0056','Y',31),(7441,101,'0057','1250-BB-0057','Y',31),(7442,101,'0058','1250-BB-0058','Y',31),(7443,101,'0059','1250-BB-0059','Y',31),(7444,101,'0060','1250-BB-0060','Y',31),(7445,101,'0061','1250-BB-0061','Y',31),(7446,101,'0062','1250-BB-0062','Y',31),(7447,101,'0063','1250-BB-0063','Y',31),(7448,101,'0064','1250-BB-0064','Y',31),(7449,101,'0065','1250-BB-0065','Y',31),(7450,101,'0066','1250-BB-0066','Y',31),(7451,101,'0067','1250-BB-0067','Y',31),(7452,101,'0068','1250-BB-0068','Y',31),(7453,101,'0069','1250-BB-0069','Y',31),(7454,101,'0070','1250-BB-0070','Y',31),(7455,101,'0071','1250-BB-0071','Y',31),(7456,101,'0072','1250-BB-0072','Y',31),(7457,101,'0073','1250-BB-0073','Y',31),(7458,101,'0074','1250-BB-0074','Y',31),(7459,101,'0075','1250-BB-0075','Y',31),(7460,101,'0076','1250-BB-0076','Y',31),(7461,101,'0077','1250-BB-0077','Y',31),(7462,101,'0078','1250-BB-0078','Y',31),(7463,101,'0079','1250-BB-0079','Y',31),(7464,101,'0080','1250-BB-0080','Y',31),(7465,101,'0081','1250-BB-0081','Y',31),(7466,101,'0082','1250-BB-0082','Y',31),(7467,101,'0083','1250-BB-0083','Y',31),(7468,101,'0084','1250-BB-0084','Y',31),(7469,101,'0085','1250-BB-0085','Y',31),(7470,101,'0086','1250-BB-0086','Y',31),(7471,101,'0087','1250-BB-0087','Y',31),(7472,101,'0088','1250-BB-0088','Y',31),(7473,101,'0089','1250-BB-0089','Y',31),(7474,101,'0090','1250-BB-0090','Y',31),(7475,101,'0091','1250-BB-0091','Y',31),(7476,101,'0092','1250-BB-0092','Y',31),(7477,101,'0093','1250-BB-0093','Y',31),(7478,101,'0094','1250-BB-0094','Y',31),(7479,101,'0095','1250-BB-0095','Y',31),(7480,101,'0096','1250-BB-0096','Y',31),(7481,101,'0097','1250-BB-0097','Y',31),(7482,101,'0098','1250-BB-0098','Y',31),(7483,101,'0099','1250-BB-0099','Y',31),(7484,101,'0100','1250-BB-0100','Y',31),(7485,101,'0101','1250-BB-0101','Y',31),(7486,101,'0102','1250-BB-0102','Y',31),(7487,101,'0103','1250-BB-0103','Y',31),(7488,101,'0104','1250-BB-0104','Y',31),(7489,101,'0105','1250-BB-0105','Y',31),(7490,101,'0106','1250-BB-0106','Y',31),(7491,101,'0107','1250-BB-0107','Y',31),(7492,101,'0108','1250-BB-0108','Y',31),(7493,101,'0109','1250-BB-0109','Y',31),(7494,101,'0110','1250-BB-0110','Y',31),(7495,101,'0111','1250-BB-0111','Y',31),(7496,101,'0112','1250-BB-0112','Y',31),(7497,101,'0113','1250-BB-0113','Y',31),(7498,101,'0114','1250-BB-0114','Y',31),(7499,101,'0115','1250-BB-0115','Y',31),(7500,101,'0116','1250-BB-0116','Y',31),(7501,101,'0117','1250-BB-0117','Y',31),(7502,101,'0118','1250-BB-0118','Y',31),(7503,101,'0119','1250-BB-0119','Y',31),(7504,101,'0120','1250-BB-0120','Y',31),(7505,101,'0121','1250-BB-0121','Y',31),(7506,101,'0122','1250-BB-0122','Y',31),(7507,101,'0123','1250-BB-0123','Y',31),(7508,101,'0124','1250-BB-0124','Y',31),(7509,101,'0125','1250-BB-0125','Y',31),(7510,101,'0126','1250-BB-0126','Y',31),(7511,101,'0127','1250-BB-0127','Y',31),(7512,101,'0128','1250-BB-0128','Y',31),(7513,101,'0129','1250-BB-0129','Y',31),(7514,101,'0130','1250-BB-0130','Y',31),(7515,101,'0131','1250-BB-0131','Y',31),(7516,101,'0132','1250-BB-0132','Y',31),(7517,101,'0133','1250-BB-0133','Y',31),(7518,101,'0134','1250-BB-0134','Y',31),(7519,101,'0135','1250-BB-0135','Y',31),(7520,101,'0136','1250-BB-0136','Y',31),(7521,101,'0137','1250-BB-0137','Y',31),(7522,101,'0138','1250-BB-0138','Y',31),(7523,101,'0139','1250-BB-0139','Y',31),(7524,101,'0140','1250-BB-0140','Y',31),(7525,101,'0141','1250-BB-0141','Y',31),(7526,101,'0142','1250-BB-0142','Y',31),(7527,101,'0143','1250-BB-0143','Y',31),(7528,101,'0144','1250-BB-0144','Y',31),(7529,101,'0145','1250-BB-0145','Y',31),(7530,101,'0146','1250-BB-0146','Y',31),(7531,101,'0147','1250-BB-0147','Y',31),(7532,101,'0148','1250-BB-0148','Y',31),(7533,101,'0149','1250-BB-0149','Y',31),(7534,101,'0150','1250-BB-0150','Y',31),(7535,101,'0151','1250-BB-0151','Y',31),(7536,101,'0152','1250-BB-0152','Y',31),(7537,101,'0153','1250-BB-0153','Y',31),(7538,101,'0154','1250-BB-0154','Y',31),(7539,101,'0155','1250-BB-0155','Y',31),(7540,101,'0156','1250-BB-0156','Y',31),(7541,101,'0157','1250-BB-0157','Y',31),(7542,101,'0158','1250-BB-0158','Y',31),(7543,101,'0159','1250-BB-0159','Y',31),(7544,101,'0160','1250-BB-0160','Y',31),(7545,101,'0161','1250-BB-0161','Y',31),(7546,101,'0162','1250-BB-0162','Y',31),(7547,101,'0163','1250-BB-0163','Y',31),(7548,101,'0164','1250-BB-0164','Y',31),(7549,101,'0165','1250-BB-0165','Y',31),(7550,101,'0166','1250-BB-0166','Y',31),(7551,101,'0167','1250-BB-0167','Y',31),(7552,101,'0168','1250-BB-0168','Y',31),(7553,101,'0169','1250-BB-0169','Y',31),(7554,101,'0170','1250-BB-0170','Y',31),(7555,101,'0171','1250-BB-0171','Y',31),(7556,101,'0172','1250-BB-0172','Y',31),(7557,101,'0173','1250-BB-0173','Y',31),(7558,101,'0174','1250-BB-0174','Y',31),(7559,101,'0175','1250-BB-0175','Y',31),(7560,101,'0176','1250-BB-0176','Y',31),(7561,101,'0177','1250-BB-0177','Y',31),(7562,101,'0178','1250-BB-0178','Y',31),(7563,101,'0179','1250-BB-0179','Y',31),(7564,101,'0180','1250-BB-0180','Y',31),(7565,101,'0181','1250-BB-0181','Y',31),(7566,101,'0182','1250-BB-0182','Y',31),(7567,101,'0183','1250-BB-0183','Y',31),(7568,101,'0184','1250-BB-0184','Y',31),(7569,101,'0185','1250-BB-0185','Y',31),(7570,101,'0186','1250-BB-0186','Y',31),(7571,101,'0187','1250-BB-0187','Y',31),(7572,101,'0188','1250-BB-0188','Y',31),(7573,101,'0189','1250-BB-0189','Y',31),(7574,101,'0190','1250-BB-0190','Y',31),(7575,101,'0191','1250-BB-0191','Y',31),(7576,101,'0192','1250-BB-0192','Y',31),(7577,101,'0193','1250-BB-0193','Y',31),(7578,101,'0194','1250-BB-0194','Y',31),(7579,101,'0195','1250-BB-0195','Y',31),(7580,101,'0196','1250-BB-0196','Y',31),(7581,101,'0197','1250-BB-0197','Y',31),(7582,101,'0198','1250-BB-0198','Y',31),(7583,101,'0199','1250-BB-0199','Y',31),(7584,101,'0200','1250-BB-0200','Y',31),(7585,102,'0001','1250-AA1-0001','N',31),(7586,102,'0002','1250-AA1-0002','N',31),(7587,102,'0003','1250-AA1-0003','N',31),(7588,102,'0004','1250-AA1-0004','N',31),(7589,102,'0005','1250-AA1-0005','N',31),(7590,102,'0006','1250-AA1-0006','N',31),(7591,102,'0007','1250-AA1-0007','N',31),(7592,102,'0008','1250-AA1-0008','N',31),(7593,102,'0009','1250-AA1-0009','N',31),(7594,102,'0010','1250-AA1-0010','N',31),(7595,102,'0011','1250-AA1-0011','N',31),(7596,102,'0012','1250-AA1-0012','N',31),(7597,102,'0013','1250-AA1-0013','N',31),(7598,102,'0014','1250-AA1-0014','N',31),(7599,102,'0015','1250-AA1-0015','N',31),(7600,102,'0016','1250-AA1-0016','Y',31),(7601,102,'0017','1250-AA1-0017','Y',31),(7602,102,'0018','1250-AA1-0018','Y',31),(7603,102,'0019','1250-AA1-0019','Y',31),(7604,102,'0020','1250-AA1-0020','Y',31),(7605,102,'0021','1250-AA1-0021','Y',31),(7606,102,'0022','1250-AA1-0022','Y',31),(7607,102,'0023','1250-AA1-0023','Y',31),(7608,102,'0024','1250-AA1-0024','Y',31),(7609,102,'0025','1250-AA1-0025','Y',31),(7610,102,'0026','1250-AA1-0026','Y',31),(7611,102,'0027','1250-AA1-0027','Y',31),(7612,102,'0028','1250-AA1-0028','Y',31),(7613,102,'0029','1250-AA1-0029','Y',31),(7614,102,'0030','1250-AA1-0030','Y',31),(7615,102,'0031','1250-AA1-0031','Y',31),(7616,102,'0032','1250-AA1-0032','Y',31),(7617,102,'0033','1250-AA1-0033','Y',31),(7618,102,'0034','1250-AA1-0034','Y',31),(7619,102,'0035','1250-AA1-0035','Y',31),(7620,102,'0036','1250-AA1-0036','Y',31),(7621,102,'0037','1250-AA1-0037','Y',31),(7622,102,'0038','1250-AA1-0038','Y',31),(7623,102,'0039','1250-AA1-0039','Y',31),(7624,102,'0040','1250-AA1-0040','Y',31),(7625,102,'0041','1250-AA1-0041','Y',31),(7626,102,'0042','1250-AA1-0042','Y',31),(7627,102,'0043','1250-AA1-0043','Y',31),(7628,102,'0044','1250-AA1-0044','Y',31),(7629,102,'0045','1250-AA1-0045','Y',31),(7630,102,'0046','1250-AA1-0046','Y',31),(7631,102,'0047','1250-AA1-0047','Y',31),(7632,102,'0048','1250-AA1-0048','Y',31),(7633,102,'0049','1250-AA1-0049','Y',31),(7634,102,'0050','1250-AA1-0050','Y',31),(7635,102,'0051','1250-AA1-0051','Y',31),(7636,102,'0052','1250-AA1-0052','Y',31),(7637,102,'0053','1250-AA1-0053','Y',31),(7638,102,'0054','1250-AA1-0054','Y',31),(7639,102,'0055','1250-AA1-0055','Y',31),(7640,102,'0056','1250-AA1-0056','Y',31),(7641,102,'0057','1250-AA1-0057','Y',31),(7642,102,'0058','1250-AA1-0058','Y',31),(7643,102,'0059','1250-AA1-0059','Y',31),(7644,102,'0060','1250-AA1-0060','Y',31),(7645,102,'0061','1250-AA1-0061','Y',31),(7646,102,'0062','1250-AA1-0062','Y',31),(7647,102,'0063','1250-AA1-0063','Y',31),(7648,102,'0064','1250-AA1-0064','Y',31),(7649,102,'0065','1250-AA1-0065','Y',31),(7650,102,'0066','1250-AA1-0066','Y',31),(7651,102,'0067','1250-AA1-0067','Y',31),(7652,102,'0068','1250-AA1-0068','Y',31),(7653,102,'0069','1250-AA1-0069','Y',31),(7654,102,'0070','1250-AA1-0070','Y',31),(7655,102,'0071','1250-AA1-0071','Y',31),(7656,102,'0072','1250-AA1-0072','Y',31),(7657,102,'0073','1250-AA1-0073','Y',31),(7658,102,'0074','1250-AA1-0074','Y',31),(7659,102,'0075','1250-AA1-0075','Y',31),(7660,102,'0076','1250-AA1-0076','Y',31),(7661,102,'0077','1250-AA1-0077','Y',31),(7662,102,'0078','1250-AA1-0078','Y',31),(7663,102,'0079','1250-AA1-0079','Y',31),(7664,102,'0080','1250-AA1-0080','Y',31),(7665,102,'0081','1250-AA1-0081','Y',31),(7666,102,'0082','1250-AA1-0082','Y',31),(7667,102,'0083','1250-AA1-0083','Y',31),(7668,102,'0084','1250-AA1-0084','Y',31),(7669,102,'0085','1250-AA1-0085','Y',31),(7670,102,'0086','1250-AA1-0086','Y',31),(7671,102,'0087','1250-AA1-0087','Y',31),(7672,102,'0088','1250-AA1-0088','Y',31),(7673,102,'0089','1250-AA1-0089','Y',31),(7674,102,'0090','1250-AA1-0090','Y',31),(7675,102,'0091','1250-AA1-0091','Y',31),(7676,102,'0092','1250-AA1-0092','Y',31),(7677,102,'0093','1250-AA1-0093','Y',31),(7678,102,'0094','1250-AA1-0094','Y',31),(7679,102,'0095','1250-AA1-0095','Y',31),(7680,102,'0096','1250-AA1-0096','Y',31),(7681,102,'0097','1250-AA1-0097','Y',31),(7682,102,'0098','1250-AA1-0098','Y',31),(7683,102,'0099','1250-AA1-0099','Y',31),(7684,102,'0100','1250-AA1-0100','Y',31),(7685,102,'0101','1250-AA1-0101','Y',31),(7686,102,'0102','1250-AA1-0102','Y',31),(7687,102,'0103','1250-AA1-0103','Y',31),(7688,102,'0104','1250-AA1-0104','Y',31),(7689,102,'0105','1250-AA1-0105','Y',31),(7690,102,'0106','1250-AA1-0106','Y',31),(7691,102,'0107','1250-AA1-0107','Y',31),(7692,102,'0108','1250-AA1-0108','Y',31),(7693,102,'0109','1250-AA1-0109','Y',31),(7694,102,'0110','1250-AA1-0110','Y',31),(7695,102,'0111','1250-AA1-0111','Y',31),(7696,102,'0112','1250-AA1-0112','Y',31),(7697,102,'0113','1250-AA1-0113','Y',31),(7698,102,'0114','1250-AA1-0114','Y',31),(7699,102,'0115','1250-AA1-0115','Y',31),(7700,102,'0116','1250-AA1-0116','Y',31),(7701,102,'0117','1250-AA1-0117','Y',31),(7702,102,'0118','1250-AA1-0118','Y',31),(7703,102,'0119','1250-AA1-0119','Y',31),(7704,102,'0120','1250-AA1-0120','Y',31),(7705,102,'0121','1250-AA1-0121','Y',31),(7706,102,'0122','1250-AA1-0122','Y',31),(7707,102,'0123','1250-AA1-0123','Y',31),(7708,102,'0124','1250-AA1-0124','Y',31),(7709,102,'0125','1250-AA1-0125','Y',31),(7710,102,'0126','1250-AA1-0126','Y',31),(7711,102,'0127','1250-AA1-0127','Y',31),(7712,102,'0128','1250-AA1-0128','Y',31),(7713,102,'0129','1250-AA1-0129','Y',31),(7714,102,'0130','1250-AA1-0130','Y',31),(7715,102,'0131','1250-AA1-0131','Y',31),(7716,102,'0132','1250-AA1-0132','Y',31),(7717,102,'0133','1250-AA1-0133','Y',31),(7718,102,'0134','1250-AA1-0134','Y',31),(7719,102,'0135','1250-AA1-0135','Y',31),(7720,102,'0136','1250-AA1-0136','Y',31),(7721,102,'0137','1250-AA1-0137','Y',31),(7722,102,'0138','1250-AA1-0138','Y',31),(7723,102,'0139','1250-AA1-0139','Y',31),(7724,102,'0140','1250-AA1-0140','Y',31),(7725,102,'0141','1250-AA1-0141','Y',31),(7726,102,'0142','1250-AA1-0142','Y',31),(7727,102,'0143','1250-AA1-0143','Y',31),(7728,102,'0144','1250-AA1-0144','Y',31),(7729,102,'0145','1250-AA1-0145','Y',31),(7730,102,'0146','1250-AA1-0146','Y',31),(7731,102,'0147','1250-AA1-0147','Y',31),(7732,102,'0148','1250-AA1-0148','Y',31),(7733,102,'0149','1250-AA1-0149','Y',31),(7734,102,'0150','1250-AA1-0150','Y',31),(7735,102,'0151','1250-AA1-0151','Y',31),(7736,102,'0152','1250-AA1-0152','Y',31),(7737,102,'0153','1250-AA1-0153','Y',31),(7738,102,'0154','1250-AA1-0154','Y',31),(7739,102,'0155','1250-AA1-0155','Y',31),(7740,102,'0156','1250-AA1-0156','Y',31),(7741,102,'0157','1250-AA1-0157','Y',31),(7742,102,'0158','1250-AA1-0158','Y',31),(7743,102,'0159','1250-AA1-0159','Y',31),(7744,102,'0160','1250-AA1-0160','Y',31),(7745,102,'0161','1250-AA1-0161','Y',31),(7746,102,'0162','1250-AA1-0162','Y',31),(7747,102,'0163','1250-AA1-0163','Y',31),(7748,102,'0164','1250-AA1-0164','Y',31),(7749,102,'0165','1250-AA1-0165','Y',31),(7750,102,'0166','1250-AA1-0166','Y',31),(7751,102,'0167','1250-AA1-0167','Y',31),(7752,102,'0168','1250-AA1-0168','Y',31),(7753,102,'0169','1250-AA1-0169','Y',31),(7754,102,'0170','1250-AA1-0170','Y',31),(7755,102,'0171','1250-AA1-0171','Y',31),(7756,102,'0172','1250-AA1-0172','Y',31),(7757,102,'0173','1250-AA1-0173','Y',31),(7758,102,'0174','1250-AA1-0174','Y',31),(7759,102,'0175','1250-AA1-0175','Y',31),(7760,102,'0176','1250-AA1-0176','Y',31),(7761,102,'0177','1250-AA1-0177','Y',31),(7762,102,'0178','1250-AA1-0178','Y',31),(7763,102,'0179','1250-AA1-0179','Y',31),(7764,102,'0180','1250-AA1-0180','Y',31),(7765,102,'0181','1250-AA1-0181','Y',31),(7766,102,'0182','1250-AA1-0182','Y',31),(7767,102,'0183','1250-AA1-0183','Y',31),(7768,102,'0184','1250-AA1-0184','Y',31),(7769,102,'0185','1250-AA1-0185','Y',31),(7770,102,'0186','1250-AA1-0186','Y',31),(7771,102,'0187','1250-AA1-0187','Y',31),(7772,102,'0188','1250-AA1-0188','Y',31),(7773,102,'0189','1250-AA1-0189','Y',31),(7774,102,'0190','1250-AA1-0190','Y',31),(7775,102,'0191','1250-AA1-0191','Y',31),(7776,102,'0192','1250-AA1-0192','Y',31),(7777,102,'0193','1250-AA1-0193','Y',31),(7778,102,'0194','1250-AA1-0194','Y',31),(7779,102,'0195','1250-AA1-0195','Y',31),(7780,102,'0196','1250-AA1-0196','Y',31),(7781,102,'0197','1250-AA1-0197','Y',31),(7782,102,'0198','1250-AA1-0198','Y',31),(7783,102,'0199','1250-AA1-0199','Y',31),(7784,102,'0200','1250-AA1-0200','Y',31);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smshelfgroup`
--

LOCK TABLES `smshelfgroup` WRITE;
/*!40000 ALTER TABLE `smshelfgroup` DISABLE KEYS */;
INSERT INTO `smshelfgroup` VALUES (76,'1000',31,10),(77,'1250',31,20),(78,'1650',31,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smshelfsetting`
--

LOCK TABLES `smshelfsetting` WRITE;
/*!40000 ALTER TABLE `smshelfsetting` DISABLE KEYS */;
INSERT INTO `smshelfsetting` VALUES (97,76,'A1','1000-A1',200,31,'Y',10),(98,76,'A2','1000-A2',200,31,'Y',20),(99,76,'A3','1000-A3',200,31,'Y',30),(100,77,'AA','1250-AA',200,31,'Y',30),(101,77,'BB','1250-BB',200,31,'Y',30),(102,78,'AA1','1250-AA1',200,31,'Y',30);
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
-- Temporary table structure for view `vw_agingtransaction`
--

DROP TABLE IF EXISTS `vw_agingtransaction`;
/*!50001 DROP VIEW IF EXISTS `vw_agingtransaction`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_agingtransaction` (
  `smb_spid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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

--
-- Final view structure for view `vw_agingtransaction`
--

/*!50001 DROP TABLE IF EXISTS `vw_agingtransaction`*/;
/*!50001 DROP VIEW IF EXISTS `vw_agingtransaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_agingtransaction` AS select `smbtransaction`.`smb_spid` AS `smb_spid` from `smbtransaction` where ((curdate() - interval 365 day) > `smbtransaction`.`smb_printdate`) group by `smbtransaction`.`smb_spid` */;
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

-- Dump completed on 2014-01-22 15:48:49
