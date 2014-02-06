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
-- Table structure for table `fcdbaudit`
--

DROP TABLE IF EXISTS `fcdbaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcdbaudit` (
  `dba_id` int(11) NOT NULL AUTO_INCREMENT,
  `dba_created` datetime DEFAULT NULL,
  `dba_userid` varchar(50) DEFAULT NULL,
  `dba_table` varchar(64) DEFAULT NULL,
  `dba_column` varchar(64) DEFAULT NULL,
  `dba_oldvalue` varchar(4000) DEFAULT NULL,
  `dba_newvalue` varchar(4000) DEFAULT NULL,
  `dba_keys` varchar(1000) DEFAULT NULL,
  `dba_key1` varchar(200) DEFAULT NULL,
  `dba_key2` varchar(200) DEFAULT NULL,
  `dba_key3` varchar(200) DEFAULT NULL,
  `dba_key4` varchar(200) DEFAULT NULL,
  `dba_key5` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`dba_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcdbaudit`
--

LOCK TABLES `fcdbaudit` WRITE;
/*!40000 ALTER TABLE `fcdbaudit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcdbaudit` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `fclookup` VALUES ('THEME','blacktie','ROOT','Black Tie','ACTIVE',1),('THEME','blitzer','ROOT','Blitzer','ACTIVE',2),('THEME','darkness','ROOT','Darkness','ACTIVE',3),('THEME','dotluv','ROOT','Dot Luv','ACTIVE',4),('THEME','eggplant','ROOT','Eggplant','ACTIVE',5),('THEME','overcast','ROOT','Overcast','ACTIVE',6),('THEME','skyblue','ROOT','Skyblue','ACTIVE',7),('THEME','smoothness','ROOT','Smoothness','ACTIVE',8),('LANGUAGE','34','ROOT','Chinese','ACTIVE',9),('LANGUAGE','53','ROOT','English','ACTIVE',10);
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
INSERT INTO `fcmenu` VALUES (1,'HEADERMENU',0,'Top Menu','ACTIVE',0,NULL,'','Y',NULL,NULL,NULL,NULL,NULL,NULL),(3,'DASHBOARD',1,'Dashboard','ACTIVE',1000,NULL,NULL,'Y','Dashboard',NULL,'plateSumm',NULL,NULL,'VW_DASHBOARD'),(4,'SHELF',1,'Shelf','INACTIVE',2000,NULL,'','Y','Shelf',NULL,'Home',NULL,NULL,NULL),(5,'REPORT',1,'Report','ACTIVE',3000,NULL,NULL,'Y','Report',NULL,'rptrevdaily',NULL,NULL,'VW_REPORT'),(6,'SETTING',1,'Setting','ACTIVE',4000,'VW_SETTING, VW_CLISETTING, VW_ADMSETTING',NULL,'N','Setting',NULL,'gensetting',NULL,NULL,NULL),(12,'RPTAGING',5,'Aging Report','ACTIVE',3100,NULL,NULL,'Y','Report',NULL,'rptaging',NULL,NULL,'VW_REPORT'),(21,'GENSETTING',6,'General Setting','ACTIVE',4100,NULL,NULL,'Y','Setting',NULL,'gensetting',NULL,NULL,'VW_SETTING'),(40,'SHELFSETTING',6,'Shelf Setting','ACTIVE',4200,'VW_CLISETTING',NULL,'Y','Setting','','shelfSetting','','','VW_CLISETTING'),(41,'DSHELFSETTING',40,'Shelf Setting','ACTIVE',4210,'VW_CLISETTING',NULL,'Y','Setting','','shelfSetting','','','VW_CLISETTING'),(42,'SHELFGSETTING',40,'Shelf Group Setting','ACTIVE',4220,'VW_CLISETTING',NULL,'Y','Setting','','shelfGroupSetting','','','VW_CLISETTING'),(43,'MAIN',1,'Main','ACTIVE',1000,'VW_MAIN',NULL,'Y','Main','','board','','','VW_MAIN'),(44,'CUSTOMER',43,'Customer List','ACTIVE',1200,'VW_MAIN',NULL,'Y','Main','','customer','','','VW_MAIN'),(45,'SEARCHPLATE',43,'Search Plate','ACTIVE',1100,'VW_MAIN',NULL,'Y','Main','','searchplate','','','VW_MAIN'),(46,'OPERATION',1,'Operation','ACTIVE',2000,'VW_OPERATION',NULL,'Y','rackOperation','checkinout',NULL,'','','VW_OPERATION'),(47,'CHECKINOUT',46,'Check In/Out','ACTIVE',2100,'VW_OPERATION',NULL,'Y','rackOperation','checkinout','checkinout','','','VW_OPERATION'),(48,'STOCKCNT',46,'Stock Count','ACTIVE',2200,'VW_OPERATION',NULL,'Y','rackOperation','stockcount','stockcount','','','VW_OPERATION'),(49,'CREATEPLATE',43,'Create Plate','ACTIVE',1050,'VW_MAIN',NULL,'Y','Main',NULL,'createplate',NULL,NULL,'VW_MAIN'),(50,'USERSETT',6,'Primary User Setting','ACTIVE',4300,'VW_SETTING',NULL,'Y','Setting','','usersetup','','','VW_ADMSETTING, VW_SETTING'),(52,'USERSETUP',50,'User Setup','ACTIVE',4310,'VW_SETTING',NULL,'Y','Setting','','usersetup','','','VW_SETTING'),(53,'ROLESETUP',50,'Role Setup','ACTIVE',4320,'VW_SETTING',NULL,'Y','Setting','','rolesetup','','','VW_SETTING'),(54,'PERMSETUP',50,'Permission Setup','ACTIVE',4330,'VW_SETTING',NULL,'Y','Setting','','permissionsetup','','','VW_SETTING'),(55,'ORGSETUP',6,'Organization Setting','ACTIVE',4300,'VW_SETTING, VW_ADMSETTING',NULL,'Y','Setting',NULL,'org',NULL,NULL,'VW_ADMSETTING, VW_SETTING'),(57,'PCKGSETUP',6,'Package Setup','ACTIVE',4300,'VW_SETTING',NULL,'Y','Setting',NULL,'packagesetup',NULL,NULL,'VW_SETTING'),(70,'MENUSETTING',6,'Menu Setup','ACTIVE',4400,'VW_SETTING',NULL,'Y','Setting','','menusetup','','','VW_SETTING'),(71,'CLIUSERSETT',6,'User Setup','ACTIVE',4100,'VW_SETTING, VW_CLISETTING',NULL,'Y','Setting',NULL,'cusersetup',NULL,NULL,'VW_CLIADMINSETT, VW_SETTING'),(72,'rpt_summbyplate',5,'Summary by plate report','ACTIVE',3200,NULL,NULL,'Y','Report',NULL,'rptsummbyplate',NULL,NULL,'VW_REPORT'),(73,'rpt_summbycus',5,'Summary by customer report','ACTIVE',3300,NULL,NULL,'Y','Report',NULL,'rptsummbycus',NULL,NULL,'VW_REPORT'),(74,'democustomer',6,'Customer Demo Data','ACTIVE',4700,NULL,NULL,'Y','Setting',NULL,'democustdata',NULL,NULL,'VW_ADMSETTING'),(75,'TRANSHIST',46,'Usage History','ACTIVE',2150,NULL,NULL,'Y','rackOperation',NULL,'transactionhistory',NULL,NULL,'VW_OPERATION'),(76,'CLIORG',6,'Organization Setup','ACTIVE',4150,NULL,NULL,'Y','Setting',NULL,'corgsetup',NULL,NULL,'VW_CLIADMINSETT, VW_SETTING'),(77,'FAQSETUP',6,'FAQ Setup','ACTIVE',4600,NULL,NULL,'Y','Setting',NULL,'contentmanagement',NULL,NULL,'VW_ADMSETTING, VW_CLIADMINSETT');
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
INSERT INTO `fcuser` VALUES ('admin','d033e22ae348aeb5660fc2140aec35850c4da997','2013-08-15 01:55:18','Administrator',NULL,'2014-02-06 08:40:17','2014-02-06 08:39:55','2014-02-01 01:51:25','ADMIN','a:0:{}',53,'ACTIVE'),('darun','f339ac2800c5ffc8f89db97d44eb22911a90b831','2014-01-15 01:50:43','darun',NULL,'2014-01-22 07:54:40','2014-01-22 07:54:34','0000-00-00 00:00:00',NULL,'a:0:{}',34,'ACTIVE'),('darunalex','dc254258381f1279274a666a92f6aa998d487393','2014-01-15 02:36:57','darunalex','darunalex@darun.com','2014-01-15 04:50:01','2014-01-15 02:38:36','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('demo1','10f71961bd11dd33c1c95c771b98cf0e09d57b7c','2014-01-21 07:18:02','demo1','demo1@demo.com','2014-01-21 07:19:35','2014-01-21 07:18:37','0000-00-00 00:00:00',NULL,'a:3:{s:14:\"urlbeforelogin\";s:9:\"/pndrack/\";s:7:\"dbosess\";a:1:{s:9:\"platelist\";a:4:{s:6:\"lastid\";a:0:{}s:4:\"sort\";a:0:{}s:6:\"search\";a:5:{s:12:\"sp_platename\";s:6:\"C681F4\";s:13:\"sp_platemodel\";s:0:\"\";s:7:\"ps_code\";s:0:\"\";s:8:\"sp_cusid\";s:0:\"\";s:7:\"sp_sfid\";s:0:\"\";}s:5:\"state\";s:4:\"list\";}}s:9:\"dboconfig\";a:0:{}}',NULL,'ACTIVE'),('DEMO1ADMIN','403c5b2e8574d419c87c54719256f5392fca262a','2014-01-21 02:28:55','DEMO1ADMIN',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('DEMO1MANAGER','af0b407b8c5bede0d1af4173881d8c18408c1b59','2014-01-21 02:28:55','DEMO1MANAGER',NULL,'2014-01-23 06:23:44','2014-01-23 06:19:28','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('DEMO1OPERATOR','52a8c48021e14cf4fd30a1dbd51fa456e09a231d','2014-01-21 02:28:55','DEMO1OPERATOR',NULL,'2014-02-06 08:41:18','2014-02-06 08:40:27','0000-00-00 00:00:00',NULL,'a:3:{s:14:\"urlbeforelogin\";s:9:\"/pndrack/\";s:7:\"dbosess\";a:2:{s:11:\"setup_shelf\";a:4:{s:6:\"lastid\";a:0:{}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:3:\"new\";}s:16:\"setup_shelfgroup\";a:4:{s:6:\"lastid\";a:0:{}s:4:\"sort\";a:0:{}s:6:\"search\";a:0:{}s:5:\"state\";s:4:\"list\";}}s:9:\"dboconfig\";a:0:{}}',NULL,'ACTIVE'),('DEMO2ADMIN','f593c99213228f771e95087128568b05df53f60a','2014-01-21 02:29:10','DEMO2ADMIN',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('DEMO2MANAGER','243d0ef72aabaa6979cdf98b68641766454f7b8e','2014-01-21 02:29:10','DEMO2MANAGER',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('DEMO2OPERATOR','aedd0d3b09f41bee62ff80932490662fc72c8d00','2014-01-21 02:29:10','DEMO2OPERATOR',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('deswell','8bf24f70498d64ba1f03ccd36207e43dc8224678','2014-01-15 05:20:03','deswell',NULL,'2014-01-15 05:23:17','2014-01-15 05:20:12','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('dsalex','9c8fa798879acd2ecc93df0b0da916f07eed43ef','2014-01-15 05:21:31','Alex','dsalex@deswell.com','2014-01-15 05:52:43','2014-01-15 05:23:21','0000-00-00 00:00:00',NULL,'a:0:{}',NULL,'ACTIVE'),('dsdanny','34c705995d66e07132ce3eb75f432a53df3f0dcb','2014-01-15 05:22:13','Danny','dsdanny@deswell.com','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('dskeng','80288d1b2aaf85a5d1ee473f4fce63d14dc6ae47','2014-01-15 05:23:00','Eng','eng@deswell.com','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('pndadmin','da0717243a83694a7fbc9c11fc5fed417abd9f0e','2014-01-05 10:34:11','pndadmin',NULL,'2014-01-29 11:16:03','2014-01-29 11:15:43','2014-01-11 10:59:03',NULL,'a:0:{}',NULL,'ACTIVE'),('user1','b3daa77b4c04a9551b8781d03191fe098f325e67','2014-01-16 04:59:43','user1','user1@email.com','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE'),('user2','a1881c06eec96db9901c7bbfe41c42a3f08e9cb4','2014-01-16 05:00:22','user2','user2@email.com','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ACTIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcuserlogin`
--

LOCK TABLES `fcuserlogin` WRITE;
/*!40000 ALTER TABLE `fcuserlogin` DISABLE KEYS */;
INSERT INTO `fcuserlogin` VALUES (1,'admin','127.0.0.1','Y','2013-08-15 01:55:42','2013-08-15 01:55:42','2013-12-10 07:47:35','N',NULL),(2,'admin','127.0.0.1','Y','2013-08-15 02:59:43','2013-08-15 02:59:43','2013-12-10 07:47:35','N',NULL),(3,'admin','127.0.0.1','Y','2013-08-15 02:59:45','2013-08-15 02:59:45','2013-12-10 07:47:35','N',NULL),(4,'admin','127.0.0.1','Y','2013-08-15 04:31:47','2013-08-15 04:31:47','2013-12-10 07:47:35','N',NULL),(5,'admin','127.0.0.1','Y','2013-08-15 04:31:50','2013-08-15 04:31:50','2013-12-10 07:47:35','N',NULL),(6,'admin','127.0.0.1','Y','2013-08-16 01:31:41','2013-08-16 01:31:41','2013-12-10 07:47:35','N',NULL),(7,'admin','127.0.0.1','Y','2013-08-16 01:31:45','2013-08-16 01:31:45','2013-12-10 07:47:35','N',NULL),(8,'admin','127.0.0.1','Y','2013-08-16 11:30:04','2013-08-16 11:30:04','2013-12-10 07:47:35','N',NULL),(9,'admin','127.0.0.1','Y','2013-08-16 11:30:06','2013-08-16 11:30:06','2013-12-10 07:47:35','N',NULL),(10,'admin','127.0.0.1','Y','2013-08-17 04:03:56','2013-08-17 04:03:56','2013-12-10 07:47:35','N',NULL),(11,'admin','127.0.0.1','Y','2013-08-17 04:03:58','2013-08-17 04:03:58','2013-12-10 07:47:35','N',NULL),(12,'admin','127.0.0.1','Y','2013-08-17 16:07:07','2013-08-17 16:07:07','2013-12-10 07:47:35','N',NULL),(13,'admin','127.0.0.1','Y','2013-08-17 16:07:09','2013-08-17 16:07:09','2013-12-10 07:47:35','N',NULL),(14,'admin','127.0.0.1','Y','2013-08-19 01:49:37','2013-08-19 01:49:37','2013-12-10 07:47:35','N',NULL),(15,'admin','127.0.0.1','Y','2013-08-19 01:49:40','2013-08-19 01:49:40','2013-12-10 07:47:35','N',NULL),(16,'admin','127.0.0.1','Y','2013-08-19 06:05:24','2013-08-19 06:05:24','2013-12-10 07:47:35','N',NULL),(17,'admin','127.0.0.1','Y','2013-08-19 06:05:27','2013-08-19 06:05:27','2013-12-10 07:47:35','N',NULL),(18,'admin','127.0.0.1','N','2013-08-20 00:55:06','2013-08-20 00:55:06','2013-12-10 07:47:35','N',NULL),(19,'admin','127.0.0.1','Y','2013-08-20 00:55:09','2013-08-20 00:55:09','2013-12-10 07:47:35','N',NULL),(20,'admin','127.0.0.1','Y','2013-08-20 00:55:13','2013-08-20 00:55:13','2013-12-10 07:47:35','N',NULL),(21,'admin','127.0.0.1','Y','2013-08-20 12:50:37','2013-08-20 12:50:37','2013-12-10 07:47:35','N',NULL),(22,'admin','127.0.0.1','Y','2013-08-20 12:50:40','2013-08-20 12:50:40','2013-12-10 07:47:35','N',NULL),(23,'admin','127.0.0.1','Y','2013-08-20 16:05:39','2013-08-20 16:05:39','2013-12-10 07:47:35','N',NULL),(24,'admin','127.0.0.1','Y','2013-08-20 16:05:42','2013-08-20 16:05:42','2013-12-10 07:47:35','N',NULL),(25,'admin','127.0.0.1','Y','2013-08-21 01:18:20','2013-08-21 01:18:20','2013-12-10 07:47:35','N',NULL),(26,'admin','127.0.0.1','Y','2013-08-21 01:18:23','2013-08-21 01:18:23','2013-12-10 07:47:35','N',NULL),(27,'admin','127.0.0.1','Y','2013-08-21 10:05:58','2013-08-21 10:05:58','2013-12-10 07:47:35','N',NULL),(28,'admin','127.0.0.1','Y','2013-08-21 10:06:02','2013-08-21 10:06:02','2013-12-10 07:47:35','N',NULL),(29,'admin','127.0.0.1','Y','2013-08-21 13:57:25','2013-08-21 13:57:25','2013-12-10 07:47:35','N',NULL),(30,'admin','127.0.0.1','Y','2013-08-21 13:57:28','2013-08-21 13:57:28','2013-12-10 07:47:35','N',NULL),(31,'admin','127.0.0.1','Y','2013-08-21 13:59:38','2013-08-21 13:59:38','2013-12-10 07:47:35','N',NULL),(32,'admin','127.0.0.1','Y','2013-08-22 01:15:22','2013-08-22 01:15:22','2013-12-10 07:47:35','N',NULL),(33,'admin','127.0.0.1','Y','2013-08-22 01:39:36','2013-08-22 01:39:36','2013-12-10 07:47:35','N',NULL),(34,'admin','127.0.0.1','Y','2013-08-22 09:58:43','2013-08-22 09:58:43','2013-12-10 07:47:35','N',NULL),(35,'admin','127.0.0.1','Y','2013-08-22 09:58:49','2013-08-22 09:58:49','2013-12-10 07:47:35','N',NULL),(36,'admin','127.0.0.1','Y','2013-08-22 09:58:52','2013-08-22 09:58:52','2013-12-10 07:47:35','N',NULL),(37,'admin','127.0.0.1','Y','2013-08-23 02:16:44','2013-08-23 02:16:44','2013-12-10 07:47:35','N',NULL),(38,'admin','127.0.0.1','Y','2013-08-23 02:17:09','2013-08-23 02:17:09','2013-12-10 07:47:35','N',NULL),(39,'admin','127.0.0.1','Y','2013-08-23 02:18:45','2013-08-23 02:18:45','2013-12-10 07:47:35','N',NULL),(40,'admin','127.0.0.1','Y','2013-08-24 01:28:55','2013-08-24 01:28:55','2013-12-10 07:47:35','N',NULL),(41,'admin','127.0.0.1','Y','2013-08-24 01:29:00','2013-08-24 01:29:00','2013-12-10 07:47:35','N',NULL),(42,'admin','127.0.0.1','Y','2013-08-24 01:29:05','2013-08-24 01:29:05','2013-12-10 07:47:35','N',NULL),(43,'admin','127.0.0.1','Y','2013-08-25 12:55:31','2013-08-25 12:55:31','2013-12-10 07:47:35','N',NULL),(44,'admin','127.0.0.1','Y','2013-08-25 12:55:33','2013-08-25 12:55:33','2013-12-10 07:47:35','N',NULL),(45,'admin','127.0.0.1','Y','2013-08-25 13:38:38','2013-08-25 13:38:38','2013-12-10 07:47:35','N',NULL),(46,'admin','127.0.0.1','Y','2013-08-25 13:38:40','2013-08-25 13:38:40','2013-12-10 07:47:35','N',NULL),(47,'admin','127.0.0.1','Y','2013-08-26 01:23:28','2013-08-26 01:23:28','2013-12-10 07:47:35','N',NULL),(48,'admin','127.0.0.1','Y','2013-08-26 01:23:33','2013-08-26 01:23:33','2013-12-10 07:47:35','N',NULL),(49,'admin','127.0.0.1','Y','2013-08-26 12:33:59','2013-08-26 12:33:59','2013-12-10 07:47:35','N',NULL),(50,'admin','127.0.0.1','Y','2013-08-26 12:34:02','2013-08-26 12:34:02','2013-12-10 07:47:35','N',NULL),(51,'admin','127.0.0.1','Y','2013-08-26 12:34:06','2013-08-26 12:34:06','2013-12-10 07:47:35','N',NULL),(52,'admin','127.0.0.1','Y','2013-08-26 14:39:10','2013-08-26 14:39:10','2013-12-10 07:47:35','N',NULL),(53,'admin','127.0.0.1','Y','2013-08-26 14:39:13','2013-08-26 14:39:13','2013-12-10 07:47:35','N',NULL),(54,'admin','127.0.0.1','Y','2013-08-26 16:08:21','2013-08-26 16:08:21','2013-12-10 07:47:35','N',NULL),(55,'admin','127.0.0.1','Y','2013-08-26 16:08:24','2013-08-26 16:08:24','2013-12-10 07:47:35','N',NULL),(56,'admin','127.0.0.1','Y','2013-08-26 16:58:48','2013-08-26 16:58:48','2013-12-10 07:47:35','N',NULL),(57,'admin','127.0.0.1','Y','2013-08-26 16:58:50','2013-08-26 16:58:50','2013-12-10 07:47:35','N',NULL),(58,'admin','127.0.0.1','Y','2013-08-27 02:14:03','2013-08-27 02:14:03','2013-12-10 07:47:35','N',NULL),(59,'admin','127.0.0.1','Y','2013-08-27 02:14:05','2013-08-27 02:14:05','2013-12-10 07:47:35','N',NULL),(60,'admin','127.0.0.1','Y','2013-08-27 11:12:18','2013-08-27 11:12:18','2013-12-10 07:47:35','N',NULL),(61,'admin','127.0.0.1','Y','2013-08-27 11:12:21','2013-08-27 11:12:21','2013-12-10 07:47:35','N',NULL),(62,'admin','127.0.0.1','Y','2013-08-28 01:58:45','2013-08-28 01:58:45','2013-12-10 07:47:35','N',NULL),(63,'admin','127.0.0.1','Y','2013-08-28 02:00:04','2013-08-28 02:00:04','2013-12-10 07:47:35','N',NULL),(64,'admin','127.0.0.1','Y','2013-08-28 09:52:51','2013-08-28 09:52:51','2013-12-10 07:47:35','N',NULL),(65,'admin','127.0.0.1','Y','2013-08-28 09:52:55','2013-08-28 09:52:55','2013-12-10 07:47:35','N',NULL),(66,'admin','127.0.0.1','Y','2013-08-29 00:50:38','2013-08-29 00:50:38','2013-12-10 07:47:35','N',NULL),(67,'admin','127.0.0.1','Y','2013-08-29 00:50:41','2013-08-29 00:50:41','2013-12-10 07:47:35','N',NULL),(68,'admin','127.0.0.1','Y','2013-08-29 00:50:43','2013-08-29 00:50:43','2013-12-10 07:47:35','N',NULL),(69,'admin','127.0.0.1','Y','2013-08-29 04:43:53','2013-08-29 04:43:53','2013-12-10 07:47:35','N',NULL),(70,'admin','127.0.0.1','Y','2013-08-29 04:43:55','2013-08-29 04:43:55','2013-12-10 07:47:35','N',NULL),(71,'admin','127.0.0.1','Y','2013-08-30 01:35:54','2013-08-30 01:35:54','2013-12-10 07:47:35','N',NULL),(72,'admin','127.0.0.1','Y','2013-08-30 01:36:58','2013-08-30 01:36:58','2013-12-10 07:47:35','N',NULL),(73,'admin','127.0.0.1','Y','2013-08-31 00:37:13','2013-08-31 00:37:13','2013-12-10 07:47:35','N',NULL),(74,'admin','127.0.0.1','Y','2013-08-31 00:37:16','2013-08-31 00:37:16','2013-12-10 07:47:35','N',NULL),(75,'admin','127.0.0.1','Y','2013-08-31 01:32:58','2013-08-31 01:32:58','2013-12-10 07:47:35','N',NULL),(76,'admin','127.0.0.1','Y','2013-08-31 01:33:00','2013-08-31 01:33:00','2013-12-10 07:47:35','N',NULL),(77,'admin','127.0.0.1','Y','2013-08-31 03:18:25','2013-08-31 03:18:25','2013-12-10 07:47:35','N',NULL),(78,'admin','127.0.0.1','Y','2013-08-31 03:18:27','2013-08-31 03:18:27','2013-12-10 07:47:35','N',NULL),(79,'admin','127.0.0.1','Y','2013-09-02 05:10:26','2013-09-02 05:10:26','2013-12-10 07:47:35','N',NULL),(80,'admin','127.0.0.1','Y','2013-09-02 05:10:27','2013-09-02 05:10:27','2013-12-10 07:47:35','N',NULL),(81,'admin','127.0.0.1','Y','2013-09-03 01:08:40','2013-09-03 01:08:40','2013-12-10 07:47:35','N',NULL),(82,'admin','127.0.0.1','Y','2013-09-03 01:08:43','2013-09-03 01:08:43','2013-12-10 07:47:35','N',NULL),(83,'admin','127.0.0.1','Y','2013-09-06 02:12:01','2013-09-06 02:12:01','2013-12-10 07:47:35','N',NULL),(84,'admin','127.0.0.1','Y','2013-09-06 02:12:03','2013-09-06 02:12:03','2013-12-10 07:47:35','N',NULL),(85,'admin','127.0.0.1','Y','2013-09-07 04:20:53','2013-09-07 04:20:53','2013-12-10 07:47:35','N',NULL),(86,'admin','127.0.0.1','Y','2013-09-07 04:20:57','2013-09-07 04:20:57','2013-12-10 07:47:35','N',NULL),(87,'admin','127.0.0.1','Y','2013-09-07 04:20:59','2013-09-07 04:20:59','2013-12-10 07:47:35','N',NULL),(88,'admin','127.0.0.1','Y','2013-09-07 04:21:03','2013-09-07 04:21:03','2013-12-10 07:47:35','N',NULL),(89,'admin','127.0.0.1','Y','2013-09-07 07:45:14','2013-09-07 07:45:14','2013-12-10 07:47:35','N',NULL),(90,'admin','127.0.0.1','Y','2013-09-07 07:45:16','2013-09-07 07:45:16','2013-12-10 07:47:35','N',NULL),(91,'admin','127.0.0.1','Y','2013-09-07 10:25:27','2013-09-07 10:25:27','2013-12-10 07:47:35','N',NULL),(92,'admin','127.0.0.1','Y','2013-09-07 11:32:35','2013-09-07 11:32:35','2013-12-10 07:47:35','N',NULL),(93,'admin','127.0.0.1','Y','2013-09-07 11:32:37','2013-09-07 11:32:37','2013-12-10 07:47:35','N',NULL),(94,'admin','127.0.0.1','Y','2013-09-07 11:34:29','2013-09-07 11:34:29','2013-12-10 07:47:35','N',NULL),(95,'admin','127.0.0.1','Y','2013-09-07 11:34:31','2013-09-07 11:34:31','2013-12-10 07:47:35','N',NULL),(96,'admin','127.0.0.1','Y','2013-09-09 02:15:45','2013-09-09 02:15:45','2013-12-10 07:47:35','N',NULL),(97,'admin','127.0.0.1','Y','2013-09-09 02:15:47','2013-09-09 02:15:47','2013-12-10 07:47:35','N',NULL),(98,'admin','127.0.0.1','Y','2013-09-10 06:35:37','2013-09-10 06:35:37','2013-12-10 07:47:35','N',NULL),(99,'admin','127.0.0.1','Y','2013-09-10 06:35:39','2013-09-10 06:35:39','2013-12-10 07:47:35','N',NULL),(100,'admin','127.0.0.1','Y','2013-09-13 13:38:29','2013-09-13 13:38:29','2013-12-10 07:47:35','N',NULL),(101,'admin','127.0.0.1','Y','2013-09-13 13:38:31','2013-09-13 13:38:31','2013-12-10 07:47:35','N',NULL),(102,'admin','127.0.0.1','Y','2013-09-13 14:33:34','2013-09-13 14:33:34','2013-12-10 07:47:35','N',NULL),(103,'admin','127.0.0.1','Y','2013-09-13 14:33:36','2013-09-13 14:33:36','2013-12-10 07:47:35','N',NULL),(104,'admin','127.0.0.1','Y','2013-09-16 06:48:44','2013-09-16 06:48:44','2013-12-10 07:47:35','N',NULL),(105,'admin','127.0.0.1','Y','2013-09-16 06:48:48','2013-09-16 06:48:48','2013-12-10 07:47:35','N',NULL),(106,'admin','127.0.0.1','Y','2013-09-17 02:20:51','2013-09-17 02:20:51','2013-12-10 07:47:35','N',NULL),(107,'admin','127.0.0.1','Y','2013-09-17 02:20:54','2013-09-17 02:20:54','2013-12-10 07:47:35','N',NULL),(108,'admin','127.0.0.1','Y','2013-09-18 16:23:01','2013-09-18 16:23:01','2013-12-10 07:47:35','N',NULL),(109,'admin','127.0.0.1','Y','2013-09-18 16:23:03','2013-09-18 16:23:03','2013-12-10 07:47:35','N',NULL),(110,'admin','127.0.0.1','Y','2013-09-21 12:04:50','2013-09-21 12:04:50','2013-12-10 07:47:35','N',NULL),(111,'admin','127.0.0.1','Y','2013-09-21 12:04:52','2013-09-21 12:04:52','2013-12-10 07:47:35','N',NULL),(112,'admin','127.0.0.1','Y','2013-09-22 06:35:34','2013-09-22 06:35:34','2013-12-10 07:47:35','N',NULL),(113,'admin','127.0.0.1','Y','2013-09-22 06:35:36','2013-09-22 06:35:36','2013-12-10 07:47:35','N',NULL),(114,'admin','127.0.0.1','Y','2013-09-22 06:35:38','2013-09-22 06:35:38','2013-12-10 07:47:35','N',NULL),(115,'admin','127.0.0.1','Y','2013-09-23 01:04:35','2013-09-23 01:04:35','2013-12-10 07:47:35','N',NULL),(116,'admin','127.0.0.1','Y','2013-09-23 01:04:38','2013-09-23 01:04:38','2013-12-10 07:47:35','N',NULL),(117,'admin','127.0.0.1','Y','2013-09-23 15:38:32','2013-09-23 15:38:32','2013-12-10 07:47:35','N',NULL),(118,'admin','127.0.0.1','Y','2013-09-23 15:38:34','2013-09-23 15:38:34','2013-12-10 07:47:35','N',NULL),(119,'admin','127.0.0.1','Y','2013-09-24 14:30:17','2013-09-24 14:30:17','2013-12-10 07:47:35','N',NULL),(120,'admin','127.0.0.1','Y','2013-09-24 14:30:20','2013-09-24 14:30:20','2013-12-10 07:47:35','N',NULL),(121,'admin','127.0.0.1','Y','2013-09-24 14:30:22','2013-09-24 14:30:22','2013-12-10 07:47:35','N',NULL),(122,'admin','127.0.0.1','Y','2013-09-25 01:36:08','2013-09-25 01:36:08','2013-12-10 07:47:35','N',NULL),(123,'admin','127.0.0.1','Y','2013-09-25 01:36:10','2013-09-25 01:36:10','2013-12-10 07:47:35','N',NULL),(124,'admin','127.0.0.1','Y','2013-09-25 03:31:52','2013-09-25 03:31:52','2013-12-10 07:47:35','N',NULL),(125,'admin','127.0.0.1','Y','2013-09-25 03:32:04','2013-09-25 03:32:04','2013-12-10 07:47:35','N',NULL),(126,'admin','127.0.0.1','Y','2013-09-26 05:23:38','2013-09-26 05:23:38','2013-12-10 07:47:35','N',NULL),(127,'admin','127.0.0.1','Y','2013-09-26 05:23:40','2013-09-26 05:23:40','2013-12-10 07:47:35','N',NULL),(128,'admin','127.0.0.1','Y','2013-09-26 13:57:02','2013-09-26 13:57:02','2013-12-10 07:47:35','N',NULL),(129,'admin','127.0.0.1','Y','2013-09-26 13:57:03','2013-09-26 13:57:03','2013-12-10 07:47:35','N',NULL),(130,'admin','127.0.0.1','Y','2013-09-27 01:59:36','2013-09-27 01:59:36','2013-12-10 07:47:35','N',NULL),(131,'admin','127.0.0.1','Y','2013-09-27 01:59:39','2013-09-27 01:59:39','2013-12-10 07:47:35','N',NULL),(132,'admin','127.0.0.1','Y','2013-09-29 02:12:39','2013-09-29 02:12:39','2013-12-10 07:47:35','N',NULL),(133,'admin','127.0.0.1','Y','2013-09-29 02:12:41','2013-09-29 02:12:41','2013-12-10 07:47:35','N',NULL),(134,'admin','127.0.0.1','Y','2013-10-02 02:54:59','2013-10-02 02:54:59','2013-12-10 07:47:35','N',NULL),(135,'admin','127.0.0.1','Y','2013-10-02 02:55:04','2013-10-02 02:55:04','2013-12-10 07:47:35','N',NULL),(136,'admin','127.0.0.1','Y','2013-10-03 12:06:27','2013-10-03 12:06:27','2013-12-10 07:47:35','N',NULL),(137,'admin','127.0.0.1','Y','2013-10-03 12:06:29','2013-10-03 12:06:29','2013-12-10 07:47:35','N',NULL),(138,'admin','127.0.0.1','Y','2013-10-04 01:27:57','2013-10-04 01:27:57','2013-12-10 07:47:35','N',NULL),(139,'admin','127.0.0.1','Y','2013-10-04 01:28:00','2013-10-04 01:28:00','2013-12-10 07:47:35','N',NULL),(140,'admin','127.0.0.1','Y','2013-10-04 10:42:58','2013-10-04 10:42:58','2013-12-10 07:47:35','N',NULL),(141,'admin','127.0.0.1','Y','2013-10-04 10:42:59','2013-10-04 10:42:59','2013-12-10 07:47:35','N',NULL),(142,'admin','127.0.0.1','Y','2013-10-05 02:41:20','2013-10-05 02:41:20','2013-12-10 07:47:35','N',NULL),(143,'admin','127.0.0.1','Y','2013-10-05 02:41:22','2013-10-05 02:41:22','2013-12-10 07:47:35','N',NULL),(144,'admin','127.0.0.1','Y','2013-10-05 14:58:31','2013-10-05 14:58:31','2013-12-10 07:47:35','N',NULL),(145,'admin','127.0.0.1','Y','2013-10-05 14:58:33','2013-10-05 14:58:33','2013-12-10 07:47:35','N',NULL),(146,'admin','127.0.0.1','Y','2013-10-06 06:18:45','2013-10-06 06:18:45','2013-12-10 07:47:35','N',NULL),(147,'admin','127.0.0.1','Y','2013-10-06 06:18:48','2013-10-06 06:18:48','2013-12-10 07:47:35','N',NULL),(148,'admin','127.0.0.1','Y','2013-10-23 02:48:24','2013-10-23 02:48:24','2013-12-10 07:47:35','N',NULL),(149,'admin','127.0.0.1','Y','2013-10-23 02:48:28','2013-10-23 02:48:28','2013-12-10 07:47:35','N',NULL),(150,'admin','127.0.0.1','Y','2013-10-30 02:24:15','2013-10-30 02:24:15','2013-12-10 07:47:35','N',NULL),(151,'admin','127.0.0.1','Y','2013-10-30 02:24:19','2013-10-30 02:24:19','2013-12-10 07:47:35','N',NULL),(152,'admin','127.0.0.1','Y','2013-10-31 06:42:12','2013-10-31 06:42:12','2013-12-10 07:47:35','N',NULL),(153,'admin',NULL,NULL,'2013-10-31 06:46:14','2013-10-31 06:46:14','2013-12-10 07:47:35','N',NULL),(154,'admin','127.0.0.1','Y','2013-10-31 06:46:27','2013-10-31 06:46:27','2013-12-10 07:47:35','N',NULL),(155,'admin','127.0.0.1','Y','2013-10-31 06:57:26','2013-10-31 06:57:26','2013-12-10 07:47:35','N',NULL),(156,'admin','127.0.0.1','Y','2013-10-31 06:57:44','2013-10-31 06:57:44','2013-12-10 07:47:35','N',NULL),(157,'admin','127.0.0.1','Y','2013-11-01 01:45:44','2013-11-01 01:45:44','2013-12-10 07:47:35','N',NULL),(158,'admin','127.0.0.1','Y','2013-11-01 01:45:46','2013-11-01 01:45:46','2013-12-10 07:47:35','N',NULL),(159,'admin','127.0.0.1','Y','2013-11-01 03:00:52','2013-11-01 03:00:52','2013-12-10 07:47:35','N',NULL),(160,'admin','127.0.0.1','Y','2013-11-01 03:00:54','2013-11-01 03:00:54','2013-12-10 07:47:35','N',NULL),(161,'admin','127.0.0.1','Y','2013-11-01 03:07:38','2013-11-01 03:07:38','2013-12-10 07:47:35','N',NULL),(162,'admin','127.0.0.1','Y','2013-11-01 03:07:40','2013-11-01 03:07:40','2013-12-10 07:47:35','N',NULL),(163,'admin','127.0.0.1','Y','2013-11-02 05:20:41','2013-11-02 05:20:41','2013-12-10 07:47:35','N',NULL),(164,'admin','127.0.0.1','Y','2013-11-02 05:20:43','2013-11-02 05:20:43','2013-12-10 07:47:35','N',NULL),(165,'admin','127.0.0.1','Y','2013-11-04 01:16:28','2013-11-04 01:16:28','2013-12-10 07:47:35','N',NULL),(166,'admin','127.0.0.1','Y','2013-11-04 01:16:31','2013-11-04 01:16:31','2013-12-10 07:47:35','N',NULL),(167,'admin','127.0.0.1','Y','2013-11-05 06:59:33','2013-11-05 06:59:33','2013-12-10 07:47:35','N',NULL),(168,'admin','127.0.0.1','Y','2013-11-05 06:59:35','2013-11-05 06:59:35','2013-12-10 07:47:35','N',NULL),(169,'admin','127.0.0.1','Y','2013-11-06 01:27:25','2013-11-06 01:27:25','2013-12-10 07:47:35','N',NULL),(170,'admin','127.0.0.1','Y','2013-11-06 01:27:27','2013-11-06 01:27:27','2013-12-10 07:47:35','N',NULL),(171,'admin','127.0.0.1','Y','2013-11-09 07:03:55','2013-11-09 07:03:55','2013-12-10 07:47:35','N',NULL),(172,'admin','127.0.0.1','N','2013-11-09 07:03:58','2013-11-09 07:03:58','2013-12-10 07:47:35','N',NULL),(173,'admin','127.0.0.1','Y','2013-11-09 07:07:48','2013-11-09 07:07:48','2013-12-10 07:47:35','N',NULL),(174,'admin','127.0.0.1','N','2013-11-09 07:07:50','2013-11-09 07:07:50','2013-12-10 07:47:35','N',NULL),(175,'admin','127.0.0.1','Y','2013-11-09 07:09:13','2013-11-09 07:09:13','2013-12-10 07:47:35','N',NULL),(176,'admin','127.0.0.1','Y','2013-11-09 07:09:36','2013-11-09 07:09:36','2013-12-10 07:47:35','N',NULL),(177,'admin','127.0.0.1','Y','2013-11-09 07:11:30','2013-11-09 07:11:30','2013-12-10 07:47:35','N',NULL),(178,'admin','127.0.0.1','Y','2013-11-09 07:11:36','2013-11-09 07:11:36','2013-12-10 07:47:35','N',NULL),(179,'admin','192.168.1.75','Y','2013-11-09 07:39:31','2013-11-09 07:39:31','2013-12-10 07:47:35','N',NULL),(180,'admin','192.168.1.75','Y','2013-11-09 07:43:45','2013-11-09 07:43:45','2013-12-10 07:47:35','N',NULL),(181,'admin','192.168.1.75','Y','2013-11-09 07:47:06','2013-11-09 07:47:06','2013-12-10 07:47:35','N',NULL),(182,'admin','127.0.0.1','Y','2013-11-09 07:53:23','2013-11-09 07:53:23','2013-12-10 07:47:35','N',NULL),(183,'admin','127.0.0.1','Y','2013-11-11 02:18:32','2013-11-11 02:18:32','2013-12-10 07:47:35','N',NULL),(184,'admin','127.0.0.1','Y','2013-11-13 01:09:58','2013-11-13 01:09:58','2013-12-10 07:47:35','N',NULL),(185,'admin','127.0.0.1','Y','2013-11-13 05:11:58','2013-11-13 05:11:58','2013-12-10 07:47:35','N',NULL),(186,'admin','127.0.0.1','Y','2013-11-14 00:40:34','2013-11-14 00:40:34','2013-12-10 07:47:35','N',NULL),(187,'admin','127.0.0.1','Y','2013-11-15 11:06:54','2013-11-15 11:06:54','2013-12-10 07:47:35','N',NULL),(188,'admin','127.0.0.1','Y','2013-11-16 05:55:03','2013-11-16 05:55:03','2013-12-10 07:47:35','N',NULL),(189,'admin','127.0.0.1','Y','2013-11-17 10:21:41','2013-11-17 10:21:41','2013-12-10 07:47:35','N',NULL),(190,'admin','127.0.0.1','Y','2013-11-18 08:46:54','2013-11-18 08:46:54','2013-12-10 07:47:35','N',NULL),(191,'admin','127.0.0.1','Y','2013-11-19 06:20:26','2013-11-19 06:20:26','2013-12-10 07:47:35','N',NULL),(192,'admin','127.0.0.1','Y','2013-11-19 15:35:44','2013-11-19 15:35:44','2013-12-10 07:47:35','N',NULL),(193,'admin','127.0.0.1','Y','2013-11-21 08:14:15','2013-11-21 08:14:15','2013-12-10 07:47:35','N',NULL),(194,'admin','127.0.0.1','Y','2013-11-25 04:40:22','2013-11-25 04:40:22','2013-12-10 07:47:35','N',NULL),(195,'admin','127.0.0.1','Y','2013-12-10 06:00:47','2013-12-10 06:00:47','2013-12-10 07:47:35','N',NULL),(196,'admin','127.0.0.1','Y','2013-12-10 07:52:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(197,'admin','127.0.0.1','Y','2013-12-10 07:56:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(198,'admin','127.0.0.1','Y','2013-12-11 07:52:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(199,'admin','127.0.0.1','Y','2013-12-12 04:10:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(200,'admin','127.0.0.1','Y','2013-12-12 04:13:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(201,'admin','127.0.0.1','Y','2013-12-12 05:15:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(202,'admin','127.0.0.1','Y','2013-12-14 07:05:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(203,'admin','127.0.0.1','Y','2013-12-14 12:39:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(204,'admin','127.0.0.1','Y','2013-12-19 07:13:01','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(205,'admin','127.0.0.1','Y','2013-12-19 07:16:49','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(206,'admin','127.0.0.1','Y','2013-12-20 08:06:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(207,'admin','127.0.0.1','Y','2013-12-20 11:09:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(208,'admin','127.0.0.1','Y','2013-12-22 09:06:39','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(209,'hongyee','127.0.0.1','N','2013-12-22 09:54:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(210,'admin','127.0.0.1','N','2013-12-22 09:54:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(211,'admin','127.0.0.1','N','2013-12-22 09:54:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(212,'admin','127.0.0.1','N','2013-12-22 09:54:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(213,'admin','127.0.0.1','N','2013-12-22 09:54:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(214,'admin','127.0.0.1','N','2013-12-22 09:54:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(215,'admin','127.0.0.1','N','2013-12-22 09:54:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(216,'admin','127.0.0.1','N','2013-12-22 09:54:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(217,'hongyee','127.0.0.1','Y','2013-12-22 09:55:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(218,'admin','127.0.0.1','Y','2013-12-22 09:59:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(219,'danny','127.0.0.1','Y','2013-12-22 10:04:48','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(220,'admin','127.0.0.1','Y','2013-12-22 10:10:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(221,'admin','127.0.0.1','Y','2013-12-23 05:12:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(222,'deswell','127.0.0.1','N','2013-12-23 05:25:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(223,'admin','127.0.0.1','Y','2013-12-23 05:25:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(224,'deswell','127.0.0.1','N','2013-12-23 05:33:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(225,'deswell','127.0.0.1','N','2013-12-23 05:33:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(226,'deswell','127.0.0.1','N','2013-12-23 05:33:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(227,'admin','127.0.0.1','Y','2013-12-23 05:33:47','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(228,'deswell','127.0.0.1','Y','2013-12-23 05:34:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(229,'admin','127.0.0.1','Y','2013-12-23 05:44:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(230,'admin','127.0.0.1','Y','2013-12-23 06:02:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(231,'darun','127.0.0.1','N','2013-12-23 06:54:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(232,'darun','127.0.0.1','N','2013-12-23 06:54:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(233,'deswell','127.0.0.1','Y','2013-12-23 06:54:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(234,'deswell','127.0.0.1','Y','2013-12-23 06:55:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(235,'admin','127.0.0.1','N','2013-12-23 07:29:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(236,'admin','127.0.0.1','N','2013-12-23 07:29:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(237,'admin','127.0.0.1','N','2013-12-23 07:29:59','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(238,'deswell','127.0.0.1','Y','2013-12-23 07:30:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(239,'admin','127.0.0.1','Y','2013-12-23 07:30:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(240,'admin','127.0.0.1','Y','2013-12-23 07:43:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(241,'deswell','127.0.0.1','Y','2013-12-23 07:44:04','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(242,'admin','127.0.0.1','Y','2013-12-23 07:45:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(243,'admin','127.0.0.1','N','2013-12-23 08:18:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(244,'admin','127.0.0.1','Y','2013-12-23 08:18:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(245,'deswell','127.0.0.1','Y','2013-12-23 14:12:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(246,'admin','127.0.0.1','Y','2013-12-23 14:12:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(247,'admin','127.0.0.1','Y','2013-12-24 01:08:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(248,'deswell','127.0.0.1','Y','2013-12-24 01:22:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(249,'admin','127.0.0.1','Y','2013-12-24 01:33:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(250,'darun','127.0.0.1','Y','2013-12-24 01:34:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(251,'admin','127.0.0.1','Y','2013-12-24 01:39:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(252,'darun','127.0.0.1','Y','2013-12-24 01:41:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(253,'admin','127.0.0.1','Y','2013-12-24 01:42:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(254,'darun','127.0.0.1','Y','2013-12-24 01:42:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(255,'admin','127.0.0.1','N','2013-12-24 01:43:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(256,'admin','127.0.0.1','Y','2013-12-24 01:43:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(257,'darun','127.0.0.1','Y','2013-12-24 01:44:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(258,'admin','127.0.0.1','Y','2013-12-24 02:46:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(259,'darun','127.0.0.1','Y','2013-12-24 02:47:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(260,'admin','127.0.0.1','Y','2013-12-24 02:52:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(261,'deswell','127.0.0.1','Y','2013-12-24 02:52:52','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(262,'admin','127.0.0.1','Y','2013-12-26 02:17:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(263,'admin','127.0.0.1','Y','2014-01-05 08:39:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(264,'deswell','127.0.0.1','Y','2014-01-05 10:34:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(265,'pndadmin','127.0.0.1','Y','2014-01-05 10:35:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(266,'admin','127.0.0.1','Y','2014-01-05 10:35:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(267,'admin','127.0.0.1','Y','2014-01-05 10:41:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(268,'pndadmin','127.0.0.1','Y','2014-01-05 10:41:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(269,'deswell','127.0.0.1','Y','2014-01-05 10:41:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(270,'pndadmin','127.0.0.1','Y','2014-01-05 10:42:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(271,'admin','127.0.0.1','Y','2014-01-05 11:37:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(272,'pndadmin','127.0.0.1','Y','2014-01-05 11:50:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(273,'admin','127.0.0.1','Y','2014-01-05 11:54:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(274,'deswell','127.0.0.1','Y','2014-01-05 12:10:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(275,'admin','127.0.0.1','Y','2014-01-06 06:19:59','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(276,'pndadmin','127.0.0.1','Y','2014-01-06 06:56:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(277,'admin','127.0.0.1','Y','2014-01-06 06:56:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(278,'deswell','127.0.0.1','Y','2014-01-06 06:57:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(279,'pndadmin','127.0.0.1','Y','2014-01-06 06:58:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(280,'admin','127.0.0.1','Y','2014-01-06 06:58:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(281,'admin','127.0.0.1','Y','2014-01-06 06:59:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(282,'pndadmin','127.0.0.1','Y','2014-01-06 07:09:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(283,'admin','127.0.0.1','Y','2014-01-06 07:09:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(284,'pndadmin','127.0.0.1','Y','2014-01-06 08:41:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(285,'deswell','127.0.0.1','Y','2014-01-06 08:41:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(286,'admin','127.0.0.1','Y','2014-01-06 08:41:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(287,'deswell','127.0.0.1','Y','2014-01-06 08:42:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(288,'pndadmin','127.0.0.1','Y','2014-01-06 08:46:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(289,'pndadmin','127.0.0.1','Y','2014-01-06 08:52:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(290,'admin','127.0.0.1','Y','2014-01-06 08:52:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(291,'pndadmin','127.0.0.1','Y','2014-01-06 08:53:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(292,'admin','127.0.0.1','Y','2014-01-06 08:53:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(293,'pndadmin','127.0.0.1','Y','2014-01-06 08:53:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(294,'deswell','127.0.0.1','Y','2014-01-06 08:53:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(295,'deswell','127.0.0.1','Y','2014-01-06 08:58:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(296,'admin','127.0.0.1','Y','2014-01-06 09:00:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(297,'pndadmin','127.0.0.1','Y','2014-01-06 11:02:38','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(298,'cartonbox','127.0.0.1','Y','2014-01-06 11:11:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(299,'admin','127.0.0.1','Y','2014-01-06 11:17:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(300,'cartonbox','127.0.0.1','Y','2014-01-06 11:24:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(301,'admin','127.0.0.1','Y','2014-01-06 11:30:05','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(302,'pndadmin','127.0.0.1','Y','2014-01-06 11:45:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(303,'admin','127.0.0.1','Y','2014-01-06 11:47:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(304,'admin','127.0.0.1','N','2014-01-07 00:58:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(305,'admin','127.0.0.1','N','2014-01-07 01:00:48','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(306,'admin','127.0.0.1','N','2014-01-07 01:02:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(307,'admin','127.0.0.1','N','2014-01-07 01:02:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(308,'cartonbox','127.0.0.1','Y','2014-01-07 01:04:25','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(309,'admin','127.0.0.1','Y','2014-01-07 01:04:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(310,'admin','127.0.0.1','Y','2014-01-07 01:05:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(311,'deswell','127.0.0.1','Y','2014-01-07 01:05:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(312,'admin','127.0.0.1','Y','2014-01-07 01:06:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(313,'cartonbox','127.0.0.1','Y','2014-01-07 02:12:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(314,'cartonbox','127.0.0.1','Y','2014-01-07 09:19:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(315,'admin','127.0.0.1','Y','2014-01-07 09:19:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(316,'admin','127.0.0.1','Y','2014-01-07 09:20:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(317,'admin','127.0.0.1','Y','2014-01-08 06:53:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(318,'admin','127.0.0.1','Y','2014-01-09 03:02:38','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(319,'cartonbox','127.0.0.1','Y','2014-01-09 05:06:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(320,'admin','127.0.0.1','Y','2014-01-09 05:06:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(321,'cartonbox','127.0.0.1','Y','2014-01-09 05:06:52','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(322,'admin','127.0.0.1','Y','2014-01-09 05:18:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(323,'cartonbox','127.0.0.1','Y','2014-01-09 05:20:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(324,'cartonbox','127.0.0.1','Y','2014-01-09 05:21:50','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(325,'admin','127.0.0.1','Y','2014-01-09 05:51:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(326,'admin','127.0.0.1','Y','2014-01-10 05:50:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(327,'admin','127.0.0.1','Y','2014-01-11 10:52:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(328,'cartonbox','127.0.0.1','N','2014-01-11 10:58:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(329,'pndadmin','127.0.0.1','N','2014-01-11 10:59:03','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(330,'pndadmin','127.0.0.1','Y','2014-01-11 10:59:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(331,'cartonbox','127.0.0.1','Y','2014-01-11 10:59:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(332,'admin','127.0.0.1','Y','2014-01-11 12:46:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(333,'cartonbox','127.0.0.1','Y','2014-01-11 12:46:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(334,'admin','127.0.0.1','Y','2014-01-11 12:47:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(335,'cartonbox','127.0.0.1','Y','2014-01-11 12:54:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(336,'admin','127.0.0.1','Y','2014-01-11 13:00:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(337,'cartonbox','127.0.0.1','Y','2014-01-11 13:01:28','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(338,'admin','127.0.0.1','Y','2014-01-11 13:01:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(339,'cartonbox','127.0.0.1','Y','2014-01-11 13:02:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(340,'admin','127.0.0.1','Y','2014-01-11 13:12:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(341,'admin','127.0.0.1','Y','2014-01-11 13:43:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(342,'cartonbox','127.0.0.1','Y','2014-01-12 01:50:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(343,'admin','127.0.0.1','Y','2014-01-12 02:25:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(344,'cartonbox','127.0.0.1','Y','2014-01-12 02:26:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(345,'admin','127.0.0.1','Y','2014-01-12 02:27:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(346,'cartonbox','127.0.0.1','Y','2014-01-12 02:29:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(347,'admin','127.0.0.1','Y','2014-01-12 02:31:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(348,'cartonbox','127.0.0.1','Y','2014-01-12 02:35:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(349,'admin','127.0.0.1','Y','2014-01-12 05:15:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(350,'cartonbox','127.0.0.1','Y','2014-01-12 05:46:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(351,'admin','127.0.0.1','Y','2014-01-12 06:11:44','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(352,'cartonbox','127.0.0.1','Y','2014-01-12 06:16:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(353,'admin','127.0.0.1','Y','2014-01-12 06:17:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(354,'cartonbox','127.0.0.1','Y','2014-01-12 06:17:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(355,'admin','127.0.0.1','Y','2014-01-12 06:17:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(356,'cartonbox','127.0.0.1','Y','2014-01-12 07:51:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(357,'admin','127.0.0.1','Y','2014-01-12 07:51:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(358,'pndadmin','127.0.0.1','Y','2014-01-12 07:53:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(359,'darun','127.0.0.1','N','2014-01-12 07:54:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(360,'darun','127.0.0.1','N','2014-01-12 07:54:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(361,'pndadmin','127.0.0.1','Y','2014-01-12 07:54:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(362,'Darun','127.0.0.1','N','2014-01-12 07:55:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(363,'Darun','127.0.0.1','N','2014-01-12 07:55:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(364,'admin','127.0.0.1','Y','2014-01-12 07:55:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(365,'pndadmin','127.0.0.1','Y','2014-01-12 07:55:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(366,'deswell','127.0.0.1','N','2014-01-12 07:56:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(367,'pndadmin','127.0.0.1','Y','2014-01-12 07:56:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(368,'deswell','127.0.0.1','N','2014-01-12 07:56:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(369,'deswell','127.0.0.1','N','2014-01-12 07:57:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(370,'pndadmin','127.0.0.1','Y','2014-01-12 07:57:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(371,'deswell','127.0.0.1','N','2014-01-12 07:57:58','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(372,'pndadmin','127.0.0.1','Y','2014-01-12 07:58:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(373,'deswell','127.0.0.1','N','2014-01-12 07:58:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(374,'admin','127.0.0.1','Y','2014-01-12 08:02:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(375,'pndadmin','127.0.0.1','Y','2014-01-12 08:06:01','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(376,'darun','127.0.0.1','N','2014-01-12 08:06:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(377,'pndadmin','127.0.0.1','Y','2014-01-12 08:06:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(378,'darun','127.0.0.1','Y','2014-01-12 08:06:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(379,'admin','127.0.0.1','Y','2014-01-12 08:07:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(380,'darun','127.0.0.1','Y','2014-01-12 08:09:13','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(381,'admin','127.0.0.1','Y','2014-01-12 08:10:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(382,'darun','127.0.0.1','Y','2014-01-12 08:11:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(383,'alex','127.0.0.1','Y','2014-01-12 08:13:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(384,'admin','127.0.0.1','Y','2014-01-12 08:13:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(385,'darun','127.0.0.1','Y','2014-01-12 08:15:14','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(386,'alex','127.0.0.1','Y','2014-01-12 08:16:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(387,'admin','127.0.0.1','Y','2014-01-12 08:17:03','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(388,'alex','127.0.0.1','Y','2014-01-12 08:17:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(389,'admin','127.0.0.1','N','2014-01-12 08:18:05','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(390,'admin','127.0.0.1','N','2014-01-12 08:18:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(391,'admin','127.0.0.1','Y','2014-01-12 08:18:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(392,'alex','127.0.0.1','Y','2014-01-12 08:20:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(393,'admin','127.0.0.1','Y','2014-01-12 08:20:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(394,'darun','127.0.0.1','Y','2014-01-12 08:21:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(395,'darun','127.0.0.1','Y','2014-01-12 08:36:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(396,'admin','127.0.0.1','Y','2014-01-12 08:36:39','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(397,'alex','127.0.0.1','Y','2014-01-12 08:49:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(398,'admin','127.0.0.1','Y','2014-01-12 08:50:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(399,'alex','127.0.0.1','Y','2014-01-12 08:51:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(400,'admin','127.0.0.1','Y','2014-01-12 09:04:54','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(401,'alex','127.0.0.1','Y','2014-01-12 09:05:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(402,'admin','127.0.0.1','Y','2014-01-12 09:07:38','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(403,'pndadmin','127.0.0.1','Y','2014-01-12 09:29:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(404,'deswell','127.0.0.1','Y','2014-01-12 09:33:39','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(405,'pndadmin','127.0.0.1','Y','2014-01-12 09:34:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(406,'deswell','127.0.0.1','Y','2014-01-12 09:34:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(407,'yow','127.0.0.1','Y','2014-01-12 09:38:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(408,'fong','127.0.0.1','Y','2014-01-12 09:53:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(409,'yow','127.0.0.1','Y','2014-01-12 09:54:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(410,'admin','127.0.0.1','Y','2014-01-12 10:06:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(411,'fong','127.0.0.1','Y','2014-01-12 10:09:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(412,'admin','127.0.0.1','Y','2014-01-12 10:09:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(413,'fong','127.0.0.1','Y','2014-01-12 10:10:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(414,'admin','127.0.0.1','Y','2014-01-12 10:13:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(415,'fong','127.0.0.1','Y','2014-01-12 10:36:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(416,'fong','127.0.0.1','Y','2014-01-12 10:37:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(417,'admin','127.0.0.1','Y','2014-01-12 13:57:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(418,'admin','127.0.0.1','Y','2014-01-13 01:38:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(419,'admin','127.0.0.1','N','2014-01-13 01:39:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(420,'admin','127.0.0.1','Y','2014-01-13 01:39:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(421,'tony','127.0.0.1','N','2014-01-13 01:40:59','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(422,'tony','127.0.0.1','N','2014-01-13 01:41:03','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(423,'admin','127.0.0.1','Y','2014-01-13 01:41:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(424,'admin','127.0.0.1','Y','2014-01-13 05:18:47','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(425,'pndadmin','127.0.0.1','Y','2014-01-13 05:48:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(426,'cartonbox','127.0.0.1','N','2014-01-13 05:48:51','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(427,'pndadmin','127.0.0.1','Y','2014-01-13 05:48:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(428,'cartonbox','127.0.0.1','N','2014-01-13 05:49:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(429,'pndadmin','127.0.0.1','Y','2014-01-13 05:50:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(430,'cartonbox','127.0.0.1','Y','2014-01-13 05:52:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(431,'admin','127.0.0.1','Y','2014-01-13 05:54:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(432,'cartonbox','127.0.0.1','Y','2014-01-13 05:58:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(433,'admin','127.0.0.1','Y','2014-01-13 05:59:49','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(434,'admin','127.0.0.1','Y','2014-01-13 06:02:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(435,'admin','127.0.0.1','Y','2014-01-14 07:03:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(436,'pndadmin','127.0.0.1','Y','2014-01-14 07:54:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(437,'darun','127.0.0.1','Y','2014-01-14 07:55:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(438,'alex','127.0.0.1','Y','2014-01-14 07:58:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(439,'admin','127.0.0.1','Y','2014-01-14 09:34:42','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(440,'pndadmin','127.0.0.1','Y','2014-01-14 10:53:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(441,'deswell','127.0.0.1','N','2014-01-14 10:53:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(442,'pndadmin','127.0.0.1','Y','2014-01-14 10:53:29','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(443,'deswell','127.0.0.1','Y','2014-01-14 10:54:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(444,'admin','127.0.0.1','Y','2014-01-14 15:01:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(445,'darun','127.0.0.1','Y','2014-01-14 15:01:31','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(446,'admin','127.0.0.1','Y','2014-01-14 15:01:50','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(447,'darun','127.0.0.1','Y','2014-01-14 15:02:33','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(448,'admin','127.0.0.1','Y','2014-01-15 01:28:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(449,'pndadmin','127.0.0.1','Y','2014-01-15 01:28:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(450,'pndadmin','127.0.0.1','Y','2014-01-15 01:34:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(451,'pndadmin','127.0.0.1','Y','2014-01-15 01:49:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(452,'darun','127.0.0.1','Y','2014-01-15 01:55:19','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(453,'pndadmin','127.0.0.1','Y','2014-01-15 02:12:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(454,'darun','127.0.0.1','Y','2014-01-15 02:27:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(455,'darunalex','127.0.0.1','Y','2014-01-15 02:38:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(456,'darun','127.0.0.1','Y','2014-01-15 04:50:04','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(457,'pndadmin','127.0.0.1','Y','2014-01-15 05:19:33','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(458,'deswell','127.0.0.1','Y','2014-01-15 05:20:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(459,'dsalex','127.0.0.1','Y','2014-01-15 05:23:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(460,'pndadmin','127.0.0.1','Y','2014-01-15 05:54:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(461,'darun','127.0.0.1','Y','2014-01-15 07:45:12','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(462,'admin','127.0.0.1','Y','2014-01-16 02:56:15','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(463,'admin','127.0.0.1','Y','2014-01-16 03:44:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(464,'darun','127.0.0.1','Y','2014-01-16 03:52:41','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(465,'admin','127.0.0.1','N','2014-01-16 04:11:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(466,'admin','127.0.0.1','Y','2014-01-16 04:11:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(467,'admin','127.0.0.1','Y','2014-01-16 04:19:47','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(468,'darun','127.0.0.1','Y','2014-01-16 04:42:38','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(469,'admin','127.0.0.1','Y','2014-01-16 05:29:07','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(470,'admin','127.0.0.1','Y','2014-01-16 07:59:11','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(471,'admin','127.0.0.1','Y','2014-01-17 03:15:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(472,'admin','127.0.0.1','Y','2014-01-20 07:37:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(473,'darun','127.0.0.1','Y','2014-01-21 01:24:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(474,'darun','127.0.0.1','Y','2014-01-21 01:25:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(475,'admin','127.0.0.1','Y','2014-01-21 01:28:28','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(476,'darun','127.0.0.1','Y','2014-01-21 01:37:40','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(477,'pndadmin','127.0.0.1','Y','2014-01-21 02:25:01','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(478,'demo1','127.0.0.1','N','2014-01-21 07:16:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(479,'demo1','127.0.0.1','N','2014-01-21 07:16:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(480,'admin','127.0.0.1','Y','2014-01-21 07:16:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(481,'demo1','127.0.0.1','Y','2014-01-21 07:18:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(482,'pndadmin','127.0.0.1','Y','2014-01-22 02:11:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(483,'admin','127.0.0.1','N','2014-01-22 03:23:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(484,'admin','127.0.0.1','Y','2014-01-22 03:23:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(485,'ADMIN','127.0.0.1','Y','2014-01-22 03:36:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(486,'DEMO1OPERATOR','127.0.0.1','Y','2014-01-22 03:41:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(487,'ADMIN','127.0.0.1','Y','2014-01-22 03:43:37','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(488,'demo1operator','127.0.0.1','Y','2014-01-22 03:50:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(489,'admin','127.0.0.1','Y','2014-01-22 03:53:36','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(490,'DEMO1OPERATOR','127.0.0.1','Y','2014-01-22 03:56:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(491,'admin','127.0.0.1','Y','2014-01-22 04:01:50','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(492,'admin','127.0.0.1','Y','2014-01-22 04:05:22','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(493,'admin','127.0.0.1','Y','2014-01-22 05:05:03','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(494,'DEMO1OPERATION','127.0.0.1','N','2014-01-22 05:24:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(495,'DEMO1OPERATION','127.0.0.1','N','2014-01-22 05:24:10','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(496,'DEMO1OPERATION','127.0.0.1','N','2014-01-22 05:24:21','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(497,'admin','127.0.0.1','Y','2014-01-22 05:24:28','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(498,'DEMO1OPERATOR','127.0.0.1','Y','2014-01-22 05:24:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(499,'admin','127.0.0.1','Y','2014-01-22 05:29:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(500,'admin','127.0.0.1','Y','2014-01-22 06:07:44','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(501,'admin','127.0.0.1','Y','2014-01-22 06:32:49','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(502,'DEMO1OPERATOR','127.0.0.1','Y','2014-01-22 06:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(503,'admin','127.0.0.1','Y','2014-01-22 07:51:31','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(504,'darun','127.0.0.1','Y','2014-01-22 07:54:34','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(505,'DEMO1OPERATOR','127.0.0.1','Y','2014-01-23 01:42:08','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(506,'DEMO1OPERATOR','210.187.239.102','Y','2014-01-23 02:18:33','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(507,'DEMO1MANAGER','210.187.239.102','Y','2014-01-23 02:20:58','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(508,'ADMIN','210.187.239.102','Y','2014-01-23 02:21:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(509,'DEMO1OPERATOR','210.187.239.102','Y','2014-01-23 02:25:02','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(510,'DEMO1MANAGER','210.187.239.102','Y','2014-01-23 02:43:58','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(511,'admin','210.187.239.102','Y','2014-01-23 02:44:35','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(512,'admin','127.0.0.1','Y','2014-01-23 05:29:25','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(513,'admin','127.0.0.1','Y','2014-01-23 05:30:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(514,'admin','127.0.0.1','N','2014-01-23 05:31:20','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(515,'admin','127.0.0.1','Y','2014-01-23 05:31:23','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(516,'DEMO1MANAGER','127.0.0.1','Y','2014-01-23 06:19:28','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(517,'admin','127.0.0.1','N','2014-01-23 06:23:52','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(518,'admin','127.0.0.1','N','2014-01-23 06:23:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(519,'admin','127.0.0.1','Y','2014-01-23 06:24:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(520,'admin','127.0.0.1','Y','2014-01-23 08:13:17','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(521,'DEMO1OPERATOR','127.0.0.1','Y','2014-01-23 13:44:39','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(522,'admin','127.0.0.1','Y','2014-01-24 03:21:57','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(523,'admin','127.0.0.1','Y','2014-01-24 03:31:48','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(524,'admin','127.0.0.1','Y','2014-01-25 08:12:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(525,'pndadmin','127.0.0.1','Y','2014-01-25 08:43:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(526,'admin','127.0.0.1','Y','2014-01-25 14:09:06','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(527,'admin','192.168.1.81','Y','2014-01-26 10:42:53','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(528,'pndadmin','127.0.0.1','Y','2014-01-27 07:33:24','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(529,'DEMO1OPERATOR','127.0.0.1','Y','2014-01-28 03:09:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(530,'pndadmin','127.0.0.1','Y','2014-01-29 07:52:46','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(531,'admin','127.0.0.1','Y','2014-01-29 07:53:16','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(532,'admin','127.0.0.1','Y','2014-01-29 07:54:09','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(533,'pndadmin','127.0.0.1','Y','2014-01-29 11:15:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(534,'admin','127.0.0.1','Y','2014-01-29 11:16:05','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(535,'DEMO1OPERATOR','127.0.0.1','Y','2014-01-29 11:35:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(536,'admin','127.0.0.1','Y','2014-01-29 11:37:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(537,'DEMO1OPERTOR','127.0.0.1','N','2014-02-01 00:41:32','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(538,'DEMO1OPERATOR','127.0.0.1','Y','2014-02-01 00:41:43','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(539,'admin','127.0.0.1','N','2014-02-01 01:51:25','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(540,'admin','127.0.0.1','Y','2014-02-01 01:51:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(541,'DEMO1OPERATOR','127.0.0.1','Y','2014-02-01 02:23:49','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(542,'admin','127.0.0.1','Y','2014-02-01 02:23:56','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(543,'DEMO1OPERATOR','127.0.0.1','Y','2014-02-01 02:25:04','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(544,'admin','127.0.0.1','Y','2014-02-01 02:25:33','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(545,'admin','127.0.0.1','Y','2014-02-03 09:11:30','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(546,'DEMO1OPERATOR','127.0.0.1','Y','2014-02-03 09:15:04','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(547,'DEMO1OPERATOR','127.0.0.1','Y','2014-02-06 04:05:26','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(548,'admin','127.0.0.1','Y','2014-02-06 08:29:18','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(549,'admin','127.0.0.1','Y','2014-02-06 08:39:55','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL),(550,'DEMO1OPERATOR','127.0.0.1','Y','2014-02-06 08:40:27','0000-00-00 00:00:00','0000-00-00 00:00:00','N',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcuserorgrole`
--

LOCK TABLES `fcuserorgrole` WRITE;
/*!40000 ALTER TABLE `fcuserorgrole` DISABLE KEYS */;
INSERT INTO `fcuserorgrole` VALUES (3,'Hong Yee',3,1,1),(21,'pndadmin',6,2,1),(51,'alex thong',26,3,1),(53,'darunalex',26,4,1),(55,'deswell',28,3,1),(56,'dsalex',28,4,1),(57,'dsdanny',28,5,1),(58,'dskeng',29,4,1),(59,'user1',27,3,1),(60,'user2',26,4,1),(61,'DEMO1ADMIN',31,3,1),(62,'DEMO1OPERATOR',31,4,1),(63,'DEMO1MANAGER',31,5,1),(64,'DEMO2ADMIN',32,3,1),(65,'DEMO2OPERATOR',32,4,1),(66,'DEMO2MANAGER',32,5,1),(67,'demo1',31,3,1),(74,'darun',26,3,1),(84,'admin',6,1,1),(85,'admin',6,2,NULL),(86,'admin',6,3,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=492 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcusersession`
--

LOCK TABLES `fcusersession` WRITE;
/*!40000 ALTER TABLE `fcusersession` DISABLE KEYS */;
INSERT INTO `fcusersession` VALUES (431,'duicomhrn0fl6lcuums6227rm3','demo1','127.0.0.1','Y','2014-01-21 07:18:37','2014-01-21 07:18:37',NULL),(491,'q5cui745qjastfatoq7fvk08c5','DEMO1OPERATOR','127.0.0.1','Y','2014-02-06 08:40:27','2014-02-06 08:40:27',NULL);
/*!40000 ALTER TABLE `fcusersession` ENABLE KEYS */;
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
  `smb_pdinchar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`smb_id`),
  KEY `idx_smbtransaction_spid` (`smb_spid`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smbtransaction`
--

LOCK TABLES `smbtransaction` WRITE;
/*!40000 ALTER TABLE `smbtransaction` DISABLE KEYS */;
INSERT INTO `smbtransaction` VALUES (2,72,'2010-11-20 09:09:06',111,NULL,'123','2010-11-20'),(5,72,'2010-11-25 05:47:53',25,NULL,'25','2010-11-25'),(6,74,'2010-11-25 05:48:04',30,NULL,'30','2010-11-25'),(7,75,'2010-11-25 08:59:57',100,NULL,'100','2010-11-25'),(8,79,'2010-11-25 09:49:13',200,NULL,'200','2010-11-25'),(9,78,'2010-11-25 09:50:03',50,NULL,'50','2010-11-25'),(10,80,'2010-11-27 08:03:00',100,NULL,'Print for...','2010-11-27'),(11,83,'2010-11-28 05:29:22',200,NULL,'20','2010-11-28'),(12,297,'2011-12-20 05:28:53',15,NULL,NULL,'2011-12-20'),(13,1330,'2013-01-04 02:19:21',1000,NULL,NULL,'2013-01-04'),(14,1329,'2013-01-04 02:19:36',2500,NULL,NULL,'2013-01-04'),(15,1331,'2013-01-04 02:19:46',500,NULL,NULL,'2013-01-04'),(16,1334,'2013-01-04 02:19:56',1000,NULL,NULL,'2013-01-04'),(17,1340,'2013-01-04 02:20:04',2000,NULL,NULL,'2013-01-04'),(18,1345,'2013-01-04 02:20:12',300,NULL,NULL,'2013-01-04'),(19,1354,'2013-01-04 02:20:20',500,NULL,NULL,'2013-01-04'),(20,1333,'2013-01-04 02:20:27',30,NULL,NULL,'2013-01-04'),(21,1340,'2013-01-04 02:20:35',350,NULL,NULL,'2013-01-04'),(22,1357,'2013-01-04 02:20:43',500,NULL,NULL,'2013-01-04'),(23,1329,'2013-01-04 02:25:11',500,NULL,NULL,'2013-01-04'),(24,1330,'2013-01-04 02:25:17',350,NULL,NULL,'2013-01-04'),(25,1329,'2013-01-04 02:25:27',100,NULL,NULL,'2013-01-04'),(26,1331,'2013-01-04 02:25:33',1500,NULL,NULL,'2013-01-04'),(27,1333,'2013-01-04 02:25:39',500,NULL,NULL,'2013-01-04'),(28,1335,'2013-01-04 02:25:45',1000,NULL,NULL,'2013-01-04'),(29,1333,'2013-01-04 02:25:54',500,NULL,NULL,'2013-01-04'),(30,1330,'2013-01-04 02:26:02',3200,NULL,NULL,'2013-01-04'),(31,1339,'2013-01-04 02:26:09',500,NULL,NULL,'2013-01-04'),(32,1341,'2013-01-04 02:26:16',500,NULL,NULL,'2013-01-04'),(33,1344,'2013-01-04 02:26:31',3500,NULL,NULL,'2013-01-04'),(34,1336,'2013-01-04 02:26:39',1000,NULL,NULL,'2013-01-04'),(35,1331,'2013-01-04 02:28:50',300,NULL,NULL,'2013-01-04'),(36,1343,'2013-01-04 02:28:57',500,NULL,NULL,'2013-01-04'),(37,1346,'2013-01-04 02:29:06',1500,NULL,NULL,'2013-01-04'),(38,1339,'2013-01-04 02:29:12',1000,NULL,NULL,'2013-01-04'),(39,1346,'2013-01-04 02:29:18',10000,NULL,NULL,'2013-01-04'),(40,1362,'2013-01-04 02:29:27',1500,NULL,NULL,'2013-01-04'),(41,1329,'2013-01-04 02:29:33',300,NULL,NULL,'2013-01-04'),(42,1330,'2013-01-04 02:29:39',1500,NULL,NULL,'2013-01-04'),(43,1331,'2013-01-04 02:29:46',250,NULL,NULL,'2013-01-04'),(44,1335,'2013-01-04 02:29:55',100,NULL,NULL,'2013-01-04'),(45,1379,'2013-01-04 02:30:02',2500,NULL,NULL,'2013-01-04'),(46,1381,'2013-01-04 02:30:11',3500,NULL,NULL,'2013-01-04'),(47,1379,'2013-01-04 02:30:23',1000,NULL,NULL,'2013-01-04'),(48,1380,'2013-01-04 02:30:36',2500,NULL,NULL,'2013-01-04'),(49,1387,'2013-01-04 02:30:48',1000,NULL,NULL,'2013-01-04'),(50,1388,'2013-01-04 02:30:57',2500,NULL,NULL,'2013-01-04'),(51,1429,'2013-01-04 02:31:09',3200,NULL,NULL,'2013-01-04'),(52,1332,'2013-01-04 02:37:09',2500,NULL,NULL,'2013-01-04'),(53,1334,'2013-01-04 02:37:16',2100,NULL,NULL,'2013-01-04'),(54,1336,'2013-01-04 02:37:23',1500,NULL,NULL,'2013-01-04'),(55,1338,'2013-01-04 02:37:32',1000,NULL,NULL,'2013-01-04'),(56,1480,'2013-01-04 02:43:03',1200,NULL,NULL,'2013-01-04'),(57,1338,'2013-01-04 02:43:14',2300,NULL,NULL,'2013-01-04'),(58,1334,'2013-01-04 02:43:22',1300,NULL,NULL,'2013-01-04'),(59,1338,'2013-01-04 02:43:32',125,NULL,NULL,'2013-01-04'),(60,1338,'2013-01-04 02:43:37',500,NULL,NULL,'2013-01-04'),(61,1347,'2013-01-04 02:43:46',250,NULL,NULL,'2013-01-04'),(62,1329,'2014-01-23 06:22:14',2000,NULL,NULL,'2014-01-23'),(63,1330,'2014-01-23 06:22:19',200,NULL,NULL,'2014-01-23'),(64,1331,'2014-01-23 06:22:24',500,NULL,NULL,'2014-01-23'),(65,1332,'2014-01-23 06:22:56',300,NULL,NULL,'2014-01-23'),(66,1343,'2014-01-23 06:23:02',500,NULL,NULL,'2014-01-23'),(67,1345,'2014-01-23 06:23:10',1000,NULL,NULL,'2014-01-23'),(68,1345,'2014-01-23 06:23:18',300,NULL,NULL,'2014-01-23'),(69,1365,'2014-01-23 06:23:24',500,NULL,NULL,'2014-01-23'),(70,1329,'2014-01-23 06:23:35',500,NULL,NULL,'2014-01-23'),(71,1330,'2014-01-23 06:23:40',350,NULL,NULL,'2014-01-23'),(72,1329,'2014-01-24 03:47:10',50,NULL,NULL,'2014-01-24');
/*!40000 ALTER TABLE `smbtransaction` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pflex`.`tri_smbtransaction_date` BEFORE INSERT
    ON pflex.smbtransaction FOR EACH ROW
BEGIN
   set NEW.smb_pdinchar = DATE_FORMAT(NEW.smb_printdate,'%Y-%m-%d');  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  PRIMARY KEY (`cus_id`),
  KEY `idx_smcustomer_orgid` (`cus_orgid`)
) ENGINE=InnoDB AUTO_INCREMENT=753 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smcustomer`
--

LOCK TABLES `smcustomer` WRITE;
/*!40000 ALTER TABLE `smcustomer` DISABLE KEYS */;
INSERT INTO `smcustomer` VALUES (715,'Haier','H588810-V','MHAIER-V','038854124',31),(716,'Hisense','HS9514-F','HISENSE-D','038856974',31),(717,'Huawei','HUA5815-V','HUAWEI-A581','065478512',31),(718,'Lenovo','L91518-D','LENOVO-515','0357896651',31),(719,'TCL','TCL8510-V','M235295-T','078554123',31),(720,'ZTE','ZTE95251-V','ZTEM86235','0478896421',31),(721,'Amkette','AM518510-V','AMKETTE-MAS01','0498762251',31),(722,'Beetel','B059260-V','BEETEL951','037458412',31),(723,'Bharat Electronics','BE8616-F','BHARAT-1618A','0478533651',31),(724,'Godrej','GOD51508C','GODREJ-58V','03557963412',31),(725,'HCL','HCL69106','HCL59610-D','046685912',31),(726,'iBall','IBAL95168V','IBALL861KKV','0978545631',31),(727,'Intex','INTEX59185-V','M68160V','0478852120',31),(728,'Lava','LA81N6-V','LAVA901-V','0358789641',31),(729,'Micromax','M91206I0-V','MICROMAX0661','0465845632',31),(730,'Notion Ink','N5601601','NOTIONINK9510','036698964',31),(731,'Onida','ONI6928N','ONIDA1610','0388579640',31),(732,'Voltas','VOL18610-V','VOLTAS-V591','0378855420',31),(733,'Alpine','ALPI5915-V','ALPINE61861','0354785420',31),(734,'Brother Industries','BROT5106-V','BROTHER81','038574563',31),(735,'Canon','CAN691-V','CANON961-1','0357789641',31),(736,'Casio','CAS616V','CASIO1961','0396754212',31),(737,'Fujitsu','FUTI191-V','FUJITSU519-V','03578856242',31),(738,'Hitachi','HITC9016HV','HITACHI-V619','0557745620',31),(739,'IO Data','IO519610-D','IODATA96106','0387724854',31),(740,'Epson','EP6910S','EPSON-5168','0377758412',31),(741,'Kenwood','KEN6810-D','KENWOOD-186','0328755632',31),(742,'Konica','KON86190-C','KONICA-19D','074458964',31),(743,'Mitsubishi','D816910-D','MITSUBISHI-619','064577950',31),(744,'JVC','JVC8610-D','JVCKSFJ-D','035878964',31),(745,'Panasonic','PAN9515-S','PANASONIC-6','0365589745',31),(746,'Pentax','P51851I-D','M851951','0385576210',31),(747,'Pioneer','P6926-D','PIONEER-62','038577452',31),(748,'Nikkon','NK601-V','NIKKON-618','0378554741',31),(749,'Ricoh','R60619NV-D','RICOH-1NV','038996725',31),(750,'Sony','SO69101-D','SONY951-D','0352247568',31),(751,'Toshiba','TKSJT-D','TOSHIBA-618S','0325578965',31),(752,'LG','LG01-61V','LG56100','0355879655',31);
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
  PRIMARY KEY (`op_id`),
  KEY `idx_smorgpackage_orgid` (`op_orgid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smorgpackage`
--

LOCK TABLES `smorgpackage` WRITE;
/*!40000 ALTER TABLE `smorgpackage` DISABLE KEYS */;
INSERT INTO `smorgpackage` VALUES (1,4,NULL,'2013-12-23 22:53:50','admin',1,'2013-01-12','2013-12-31',NULL,NULL),(2,11,1,'2014-01-11 18:59:28','pndadmin',1,'2014-01-11','2014-02-10','2014-02-10',NULL),(3,12,1,'2014-01-12 15:53:34','admin',1,'2014-01-12','2014-02-11','2014-02-11',NULL),(4,13,1,'2014-01-12 15:56:15','pndadmin',1,'2014-01-12','2014-02-11','2014-02-11',NULL),(5,14,1,'2014-01-12 16:06:37','pndadmin',1,'2014-01-12','2014-02-11','2014-02-11',NULL),(6,15,1,'2014-01-12 17:33:32','pndadmin',1,'2014-01-12','2014-02-11','2014-02-11',NULL),(7,16,1,'2014-01-13 13:50:12','pndadmin',1,'2014-01-13','2014-02-12','2014-02-12',NULL),(8,19,1,'2014-01-14 15:55:03','pndadmin',1,'2014-01-14','2014-02-13','2014-02-13',NULL),(10,20,1,'2014-01-14 18:54:03','pndadmin',1,'2014-01-14','2014-02-13','2014-02-13',NULL),(13,24,1,'2014-01-15 09:44:25','pndadmin',1,'2014-01-01','2014-01-31','2014-01-31',NULL),(15,28,1,'2014-01-15 13:20:03','pndadmin',1,'2014-01-15','2014-02-14','2014-02-14',NULL),(16,31,1,'2014-01-21 10:28:55','pndadmin',1,'2014-01-01','2016-12-31','2016-12-31',NULL),(17,32,1,'2014-01-21 10:29:10','pndadmin',1,'2014-01-01','2015-12-31','2015-12-31',NULL),(18,26,1,'2014-01-25 21:09:02','pndadmin',1,'2014-01-25','2014-02-24','2014-02-24',NULL),(19,26,1,'2014-01-25 21:09:44','pndadmin',1,'2014-02-25','2014-03-24','2014-03-24',NULL);
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
  `sp_plateinfo` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`sp_id`),
  KEY `fk_sp_psid_ps_id` (`sp_psid`),
  KEY `idx_smplate_orgid` (`sp_orgid`)
) ENGINE=InnoDB AUTO_INCREMENT=1516 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smplate`
--

LOCK TABLES `smplate` WRITE;
/*!40000 ALTER TABLE `smplate` DISABLE KEYS */;
INSERT INTO `smplate` VALUES (789,655,115,-1,10185,NULL,'BE595C','67B8F5F512A9','2014-01-23 01:49:35','SYSTEM','ACTIVE',31,NULL),(790,660,115,-1,10186,NULL,'057846','551CFD161778','2014-01-23 01:49:35','SYSTEM','ACTIVE',31,NULL),(791,1052,115,-1,10187,NULL,'9FC8A5','1BCA8AFB4FA5','2014-01-23 01:49:35','SYSTEM','ACTIVE',31,NULL),(792,723,115,-1,10188,NULL,'9E587A','96A52DEFC3B8','2014-01-23 01:49:36','SYSTEM','ACTIVE',31,NULL),(793,968,115,-1,10189,NULL,'67DBC6','4FEA701A425B','2014-01-23 01:49:36','SYSTEM','ACTIVE',31,NULL),(794,757,115,-1,10190,NULL,'45B5B7','EAD66D60FCBE','2014-01-23 01:49:36','SYSTEM','ACTIVE',31,NULL),(795,893,115,-1,10191,NULL,'9B6A18','5FFEEB8A581D','2014-01-23 01:49:36','SYSTEM','ACTIVE',31,NULL),(796,624,115,-1,10192,NULL,'598F01','9231A2D173DD','2014-01-23 01:49:36','SYSTEM','ACTIVE',31,NULL),(797,745,115,-1,10193,NULL,'D267AF','B4229828F144','2014-01-23 01:49:36','SYSTEM','ACTIVE',31,NULL),(798,797,115,-1,10194,NULL,'912FD1','090A773BBBDE','2014-01-23 01:49:36','SYSTEM','ACTIVE',31,NULL),(799,531,115,-1,10195,NULL,'6CA9C5','59912FDDCF8E','2014-01-23 01:49:36','SYSTEM','ACTIVE',31,NULL),(800,995,115,-1,10196,NULL,'6B329A','EDA1D4F41CD1','2014-01-23 01:49:36','SYSTEM','ACTIVE',31,NULL),(801,772,115,-1,10197,NULL,'1191C9','39740EDB77ED','2014-01-23 01:49:36','SYSTEM','ACTIVE',31,NULL),(802,797,115,-1,10198,NULL,'524382','78B462C2407E','2014-01-23 01:49:36','SYSTEM','ACTIVE',31,NULL),(803,985,115,-1,10199,NULL,'F28F8F','A3E7A78C5C2B','2014-01-23 01:49:37','SYSTEM','ACTIVE',31,NULL),(804,695,115,-1,10200,NULL,'00E412','F6DCEFCC3A07','2014-01-23 01:49:37','SYSTEM','ACTIVE',31,NULL),(805,1074,115,-1,10201,NULL,'90395F','F8F5F4335572','2014-01-23 01:49:37','SYSTEM','ACTIVE',31,NULL),(806,967,115,-1,10202,NULL,'5EC133','8166A2AE6CF7','2014-01-23 01:49:37','SYSTEM','ACTIVE',31,NULL),(807,738,115,-1,10203,NULL,'E5EA11','2DA5EC471E90','2014-01-23 01:49:37','SYSTEM','ACTIVE',31,NULL),(808,1082,115,-1,10204,NULL,'039444','07435E91A0FE','2014-01-23 01:49:37','SYSTEM','ACTIVE',31,NULL),(809,1063,115,-1,10205,NULL,'69D763','4D01804421A3','2014-01-23 01:49:37','SYSTEM','ACTIVE',31,NULL),(810,891,115,-1,10206,NULL,'A48C10','F3C35270B74E','2014-01-23 01:49:37','SYSTEM','ACTIVE',31,NULL),(811,586,115,-1,10207,NULL,'0A7BB4','CCBDBDC5715C','2014-01-23 01:49:37','SYSTEM','ACTIVE',31,NULL),(812,591,115,-1,10208,NULL,'2C9978','7151C99BEA97','2014-01-23 01:49:37','SYSTEM','ACTIVE',31,NULL),(813,761,115,-1,10209,NULL,'4F0204','4342563C30A0','2014-01-23 01:49:38','SYSTEM','ACTIVE',31,NULL),(814,671,115,-1,10210,NULL,'78D6E0','B21538E39696','2014-01-23 01:49:38','SYSTEM','ACTIVE',31,NULL),(815,739,115,-1,10211,NULL,'00CDFB','3BA86F930357','2014-01-23 01:49:38','SYSTEM','ACTIVE',31,NULL),(816,712,115,-1,10212,NULL,'B6CD19','34E66797D9C9','2014-01-23 01:49:38','SYSTEM','ACTIVE',31,NULL),(817,694,115,-1,10213,NULL,'DBE93E','8C9784A2169D','2014-01-23 01:49:38','SYSTEM','ACTIVE',31,NULL),(818,541,115,-1,10214,NULL,'493DA6','1E9CA8BFE893','2014-01-23 01:49:38','SYSTEM','ACTIVE',31,NULL),(819,538,116,-1,10385,NULL,'41A776','4258F924C205','2014-01-23 01:49:38','SYSTEM','ACTIVE',31,NULL),(820,912,116,-1,10386,NULL,'D59099','2371767206F5','2014-01-23 01:49:38','SYSTEM','ACTIVE',31,NULL),(821,700,116,-1,10387,NULL,'CD7685','6D073F542EC9','2014-01-23 01:49:38','SYSTEM','ACTIVE',31,NULL),(822,668,116,-1,10388,NULL,'F4BEFD','226DF6CF612D','2014-01-23 01:49:39','SYSTEM','ACTIVE',31,NULL),(823,1001,116,-1,10389,NULL,'AB62ED','82F2B03062A9','2014-01-23 01:49:39','SYSTEM','ACTIVE',31,NULL),(824,917,116,-1,10390,NULL,'32D28E','18E9016B4125','2014-01-23 01:49:39','SYSTEM','ACTIVE',31,NULL),(825,965,116,-1,10391,NULL,'347BAF','D0BF32E3211F','2014-01-23 01:49:39','SYSTEM','ACTIVE',31,NULL),(826,904,116,-1,10392,NULL,'41FF47','961FB0D218FA','2014-01-23 01:49:39','SYSTEM','ACTIVE',31,NULL),(827,907,116,-1,10393,NULL,'92BA26','D477436A83A2','2014-01-23 01:49:39','SYSTEM','ACTIVE',31,NULL),(828,595,116,-1,10394,NULL,'03E8A5','5A625F5C1A23','2014-01-23 01:49:39','SYSTEM','ACTIVE',31,NULL),(829,863,116,-1,10395,NULL,'B8D8EC','33C5FB334978','2014-01-23 01:49:39','SYSTEM','ACTIVE',31,NULL),(830,851,116,-1,10396,NULL,'0D5DF2','52DAF5CE0794','2014-01-23 01:49:39','SYSTEM','ACTIVE',31,NULL),(831,542,116,-1,10397,NULL,'1487AC','D769C575720B','2014-01-23 01:49:39','SYSTEM','ACTIVE',31,NULL),(832,913,116,-1,10398,NULL,'FB8AB5','2CE6D8B58D3D','2014-01-23 01:49:39','SYSTEM','ACTIVE',31,NULL),(833,720,116,-1,10399,NULL,'9CC01C','4F5B2782ED47','2014-01-23 01:49:39','SYSTEM','ACTIVE',31,NULL),(834,534,116,-1,10400,NULL,'4E214F','C5E12074C21E','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(835,1049,116,-1,10401,NULL,'E54D9E','44DFE77534CE','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(836,1088,116,-1,10402,NULL,'2D748C','327A43CC8E00','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(837,980,116,-1,10403,NULL,'5A6228','CC924AC3D7A9','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(838,872,116,-1,10404,NULL,'7AE62C','88D4A60666FA','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(839,743,116,-1,10405,NULL,'0A1E6F','835B65B24B28','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(840,705,116,-1,10406,NULL,'94DCB6','81BBEF202EDA','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(841,582,116,-1,10407,NULL,'1A381E','73DEB3DCDF3D','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(842,774,116,-1,10408,NULL,'27789D','9C70BAE5329F','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(843,824,116,-1,10409,NULL,'CFE423','6100D8CA60A2','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(844,797,116,-1,10410,NULL,'29DE90','F492FDAADFC0','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(845,703,116,-1,10411,NULL,'188128','091D30DE49E6','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(846,608,116,-1,10412,NULL,'5ABEAC','08A6322425C6','2014-01-23 01:49:40','SYSTEM','ACTIVE',31,NULL),(847,622,116,-1,10413,NULL,'025CF6','AB3A90C43031','2014-01-23 01:49:41','SYSTEM','ACTIVE',31,NULL),(848,940,116,-1,10414,NULL,'C6AB7E','CC882AEF0444','2014-01-23 01:49:41','SYSTEM','ACTIVE',31,NULL),(849,925,117,-1,10585,NULL,'07FBF0','43803A7ABB98','2014-01-23 01:49:41','SYSTEM','ACTIVE',31,NULL),(850,1009,117,-1,10586,NULL,'5C44E2','8D6B525E3054','2014-01-23 01:49:41','SYSTEM','ACTIVE',31,NULL),(851,792,117,-1,10587,NULL,'A93F57','50AD8F4EE88A','2014-01-23 01:49:41','SYSTEM','ACTIVE',31,NULL),(852,911,117,-1,10588,NULL,'A36657','15BC8A427257','2014-01-23 01:49:41','SYSTEM','ACTIVE',31,NULL),(853,538,117,-1,10589,NULL,'D312FE','6757975C47DA','2014-01-23 01:49:41','SYSTEM','ACTIVE',31,NULL),(854,657,117,-1,10590,NULL,'C5706D','9E33C6F2DAD1','2014-01-23 01:49:41','SYSTEM','ACTIVE',31,NULL),(855,545,117,-1,10591,NULL,'32A243','7EF1CCD49408','2014-01-23 01:49:41','SYSTEM','ACTIVE',31,NULL),(856,787,117,-1,10592,NULL,'51ABA4','E60FD09824CF','2014-01-23 01:49:41','SYSTEM','ACTIVE',31,NULL),(857,620,117,-1,10593,NULL,'2CC874','244A756A0BC6','2014-01-23 01:49:42','SYSTEM','ACTIVE',31,NULL),(858,1070,117,-1,10594,NULL,'6828BC','6AB1953B42BD','2014-01-23 01:49:42','SYSTEM','ACTIVE',31,NULL),(859,981,117,-1,10595,NULL,'135013','E274ED0531F9','2014-01-23 01:49:42','SYSTEM','ACTIVE',31,NULL),(860,876,117,-1,10596,NULL,'1545F1','EE58126044BC','2014-01-23 01:49:42','SYSTEM','ACTIVE',31,NULL),(861,1043,117,-1,10597,NULL,'2BE0EA','B266C13550D8','2014-01-23 01:49:42','SYSTEM','ACTIVE',31,NULL),(862,950,117,-1,10598,NULL,'2EC9B6','DF15739C234A','2014-01-23 01:49:42','SYSTEM','ACTIVE',31,NULL),(863,783,117,-1,10599,NULL,'0C884B','304C0586FF4C','2014-01-23 01:49:42','SYSTEM','ACTIVE',31,NULL),(864,631,117,-1,10600,NULL,'4CF1F3','A2B12DF30113','2014-01-23 01:49:42','SYSTEM','ACTIVE',31,NULL),(865,910,117,-1,10601,NULL,'A2EA6D','B748C48F3C5A','2014-01-23 01:49:42','SYSTEM','ACTIVE',31,NULL),(866,827,117,-1,10602,NULL,'9E4795','151DFB4B637C','2014-01-23 01:49:42','SYSTEM','ACTIVE',31,NULL),(867,764,117,-1,10603,NULL,'B8D6F1','658AAA295D3B','2014-01-23 01:49:43','SYSTEM','ACTIVE',31,NULL),(868,785,117,-1,10604,NULL,'C7B575','D472E74E2740','2014-01-23 01:49:43','SYSTEM','ACTIVE',31,NULL),(869,778,117,-1,10605,NULL,'B0B11B','65F4CA99CD32','2014-01-23 01:49:43','SYSTEM','ACTIVE',31,NULL),(870,756,117,-1,10606,NULL,'5A5F42','E9298D9FCBB9','2014-01-23 01:49:43','SYSTEM','ACTIVE',31,NULL),(871,861,117,-1,10607,NULL,'C32F85','D8A8B42474AB','2014-01-23 01:49:43','SYSTEM','ACTIVE',31,NULL),(872,862,117,-1,10608,NULL,'A01D21','0436757FACF6','2014-01-23 01:49:43','SYSTEM','ACTIVE',31,NULL),(873,913,117,-1,10609,NULL,'E3D9A2','09A96E6599DF','2014-01-23 01:49:43','SYSTEM','ACTIVE',31,NULL),(874,529,117,-1,10610,NULL,'426AC0','5449021D08F9','2014-01-23 01:49:43','SYSTEM','ACTIVE',31,NULL),(875,1045,117,-1,10611,NULL,'821919','43E76C0537D7','2014-01-23 01:49:43','SYSTEM','ACTIVE',31,NULL),(876,921,117,-1,10612,NULL,'7D5017','F6496F3BDF2C','2014-01-23 01:49:43','SYSTEM','ACTIVE',31,NULL),(877,690,117,-1,10613,NULL,'E0BD0B','85311CE32EAE','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(878,714,117,-1,10614,NULL,'E9EBF0','6E818D948871','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(879,838,118,-1,10785,NULL,'4EDCF8','30D26E605639','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(880,1005,118,-1,10786,NULL,'F59876','FE50A4F930A2','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(881,630,118,-1,10787,NULL,'F7FD42','3A10B6B77088','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(882,958,118,-1,10788,NULL,'035240','EAEB345E5B2B','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(883,770,118,-1,10789,NULL,'E43736','103E8A83C5C8','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(884,1087,118,-1,10790,NULL,'F4CC29','A1C8AD466124','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(885,581,118,-1,10791,NULL,'DDB5D2','7B14E37D88B3','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(886,1065,118,-1,10792,NULL,'42AF43','0B005D23EFA5','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(887,526,118,-1,10793,NULL,'1C2649','73C2BA69C0FA','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(888,639,118,-1,10794,NULL,'865565','B550E8C18A96','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(889,556,118,-1,10795,NULL,'9E70B0','7128DA998F2A','2014-01-23 01:49:44','SYSTEM','ACTIVE',31,NULL),(890,1014,118,-1,10796,NULL,'1C9F5C','5F60A3063877','2014-01-23 01:49:45','SYSTEM','ACTIVE',31,NULL),(891,537,118,-1,10797,NULL,'7DF13B','938C73290553','2014-01-23 01:49:45','SYSTEM','ACTIVE',31,NULL),(892,622,118,-1,10798,NULL,'E04483','11B588669771','2014-01-23 01:49:45','SYSTEM','ACTIVE',31,NULL),(893,655,118,-1,10799,NULL,'BABB53','7105008AADDF','2014-01-23 01:49:45','SYSTEM','ACTIVE',31,NULL),(894,986,118,-1,10800,NULL,'1EEA0D','35F3ED5D6B81','2014-01-23 01:49:45','SYSTEM','ACTIVE',31,NULL),(895,619,118,-1,10801,NULL,'88C0D0','E0CE15C7AFA5','2014-01-23 01:49:45','SYSTEM','ACTIVE',31,NULL),(896,607,118,-1,10802,NULL,'078BDC','0A1A9907D039','2014-01-23 01:49:45','SYSTEM','ACTIVE',31,NULL),(897,620,118,-1,10803,NULL,'B96FB0','DF50E8AF8BD5','2014-01-23 01:49:45','SYSTEM','ACTIVE',31,NULL),(898,810,118,-1,10804,NULL,'739303','E36B170FF13A','2014-01-23 01:49:46','SYSTEM','ACTIVE',31,NULL),(899,1048,118,-1,10805,NULL,'88C157','9B2EA6440C78','2014-01-23 01:49:46','SYSTEM','ACTIVE',31,NULL),(900,864,118,-1,10806,NULL,'C54A75','E9CBFC0F4C9D','2014-01-23 01:49:47','SYSTEM','ACTIVE',31,NULL),(901,578,118,-1,10807,NULL,'222FDD','63D5EC757F0A','2014-01-23 01:49:47','SYSTEM','ACTIVE',31,NULL),(902,607,118,-1,10808,NULL,'780838','472D752D088E','2014-01-23 01:49:47','SYSTEM','ACTIVE',31,NULL),(903,583,118,-1,10809,NULL,'9345F6','88ED2FA77F29','2014-01-23 01:49:47','SYSTEM','ACTIVE',31,NULL),(904,638,118,-1,10810,NULL,'7CA123','B0A167E46CB2','2014-01-23 01:49:47','SYSTEM','ACTIVE',31,NULL),(905,670,118,-1,10811,NULL,'52E1D9','44BCA26CCDFA','2014-01-23 01:49:47','SYSTEM','ACTIVE',31,NULL),(906,573,118,-1,10812,NULL,'2974F5','8D1F6537DE7A','2014-01-23 01:49:47','SYSTEM','ACTIVE',31,NULL),(907,974,118,-1,10813,NULL,'19EAC1','3592E81B4693','2014-01-23 01:49:47','SYSTEM','ACTIVE',31,NULL),(908,761,118,-1,10814,NULL,'E707EB','2078A8B8F1B7','2014-01-23 01:49:47','SYSTEM','ACTIVE',31,NULL),(909,749,119,-1,10985,NULL,'32CAA4','2E4DA01BCB5F','2014-01-23 01:49:47','SYSTEM','ACTIVE',31,NULL),(910,995,119,-1,10986,NULL,'0B1D27','3038AD59DB93','2014-01-23 01:49:47','SYSTEM','ACTIVE',31,NULL),(911,1051,119,-1,10987,NULL,'315062','934B422967FA','2014-01-23 01:49:48','SYSTEM','ACTIVE',31,NULL),(912,598,119,-1,10988,NULL,'2F6448','CDBEC08B62A7','2014-01-23 01:49:48','SYSTEM','ACTIVE',31,NULL),(913,627,119,-1,10989,NULL,'852A0A','AC512A37CF01','2014-01-23 01:49:48','SYSTEM','ACTIVE',31,NULL),(914,1020,119,-1,10990,NULL,'454A52','558FEC963DA2','2014-01-23 01:49:48','SYSTEM','ACTIVE',31,NULL),(915,751,119,-1,10991,NULL,'9C3831','774937331950','2014-01-23 01:49:48','SYSTEM','ACTIVE',31,NULL),(916,724,119,-1,10992,NULL,'8843A0','F7A8AF2BA487','2014-01-23 01:49:48','SYSTEM','ACTIVE',31,NULL),(917,724,119,-1,10993,NULL,'49815C','EF7570E4DA3F','2014-01-23 01:49:48','SYSTEM','ACTIVE',31,NULL),(918,935,119,-1,10994,NULL,'8E5FED','74CB68E47D88','2014-01-23 01:49:48','SYSTEM','ACTIVE',31,NULL),(919,872,119,-1,10995,NULL,'10CAAE','FFC5CA005FAB','2014-01-23 01:49:48','SYSTEM','ACTIVE',31,NULL),(920,842,119,-1,10996,NULL,'AB1E67','781EEBFB3656','2014-01-23 01:49:48','SYSTEM','ACTIVE',31,NULL),(921,751,119,-1,10997,NULL,'D09388','F110947C3D7E','2014-01-23 01:49:48','SYSTEM','ACTIVE',31,NULL),(922,994,119,-1,10998,NULL,'950701','9773F4659851','2014-01-23 01:49:48','SYSTEM','ACTIVE',31,NULL),(923,937,119,-1,10999,NULL,'335A7D','3225F0F1BB13','2014-01-23 01:49:49','SYSTEM','ACTIVE',31,NULL),(924,572,119,-1,11000,NULL,'467AEA','08E28406B61E','2014-01-23 01:49:49','SYSTEM','ACTIVE',31,NULL),(925,976,119,-1,11001,NULL,'726247','AEC6E6F5F3E9','2014-01-23 01:49:49','SYSTEM','ACTIVE',31,NULL),(926,947,119,-1,11002,NULL,'68621B','F4096639234D','2014-01-23 01:49:49','SYSTEM','ACTIVE',31,NULL),(927,680,119,-1,11003,NULL,'E6498C','B12AF153B1B6','2014-01-23 01:49:49','SYSTEM','ACTIVE',31,NULL),(928,909,119,-1,11004,NULL,'C2366D','C1CC88AA5D65','2014-01-23 01:49:49','SYSTEM','ACTIVE',31,NULL),(929,584,119,-1,11005,NULL,'4FDE51','3E279BCD1F6A','2014-01-23 01:49:49','SYSTEM','ACTIVE',31,NULL),(930,1006,119,-1,11006,NULL,'3C5133','078C16983546','2014-01-23 01:49:49','SYSTEM','ACTIVE',31,NULL),(931,833,119,-1,11007,NULL,'CF44E3','D3DD7191698C','2014-01-23 01:49:49','SYSTEM','ACTIVE',31,NULL),(932,915,119,-1,11008,NULL,'803AC4','ADDE9A5BB1B7','2014-01-23 01:49:49','SYSTEM','ACTIVE',31,NULL),(933,822,119,-1,11009,NULL,'AF1154','3CEFDCFEEF0E','2014-01-23 01:49:50','SYSTEM','ACTIVE',31,NULL),(934,763,119,-1,11010,NULL,'03448E','2618FFD67BF7','2014-01-23 01:49:50','SYSTEM','ACTIVE',31,NULL),(935,839,119,-1,11011,NULL,'1BBC06','CF4CB6C32FF9','2014-01-23 01:49:50','SYSTEM','ACTIVE',31,NULL),(936,600,119,-1,11012,NULL,'13D570','8D904115A8CB','2014-01-23 01:49:50','SYSTEM','ACTIVE',31,NULL),(937,860,119,-1,11013,NULL,'CDB3B4','4EFA624143F0','2014-01-23 01:49:50','SYSTEM','ACTIVE',31,NULL),(938,1075,119,-1,11014,NULL,'BD7931','83F4CBF0226E','2014-01-23 01:49:50','SYSTEM','ACTIVE',31,NULL),(939,979,120,-1,11185,NULL,'34A71F','E7C9BFFEC864','2014-01-23 01:49:50','SYSTEM','ACTIVE',31,NULL),(940,627,120,-1,11186,NULL,'0F84F7','465B942800C9','2014-01-23 01:49:50','SYSTEM','ACTIVE',31,NULL),(941,875,120,-1,11187,NULL,'295C6F','84050D6972C3','2014-01-23 01:49:50','SYSTEM','ACTIVE',31,NULL),(942,958,120,-1,11188,NULL,'993D9C','7AE4F184D9BE','2014-01-23 01:49:50','SYSTEM','ACTIVE',31,NULL),(943,948,120,-1,11189,NULL,'B5B126','1F766C66E861','2014-01-23 01:49:50','SYSTEM','ACTIVE',31,NULL),(944,648,120,-1,11190,NULL,'3CB9C4','81992E976068','2014-01-23 01:49:51','SYSTEM','ACTIVE',31,NULL),(945,642,120,-1,11191,NULL,'CD4B3A','472767973C58','2014-01-23 01:49:51','SYSTEM','ACTIVE',31,NULL),(946,881,120,-1,11192,NULL,'6CF0DD','D7AAA382A39F','2014-01-23 01:49:51','SYSTEM','ACTIVE',31,NULL),(947,528,120,-1,11193,NULL,'1ED035','236A2E057A85','2014-01-23 01:49:51','SYSTEM','ACTIVE',31,NULL),(948,660,120,-1,11194,NULL,'B8EFC3','AE19A2538198','2014-01-23 01:49:51','SYSTEM','ACTIVE',31,NULL),(949,1059,120,-1,11195,NULL,'3CC7C5','3CA26D34DB35','2014-01-23 01:49:51','SYSTEM','ACTIVE',31,NULL),(950,727,120,-1,11196,NULL,'4CF6A2','B751BE9E0F9F','2014-01-23 01:49:51','SYSTEM','ACTIVE',31,NULL),(951,589,120,-1,11197,NULL,'92DBBD','D0A59BE2A560','2014-01-23 01:49:51','SYSTEM','ACTIVE',31,NULL),(952,708,120,-1,11198,NULL,'A2DC2A','22DCAEE6FC38','2014-01-23 01:49:51','SYSTEM','ACTIVE',31,NULL),(953,1058,120,-1,11199,NULL,'0DE861','894C80D9A324','2014-01-23 01:49:51','SYSTEM','ACTIVE',31,NULL),(954,1019,120,-1,11200,NULL,'EA40FB','BC53A43DE519','2014-01-23 01:49:51','SYSTEM','ACTIVE',31,NULL),(955,824,120,-1,11201,NULL,'B064A8','AA2C2EC5C9AD','2014-01-23 01:49:51','SYSTEM','ACTIVE',31,NULL),(956,920,120,-1,11202,NULL,'228ECD','DF552DB9B836','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(957,966,120,-1,11203,NULL,'E4408A','DE09CBE21BE4','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(958,939,120,-1,11204,NULL,'EF40B0','0A08BBA25B54','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(959,886,120,-1,11205,NULL,'BE5506','631C9AA55549','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(960,758,120,-1,11206,NULL,'71FFA8','18123DB80F3F','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(961,941,120,-1,11207,NULL,'3D15C5','A744DC5F4D1B','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(962,1042,120,-1,11208,NULL,'CDA92F','D040D174E5D2','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(963,785,120,-1,11209,NULL,'C439CC','8FEF029B49F8','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(964,576,120,-1,11210,NULL,'539A48','A9B09E8E1576','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(965,922,120,-1,11211,NULL,'FE7374','D411B64CB4F9','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(966,1053,120,-1,11212,NULL,'A13992','AAF317CCD607','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(967,1070,120,-1,11213,NULL,'E9C68E','F8340B6AC960','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(968,565,120,-1,11214,NULL,'421629','F7B39BFDBB2E','2014-01-23 01:49:52','SYSTEM','ACTIVE',31,NULL),(969,595,121,-1,11385,NULL,'FF6064','41587C3956A2','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(970,614,121,-1,11386,NULL,'4A615B','B4A46C584E60','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(971,618,121,-1,11387,NULL,'8EA61C','6154A56A994D','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(972,599,121,-1,11388,NULL,'4604E9','B457074D79F8','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(973,604,121,-1,11389,NULL,'1306D2','A3136AFAD6A1','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(974,604,121,-1,11390,NULL,'90E312','A45A042B5E7E','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(975,615,121,-1,11391,NULL,'377B52','9C26F6BE9ACD','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(976,597,121,-1,11392,NULL,'0029D3','F483D916466F','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(977,616,121,-1,11393,NULL,'A6B394','0F034FCD7951','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(978,622,121,-1,11394,NULL,'B4257F','1C788EBE6C9D','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(979,615,121,-1,11395,NULL,'C9206B','4DB62DD58151','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(980,594,121,-1,11396,NULL,'DF41D2','01343A59F12F','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(981,611,121,-1,11397,NULL,'12DE0D','DBA67F27D081','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(982,619,121,-1,11398,NULL,'4164B4','ECB99D38F68C','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(983,607,121,-1,11399,NULL,'DF10D2','A49421604FBE','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(984,625,121,-1,11400,NULL,'1AD88B','AB4A1EF2FFEE','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(985,621,121,-1,11401,NULL,'25EAB0','4268096DBCD1','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(986,596,121,-1,11402,NULL,'745B66','7AC73FF7B14D','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(987,612,121,-1,11403,NULL,'58E49B','3FDF3AE49FFB','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(988,612,121,-1,11404,NULL,'863DC9','EC6D9E2E7D90','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(989,619,121,-1,11405,NULL,'890D71','29E48518CDCD','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(990,610,121,-1,11406,NULL,'5A23E7','F8EE437832E8','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(991,594,121,-1,11407,NULL,'14529B','97B5E9671D01','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(992,622,121,-1,11408,NULL,'DBDB4C','C52BB7BF8AB6','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(993,619,121,-1,11409,NULL,'12206A','DAC0C7659A5E','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(994,599,121,-1,11410,NULL,'17591F','36826F6BD646','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(995,590,121,-1,11411,NULL,'AFCFA9','233DA4F55B00','2014-01-23 02:05:53','SYSTEM','ACTIVE',31,NULL),(996,615,121,-1,11412,NULL,'04EF75','6ECB9C6B080B','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(997,605,121,-1,11413,NULL,'F03709','633CC5DF7023','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(998,605,121,-1,11414,NULL,'DE6BD6','B8D4BCAE9154','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(999,603,122,-1,11585,NULL,'A161B6','746A75595598','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1000,615,122,-1,11586,NULL,'525751','AA8ADECC5704','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1001,617,122,-1,11587,NULL,'29E5BC','C9A6D5CE6281','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1002,602,122,-1,11588,NULL,'E00169','C394B821BDB1','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1003,608,122,-1,11589,NULL,'C3AE47','654839AECE8B','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1004,603,122,-1,11590,NULL,'E6E806','0D54F896CA02','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1005,621,122,-1,11591,NULL,'D69E7A','7B7673363612','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1006,609,122,-1,11592,NULL,'25506B','6AFBB2D26044','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1007,599,122,-1,11593,NULL,'52171B','215D3F09793C','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1008,621,122,-1,11594,NULL,'9BE143','6F2BA15ED702','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1009,609,122,-1,11595,NULL,'4E8BB3','1E62B3301A96','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1010,601,122,-1,11596,NULL,'B20D49','97F7A8B990A0','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1011,590,122,-1,11597,NULL,'BBBCE4','0E5D136A63D8','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1012,593,122,-1,11598,NULL,'74DC89','117887263F46','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1013,609,122,-1,11599,NULL,'499E77','290ADFF35C8C','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1014,591,122,-1,11600,NULL,'F7FF55','54A4FB546072','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1015,620,122,-1,11601,NULL,'25A832','69B48D34FD1B','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1016,605,122,-1,11602,NULL,'9A25B2','3DB2FCCC9E50','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1017,612,122,-1,11603,NULL,'1610CB','AE5B30FA7730','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1018,602,122,-1,11604,NULL,'38D462','92482B22D3BC','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1019,609,122,-1,11605,NULL,'8456CB','0C297BF8AC6E','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1020,613,122,-1,11606,NULL,'3BC797','AD1D5DE353FF','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1021,601,122,-1,11607,NULL,'9142B5','DC44E5AEB1A5','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1022,606,122,-1,11608,NULL,'BBB972','7ECED36CDF2E','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1023,612,122,-1,11609,NULL,'D31F7B','CE5DCE9A79BF','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1024,609,122,-1,11610,NULL,'9AB7B6','8229141E1CC4','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1025,598,122,-1,11611,NULL,'ECB59B','71FF6818E376','2014-01-23 02:05:54','SYSTEM','ACTIVE',31,NULL),(1026,589,122,-1,11612,NULL,'7888D6','A15975B4782B','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1027,599,122,-1,11613,NULL,'9D34D2','D60A44C0721D','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1028,593,122,-1,11614,NULL,'1B61AB','D93ADFCE5B28','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1029,592,123,-1,11785,NULL,'0C8AB7','44F6C6090363','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1030,612,123,-1,11786,NULL,'312C3B','ADB0D69485F8','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1031,601,123,-1,11787,NULL,'9B2DDB','EE734D3D2FE7','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1032,615,123,-1,11788,NULL,'D83258','FB9E5B94846F','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1033,609,123,-1,11789,NULL,'B3AC8F','6F423CAE5C14','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1034,611,123,-1,11790,NULL,'8AA4FE','E4519C4F3C41','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1035,622,123,-1,11791,NULL,'AFEA44','4CCE33142D96','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1036,590,123,-1,11792,NULL,'35D846','1DF2B3AEAA44','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1037,597,123,-1,11793,NULL,'90FB41','55ABE7C218D5','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1038,589,123,-1,11794,NULL,'4E4523','CE166710A7EA','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1039,594,123,-1,11795,NULL,'0AC43C','234E691B0D5F','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1040,597,123,-1,11796,NULL,'2419D0','6951A43AFFDB','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1041,605,123,-1,11797,NULL,'007CAE','3C03C51C37E3','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1042,591,123,-1,11798,NULL,'F65BC3','054EEAC17386','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1043,617,123,-1,11799,NULL,'51320C','BBCF7C5878B5','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1044,625,123,-1,11800,NULL,'E84D86','67B958412F53','2014-01-23 02:05:55','SYSTEM','ACTIVE',31,NULL),(1045,593,123,-1,11801,NULL,'A2EE1A','783F47695D58','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1046,618,123,-1,11802,NULL,'D741CB','C70334054ADC','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1047,592,123,-1,11803,NULL,'2FD978','36F5941A42C4','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1048,618,123,-1,11804,NULL,'5790BE','8F330C6EDA63','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1049,597,123,-1,11805,NULL,'9FD587','6D4093ADF5F3','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1050,594,123,-1,11806,NULL,'AE4B9F','5B24E0D7A255','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1051,616,123,-1,11807,NULL,'CE5DD0','1A9C22BB6078','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1052,617,123,-1,11808,NULL,'F9A0A4','36812F1E01FB','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1053,591,123,-1,11809,NULL,'A67F0B','F97BDFD9D8E3','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1054,597,123,-1,11810,NULL,'CA8C00','BB3A56F117BF','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1055,604,123,-1,11811,NULL,'4F7159','87F3725C5D13','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1056,610,123,-1,11812,NULL,'0C17CB','DD4ADF57C4CB','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1057,606,123,-1,11813,NULL,'BE6F66','217F10089277','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1058,618,123,-1,11814,NULL,'248352','0A2404D4C3B3','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1059,608,124,-1,11985,NULL,'23469B','53502F6879EB','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1060,616,124,-1,11986,NULL,'B18D3D','10A9586982FE','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1061,609,124,-1,11987,NULL,'4BC972','CEF37EA13EFE','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1062,593,124,-1,11988,NULL,'138CC3','2D233D14C133','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1063,609,124,-1,11989,NULL,'81C63D','EAEE9427693F','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1064,620,124,-1,11990,NULL,'2024EA','350506185090','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1065,606,124,-1,11991,NULL,'5C1CD2','8016A29C1847','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1066,608,124,-1,11992,NULL,'D66593','B3A3075B0730','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1067,617,124,-1,11993,NULL,'C4382D','02E3AC4E060E','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1068,606,124,-1,11994,NULL,'845988','476949A84D0F','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1069,614,124,-1,11995,NULL,'4599C3','EB4B1FF2EBA3','2014-01-23 02:05:56','SYSTEM','ACTIVE',31,NULL),(1070,607,124,-1,11996,NULL,'01C813','E86509369D83','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1071,614,124,-1,11997,NULL,'9F0E6B','3F8837BD6C65','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1072,594,124,-1,11998,NULL,'FEDCEE','EF5BB658CF4E','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1073,607,124,-1,11999,NULL,'F6028C','E8BD43AA2393','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1074,590,124,-1,12000,NULL,'F90C4F','457D87B82FD1','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1075,593,124,-1,12001,NULL,'FF55CD','38271D5E2C43','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1076,614,124,-1,12002,NULL,'40EFD5','285B4A00E980','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1077,625,124,-1,12003,NULL,'8673A3','7004CC4E358F','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1078,592,124,-1,12004,NULL,'FFA179','B75FEE4AFCEE','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1079,601,124,-1,12005,NULL,'9B36B4','42712D654463','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1080,613,124,-1,12006,NULL,'911B63','857CF62F5747','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1081,616,124,-1,12007,NULL,'E8116D','40323B9ED5F5','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1082,623,124,-1,12008,NULL,'64AA5E','124E16FDAE72','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1083,592,124,-1,12009,NULL,'288A36','3D009F428C1E','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1084,592,124,-1,12010,NULL,'2F876F','E8098FBFEA02','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1085,620,124,-1,12011,NULL,'EE80DB','07BB58A8EE39','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1086,613,124,-1,12012,NULL,'0EBBBE','19AC22A649DD','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1087,605,124,-1,12013,NULL,'3B3799','6D7D1C488372','2014-01-23 02:05:57','SYSTEM','ACTIVE',31,NULL),(1088,611,124,-1,12014,NULL,'BF3740','CEFB71510A33','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1089,616,125,-1,12185,NULL,'5AE88E','1373A8A2A6F9','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1090,608,125,-1,12186,NULL,'6FE442','EC5D0FD68F91','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1091,597,125,-1,12187,NULL,'7C3EF3','F0A88ECF52D7','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1092,618,125,-1,12188,NULL,'EAED9C','CF344262C6B8','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1093,616,125,-1,12189,NULL,'C8DE48','B903E96CDE78','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1094,619,125,-1,12190,NULL,'0DCEAD','A546E17C7E1E','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1095,617,125,-1,12191,NULL,'FBDE3F','943351A7ABE2','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1096,599,125,-1,12192,NULL,'B2720A','A2AFAAC19BEE','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1097,613,125,-1,12193,NULL,'835E03','31B4C60038D3','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1098,589,125,-1,12194,NULL,'B12209','F4D396B1A020','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1099,606,125,-1,12195,NULL,'A762B6','C53E879491EE','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1100,598,125,-1,12196,NULL,'536F58','366E51C0C5A0','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1101,613,125,-1,12197,NULL,'9FF3B0','C62E98E5238B','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1102,618,125,-1,12198,NULL,'667D92','4A303C3A07C9','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1103,625,125,-1,12199,NULL,'69A85E','7BCF22DA2C2A','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1104,591,125,-1,12200,NULL,'194856','632F69FAF821','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1105,611,125,-1,12201,NULL,'896661','A52637FD018F','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1106,611,125,-1,12202,NULL,'48CF5D','2EF4D7332652','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1107,603,125,-1,12203,NULL,'A90B6E','5A51685F924F','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1108,623,125,-1,12204,NULL,'2F6EB0','C3063B22EA88','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1109,625,125,-1,12205,NULL,'A0F5B5','B8E6B352A296','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1110,609,125,-1,12206,NULL,'AF92BB','D65FB5EA81A2','2014-01-23 02:05:58','SYSTEM','ACTIVE',31,NULL),(1111,603,125,-1,12207,NULL,'243AA1','D717261746A8','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1112,591,125,-1,12208,NULL,'FBF0A2','7D2521506408','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1113,617,125,-1,12209,NULL,'FDAC4E','F5429D180B97','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1114,597,125,-1,12210,NULL,'48B789','976DB262D980','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1115,603,125,-1,12211,NULL,'A8371C','5224C2DB9252','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1116,604,125,-1,12212,NULL,'DD8E8C','0384E6B2C58A','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1117,607,125,-1,12213,NULL,'2C9FA8','415C244C9199','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1118,593,125,-1,12214,NULL,'D8F52B','4FB46542EBE3','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1119,620,126,-1,12385,NULL,'605D6B','7317F8FE00CF','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1120,603,126,-1,12386,NULL,'6C8205','9F1ADFC43CCF','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1121,608,126,-1,12387,NULL,'4EB3ED','2675DCFBC2C3','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1122,610,126,-1,12388,NULL,'59BDB3','0F0A2327E0AA','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1123,622,126,-1,12389,NULL,'9CD07C','E9969988E842','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1124,603,126,-1,12390,NULL,'E33CDA','1443A708B740','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1125,602,126,-1,12391,NULL,'21C917','5CAFDB428E43','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1126,615,126,-1,12392,NULL,'7F43BE','ED8E4FA41EDA','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1127,592,126,-1,12393,NULL,'F60817','104659B967B6','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1128,603,126,-1,12394,NULL,'E7E5CD','CD8FA215E66A','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1129,600,126,-1,12395,NULL,'33AF19','80DD996A4647','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1130,605,126,-1,12396,NULL,'0B38F9','284C4F9161F6','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1131,612,126,-1,12397,NULL,'4F7A1A','B65431077844','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1132,590,126,-1,12398,NULL,'3BAC8A','5BB33C9419A0','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1133,596,126,-1,12399,NULL,'894820','2CBD26C95273','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1134,618,126,-1,12400,NULL,'0C438C','8C7009211ED7','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1135,596,126,-1,12401,NULL,'8B9FDA','66E3EE8D0B44','2014-01-23 02:05:59','SYSTEM','ACTIVE',31,NULL),(1136,617,126,-1,12402,NULL,'0DCD8A','B39E9ADDBDCE','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1137,592,126,-1,12403,NULL,'91DCEF','E50858ACD84C','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1138,615,126,-1,12404,NULL,'518101','2A9D6B355AC6','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1139,599,126,-1,12405,NULL,'34E71D','86EFE6832F11','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1140,594,126,-1,12406,NULL,'20307B','01C43012BF03','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1141,612,126,-1,12407,NULL,'3194D0','E96392C9CD0C','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1142,622,126,-1,12408,NULL,'884AA9','5226C6E662E0','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1143,611,126,-1,12409,NULL,'0BCD20','C7EDAAF0D6FB','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1144,593,126,-1,12410,NULL,'1440C7','101C5D6C8934','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1145,618,126,-1,12411,NULL,'9ADB38','07AB2B7F9C01','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1146,604,126,-1,12412,NULL,'7BFC90','25E53A0BCF3C','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1147,613,126,-1,12413,NULL,'A64C9B','644AF2E0368D','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1148,619,126,-1,12414,NULL,'1BB53B','D3D174D13745','2014-01-23 02:06:00','SYSTEM','ACTIVE',31,NULL),(1149,661,127,-1,12585,NULL,'1BA853','3A27FE77034A','2014-01-23 02:10:19','SYSTEM','ACTIVE',31,NULL),(1150,674,127,-1,12586,NULL,'C6956B','0E31DE364A2E','2014-01-23 02:10:19','SYSTEM','ACTIVE',31,NULL),(1151,680,127,-1,12587,NULL,'EED17A','452798737B73','2014-01-23 02:10:19','SYSTEM','ACTIVE',31,NULL),(1152,657,127,-1,12588,NULL,'ADE8ED','E7F1D0772CA5','2014-01-23 02:10:19','SYSTEM','ACTIVE',31,NULL),(1153,665,127,-1,12589,NULL,'06A738','E323A83CDF82','2014-01-23 02:10:19','SYSTEM','ACTIVE',31,NULL),(1154,676,127,-1,12590,NULL,'319607','EF089E3303ED','2014-01-23 02:10:19','SYSTEM','ACTIVE',31,NULL),(1155,676,127,-1,12591,NULL,'ACA513','053699F19081','2014-01-23 02:10:20','SYSTEM','ACTIVE',31,NULL),(1156,675,127,-1,12592,NULL,'025ADC','18132D1D9F84','2014-01-23 02:10:20','SYSTEM','ACTIVE',31,NULL),(1157,672,127,-1,12593,NULL,'715422','C978C98EA4C7','2014-01-23 02:10:20','SYSTEM','ACTIVE',31,NULL),(1158,687,127,-1,12594,NULL,'9767CB','E0D2FDDD177E','2014-01-23 02:10:20','SYSTEM','ACTIVE',31,NULL),(1159,676,127,-1,12595,NULL,'EEB7BC','37ECCD0E43B8','2014-01-23 02:10:20','SYSTEM','ACTIVE',31,NULL),(1160,663,127,-1,12596,NULL,'D94E81','78438CAB5BFE','2014-01-23 02:10:20','SYSTEM','ACTIVE',31,NULL),(1161,681,127,-1,12597,NULL,'B7C9AD','2ACD9359AB7A','2014-01-23 02:10:20','SYSTEM','ACTIVE',31,NULL),(1162,656,127,-1,12598,NULL,'FC1020','3078AB67FC8C','2014-01-23 02:10:21','SYSTEM','ACTIVE',31,NULL),(1163,682,127,-1,12599,NULL,'6CF485','5DD603C21931','2014-01-23 02:10:21','SYSTEM','ACTIVE',31,NULL),(1164,661,127,-1,12600,NULL,'B90F2B','A4EAF283D073','2014-01-23 02:10:21','SYSTEM','ACTIVE',31,NULL),(1165,665,127,-1,12601,NULL,'AA52E6','7DD3A0D1AC0A','2014-01-23 02:10:21','SYSTEM','ACTIVE',31,NULL),(1166,677,127,-1,12602,NULL,'A673C8','BFB806470B2B','2014-01-23 02:10:21','SYSTEM','ACTIVE',31,NULL),(1167,669,127,-1,12603,NULL,'C94270','E1A58C6659B7','2014-01-23 02:10:21','SYSTEM','ACTIVE',31,NULL),(1168,660,127,-1,12604,NULL,'B9E501','C959D56B7C53','2014-01-23 02:10:21','SYSTEM','ACTIVE',31,NULL),(1169,658,127,-1,12605,NULL,'4BB556','D964BB105517','2014-01-23 02:10:21','SYSTEM','ACTIVE',31,NULL),(1170,653,127,-1,12606,NULL,'07694C','17B34D1B8037','2014-01-23 02:10:21','SYSTEM','ACTIVE',31,NULL),(1171,660,127,-1,12607,NULL,'CF3D7A','087076A6E10A','2014-01-23 02:10:22','SYSTEM','ACTIVE',31,NULL),(1172,660,127,-1,12608,NULL,'993F57','414F5AD91674','2014-01-23 02:10:22','SYSTEM','ACTIVE',31,NULL),(1173,668,127,-1,12609,NULL,'6FD5C9','6454A7C5CA52','2014-01-23 02:10:22','SYSTEM','ACTIVE',31,NULL),(1174,661,127,-1,12610,NULL,'531B15','84E54D0A478B','2014-01-23 02:10:22','SYSTEM','ACTIVE',31,NULL),(1175,685,127,-1,12611,NULL,'254EFA','8109C4DC0C16','2014-01-23 02:10:22','SYSTEM','ACTIVE',31,NULL),(1176,662,127,-1,12612,NULL,'F2DC24','776C0992F808','2014-01-23 02:10:22','SYSTEM','ACTIVE',31,NULL),(1177,656,127,-1,12613,NULL,'C4F488','64B99619F80E','2014-01-23 02:10:22','SYSTEM','ACTIVE',31,NULL),(1178,684,127,-1,12614,NULL,'2BF8DC','679229BE79BA','2014-01-23 02:10:22','SYSTEM','ACTIVE',31,NULL),(1179,666,128,-1,12785,NULL,'4716C0','A726541F22A3','2014-01-23 02:10:23','SYSTEM','ACTIVE',31,NULL),(1180,670,128,-1,12786,NULL,'A83F2B','A708C9390D04','2014-01-23 02:10:23','SYSTEM','ACTIVE',31,NULL),(1181,657,128,-1,12787,NULL,'EB0C9B','4D92FC6511D8','2014-01-23 02:10:23','SYSTEM','ACTIVE',31,NULL),(1182,666,128,-1,12788,NULL,'C7B804','37165E6D7820','2014-01-23 02:10:23','SYSTEM','ACTIVE',31,NULL),(1183,665,128,-1,12789,NULL,'418315','4C85E511208F','2014-01-23 02:10:23','SYSTEM','ACTIVE',31,NULL),(1184,668,128,-1,12790,NULL,'65FE26','4556B9B00384','2014-01-23 02:10:23','SYSTEM','ACTIVE',31,NULL),(1185,664,128,-1,12791,NULL,'56190D','6CF258023185','2014-01-23 02:10:23','SYSTEM','ACTIVE',31,NULL),(1186,677,128,-1,12792,NULL,'A354ED','7E970E4877E7','2014-01-23 02:10:23','SYSTEM','ACTIVE',31,NULL),(1187,655,128,-1,12793,NULL,'0172E4','F8F2F1D05F90','2014-01-23 02:10:23','SYSTEM','ACTIVE',31,NULL),(1188,657,128,-1,12794,NULL,'52100C','16E697D1B63B','2014-01-23 02:10:24','SYSTEM','ACTIVE',31,NULL),(1189,678,128,-1,12795,NULL,'BBA8F8','704C3FC1BD49','2014-01-23 02:10:24','SYSTEM','ACTIVE',31,NULL),(1190,683,128,-1,12796,NULL,'4AC313','777D57AFD472','2014-01-23 02:10:24','SYSTEM','ACTIVE',31,NULL),(1191,688,128,-1,12797,NULL,'FFD7AF','59FA9DDB2A92','2014-01-23 02:10:24','SYSTEM','ACTIVE',31,NULL),(1192,683,128,-1,12798,NULL,'3AA6BC','D3053C3947E0','2014-01-23 02:10:24','SYSTEM','ACTIVE',31,NULL),(1193,681,128,-1,12799,NULL,'00C980','60C2EB39879D','2014-01-23 02:10:24','SYSTEM','ACTIVE',31,NULL),(1194,652,128,-1,12800,NULL,'24CE4D','50178B843A60','2014-01-23 02:10:24','SYSTEM','ACTIVE',31,NULL),(1195,655,128,-1,12801,NULL,'06CE66','0A7F233620B7','2014-01-23 02:10:25','SYSTEM','ACTIVE',31,NULL),(1196,678,128,-1,12802,NULL,'A23047','8473AC3E9EF8','2014-01-23 02:10:25','SYSTEM','ACTIVE',31,NULL),(1197,665,128,-1,12803,NULL,'662C1A','ECCBFD909C29','2014-01-23 02:10:25','SYSTEM','ACTIVE',31,NULL),(1198,662,128,-1,12804,NULL,'5FB8A4','221137A2F398','2014-01-23 02:10:25','SYSTEM','ACTIVE',31,NULL),(1199,660,128,-1,12805,NULL,'32F584','EAFD495B8008','2014-01-23 02:10:25','SYSTEM','ACTIVE',31,NULL),(1200,675,128,-1,12806,NULL,'533650','9BD5CF058CF8','2014-01-23 02:10:25','SYSTEM','ACTIVE',31,NULL),(1201,665,128,-1,12807,NULL,'D6B209','A31B5DF953AB','2014-01-23 02:10:25','SYSTEM','ACTIVE',31,NULL),(1202,658,128,-1,12808,NULL,'2D3260','85CA79B119D4','2014-01-23 02:10:25','SYSTEM','ACTIVE',31,NULL),(1203,685,128,-1,12809,NULL,'9290EA','5A6AFDEC8065','2014-01-23 02:10:26','SYSTEM','ACTIVE',31,NULL),(1204,653,128,-1,12810,NULL,'E44C7F','066B9F288BFA','2014-01-23 02:10:26','SYSTEM','ACTIVE',31,NULL),(1205,670,128,-1,12811,NULL,'9E8A37','782DD33DA69B','2014-01-23 02:10:26','SYSTEM','ACTIVE',31,NULL),(1206,678,128,-1,12812,NULL,'52DBED','3DBE11D8064B','2014-01-23 02:10:26','SYSTEM','ACTIVE',31,NULL),(1207,653,128,-1,12813,NULL,'AE5EF6','F271728BB186','2014-01-23 02:10:26','SYSTEM','ACTIVE',31,NULL),(1208,662,128,-1,12814,NULL,'D711CA','C3CFFFC3039C','2014-01-23 02:10:26','SYSTEM','ACTIVE',31,NULL),(1209,672,129,-1,12985,NULL,'09181E','33C6B8D9A6D0','2014-01-23 02:10:26','SYSTEM','ACTIVE',31,NULL),(1210,674,129,-1,12986,NULL,'3A8EC4','273FCF3CA36F','2014-01-23 02:10:26','SYSTEM','ACTIVE',31,NULL),(1211,676,129,-1,12987,NULL,'9E84AE','97B682D31DCA','2014-01-23 02:10:26','SYSTEM','ACTIVE',31,NULL),(1212,660,129,-1,12988,NULL,'B5BA80','9E46BA59FB7F','2014-01-23 02:10:27','SYSTEM','ACTIVE',31,NULL),(1213,673,129,-1,12989,NULL,'BB8B13','D5FB613DBD48','2014-01-23 02:10:27','SYSTEM','ACTIVE',31,NULL),(1214,663,129,-1,12990,NULL,'4CEFBF','41F5D3DDE6F0','2014-01-23 02:10:27','SYSTEM','ACTIVE',31,NULL),(1215,661,129,-1,12991,NULL,'084FCE','57CE170C8E24','2014-01-23 02:10:27','SYSTEM','ACTIVE',31,NULL),(1216,659,129,-1,12992,NULL,'4655A8','CF4297FA0E9A','2014-01-23 02:10:27','SYSTEM','ACTIVE',31,NULL),(1217,661,129,-1,12993,NULL,'8CF935','21E609E7D7E0','2014-01-23 02:10:27','SYSTEM','ACTIVE',31,NULL),(1218,676,129,-1,12994,NULL,'CAA217','A5C8EF12F6E7','2014-01-23 02:10:27','SYSTEM','ACTIVE',31,NULL),(1219,681,129,-1,12995,NULL,'81DE30','3F62C99C2DBC','2014-01-23 02:10:27','SYSTEM','ACTIVE',31,NULL),(1220,663,129,-1,12996,NULL,'B0FCAE','DA679DE86DBF','2014-01-23 02:10:28','SYSTEM','ACTIVE',31,NULL),(1221,658,129,-1,12997,NULL,'5B8FB3','22318A68494C','2014-01-23 02:10:28','SYSTEM','ACTIVE',31,NULL),(1222,685,129,-1,12998,NULL,'8B7F3C','1C320062E60C','2014-01-23 02:10:28','SYSTEM','ACTIVE',31,NULL),(1223,660,129,-1,12999,NULL,'BE63A1','264A9942A0DC','2014-01-23 02:10:28','SYSTEM','ACTIVE',31,NULL),(1224,673,129,-1,13000,NULL,'AA1F74','2AC282B0B95F','2014-01-23 02:10:28','SYSTEM','ACTIVE',31,NULL),(1225,684,129,-1,13001,NULL,'561F98','062CA3B40CCE','2014-01-23 02:10:28','SYSTEM','ACTIVE',31,NULL),(1226,679,129,-1,13002,NULL,'75AC7A','E798B83C871D','2014-01-23 02:10:28','SYSTEM','ACTIVE',31,NULL),(1227,688,129,-1,13003,NULL,'35865E','5584A2C1349A','2014-01-23 02:10:28','SYSTEM','ACTIVE',31,NULL),(1228,662,129,-1,13004,NULL,'417330','13B224ADC183','2014-01-23 02:10:29','SYSTEM','ACTIVE',31,NULL),(1229,657,129,-1,13005,NULL,'5E0DA7','73EA290C76E9','2014-01-23 02:10:29','SYSTEM','ACTIVE',31,NULL),(1230,679,129,-1,13006,NULL,'A6101C','F8EA4A067A6B','2014-01-23 02:10:29','SYSTEM','ACTIVE',31,NULL),(1231,664,129,-1,13007,NULL,'DFD80A','398C50FB9530','2014-01-23 02:10:29','SYSTEM','ACTIVE',31,NULL),(1232,682,129,-1,13008,NULL,'6D1744','4DC252672E03','2014-01-23 02:10:30','SYSTEM','ACTIVE',31,NULL),(1233,679,129,-1,13009,NULL,'0E8BEB','90FAC388CE76','2014-01-23 02:10:30','SYSTEM','ACTIVE',31,NULL),(1234,682,129,-1,13010,NULL,'CB5DBF','5FC7B37E2303','2014-01-23 02:10:30','SYSTEM','ACTIVE',31,NULL),(1235,676,129,-1,13011,NULL,'6D6FD2','607C511BF2F2','2014-01-23 02:10:30','SYSTEM','ACTIVE',31,NULL),(1236,666,129,-1,13012,NULL,'ADE204','8BF9CD71B55E','2014-01-23 02:10:30','SYSTEM','ACTIVE',31,NULL),(1237,676,129,-1,13013,NULL,'0B6A04','E8BF9CC60029','2014-01-23 02:10:30','SYSTEM','ACTIVE',31,NULL),(1238,687,129,-1,13014,NULL,'096EC1','3502C82C9293','2014-01-23 02:10:31','SYSTEM','ACTIVE',31,NULL),(1239,672,130,-1,13185,NULL,'B007E4','EFE93E13C49F','2014-01-23 02:10:31','SYSTEM','ACTIVE',31,NULL),(1240,672,130,-1,13186,NULL,'8191AE','431E98360A8F','2014-01-23 02:10:31','SYSTEM','ACTIVE',31,NULL),(1241,657,130,-1,13187,NULL,'A2EED3','825E0E734FFE','2014-01-23 02:10:31','SYSTEM','ACTIVE',31,NULL),(1242,671,130,-1,13188,NULL,'2B604A','3412E2E07796','2014-01-23 02:10:31','SYSTEM','ACTIVE',31,NULL),(1243,681,130,-1,13189,NULL,'118973','DCA086691B80','2014-01-23 02:10:31','SYSTEM','ACTIVE',31,NULL),(1244,683,130,-1,13190,NULL,'DBE385','56EAC4507A5F','2014-01-23 02:10:31','SYSTEM','ACTIVE',31,NULL),(1245,666,130,-1,13191,NULL,'2B7931','3A933C3F7FE8','2014-01-23 02:10:31','SYSTEM','ACTIVE',31,NULL),(1246,663,130,-1,13192,NULL,'CE96DE','894C87750582','2014-01-23 02:10:32','SYSTEM','ACTIVE',31,NULL),(1247,672,130,-1,13193,NULL,'91D158','3511CAE3928B','2014-01-23 02:10:32','SYSTEM','ACTIVE',31,NULL),(1248,672,130,-1,13194,NULL,'1806D0','912C8432AC85','2014-01-23 02:10:32','SYSTEM','ACTIVE',31,NULL),(1249,665,130,-1,13195,NULL,'70AFE7','03E6D8D298DC','2014-01-23 02:10:32','SYSTEM','ACTIVE',31,NULL),(1250,677,130,-1,13196,NULL,'77FB43','4A43907C9091','2014-01-23 02:10:32','SYSTEM','ACTIVE',31,NULL),(1251,665,130,-1,13197,NULL,'C07508','3DDED790DE3A','2014-01-23 02:10:32','SYSTEM','ACTIVE',31,NULL),(1252,676,130,-1,13198,NULL,'77C1BD','8B4C0BD41082','2014-01-23 02:10:32','SYSTEM','ACTIVE',31,NULL),(1253,673,130,-1,13199,NULL,'1344FB','51F5C39007FF','2014-01-23 02:10:32','SYSTEM','ACTIVE',31,NULL),(1254,673,130,-1,13200,NULL,'02C461','1A031965CA65','2014-01-23 02:10:33','SYSTEM','ACTIVE',31,NULL),(1255,680,130,-1,13201,NULL,'36B22A','E968B6AA26D4','2014-01-23 02:10:33','SYSTEM','ACTIVE',31,NULL),(1256,686,130,-1,13202,NULL,'CAAA35','01541AF0CB8B','2014-01-23 02:10:33','SYSTEM','ACTIVE',31,NULL),(1257,652,130,-1,13203,NULL,'1DBB11','B7E4D16D8349','2014-01-23 02:10:33','SYSTEM','ACTIVE',31,NULL),(1258,653,130,-1,13204,NULL,'9EB3DF','12231AC9BAEE','2014-01-23 02:10:33','SYSTEM','ACTIVE',31,NULL),(1259,669,130,-1,13205,NULL,'4521C6','D4012A41BCA1','2014-01-23 02:10:33','SYSTEM','ACTIVE',31,NULL),(1260,688,130,-1,13206,NULL,'32DC3D','939FE85282F2','2014-01-23 02:10:33','SYSTEM','ACTIVE',31,NULL),(1261,681,130,-1,13207,NULL,'9CE6CB','30D7830D9D14','2014-01-23 02:10:33','SYSTEM','ACTIVE',31,NULL),(1262,687,130,-1,13208,NULL,'E2862E','5CF482B89698','2014-01-23 02:10:33','SYSTEM','ACTIVE',31,NULL),(1263,655,130,-1,13209,NULL,'F7D323','13B2E2F54BE8','2014-01-23 02:10:33','SYSTEM','ACTIVE',31,NULL),(1264,675,130,-1,13210,NULL,'B38D28','0B8B36F0BDBB','2014-01-23 02:10:34','SYSTEM','ACTIVE',31,NULL),(1265,677,130,-1,13211,NULL,'4FD323','CC9302F2DC33','2014-01-23 02:10:34','SYSTEM','ACTIVE',31,NULL),(1266,686,130,-1,13212,NULL,'222319','985D8F8FD775','2014-01-23 02:10:34','SYSTEM','ACTIVE',31,NULL),(1267,685,130,-1,13213,NULL,'53FF2E','4E16E3D219AF','2014-01-23 02:10:34','SYSTEM','ACTIVE',31,NULL),(1268,671,130,-1,13214,NULL,'8778A0','5453E1A51DAA','2014-01-23 02:10:34','SYSTEM','ACTIVE',31,NULL),(1269,662,131,-1,13385,NULL,'0F7CA6','B056C2125695','2014-01-23 02:10:34','SYSTEM','ACTIVE',31,NULL),(1270,670,131,-1,13386,NULL,'C7F1C8','FB760D252B49','2014-01-23 02:10:34','SYSTEM','ACTIVE',31,NULL),(1271,663,131,-1,13387,NULL,'563CC9','6E41BE5DEC47','2014-01-23 02:10:34','SYSTEM','ACTIVE',31,NULL),(1272,661,131,-1,13388,NULL,'3A95F1','DA69C68D4BCD','2014-01-23 02:10:34','SYSTEM','ACTIVE',31,NULL),(1273,660,131,-1,13389,NULL,'6E3E23','DC89929C8EF9','2014-01-23 02:10:35','SYSTEM','ACTIVE',31,NULL),(1274,659,131,-1,13390,NULL,'71332D','CD82F0386E9A','2014-01-23 02:10:35','SYSTEM','ACTIVE',31,NULL),(1275,680,131,-1,13391,NULL,'F4E82D','7AD34A24B10B','2014-01-23 02:10:35','SYSTEM','ACTIVE',31,NULL),(1276,683,131,-1,13392,NULL,'52EE88','2B5B8CC4877D','2014-01-23 02:10:35','SYSTEM','ACTIVE',31,NULL),(1277,659,131,-1,13393,NULL,'21C1FB','15EA46B6CED2','2014-01-23 02:10:35','SYSTEM','ACTIVE',31,NULL),(1278,654,131,-1,13394,NULL,'AB341B','222B0C8C963B','2014-01-23 02:10:35','SYSTEM','ACTIVE',31,NULL),(1279,667,131,-1,13395,NULL,'3F4AA2','A5BF1C0AF59B','2014-01-23 02:10:35','SYSTEM','ACTIVE',31,NULL),(1280,673,131,-1,13396,NULL,'8978E3','7DDEEBAA7909','2014-01-23 02:10:35','SYSTEM','ACTIVE',31,NULL),(1281,670,131,-1,13397,NULL,'555128','06D01FF44F1B','2014-01-23 02:10:36','SYSTEM','ACTIVE',31,NULL),(1282,686,131,-1,13398,NULL,'03AF1E','CB7DA9D04A2A','2014-01-23 02:10:36','SYSTEM','ACTIVE',31,NULL),(1283,684,131,-1,13399,NULL,'445B6D','F5D2B62332D6','2014-01-23 02:10:36','SYSTEM','ACTIVE',31,NULL),(1284,671,131,-1,13400,NULL,'779B1C','7C9FC713EC6E','2014-01-23 02:10:36','SYSTEM','ACTIVE',31,NULL),(1285,657,131,-1,13401,NULL,'E88227','D1A459E9C25F','2014-01-23 02:10:36','SYSTEM','ACTIVE',31,NULL),(1286,664,131,-1,13402,NULL,'196D55','7B1C54075BB6','2014-01-23 02:10:36','SYSTEM','ACTIVE',31,NULL),(1287,672,131,-1,13403,NULL,'B995F5','BE50BF5C5A99','2014-01-23 02:10:36','SYSTEM','ACTIVE',31,NULL),(1288,653,131,-1,13404,NULL,'77EB6A','13B1C863A391','2014-01-23 02:10:36','SYSTEM','ACTIVE',31,NULL),(1289,685,131,-1,13405,NULL,'F59DB1','94F76281CE55','2014-01-23 02:10:37','SYSTEM','ACTIVE',31,NULL),(1290,659,131,-1,13406,NULL,'CE5F70','129B543B600C','2014-01-23 02:10:37','SYSTEM','ACTIVE',31,NULL),(1291,685,131,-1,13407,NULL,'FC9C6D','E7E47AC5A4E4','2014-01-23 02:10:37','SYSTEM','ACTIVE',31,NULL),(1292,679,131,-1,13408,NULL,'C48D59','FC7B7F9AB511','2014-01-23 02:10:37','SYSTEM','ACTIVE',31,NULL),(1293,681,131,-1,13409,NULL,'7EE343','98E4125FCCA3','2014-01-23 02:10:37','SYSTEM','ACTIVE',31,NULL),(1294,668,131,-1,13410,NULL,'2CE859','141567096529','2014-01-23 02:10:37','SYSTEM','ACTIVE',31,NULL),(1295,684,131,-1,13411,NULL,'739100','8CD608848236','2014-01-23 02:10:37','SYSTEM','ACTIVE',31,NULL),(1296,685,131,-1,13412,NULL,'DDB08B','99A89FB26386','2014-01-23 02:10:37','SYSTEM','ACTIVE',31,NULL),(1297,659,131,-1,13413,NULL,'803894','42B8A01B6183','2014-01-23 02:10:37','SYSTEM','ACTIVE',31,NULL),(1298,677,131,-1,13414,NULL,'FE3F54','1D588330550E','2014-01-23 02:10:38','SYSTEM','ACTIVE',31,NULL),(1299,669,132,-1,13585,NULL,'823EAE','D45AB05A507F','2014-01-23 02:10:38','SYSTEM','ACTIVE',31,NULL),(1300,681,132,-1,13586,NULL,'648B3A','F9677D680CC9','2014-01-23 02:10:38','SYSTEM','ACTIVE',31,NULL),(1301,676,132,-1,13587,NULL,'3C444E','96CE7027E111','2014-01-23 02:10:38','SYSTEM','ACTIVE',31,NULL),(1302,677,132,-1,13588,NULL,'87F865','BCEC5744E01D','2014-01-23 02:10:38','SYSTEM','ACTIVE',31,NULL),(1303,685,132,-1,13589,NULL,'CAAF18','9B8D1D7CC9EE','2014-01-23 02:10:38','SYSTEM','ACTIVE',31,NULL),(1304,670,132,-1,13590,NULL,'C6F510','612CA455DEA4','2014-01-23 02:10:38','SYSTEM','ACTIVE',31,NULL),(1305,662,132,-1,13591,NULL,'80146B','17BEEBBB0955','2014-01-23 02:10:38','SYSTEM','ACTIVE',31,NULL),(1306,673,132,-1,13592,NULL,'BEC803','520E69D21D99','2014-01-23 02:10:38','SYSTEM','ACTIVE',31,NULL),(1307,654,132,-1,13593,NULL,'0302FE','0BBEE019CE78','2014-01-23 02:10:39','SYSTEM','ACTIVE',31,NULL),(1308,664,132,-1,13594,NULL,'0B4582','1A1F7DE956C5','2014-01-23 02:10:39','SYSTEM','ACTIVE',31,NULL),(1309,682,132,-1,13595,NULL,'DE41D3','DB8A6F145411','2014-01-23 02:10:39','SYSTEM','ACTIVE',31,NULL),(1310,685,132,-1,13596,NULL,'00F5E1','A8DF00EA5E86','2014-01-23 02:10:39','SYSTEM','ACTIVE',31,NULL),(1311,653,132,-1,13597,NULL,'D77F22','9C2EDF3CF0F6','2014-01-23 02:10:39','SYSTEM','ACTIVE',31,NULL),(1312,684,132,-1,13598,NULL,'6319AF','DFD0E3F934CE','2014-01-23 02:10:39','SYSTEM','ACTIVE',31,NULL),(1313,658,132,-1,13599,NULL,'E7A04E','7BEC83593A82','2014-01-23 02:10:39','SYSTEM','ACTIVE',31,NULL),(1314,674,132,-1,13600,NULL,'BC671C','F7FE3E6ECC1D','2014-01-23 02:10:39','SYSTEM','ACTIVE',31,NULL),(1315,667,132,-1,13601,NULL,'04C96B','0A6FB9B48F09','2014-01-23 02:10:39','SYSTEM','ACTIVE',31,NULL),(1316,655,132,-1,13602,NULL,'9CA75C','18A8F58D2F15','2014-01-23 02:10:40','SYSTEM','ACTIVE',31,NULL),(1317,672,132,-1,13603,NULL,'05D1DA','4009322DCAB0','2014-01-23 02:10:40','SYSTEM','ACTIVE',31,NULL),(1318,662,132,-1,13604,NULL,'95C057','5D4DA9DE552E','2014-01-23 02:10:40','SYSTEM','ACTIVE',31,NULL),(1319,653,132,-1,13605,NULL,'5B48E6','734160609E20','2014-01-23 02:10:40','SYSTEM','ACTIVE',31,NULL),(1320,675,132,-1,13606,NULL,'16842A','917E7F5C7DDF','2014-01-23 02:10:40','SYSTEM','ACTIVE',31,NULL),(1321,687,132,-1,13607,NULL,'A982D8','052F535DE4A0','2014-01-23 02:10:40','SYSTEM','ACTIVE',31,NULL),(1322,684,132,-1,13608,NULL,'5C01B0','FAF6BD3BF387','2014-01-23 02:10:40','SYSTEM','ACTIVE',31,NULL),(1323,684,132,-1,13609,NULL,'D3031D','26CFC7695EB9','2014-01-23 02:10:41','SYSTEM','ACTIVE',31,NULL),(1324,653,132,-1,13610,NULL,'D6C21B','AA252ED3D754','2014-01-23 02:10:41','SYSTEM','ACTIVE',31,NULL),(1325,665,132,-1,13611,NULL,'7DDF8F','00F61CF2433E','2014-01-23 02:10:41','SYSTEM','ACTIVE',31,NULL),(1326,670,132,-1,13612,NULL,'1B6DF2','FC021FE085C6','2014-01-23 02:10:41','SYSTEM','ACTIVE',31,NULL),(1327,685,132,-1,13613,NULL,'B1D8D7','586B980DF7C3','2014-01-23 02:10:42','SYSTEM','ACTIVE',31,NULL),(1328,657,132,-1,13614,NULL,'1E3C10','9A007915031F','2014-01-23 02:10:42','SYSTEM','ACTIVE',31,NULL),(1329,737,133,-1,13785,NULL,'68B8C5','639F76C83A32','2014-01-23 02:13:08','SYSTEM','ACTIVE',31,NULL),(1330,747,133,-1,13786,NULL,'5F79FC','8AADDC2EB4F4','2014-01-23 02:13:08','SYSTEM','ACTIVE',31,NULL),(1331,736,133,-1,13787,NULL,'03FCAE','FC436F706A63','2014-01-23 02:13:08','SYSTEM','ACTIVE',31,NULL),(1332,734,133,-1,13788,NULL,'2DDE58','5C9D1828E217','2014-01-23 02:13:08','SYSTEM','ACTIVE',31,NULL),(1333,743,133,-1,13789,NULL,'C4834A','56FA0B6A06E4','2014-01-23 02:13:08','SYSTEM','ACTIVE',31,NULL),(1334,721,133,-1,13790,NULL,'C08061','FCB8EF485B88','2014-01-23 02:13:08','SYSTEM','ACTIVE',31,NULL),(1335,738,133,-1,13791,NULL,'C97417','2E5653165A1E','2014-01-23 02:13:09','SYSTEM','ACTIVE',31,NULL),(1336,730,133,-1,13792,NULL,'F2FBDA','B74D69A97894','2014-01-23 02:13:09','SYSTEM','ACTIVE',31,NULL),(1337,747,133,-1,13793,NULL,'E6B5F5','16A9AD21FCB2','2014-01-23 02:13:09','SYSTEM','ACTIVE',31,NULL),(1338,747,133,-1,13794,NULL,'0C43A0','A3882899DFED','2014-01-23 02:13:09','SYSTEM','ACTIVE',31,NULL),(1339,723,133,-1,13795,NULL,'3EA496','7E0D4696F603','2014-01-23 02:13:09','SYSTEM','ACTIVE',31,NULL),(1340,749,133,-1,13796,NULL,'F0E834','314C0935675C','2014-01-23 02:13:09','SYSTEM','ACTIVE',31,NULL),(1341,724,133,-1,13797,NULL,'6EED31','78BF7685B3B5','2014-01-23 02:13:10','SYSTEM','ACTIVE',31,NULL),(1342,729,133,-1,13798,NULL,'45A942','36C8B60E2D36','2014-01-23 02:13:10','SYSTEM','ACTIVE',31,NULL),(1343,735,133,-1,13799,NULL,'CD09D3','3B87BE6CFA29','2014-01-23 02:13:10','SYSTEM','ACTIVE',31,NULL),(1344,733,133,-1,13800,NULL,'EFB77A','BEF302AA6573','2014-01-23 02:13:10','SYSTEM','ACTIVE',31,NULL),(1345,721,133,-1,13801,NULL,'976304','670ECDFCDEB4','2014-01-23 02:13:10','SYSTEM','ACTIVE',31,NULL),(1346,728,133,-1,13802,NULL,'14CF36','8E9011DF20B5','2014-01-23 02:13:10','SYSTEM','ACTIVE',31,NULL),(1347,723,133,-1,13803,NULL,'550B77','65E901D2EEC6','2014-01-23 02:13:10','SYSTEM','ACTIVE',31,NULL),(1348,750,133,-1,13804,NULL,'300FBE','3C4F8CC8A319','2014-01-23 02:13:11','SYSTEM','ACTIVE',31,NULL),(1349,725,133,-1,13805,NULL,'FA2100','925E0B218829','2014-01-23 02:13:11','SYSTEM','ACTIVE',31,NULL),(1350,741,133,-1,13806,NULL,'7B4EF7','EE9E8C02A4CE','2014-01-23 02:13:11','SYSTEM','ACTIVE',31,NULL),(1351,722,133,-1,13807,NULL,'EB36CA','025E466CC1BD','2014-01-23 02:13:11','SYSTEM','ACTIVE',31,NULL),(1352,726,133,-1,13808,NULL,'20D40B','9917E79C848B','2014-01-23 02:13:11','SYSTEM','ACTIVE',31,NULL),(1353,721,133,-1,13809,NULL,'444A42','8CC1542FE25C','2014-01-23 02:13:11','SYSTEM','ACTIVE',31,NULL),(1354,732,133,-1,13810,NULL,'3283F6','50BA8056CA5B','2014-01-23 02:13:11','SYSTEM','ACTIVE',31,NULL),(1355,716,133,-1,13811,NULL,'6FF880','FDE1406F9A36','2014-01-23 02:13:11','SYSTEM','ACTIVE',31,NULL),(1356,736,133,-1,13812,NULL,'DCBA98','A6EFA63A2E6E','2014-01-23 02:13:11','SYSTEM','ACTIVE',31,NULL),(1357,715,133,-1,13813,NULL,'83B9CB','347455B5813E','2014-01-23 02:13:11','SYSTEM','ACTIVE',31,NULL),(1358,745,133,-1,13814,NULL,'783C8A','21731E5B5B54','2014-01-23 02:13:12','SYSTEM','ACTIVE',31,NULL),(1359,727,134,-1,13985,NULL,'E8A819','00EDA152C623','2014-01-23 02:13:12','SYSTEM','ACTIVE',31,NULL),(1360,729,134,-1,13986,NULL,'CBB8DA','4DF961EB889D','2014-01-23 02:13:12','SYSTEM','ACTIVE',31,NULL),(1361,751,134,-1,13987,NULL,'8742AE','92D40EE4E2C8','2014-01-23 02:13:12','SYSTEM','ACTIVE',31,NULL),(1362,721,134,-1,13988,NULL,'FB63C4','4E77548FB9B9','2014-01-23 02:13:12','SYSTEM','ACTIVE',31,NULL),(1363,740,134,-1,13989,NULL,'4AED80','90DD5E61F95B','2014-01-23 02:13:12','SYSTEM','ACTIVE',31,NULL),(1364,751,134,-1,13990,NULL,'153DFF','51BE138396BE','2014-01-23 02:13:12','SYSTEM','ACTIVE',31,NULL),(1365,722,134,-1,13991,NULL,'B70035','662602A464C4','2014-01-23 02:13:12','SYSTEM','ACTIVE',31,NULL),(1366,737,134,-1,13992,NULL,'48D4A6','DF1292B7E0BF','2014-01-23 02:13:12','SYSTEM','ACTIVE',31,NULL),(1367,718,134,-1,13993,NULL,'5A5EEA','31B2173B139C','2014-01-23 02:13:12','SYSTEM','ACTIVE',31,NULL),(1368,744,134,-1,13994,NULL,'C0C42C','43E318DFDD69','2014-01-23 02:13:13','SYSTEM','ACTIVE',31,NULL),(1369,715,134,-1,13995,NULL,'95D549','DD7ADFC5ADDC','2014-01-23 02:13:13','SYSTEM','ACTIVE',31,NULL),(1370,729,134,-1,13996,NULL,'014D09','A54220E98F3C','2014-01-23 02:13:13','SYSTEM','ACTIVE',31,NULL),(1371,723,134,-1,13997,NULL,'72DC9D','F9AE3B0FB69E','2014-01-23 02:13:13','SYSTEM','ACTIVE',31,NULL),(1372,740,134,-1,13998,NULL,'74359A','B8B83B1FF194','2014-01-23 02:13:13','SYSTEM','ACTIVE',31,NULL),(1373,715,134,-1,13999,NULL,'C1CE1A','F8D3A726B638','2014-01-23 02:13:13','SYSTEM','ACTIVE',31,NULL),(1374,740,134,-1,14000,NULL,'3D0806','839EE135A3F1','2014-01-23 02:13:13','SYSTEM','ACTIVE',31,NULL),(1375,721,134,-1,14001,NULL,'CB1918','FBC0DF0AA1E6','2014-01-23 02:13:13','SYSTEM','ACTIVE',31,NULL),(1376,745,134,-1,14002,NULL,'34DB1B','927BD5A8A11A','2014-01-23 02:13:13','SYSTEM','ACTIVE',31,NULL),(1377,719,134,-1,14003,NULL,'FD2D08','BAC5826F85E8','2014-01-23 02:13:13','SYSTEM','ACTIVE',31,NULL),(1378,751,134,-1,14004,NULL,'D92DC5','FA3D0E87BD8E','2014-01-23 02:13:14','SYSTEM','ACTIVE',31,NULL),(1379,725,134,-1,14005,NULL,'347333','584313FD37AF','2014-01-23 02:13:14','SYSTEM','ACTIVE',31,NULL),(1380,733,134,-1,14006,NULL,'5F1979','7EA3B4512E7F','2014-01-23 02:13:14','SYSTEM','ACTIVE',31,NULL),(1381,715,134,-1,14007,NULL,'DFB045','1488C7858830','2014-01-23 02:13:14','SYSTEM','ACTIVE',31,NULL),(1382,723,134,-1,14008,NULL,'D21772','63E09A9E1129','2014-01-23 02:13:14','SYSTEM','ACTIVE',31,NULL),(1383,732,134,-1,14009,NULL,'82480C','801EEED34FA4','2014-01-23 02:13:14','SYSTEM','ACTIVE',31,NULL),(1384,716,134,-1,14010,NULL,'6EB186','A37383080640','2014-01-23 02:13:14','SYSTEM','ACTIVE',31,NULL),(1385,728,134,-1,14011,NULL,'3436C1','ABC1EF485410','2014-01-23 02:13:14','SYSTEM','ACTIVE',31,NULL),(1386,715,134,-1,14012,NULL,'153507','008CB06A33DD','2014-01-23 02:13:14','SYSTEM','ACTIVE',31,NULL),(1387,727,134,-1,14013,NULL,'A52D75','FD5301F39F57','2014-01-23 02:13:15','SYSTEM','ACTIVE',31,NULL),(1388,727,134,-1,14014,NULL,'219F49','8EEF63749C33','2014-01-23 02:13:15','SYSTEM','ACTIVE',31,NULL),(1389,738,135,-1,14185,NULL,'13D0C6','B7C60E064492','2014-01-23 02:13:15','SYSTEM','ACTIVE',31,NULL),(1390,741,135,-1,14186,NULL,'870EDF','18DFB389C20C','2014-01-23 02:13:15','SYSTEM','ACTIVE',31,NULL),(1391,740,135,-1,14187,NULL,'92DB3E','360B9EA2E12B','2014-01-23 02:13:15','SYSTEM','ACTIVE',31,NULL),(1392,727,135,-1,14188,NULL,'C7442B','B7FA4EE04E06','2014-01-23 02:13:15','SYSTEM','ACTIVE',31,NULL),(1393,731,135,-1,14189,NULL,'0ACF21','B12D8E2ECE82','2014-01-23 02:13:15','SYSTEM','ACTIVE',31,NULL),(1394,726,135,-1,14190,NULL,'8D35D2','A32641861B00','2014-01-23 02:13:15','SYSTEM','ACTIVE',31,NULL),(1395,725,135,-1,14191,NULL,'99F4CA','C3FE9F9D2945','2014-01-23 02:13:15','SYSTEM','ACTIVE',31,NULL),(1396,716,135,-1,14192,NULL,'0953F0','44FC5A25F7AE','2014-01-23 02:13:15','SYSTEM','ACTIVE',31,NULL),(1397,722,135,-1,14193,NULL,'DBDBEC','CD7596DD1F4D','2014-01-23 02:13:15','SYSTEM','ACTIVE',31,NULL),(1398,728,135,-1,14194,NULL,'07D0FD','7FB579E8A72D','2014-01-23 02:13:16','SYSTEM','ACTIVE',31,NULL),(1399,745,135,-1,14195,NULL,'F88224','EB2965473DCA','2014-01-23 02:13:16','SYSTEM','ACTIVE',31,NULL),(1400,727,135,-1,14196,NULL,'9DEA38','CA3DF144D5A3','2014-01-23 02:13:16','SYSTEM','ACTIVE',31,NULL),(1401,744,135,-1,14197,NULL,'E6D6BF','38671D93A9C3','2014-01-23 02:13:16','SYSTEM','ACTIVE',31,NULL),(1402,720,135,-1,14198,NULL,'0EB460','53C7BD6BB052','2014-01-23 02:13:16','SYSTEM','ACTIVE',31,NULL),(1403,748,135,-1,14199,NULL,'71CE3D','001FBE32A01A','2014-01-23 02:13:16','SYSTEM','ACTIVE',31,NULL),(1404,731,135,-1,14200,NULL,'D54E54','C7FAD413AE4B','2014-01-23 02:13:16','SYSTEM','ACTIVE',31,NULL),(1405,728,135,-1,14201,NULL,'F011C8','8E3CED58D314','2014-01-23 02:13:16','SYSTEM','ACTIVE',31,NULL),(1406,746,135,-1,14202,NULL,'B2D3D7','662D913DF79D','2014-01-23 02:13:16','SYSTEM','ACTIVE',31,NULL),(1407,739,135,-1,14203,NULL,'E8726D','818527BD1E93','2014-01-23 02:13:16','SYSTEM','ACTIVE',31,NULL),(1408,715,135,-1,14204,NULL,'F6C509','BCDBAD09FF92','2014-01-23 02:13:17','SYSTEM','ACTIVE',31,NULL),(1409,730,135,-1,14205,NULL,'DAF752','7EAC39A58892','2014-01-23 02:13:17','SYSTEM','ACTIVE',31,NULL),(1410,750,135,-1,14206,NULL,'C814C7','FAD0CD76DB27','2014-01-23 02:13:17','SYSTEM','ACTIVE',31,NULL),(1411,743,135,-1,14207,NULL,'44ACF7','F2015BCB0A77','2014-01-23 02:13:17','SYSTEM','ACTIVE',31,NULL),(1412,729,135,-1,14208,NULL,'DC4DD4','385FA26DDAC3','2014-01-23 02:13:17','SYSTEM','ACTIVE',31,NULL),(1413,751,135,-1,14209,NULL,'8BDC5D','D5E65B680817','2014-01-23 02:13:17','SYSTEM','ACTIVE',31,NULL),(1414,718,135,-1,14210,NULL,'E5D487','51B69A600EA8','2014-01-23 02:13:17','SYSTEM','ACTIVE',31,NULL),(1415,744,135,-1,14211,NULL,'099A5D','2C3658C571B3','2014-01-23 02:13:17','SYSTEM','ACTIVE',31,NULL),(1416,744,135,-1,14212,NULL,'C541D0','919099B17CB0','2014-01-23 02:13:17','SYSTEM','ACTIVE',31,NULL),(1417,740,135,-1,14213,NULL,'EFAE9A','B6BAFF564CDC','2014-01-23 02:13:18','SYSTEM','ACTIVE',31,NULL),(1418,736,135,-1,14214,NULL,'CB738F','894584329141','2014-01-23 02:13:18','SYSTEM','ACTIVE',31,NULL),(1419,720,136,-1,14385,NULL,'9F1710','1200448C9EAA','2014-01-23 02:13:18','SYSTEM','ACTIVE',31,NULL),(1420,748,136,-1,14386,NULL,'0CCC6F','CF2BE324CA53','2014-01-23 02:13:18','SYSTEM','ACTIVE',31,NULL),(1421,735,136,-1,14387,NULL,'7F8915','862B1E506439','2014-01-23 02:13:18','SYSTEM','ACTIVE',31,NULL),(1422,719,136,-1,14388,NULL,'1C7DDC','FDE0275B6349','2014-01-23 02:13:18','SYSTEM','ACTIVE',31,NULL),(1423,750,136,-1,14389,NULL,'B36C28','10EB0531BB3A','2014-01-23 02:13:18','SYSTEM','ACTIVE',31,NULL),(1424,742,136,-1,14390,NULL,'B976B9','B07A8895E6D2','2014-01-23 02:13:18','SYSTEM','ACTIVE',31,NULL),(1425,742,136,-1,14391,NULL,'BF6C27','EF2BF44578BB','2014-01-23 02:13:18','SYSTEM','ACTIVE',31,NULL),(1426,718,136,-1,14392,NULL,'6E601D','E95C3C692EBE','2014-01-23 02:13:19','SYSTEM','ACTIVE',31,NULL),(1427,731,136,-1,14393,NULL,'1E6285','6FC96B17C9FE','2014-01-23 02:13:19','SYSTEM','ACTIVE',31,NULL),(1428,724,136,-1,14394,NULL,'93ECF1','2C956851C059','2014-01-23 02:13:19','SYSTEM','ACTIVE',31,NULL),(1429,736,136,-1,14395,NULL,'713682','3445CD13393D','2014-01-23 02:13:19','SYSTEM','ACTIVE',31,NULL),(1430,730,136,-1,14396,NULL,'A538A7','47BD356DBF08','2014-01-23 02:13:19','SYSTEM','ACTIVE',31,NULL),(1431,751,136,-1,14397,NULL,'86EA38','E41BFC185BB2','2014-01-23 02:13:19','SYSTEM','ACTIVE',31,NULL),(1432,725,136,-1,14398,NULL,'FB0CCD','E53EA7DADEB8','2014-01-23 02:13:19','SYSTEM','ACTIVE',31,NULL),(1433,730,136,-1,14399,NULL,'6E50B1','B00D89B82AC2','2014-01-23 02:13:19','SYSTEM','ACTIVE',31,NULL),(1434,735,136,-1,14400,NULL,'EA6889','6087EEAF6C3B','2014-01-23 02:13:20','SYSTEM','ACTIVE',31,NULL),(1435,733,136,-1,14401,NULL,'55C3F5','2A851507A503','2014-01-23 02:13:20','SYSTEM','ACTIVE',31,NULL),(1436,738,136,-1,14402,NULL,'8FE045','B76B1829CC08','2014-01-23 02:13:20','SYSTEM','ACTIVE',31,NULL),(1437,723,136,-1,14403,NULL,'4027D0','63DCEF377365','2014-01-23 02:13:21','SYSTEM','ACTIVE',31,NULL),(1438,750,136,-1,14404,NULL,'94EF87','70EECECEEEDF','2014-01-23 02:13:21','SYSTEM','ACTIVE',31,NULL),(1439,725,136,-1,14405,NULL,'A65D2E','F3DCB5DF18CC','2014-01-23 02:13:21','SYSTEM','ACTIVE',31,NULL),(1440,720,136,-1,14406,NULL,'49E436','6DE29AE146C3','2014-01-23 02:13:22','SYSTEM','ACTIVE',31,NULL),(1441,741,136,-1,14407,NULL,'D67FA5','DEED4444EF0B','2014-01-23 02:13:22','SYSTEM','ACTIVE',31,NULL),(1442,718,136,-1,14408,NULL,'12AFE7','61CF52F9E154','2014-01-23 02:13:22','SYSTEM','ACTIVE',31,NULL),(1443,726,136,-1,14409,NULL,'898F1A','B4771133ECC7','2014-01-23 02:13:22','SYSTEM','ACTIVE',31,NULL),(1444,726,136,-1,14410,NULL,'57A3D2','E7827E6EDBAC','2014-01-23 02:13:22','SYSTEM','ACTIVE',31,NULL),(1445,747,136,-1,14411,NULL,'395625','BF80CC074EE3','2014-01-23 02:13:22','SYSTEM','ACTIVE',31,NULL),(1446,733,136,-1,14412,NULL,'65A06D','2A82F1D06796','2014-01-23 02:13:22','SYSTEM','ACTIVE',31,NULL),(1447,719,136,-1,14413,NULL,'7E0848','B111AAE95E3C','2014-01-23 02:13:22','SYSTEM','ACTIVE',31,NULL),(1448,745,136,-1,14414,NULL,'10EF67','4C1D9BF657F4','2014-01-23 02:13:23','SYSTEM','ACTIVE',31,NULL),(1449,735,137,-1,14585,NULL,'B4D6A9','451894393007','2014-01-23 02:13:23','SYSTEM','ACTIVE',31,NULL),(1450,747,137,-1,14586,NULL,'023670','1DFA4AD607EC','2014-01-23 02:13:23','SYSTEM','ACTIVE',31,NULL),(1451,722,137,-1,14587,NULL,'2DD184','157035FE8138','2014-01-23 02:13:23','SYSTEM','ACTIVE',31,NULL),(1452,730,137,-1,14588,NULL,'332448','2DE8372B77E8','2014-01-23 02:13:23','SYSTEM','ACTIVE',31,NULL),(1453,719,137,-1,14589,NULL,'539019','294F8D0BCA67','2014-01-23 02:13:23','SYSTEM','ACTIVE',31,NULL),(1454,733,137,-1,14590,NULL,'D7E5D4','B00BE05EB6DF','2014-01-23 02:13:23','SYSTEM','ACTIVE',31,NULL),(1455,739,137,-1,14591,NULL,'7D15EB','AEF144C46CD7','2014-01-23 02:13:23','SYSTEM','ACTIVE',31,NULL),(1456,716,137,-1,14592,NULL,'143FD8','760B1C6E7DEA','2014-01-23 02:13:23','SYSTEM','ACTIVE',31,NULL),(1457,735,137,-1,14593,NULL,'A61D25','668D630C7F6A','2014-01-23 02:13:23','SYSTEM','ACTIVE',31,NULL),(1458,719,137,-1,14594,NULL,'0B4DAB','D222680D3247','2014-01-23 02:13:24','SYSTEM','ACTIVE',31,NULL),(1459,715,137,-1,14595,NULL,'E16160','AE081216E488','2014-01-23 02:13:24','SYSTEM','ACTIVE',31,NULL),(1460,718,137,-1,14596,NULL,'29F1D9','C29FFCF45E3D','2014-01-23 02:13:24','SYSTEM','ACTIVE',31,NULL),(1461,718,137,-1,14597,NULL,'3A8A74','C7D7231A65C1','2014-01-23 02:13:24','SYSTEM','ACTIVE',31,NULL),(1462,741,137,-1,14598,NULL,'EEB844','154A1C26CF15','2014-01-23 02:13:24','SYSTEM','ACTIVE',31,NULL),(1463,729,137,-1,14599,NULL,'E8D928','AB6BB9407FA0','2014-01-23 02:13:24','SYSTEM','ACTIVE',31,NULL),(1464,744,137,-1,14600,NULL,'0B82D6','47E988BC43E3','2014-01-23 02:13:24','SYSTEM','ACTIVE',31,NULL),(1465,715,137,-1,14601,NULL,'02E83D','7CDB7D60C8D6','2014-01-23 02:13:24','SYSTEM','ACTIVE',31,NULL),(1466,730,137,-1,14602,NULL,'A99E53','0DFA9403A018','2014-01-23 02:13:24','SYSTEM','ACTIVE',31,NULL),(1467,717,137,-1,14603,NULL,'2441B3','353DF8B2D968','2014-01-23 02:13:24','SYSTEM','ACTIVE',31,NULL),(1468,717,137,-1,14604,NULL,'87C0DC','0BF0D4A7C099','2014-01-23 02:13:25','SYSTEM','ACTIVE',31,NULL),(1469,750,137,-1,14605,NULL,'D72896','0430B7B48BC5','2014-01-23 02:13:25','SYSTEM','ACTIVE',31,NULL),(1470,746,137,-1,14606,NULL,'CEC989','6F5A5A3B7A2B','2014-01-23 02:13:25','SYSTEM','ACTIVE',31,NULL),(1471,727,137,-1,14607,NULL,'EB2E79','4DBA12F2E897','2014-01-23 02:13:25','SYSTEM','ACTIVE',31,NULL),(1472,744,137,-1,14608,NULL,'04AC15','8CCAD877F9DA','2014-01-23 02:13:25','SYSTEM','ACTIVE',31,NULL),(1473,718,137,-1,14609,NULL,'72C078','147B82EFF900','2014-01-23 02:13:25','SYSTEM','ACTIVE',31,NULL),(1474,722,137,-1,14610,NULL,'887752','040D8B686D43','2014-01-23 02:13:25','SYSTEM','ACTIVE',31,NULL),(1475,742,137,-1,14611,NULL,'92A687','5F9089FD694C','2014-01-23 02:13:25','SYSTEM','ACTIVE',31,NULL),(1476,733,137,-1,14612,NULL,'3539CD','94EF897CF87C','2014-01-23 02:13:26','SYSTEM','ACTIVE',31,NULL),(1477,744,137,-1,14613,NULL,'A7A983','FEF23F37BA15','2014-01-23 02:13:26','SYSTEM','ACTIVE',31,NULL),(1478,751,137,-1,14614,NULL,'E19208','AF5E037D6FA5','2014-01-23 02:13:26','SYSTEM','ACTIVE',31,NULL),(1479,738,138,-1,14785,NULL,'E40976','E9E6B470B7B2','2014-01-23 02:13:26','SYSTEM','ACTIVE',31,NULL),(1480,718,138,-1,14786,NULL,'F700AA','00816BD18E52','2014-01-23 02:13:26','SYSTEM','ACTIVE',31,NULL),(1481,729,138,-1,14787,NULL,'141CB0','9B9D777B55A6','2014-01-23 02:13:26','SYSTEM','ACTIVE',31,NULL),(1482,730,138,-1,14788,NULL,'6B2BA4','3C481DABC2A4','2014-01-23 02:13:26','SYSTEM','ACTIVE',31,NULL),(1483,741,138,-1,14789,NULL,'762EB1','9F1FCE9D4B23','2014-01-23 02:13:26','SYSTEM','ACTIVE',31,NULL),(1484,750,138,-1,14790,NULL,'2C04CC','3634069D43F3','2014-01-23 02:13:26','SYSTEM','ACTIVE',31,NULL),(1485,738,138,-1,14791,NULL,'E7A2D5','0B5B7E98AFCC','2014-01-23 02:13:26','SYSTEM','ACTIVE',31,NULL),(1486,732,138,-1,14792,NULL,'C22105','25A6639DD47E','2014-01-23 02:13:27','SYSTEM','ACTIVE',31,NULL),(1487,745,138,-1,14793,NULL,'3EE125','EF1E0D2009B4','2014-01-23 02:13:27','SYSTEM','ACTIVE',31,NULL),(1488,746,138,-1,14794,NULL,'D50E55','C12E3D113436','2014-01-23 02:13:27','SYSTEM','ACTIVE',31,NULL),(1489,715,138,-1,14795,NULL,'25884F','A8C168139727','2014-01-23 02:13:27','SYSTEM','ACTIVE',31,NULL),(1490,740,138,-1,14796,NULL,'2E86BB','DD7FBA46CD8C','2014-01-23 02:13:27','SYSTEM','ACTIVE',31,NULL),(1491,718,138,-1,14797,NULL,'F3ED12','5EEEF842C533','2014-01-23 02:13:27','SYSTEM','ACTIVE',31,NULL),(1492,744,138,-1,14798,NULL,'C5412E','A26818F1118A','2014-01-23 02:13:28','SYSTEM','ACTIVE',31,NULL),(1493,720,138,-1,14799,NULL,'F1AF46','D4C22627D817','2014-01-23 02:13:28','SYSTEM','ACTIVE',31,NULL),(1494,727,138,-1,14800,NULL,'193850','B0E570D04A2F','2014-01-23 02:13:28','SYSTEM','ACTIVE',31,NULL),(1495,739,138,-1,14801,NULL,'1DEE67','2E5C0A6CEF82','2014-01-23 02:13:28','SYSTEM','ACTIVE',31,NULL),(1496,742,138,-1,14802,NULL,'EEF34C','C0963BC85FD6','2014-01-23 02:13:28','SYSTEM','ACTIVE',31,NULL),(1497,742,138,-1,14803,NULL,'05F1C3','34FB12A71958','2014-01-23 02:13:28','SYSTEM','ACTIVE',31,NULL),(1498,743,138,-1,14804,NULL,'ECF0C2','EBBA932C90D7','2014-01-23 02:13:28','SYSTEM','ACTIVE',31,NULL),(1499,739,138,-1,14805,NULL,'6D764D','99F56BB0216D','2014-01-23 02:13:28','SYSTEM','ACTIVE',31,NULL),(1500,717,138,-1,14806,NULL,'7E800B','588E9444F55F','2014-01-23 02:13:28','SYSTEM','ACTIVE',31,NULL),(1501,731,138,-1,14807,NULL,'40CF4D','D7F190E553A5','2014-01-23 02:13:28','SYSTEM','ACTIVE',31,NULL),(1502,733,138,-1,14808,NULL,'44FB04','E24C45542258','2014-01-23 02:13:28','SYSTEM','ACTIVE',31,NULL),(1503,718,138,-1,14809,NULL,'9B0C0B','F0E46C7FF596','2014-01-23 02:13:29','SYSTEM','ACTIVE',31,NULL),(1504,729,138,-1,14810,NULL,'5A6316','F110146696C4','2014-01-23 02:13:29','SYSTEM','ACTIVE',31,NULL),(1505,716,138,-1,14811,NULL,'8FA9A0','3E77FE1BFC48','2014-01-23 02:13:29','SYSTEM','ACTIVE',31,NULL),(1506,748,138,-1,14812,NULL,'EE2F03','3FCC8FCB9E45','2014-01-23 02:13:29','SYSTEM','ACTIVE',31,NULL),(1507,731,138,-1,14813,NULL,'14FDFC','F3F0F2EDE2BD','2014-01-23 02:13:29','SYSTEM','ACTIVE',31,NULL),(1508,738,138,-1,14814,NULL,'F9C26B','1D337C562EE6','2014-01-23 02:13:30','SYSTEM','ACTIVE',31,NULL),(1509,750,133,-1,13815,NULL,'1234','1234','2014-01-29 11:35:43','DEMO1OPERATOR','ACTIVE',31,NULL),(1510,745,133,-1,13816,NULL,'1','1','2014-01-29 11:36:00','DEMO1OPERATOR','ACTIVE',31,NULL),(1511,740,133,-1,13817,NULL,'Test Plate Info','Test Plate Info','2014-02-01 01:46:22','DEMO1OPERATOR','ACTIVE',31,NULL),(1512,740,133,-1,13818,NULL,'Test Plate Info line 1','Test Plate Info line 1','2014-02-01 01:47:33','DEMO1OPERATOR','ACTIVE',31,NULL),(1513,740,133,-1,13819,NULL,'Test Plate Info line 1','Test Plate Info line 1','2014-02-01 01:48:26','DEMO1OPERATOR','ACTIVE',31,NULL),(1514,740,133,-1,13820,NULL,'Test plate info','Test plate info','2014-02-01 01:49:58','DEMO1OPERATOR','ACTIVE',31,'Test plate info line 1\nTest plate info line 2\nTest plate info line 3\nTest plate info line 4'),(1515,740,133,-1,13821,NULL,'Test plate info 2','Test plate info 2','2014-02-01 01:51:15','DEMO1OPERATOR','ACTIVE',31,'Test plate info line 1\nTest plate info line 2\nTest plate info line 3\nTest plate info line 4');
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
  PRIMARY KEY (`ps_id`),
  KEY `idx_smplateslot_orgid` (`ps_orgid`),
  KEY `idx_smplateslot_sfidava` (`ps_available`,`ps_sfid`),
  KEY `idx_smplateslot_barcodescan` (`ps_code`,`ps_orgid`)
) ENGINE=InnoDB AUTO_INCREMENT=14985 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smplateslot`
--

LOCK TABLES `smplateslot` WRITE;
/*!40000 ALTER TABLE `smplateslot` DISABLE KEYS */;
INSERT INTO `smplateslot` VALUES (13785,133,'0001','1000-A1-0001','N',31),(13786,133,'0002','1000-A1-0002','N',31),(13787,133,'0003','1000-A1-0003','N',31),(13788,133,'0004','1000-A1-0004','N',31),(13789,133,'0005','1000-A1-0005','N',31),(13790,133,'0006','1000-A1-0006','N',31),(13791,133,'0007','1000-A1-0007','N',31),(13792,133,'0008','1000-A1-0008','N',31),(13793,133,'0009','1000-A1-0009','N',31),(13794,133,'0010','1000-A1-0010','N',31),(13795,133,'0011','1000-A1-0011','N',31),(13796,133,'0012','1000-A1-0012','N',31),(13797,133,'0013','1000-A1-0013','N',31),(13798,133,'0014','1000-A1-0014','N',31),(13799,133,'0015','1000-A1-0015','N',31),(13800,133,'0016','1000-A1-0016','N',31),(13801,133,'0017','1000-A1-0017','N',31),(13802,133,'0018','1000-A1-0018','N',31),(13803,133,'0019','1000-A1-0019','N',31),(13804,133,'0020','1000-A1-0020','N',31),(13805,133,'0021','1000-A1-0021','N',31),(13806,133,'0022','1000-A1-0022','N',31),(13807,133,'0023','1000-A1-0023','N',31),(13808,133,'0024','1000-A1-0024','N',31),(13809,133,'0025','1000-A1-0025','N',31),(13810,133,'0026','1000-A1-0026','N',31),(13811,133,'0027','1000-A1-0027','N',31),(13812,133,'0028','1000-A1-0028','N',31),(13813,133,'0029','1000-A1-0029','N',31),(13814,133,'0030','1000-A1-0030','N',31),(13815,133,'0031','1000-A1-0031','N',31),(13816,133,'0032','1000-A1-0032','N',31),(13817,133,'0033','1000-A1-0033','N',31),(13818,133,'0034','1000-A1-0034','N',31),(13819,133,'0035','1000-A1-0035','N',31),(13820,133,'0036','1000-A1-0036','N',31),(13821,133,'0037','1000-A1-0037','N',31),(13822,133,'0038','1000-A1-0038','Y',31),(13823,133,'0039','1000-A1-0039','Y',31),(13824,133,'0040','1000-A1-0040','Y',31),(13825,133,'0041','1000-A1-0041','Y',31),(13826,133,'0042','1000-A1-0042','Y',31),(13827,133,'0043','1000-A1-0043','Y',31),(13828,133,'0044','1000-A1-0044','Y',31),(13829,133,'0045','1000-A1-0045','Y',31),(13830,133,'0046','1000-A1-0046','Y',31),(13831,133,'0047','1000-A1-0047','Y',31),(13832,133,'0048','1000-A1-0048','Y',31),(13833,133,'0049','1000-A1-0049','Y',31),(13834,133,'0050','1000-A1-0050','Y',31),(13835,133,'0051','1000-A1-0051','Y',31),(13836,133,'0052','1000-A1-0052','Y',31),(13837,133,'0053','1000-A1-0053','Y',31),(13838,133,'0054','1000-A1-0054','Y',31),(13839,133,'0055','1000-A1-0055','Y',31),(13840,133,'0056','1000-A1-0056','Y',31),(13841,133,'0057','1000-A1-0057','Y',31),(13842,133,'0058','1000-A1-0058','Y',31),(13843,133,'0059','1000-A1-0059','Y',31),(13844,133,'0060','1000-A1-0060','Y',31),(13845,133,'0061','1000-A1-0061','Y',31),(13846,133,'0062','1000-A1-0062','Y',31),(13847,133,'0063','1000-A1-0063','Y',31),(13848,133,'0064','1000-A1-0064','Y',31),(13849,133,'0065','1000-A1-0065','Y',31),(13850,133,'0066','1000-A1-0066','Y',31),(13851,133,'0067','1000-A1-0067','Y',31),(13852,133,'0068','1000-A1-0068','Y',31),(13853,133,'0069','1000-A1-0069','Y',31),(13854,133,'0070','1000-A1-0070','Y',31),(13855,133,'0071','1000-A1-0071','Y',31),(13856,133,'0072','1000-A1-0072','Y',31),(13857,133,'0073','1000-A1-0073','Y',31),(13858,133,'0074','1000-A1-0074','Y',31),(13859,133,'0075','1000-A1-0075','Y',31),(13860,133,'0076','1000-A1-0076','Y',31),(13861,133,'0077','1000-A1-0077','Y',31),(13862,133,'0078','1000-A1-0078','Y',31),(13863,133,'0079','1000-A1-0079','Y',31),(13864,133,'0080','1000-A1-0080','Y',31),(13865,133,'0081','1000-A1-0081','Y',31),(13866,133,'0082','1000-A1-0082','Y',31),(13867,133,'0083','1000-A1-0083','Y',31),(13868,133,'0084','1000-A1-0084','Y',31),(13869,133,'0085','1000-A1-0085','Y',31),(13870,133,'0086','1000-A1-0086','Y',31),(13871,133,'0087','1000-A1-0087','Y',31),(13872,133,'0088','1000-A1-0088','Y',31),(13873,133,'0089','1000-A1-0089','Y',31),(13874,133,'0090','1000-A1-0090','Y',31),(13875,133,'0091','1000-A1-0091','Y',31),(13876,133,'0092','1000-A1-0092','Y',31),(13877,133,'0093','1000-A1-0093','Y',31),(13878,133,'0094','1000-A1-0094','Y',31),(13879,133,'0095','1000-A1-0095','Y',31),(13880,133,'0096','1000-A1-0096','Y',31),(13881,133,'0097','1000-A1-0097','Y',31),(13882,133,'0098','1000-A1-0098','Y',31),(13883,133,'0099','1000-A1-0099','Y',31),(13884,133,'0100','1000-A1-0100','Y',31),(13885,133,'0101','1000-A1-0101','Y',31),(13886,133,'0102','1000-A1-0102','Y',31),(13887,133,'0103','1000-A1-0103','Y',31),(13888,133,'0104','1000-A1-0104','Y',31),(13889,133,'0105','1000-A1-0105','Y',31),(13890,133,'0106','1000-A1-0106','Y',31),(13891,133,'0107','1000-A1-0107','Y',31),(13892,133,'0108','1000-A1-0108','Y',31),(13893,133,'0109','1000-A1-0109','Y',31),(13894,133,'0110','1000-A1-0110','Y',31),(13895,133,'0111','1000-A1-0111','Y',31),(13896,133,'0112','1000-A1-0112','Y',31),(13897,133,'0113','1000-A1-0113','Y',31),(13898,133,'0114','1000-A1-0114','Y',31),(13899,133,'0115','1000-A1-0115','Y',31),(13900,133,'0116','1000-A1-0116','Y',31),(13901,133,'0117','1000-A1-0117','Y',31),(13902,133,'0118','1000-A1-0118','Y',31),(13903,133,'0119','1000-A1-0119','Y',31),(13904,133,'0120','1000-A1-0120','Y',31),(13905,133,'0121','1000-A1-0121','Y',31),(13906,133,'0122','1000-A1-0122','Y',31),(13907,133,'0123','1000-A1-0123','Y',31),(13908,133,'0124','1000-A1-0124','Y',31),(13909,133,'0125','1000-A1-0125','Y',31),(13910,133,'0126','1000-A1-0126','Y',31),(13911,133,'0127','1000-A1-0127','Y',31),(13912,133,'0128','1000-A1-0128','Y',31),(13913,133,'0129','1000-A1-0129','Y',31),(13914,133,'0130','1000-A1-0130','Y',31),(13915,133,'0131','1000-A1-0131','Y',31),(13916,133,'0132','1000-A1-0132','Y',31),(13917,133,'0133','1000-A1-0133','Y',31),(13918,133,'0134','1000-A1-0134','Y',31),(13919,133,'0135','1000-A1-0135','Y',31),(13920,133,'0136','1000-A1-0136','Y',31),(13921,133,'0137','1000-A1-0137','Y',31),(13922,133,'0138','1000-A1-0138','Y',31),(13923,133,'0139','1000-A1-0139','Y',31),(13924,133,'0140','1000-A1-0140','Y',31),(13925,133,'0141','1000-A1-0141','Y',31),(13926,133,'0142','1000-A1-0142','Y',31),(13927,133,'0143','1000-A1-0143','Y',31),(13928,133,'0144','1000-A1-0144','Y',31),(13929,133,'0145','1000-A1-0145','Y',31),(13930,133,'0146','1000-A1-0146','Y',31),(13931,133,'0147','1000-A1-0147','Y',31),(13932,133,'0148','1000-A1-0148','Y',31),(13933,133,'0149','1000-A1-0149','Y',31),(13934,133,'0150','1000-A1-0150','Y',31),(13935,133,'0151','1000-A1-0151','Y',31),(13936,133,'0152','1000-A1-0152','Y',31),(13937,133,'0153','1000-A1-0153','Y',31),(13938,133,'0154','1000-A1-0154','Y',31),(13939,133,'0155','1000-A1-0155','Y',31),(13940,133,'0156','1000-A1-0156','Y',31),(13941,133,'0157','1000-A1-0157','Y',31),(13942,133,'0158','1000-A1-0158','Y',31),(13943,133,'0159','1000-A1-0159','Y',31),(13944,133,'0160','1000-A1-0160','Y',31),(13945,133,'0161','1000-A1-0161','Y',31),(13946,133,'0162','1000-A1-0162','Y',31),(13947,133,'0163','1000-A1-0163','Y',31),(13948,133,'0164','1000-A1-0164','Y',31),(13949,133,'0165','1000-A1-0165','Y',31),(13950,133,'0166','1000-A1-0166','Y',31),(13951,133,'0167','1000-A1-0167','Y',31),(13952,133,'0168','1000-A1-0168','Y',31),(13953,133,'0169','1000-A1-0169','Y',31),(13954,133,'0170','1000-A1-0170','Y',31),(13955,133,'0171','1000-A1-0171','Y',31),(13956,133,'0172','1000-A1-0172','Y',31),(13957,133,'0173','1000-A1-0173','Y',31),(13958,133,'0174','1000-A1-0174','Y',31),(13959,133,'0175','1000-A1-0175','Y',31),(13960,133,'0176','1000-A1-0176','Y',31),(13961,133,'0177','1000-A1-0177','Y',31),(13962,133,'0178','1000-A1-0178','Y',31),(13963,133,'0179','1000-A1-0179','Y',31),(13964,133,'0180','1000-A1-0180','Y',31),(13965,133,'0181','1000-A1-0181','Y',31),(13966,133,'0182','1000-A1-0182','Y',31),(13967,133,'0183','1000-A1-0183','Y',31),(13968,133,'0184','1000-A1-0184','Y',31),(13969,133,'0185','1000-A1-0185','Y',31),(13970,133,'0186','1000-A1-0186','Y',31),(13971,133,'0187','1000-A1-0187','Y',31),(13972,133,'0188','1000-A1-0188','Y',31),(13973,133,'0189','1000-A1-0189','Y',31),(13974,133,'0190','1000-A1-0190','Y',31),(13975,133,'0191','1000-A1-0191','Y',31),(13976,133,'0192','1000-A1-0192','Y',31),(13977,133,'0193','1000-A1-0193','Y',31),(13978,133,'0194','1000-A1-0194','Y',31),(13979,133,'0195','1000-A1-0195','Y',31),(13980,133,'0196','1000-A1-0196','Y',31),(13981,133,'0197','1000-A1-0197','Y',31),(13982,133,'0198','1000-A1-0198','Y',31),(13983,133,'0199','1000-A1-0199','Y',31),(13984,133,'0200','1000-A1-0200','Y',31),(13985,134,'0001','1000-A2-0001','N',31),(13986,134,'0002','1000-A2-0002','N',31),(13987,134,'0003','1000-A2-0003','N',31),(13988,134,'0004','1000-A2-0004','N',31),(13989,134,'0005','1000-A2-0005','N',31),(13990,134,'0006','1000-A2-0006','N',31),(13991,134,'0007','1000-A2-0007','N',31),(13992,134,'0008','1000-A2-0008','N',31),(13993,134,'0009','1000-A2-0009','N',31),(13994,134,'0010','1000-A2-0010','N',31),(13995,134,'0011','1000-A2-0011','N',31),(13996,134,'0012','1000-A2-0012','N',31),(13997,134,'0013','1000-A2-0013','N',31),(13998,134,'0014','1000-A2-0014','N',31),(13999,134,'0015','1000-A2-0015','N',31),(14000,134,'0016','1000-A2-0016','N',31),(14001,134,'0017','1000-A2-0017','N',31),(14002,134,'0018','1000-A2-0018','N',31),(14003,134,'0019','1000-A2-0019','N',31),(14004,134,'0020','1000-A2-0020','N',31),(14005,134,'0021','1000-A2-0021','N',31),(14006,134,'0022','1000-A2-0022','N',31),(14007,134,'0023','1000-A2-0023','N',31),(14008,134,'0024','1000-A2-0024','N',31),(14009,134,'0025','1000-A2-0025','N',31),(14010,134,'0026','1000-A2-0026','N',31),(14011,134,'0027','1000-A2-0027','N',31),(14012,134,'0028','1000-A2-0028','N',31),(14013,134,'0029','1000-A2-0029','N',31),(14014,134,'0030','1000-A2-0030','N',31),(14015,134,'0031','1000-A2-0031','Y',31),(14016,134,'0032','1000-A2-0032','Y',31),(14017,134,'0033','1000-A2-0033','Y',31),(14018,134,'0034','1000-A2-0034','Y',31),(14019,134,'0035','1000-A2-0035','Y',31),(14020,134,'0036','1000-A2-0036','Y',31),(14021,134,'0037','1000-A2-0037','Y',31),(14022,134,'0038','1000-A2-0038','Y',31),(14023,134,'0039','1000-A2-0039','Y',31),(14024,134,'0040','1000-A2-0040','Y',31),(14025,134,'0041','1000-A2-0041','Y',31),(14026,134,'0042','1000-A2-0042','Y',31),(14027,134,'0043','1000-A2-0043','Y',31),(14028,134,'0044','1000-A2-0044','Y',31),(14029,134,'0045','1000-A2-0045','Y',31),(14030,134,'0046','1000-A2-0046','Y',31),(14031,134,'0047','1000-A2-0047','Y',31),(14032,134,'0048','1000-A2-0048','Y',31),(14033,134,'0049','1000-A2-0049','Y',31),(14034,134,'0050','1000-A2-0050','Y',31),(14035,134,'0051','1000-A2-0051','Y',31),(14036,134,'0052','1000-A2-0052','Y',31),(14037,134,'0053','1000-A2-0053','Y',31),(14038,134,'0054','1000-A2-0054','Y',31),(14039,134,'0055','1000-A2-0055','Y',31),(14040,134,'0056','1000-A2-0056','Y',31),(14041,134,'0057','1000-A2-0057','Y',31),(14042,134,'0058','1000-A2-0058','Y',31),(14043,134,'0059','1000-A2-0059','Y',31),(14044,134,'0060','1000-A2-0060','Y',31),(14045,134,'0061','1000-A2-0061','Y',31),(14046,134,'0062','1000-A2-0062','Y',31),(14047,134,'0063','1000-A2-0063','Y',31),(14048,134,'0064','1000-A2-0064','Y',31),(14049,134,'0065','1000-A2-0065','Y',31),(14050,134,'0066','1000-A2-0066','Y',31),(14051,134,'0067','1000-A2-0067','Y',31),(14052,134,'0068','1000-A2-0068','Y',31),(14053,134,'0069','1000-A2-0069','Y',31),(14054,134,'0070','1000-A2-0070','Y',31),(14055,134,'0071','1000-A2-0071','Y',31),(14056,134,'0072','1000-A2-0072','Y',31),(14057,134,'0073','1000-A2-0073','Y',31),(14058,134,'0074','1000-A2-0074','Y',31),(14059,134,'0075','1000-A2-0075','Y',31),(14060,134,'0076','1000-A2-0076','Y',31),(14061,134,'0077','1000-A2-0077','Y',31),(14062,134,'0078','1000-A2-0078','Y',31),(14063,134,'0079','1000-A2-0079','Y',31),(14064,134,'0080','1000-A2-0080','Y',31),(14065,134,'0081','1000-A2-0081','Y',31),(14066,134,'0082','1000-A2-0082','Y',31),(14067,134,'0083','1000-A2-0083','Y',31),(14068,134,'0084','1000-A2-0084','Y',31),(14069,134,'0085','1000-A2-0085','Y',31),(14070,134,'0086','1000-A2-0086','Y',31),(14071,134,'0087','1000-A2-0087','Y',31),(14072,134,'0088','1000-A2-0088','Y',31),(14073,134,'0089','1000-A2-0089','Y',31),(14074,134,'0090','1000-A2-0090','Y',31),(14075,134,'0091','1000-A2-0091','Y',31),(14076,134,'0092','1000-A2-0092','Y',31),(14077,134,'0093','1000-A2-0093','Y',31),(14078,134,'0094','1000-A2-0094','Y',31),(14079,134,'0095','1000-A2-0095','Y',31),(14080,134,'0096','1000-A2-0096','Y',31),(14081,134,'0097','1000-A2-0097','Y',31),(14082,134,'0098','1000-A2-0098','Y',31),(14083,134,'0099','1000-A2-0099','Y',31),(14084,134,'0100','1000-A2-0100','Y',31),(14085,134,'0101','1000-A2-0101','Y',31),(14086,134,'0102','1000-A2-0102','Y',31),(14087,134,'0103','1000-A2-0103','Y',31),(14088,134,'0104','1000-A2-0104','Y',31),(14089,134,'0105','1000-A2-0105','Y',31),(14090,134,'0106','1000-A2-0106','Y',31),(14091,134,'0107','1000-A2-0107','Y',31),(14092,134,'0108','1000-A2-0108','Y',31),(14093,134,'0109','1000-A2-0109','Y',31),(14094,134,'0110','1000-A2-0110','Y',31),(14095,134,'0111','1000-A2-0111','Y',31),(14096,134,'0112','1000-A2-0112','Y',31),(14097,134,'0113','1000-A2-0113','Y',31),(14098,134,'0114','1000-A2-0114','Y',31),(14099,134,'0115','1000-A2-0115','Y',31),(14100,134,'0116','1000-A2-0116','Y',31),(14101,134,'0117','1000-A2-0117','Y',31),(14102,134,'0118','1000-A2-0118','Y',31),(14103,134,'0119','1000-A2-0119','Y',31),(14104,134,'0120','1000-A2-0120','Y',31),(14105,134,'0121','1000-A2-0121','Y',31),(14106,134,'0122','1000-A2-0122','Y',31),(14107,134,'0123','1000-A2-0123','Y',31),(14108,134,'0124','1000-A2-0124','Y',31),(14109,134,'0125','1000-A2-0125','Y',31),(14110,134,'0126','1000-A2-0126','Y',31),(14111,134,'0127','1000-A2-0127','Y',31),(14112,134,'0128','1000-A2-0128','Y',31),(14113,134,'0129','1000-A2-0129','Y',31),(14114,134,'0130','1000-A2-0130','Y',31),(14115,134,'0131','1000-A2-0131','Y',31),(14116,134,'0132','1000-A2-0132','Y',31),(14117,134,'0133','1000-A2-0133','Y',31),(14118,134,'0134','1000-A2-0134','Y',31),(14119,134,'0135','1000-A2-0135','Y',31),(14120,134,'0136','1000-A2-0136','Y',31),(14121,134,'0137','1000-A2-0137','Y',31),(14122,134,'0138','1000-A2-0138','Y',31),(14123,134,'0139','1000-A2-0139','Y',31),(14124,134,'0140','1000-A2-0140','Y',31),(14125,134,'0141','1000-A2-0141','Y',31),(14126,134,'0142','1000-A2-0142','Y',31),(14127,134,'0143','1000-A2-0143','Y',31),(14128,134,'0144','1000-A2-0144','Y',31),(14129,134,'0145','1000-A2-0145','Y',31),(14130,134,'0146','1000-A2-0146','Y',31),(14131,134,'0147','1000-A2-0147','Y',31),(14132,134,'0148','1000-A2-0148','Y',31),(14133,134,'0149','1000-A2-0149','Y',31),(14134,134,'0150','1000-A2-0150','Y',31),(14135,134,'0151','1000-A2-0151','Y',31),(14136,134,'0152','1000-A2-0152','Y',31),(14137,134,'0153','1000-A2-0153','Y',31),(14138,134,'0154','1000-A2-0154','Y',31),(14139,134,'0155','1000-A2-0155','Y',31),(14140,134,'0156','1000-A2-0156','Y',31),(14141,134,'0157','1000-A2-0157','Y',31),(14142,134,'0158','1000-A2-0158','Y',31),(14143,134,'0159','1000-A2-0159','Y',31),(14144,134,'0160','1000-A2-0160','Y',31),(14145,134,'0161','1000-A2-0161','Y',31),(14146,134,'0162','1000-A2-0162','Y',31),(14147,134,'0163','1000-A2-0163','Y',31),(14148,134,'0164','1000-A2-0164','Y',31),(14149,134,'0165','1000-A2-0165','Y',31),(14150,134,'0166','1000-A2-0166','Y',31),(14151,134,'0167','1000-A2-0167','Y',31),(14152,134,'0168','1000-A2-0168','Y',31),(14153,134,'0169','1000-A2-0169','Y',31),(14154,134,'0170','1000-A2-0170','Y',31),(14155,134,'0171','1000-A2-0171','Y',31),(14156,134,'0172','1000-A2-0172','Y',31),(14157,134,'0173','1000-A2-0173','Y',31),(14158,134,'0174','1000-A2-0174','Y',31),(14159,134,'0175','1000-A2-0175','Y',31),(14160,134,'0176','1000-A2-0176','Y',31),(14161,134,'0177','1000-A2-0177','Y',31),(14162,134,'0178','1000-A2-0178','Y',31),(14163,134,'0179','1000-A2-0179','Y',31),(14164,134,'0180','1000-A2-0180','Y',31),(14165,134,'0181','1000-A2-0181','Y',31),(14166,134,'0182','1000-A2-0182','Y',31),(14167,134,'0183','1000-A2-0183','Y',31),(14168,134,'0184','1000-A2-0184','Y',31),(14169,134,'0185','1000-A2-0185','Y',31),(14170,134,'0186','1000-A2-0186','Y',31),(14171,134,'0187','1000-A2-0187','Y',31),(14172,134,'0188','1000-A2-0188','Y',31),(14173,134,'0189','1000-A2-0189','Y',31),(14174,134,'0190','1000-A2-0190','Y',31),(14175,134,'0191','1000-A2-0191','Y',31),(14176,134,'0192','1000-A2-0192','Y',31),(14177,134,'0193','1000-A2-0193','Y',31),(14178,134,'0194','1000-A2-0194','Y',31),(14179,134,'0195','1000-A2-0195','Y',31),(14180,134,'0196','1000-A2-0196','Y',31),(14181,134,'0197','1000-A2-0197','Y',31),(14182,134,'0198','1000-A2-0198','Y',31),(14183,134,'0199','1000-A2-0199','Y',31),(14184,134,'0200','1000-A2-0200','Y',31),(14185,135,'0001','1000-A3-0001','N',31),(14186,135,'0002','1000-A3-0002','N',31),(14187,135,'0003','1000-A3-0003','N',31),(14188,135,'0004','1000-A3-0004','N',31),(14189,135,'0005','1000-A3-0005','N',31),(14190,135,'0006','1000-A3-0006','N',31),(14191,135,'0007','1000-A3-0007','N',31),(14192,135,'0008','1000-A3-0008','N',31),(14193,135,'0009','1000-A3-0009','N',31),(14194,135,'0010','1000-A3-0010','N',31),(14195,135,'0011','1000-A3-0011','N',31),(14196,135,'0012','1000-A3-0012','N',31),(14197,135,'0013','1000-A3-0013','N',31),(14198,135,'0014','1000-A3-0014','N',31),(14199,135,'0015','1000-A3-0015','N',31),(14200,135,'0016','1000-A3-0016','N',31),(14201,135,'0017','1000-A3-0017','N',31),(14202,135,'0018','1000-A3-0018','N',31),(14203,135,'0019','1000-A3-0019','N',31),(14204,135,'0020','1000-A3-0020','N',31),(14205,135,'0021','1000-A3-0021','N',31),(14206,135,'0022','1000-A3-0022','N',31),(14207,135,'0023','1000-A3-0023','N',31),(14208,135,'0024','1000-A3-0024','N',31),(14209,135,'0025','1000-A3-0025','N',31),(14210,135,'0026','1000-A3-0026','N',31),(14211,135,'0027','1000-A3-0027','N',31),(14212,135,'0028','1000-A3-0028','N',31),(14213,135,'0029','1000-A3-0029','N',31),(14214,135,'0030','1000-A3-0030','N',31),(14215,135,'0031','1000-A3-0031','Y',31),(14216,135,'0032','1000-A3-0032','Y',31),(14217,135,'0033','1000-A3-0033','Y',31),(14218,135,'0034','1000-A3-0034','Y',31),(14219,135,'0035','1000-A3-0035','Y',31),(14220,135,'0036','1000-A3-0036','Y',31),(14221,135,'0037','1000-A3-0037','Y',31),(14222,135,'0038','1000-A3-0038','Y',31),(14223,135,'0039','1000-A3-0039','Y',31),(14224,135,'0040','1000-A3-0040','Y',31),(14225,135,'0041','1000-A3-0041','Y',31),(14226,135,'0042','1000-A3-0042','Y',31),(14227,135,'0043','1000-A3-0043','Y',31),(14228,135,'0044','1000-A3-0044','Y',31),(14229,135,'0045','1000-A3-0045','Y',31),(14230,135,'0046','1000-A3-0046','Y',31),(14231,135,'0047','1000-A3-0047','Y',31),(14232,135,'0048','1000-A3-0048','Y',31),(14233,135,'0049','1000-A3-0049','Y',31),(14234,135,'0050','1000-A3-0050','Y',31),(14235,135,'0051','1000-A3-0051','Y',31),(14236,135,'0052','1000-A3-0052','Y',31),(14237,135,'0053','1000-A3-0053','Y',31),(14238,135,'0054','1000-A3-0054','Y',31),(14239,135,'0055','1000-A3-0055','Y',31),(14240,135,'0056','1000-A3-0056','Y',31),(14241,135,'0057','1000-A3-0057','Y',31),(14242,135,'0058','1000-A3-0058','Y',31),(14243,135,'0059','1000-A3-0059','Y',31),(14244,135,'0060','1000-A3-0060','Y',31),(14245,135,'0061','1000-A3-0061','Y',31),(14246,135,'0062','1000-A3-0062','Y',31),(14247,135,'0063','1000-A3-0063','Y',31),(14248,135,'0064','1000-A3-0064','Y',31),(14249,135,'0065','1000-A3-0065','Y',31),(14250,135,'0066','1000-A3-0066','Y',31),(14251,135,'0067','1000-A3-0067','Y',31),(14252,135,'0068','1000-A3-0068','Y',31),(14253,135,'0069','1000-A3-0069','Y',31),(14254,135,'0070','1000-A3-0070','Y',31),(14255,135,'0071','1000-A3-0071','Y',31),(14256,135,'0072','1000-A3-0072','Y',31),(14257,135,'0073','1000-A3-0073','Y',31),(14258,135,'0074','1000-A3-0074','Y',31),(14259,135,'0075','1000-A3-0075','Y',31),(14260,135,'0076','1000-A3-0076','Y',31),(14261,135,'0077','1000-A3-0077','Y',31),(14262,135,'0078','1000-A3-0078','Y',31),(14263,135,'0079','1000-A3-0079','Y',31),(14264,135,'0080','1000-A3-0080','Y',31),(14265,135,'0081','1000-A3-0081','Y',31),(14266,135,'0082','1000-A3-0082','Y',31),(14267,135,'0083','1000-A3-0083','Y',31),(14268,135,'0084','1000-A3-0084','Y',31),(14269,135,'0085','1000-A3-0085','Y',31),(14270,135,'0086','1000-A3-0086','Y',31),(14271,135,'0087','1000-A3-0087','Y',31),(14272,135,'0088','1000-A3-0088','Y',31),(14273,135,'0089','1000-A3-0089','Y',31),(14274,135,'0090','1000-A3-0090','Y',31),(14275,135,'0091','1000-A3-0091','Y',31),(14276,135,'0092','1000-A3-0092','Y',31),(14277,135,'0093','1000-A3-0093','Y',31),(14278,135,'0094','1000-A3-0094','Y',31),(14279,135,'0095','1000-A3-0095','Y',31),(14280,135,'0096','1000-A3-0096','Y',31),(14281,135,'0097','1000-A3-0097','Y',31),(14282,135,'0098','1000-A3-0098','Y',31),(14283,135,'0099','1000-A3-0099','Y',31),(14284,135,'0100','1000-A3-0100','Y',31),(14285,135,'0101','1000-A3-0101','Y',31),(14286,135,'0102','1000-A3-0102','Y',31),(14287,135,'0103','1000-A3-0103','Y',31),(14288,135,'0104','1000-A3-0104','Y',31),(14289,135,'0105','1000-A3-0105','Y',31),(14290,135,'0106','1000-A3-0106','Y',31),(14291,135,'0107','1000-A3-0107','Y',31),(14292,135,'0108','1000-A3-0108','Y',31),(14293,135,'0109','1000-A3-0109','Y',31),(14294,135,'0110','1000-A3-0110','Y',31),(14295,135,'0111','1000-A3-0111','Y',31),(14296,135,'0112','1000-A3-0112','Y',31),(14297,135,'0113','1000-A3-0113','Y',31),(14298,135,'0114','1000-A3-0114','Y',31),(14299,135,'0115','1000-A3-0115','Y',31),(14300,135,'0116','1000-A3-0116','Y',31),(14301,135,'0117','1000-A3-0117','Y',31),(14302,135,'0118','1000-A3-0118','Y',31),(14303,135,'0119','1000-A3-0119','Y',31),(14304,135,'0120','1000-A3-0120','Y',31),(14305,135,'0121','1000-A3-0121','Y',31),(14306,135,'0122','1000-A3-0122','Y',31),(14307,135,'0123','1000-A3-0123','Y',31),(14308,135,'0124','1000-A3-0124','Y',31),(14309,135,'0125','1000-A3-0125','Y',31),(14310,135,'0126','1000-A3-0126','Y',31),(14311,135,'0127','1000-A3-0127','Y',31),(14312,135,'0128','1000-A3-0128','Y',31),(14313,135,'0129','1000-A3-0129','Y',31),(14314,135,'0130','1000-A3-0130','Y',31),(14315,135,'0131','1000-A3-0131','Y',31),(14316,135,'0132','1000-A3-0132','Y',31),(14317,135,'0133','1000-A3-0133','Y',31),(14318,135,'0134','1000-A3-0134','Y',31),(14319,135,'0135','1000-A3-0135','Y',31),(14320,135,'0136','1000-A3-0136','Y',31),(14321,135,'0137','1000-A3-0137','Y',31),(14322,135,'0138','1000-A3-0138','Y',31),(14323,135,'0139','1000-A3-0139','Y',31),(14324,135,'0140','1000-A3-0140','Y',31),(14325,135,'0141','1000-A3-0141','Y',31),(14326,135,'0142','1000-A3-0142','Y',31),(14327,135,'0143','1000-A3-0143','Y',31),(14328,135,'0144','1000-A3-0144','Y',31),(14329,135,'0145','1000-A3-0145','Y',31),(14330,135,'0146','1000-A3-0146','Y',31),(14331,135,'0147','1000-A3-0147','Y',31),(14332,135,'0148','1000-A3-0148','Y',31),(14333,135,'0149','1000-A3-0149','Y',31),(14334,135,'0150','1000-A3-0150','Y',31),(14335,135,'0151','1000-A3-0151','Y',31),(14336,135,'0152','1000-A3-0152','Y',31),(14337,135,'0153','1000-A3-0153','Y',31),(14338,135,'0154','1000-A3-0154','Y',31),(14339,135,'0155','1000-A3-0155','Y',31),(14340,135,'0156','1000-A3-0156','Y',31),(14341,135,'0157','1000-A3-0157','Y',31),(14342,135,'0158','1000-A3-0158','Y',31),(14343,135,'0159','1000-A3-0159','Y',31),(14344,135,'0160','1000-A3-0160','Y',31),(14345,135,'0161','1000-A3-0161','Y',31),(14346,135,'0162','1000-A3-0162','Y',31),(14347,135,'0163','1000-A3-0163','Y',31),(14348,135,'0164','1000-A3-0164','Y',31),(14349,135,'0165','1000-A3-0165','Y',31),(14350,135,'0166','1000-A3-0166','Y',31),(14351,135,'0167','1000-A3-0167','Y',31),(14352,135,'0168','1000-A3-0168','Y',31),(14353,135,'0169','1000-A3-0169','Y',31),(14354,135,'0170','1000-A3-0170','Y',31),(14355,135,'0171','1000-A3-0171','Y',31),(14356,135,'0172','1000-A3-0172','Y',31),(14357,135,'0173','1000-A3-0173','Y',31),(14358,135,'0174','1000-A3-0174','Y',31),(14359,135,'0175','1000-A3-0175','Y',31),(14360,135,'0176','1000-A3-0176','Y',31),(14361,135,'0177','1000-A3-0177','Y',31),(14362,135,'0178','1000-A3-0178','Y',31),(14363,135,'0179','1000-A3-0179','Y',31),(14364,135,'0180','1000-A3-0180','Y',31),(14365,135,'0181','1000-A3-0181','Y',31),(14366,135,'0182','1000-A3-0182','Y',31),(14367,135,'0183','1000-A3-0183','Y',31),(14368,135,'0184','1000-A3-0184','Y',31),(14369,135,'0185','1000-A3-0185','Y',31),(14370,135,'0186','1000-A3-0186','Y',31),(14371,135,'0187','1000-A3-0187','Y',31),(14372,135,'0188','1000-A3-0188','Y',31),(14373,135,'0189','1000-A3-0189','Y',31),(14374,135,'0190','1000-A3-0190','Y',31),(14375,135,'0191','1000-A3-0191','Y',31),(14376,135,'0192','1000-A3-0192','Y',31),(14377,135,'0193','1000-A3-0193','Y',31),(14378,135,'0194','1000-A3-0194','Y',31),(14379,135,'0195','1000-A3-0195','Y',31),(14380,135,'0196','1000-A3-0196','Y',31),(14381,135,'0197','1000-A3-0197','Y',31),(14382,135,'0198','1000-A3-0198','Y',31),(14383,135,'0199','1000-A3-0199','Y',31),(14384,135,'0200','1000-A3-0200','Y',31),(14385,136,'0001','1250-AA-0001','N',31),(14386,136,'0002','1250-AA-0002','N',31),(14387,136,'0003','1250-AA-0003','N',31),(14388,136,'0004','1250-AA-0004','N',31),(14389,136,'0005','1250-AA-0005','N',31),(14390,136,'0006','1250-AA-0006','N',31),(14391,136,'0007','1250-AA-0007','N',31),(14392,136,'0008','1250-AA-0008','N',31),(14393,136,'0009','1250-AA-0009','N',31),(14394,136,'0010','1250-AA-0010','N',31),(14395,136,'0011','1250-AA-0011','N',31),(14396,136,'0012','1250-AA-0012','N',31),(14397,136,'0013','1250-AA-0013','N',31),(14398,136,'0014','1250-AA-0014','N',31),(14399,136,'0015','1250-AA-0015','N',31),(14400,136,'0016','1250-AA-0016','N',31),(14401,136,'0017','1250-AA-0017','N',31),(14402,136,'0018','1250-AA-0018','N',31),(14403,136,'0019','1250-AA-0019','N',31),(14404,136,'0020','1250-AA-0020','N',31),(14405,136,'0021','1250-AA-0021','N',31),(14406,136,'0022','1250-AA-0022','N',31),(14407,136,'0023','1250-AA-0023','N',31),(14408,136,'0024','1250-AA-0024','N',31),(14409,136,'0025','1250-AA-0025','N',31),(14410,136,'0026','1250-AA-0026','N',31),(14411,136,'0027','1250-AA-0027','N',31),(14412,136,'0028','1250-AA-0028','N',31),(14413,136,'0029','1250-AA-0029','N',31),(14414,136,'0030','1250-AA-0030','N',31),(14415,136,'0031','1250-AA-0031','Y',31),(14416,136,'0032','1250-AA-0032','Y',31),(14417,136,'0033','1250-AA-0033','Y',31),(14418,136,'0034','1250-AA-0034','Y',31),(14419,136,'0035','1250-AA-0035','Y',31),(14420,136,'0036','1250-AA-0036','Y',31),(14421,136,'0037','1250-AA-0037','Y',31),(14422,136,'0038','1250-AA-0038','Y',31),(14423,136,'0039','1250-AA-0039','Y',31),(14424,136,'0040','1250-AA-0040','Y',31),(14425,136,'0041','1250-AA-0041','Y',31),(14426,136,'0042','1250-AA-0042','Y',31),(14427,136,'0043','1250-AA-0043','Y',31),(14428,136,'0044','1250-AA-0044','Y',31),(14429,136,'0045','1250-AA-0045','Y',31),(14430,136,'0046','1250-AA-0046','Y',31),(14431,136,'0047','1250-AA-0047','Y',31),(14432,136,'0048','1250-AA-0048','Y',31),(14433,136,'0049','1250-AA-0049','Y',31),(14434,136,'0050','1250-AA-0050','Y',31),(14435,136,'0051','1250-AA-0051','Y',31),(14436,136,'0052','1250-AA-0052','Y',31),(14437,136,'0053','1250-AA-0053','Y',31),(14438,136,'0054','1250-AA-0054','Y',31),(14439,136,'0055','1250-AA-0055','Y',31),(14440,136,'0056','1250-AA-0056','Y',31),(14441,136,'0057','1250-AA-0057','Y',31),(14442,136,'0058','1250-AA-0058','Y',31),(14443,136,'0059','1250-AA-0059','Y',31),(14444,136,'0060','1250-AA-0060','Y',31),(14445,136,'0061','1250-AA-0061','Y',31),(14446,136,'0062','1250-AA-0062','Y',31),(14447,136,'0063','1250-AA-0063','Y',31),(14448,136,'0064','1250-AA-0064','Y',31),(14449,136,'0065','1250-AA-0065','Y',31),(14450,136,'0066','1250-AA-0066','Y',31),(14451,136,'0067','1250-AA-0067','Y',31),(14452,136,'0068','1250-AA-0068','Y',31),(14453,136,'0069','1250-AA-0069','Y',31),(14454,136,'0070','1250-AA-0070','Y',31),(14455,136,'0071','1250-AA-0071','Y',31),(14456,136,'0072','1250-AA-0072','Y',31),(14457,136,'0073','1250-AA-0073','Y',31),(14458,136,'0074','1250-AA-0074','Y',31),(14459,136,'0075','1250-AA-0075','Y',31),(14460,136,'0076','1250-AA-0076','Y',31),(14461,136,'0077','1250-AA-0077','Y',31),(14462,136,'0078','1250-AA-0078','Y',31),(14463,136,'0079','1250-AA-0079','Y',31),(14464,136,'0080','1250-AA-0080','Y',31),(14465,136,'0081','1250-AA-0081','Y',31),(14466,136,'0082','1250-AA-0082','Y',31),(14467,136,'0083','1250-AA-0083','Y',31),(14468,136,'0084','1250-AA-0084','Y',31),(14469,136,'0085','1250-AA-0085','Y',31),(14470,136,'0086','1250-AA-0086','Y',31),(14471,136,'0087','1250-AA-0087','Y',31),(14472,136,'0088','1250-AA-0088','Y',31),(14473,136,'0089','1250-AA-0089','Y',31),(14474,136,'0090','1250-AA-0090','Y',31),(14475,136,'0091','1250-AA-0091','Y',31),(14476,136,'0092','1250-AA-0092','Y',31),(14477,136,'0093','1250-AA-0093','Y',31),(14478,136,'0094','1250-AA-0094','Y',31),(14479,136,'0095','1250-AA-0095','Y',31),(14480,136,'0096','1250-AA-0096','Y',31),(14481,136,'0097','1250-AA-0097','Y',31),(14482,136,'0098','1250-AA-0098','Y',31),(14483,136,'0099','1250-AA-0099','Y',31),(14484,136,'0100','1250-AA-0100','Y',31),(14485,136,'0101','1250-AA-0101','Y',31),(14486,136,'0102','1250-AA-0102','Y',31),(14487,136,'0103','1250-AA-0103','Y',31),(14488,136,'0104','1250-AA-0104','Y',31),(14489,136,'0105','1250-AA-0105','Y',31),(14490,136,'0106','1250-AA-0106','Y',31),(14491,136,'0107','1250-AA-0107','Y',31),(14492,136,'0108','1250-AA-0108','Y',31),(14493,136,'0109','1250-AA-0109','Y',31),(14494,136,'0110','1250-AA-0110','Y',31),(14495,136,'0111','1250-AA-0111','Y',31),(14496,136,'0112','1250-AA-0112','Y',31),(14497,136,'0113','1250-AA-0113','Y',31),(14498,136,'0114','1250-AA-0114','Y',31),(14499,136,'0115','1250-AA-0115','Y',31),(14500,136,'0116','1250-AA-0116','Y',31),(14501,136,'0117','1250-AA-0117','Y',31),(14502,136,'0118','1250-AA-0118','Y',31),(14503,136,'0119','1250-AA-0119','Y',31),(14504,136,'0120','1250-AA-0120','Y',31),(14505,136,'0121','1250-AA-0121','Y',31),(14506,136,'0122','1250-AA-0122','Y',31),(14507,136,'0123','1250-AA-0123','Y',31),(14508,136,'0124','1250-AA-0124','Y',31),(14509,136,'0125','1250-AA-0125','Y',31),(14510,136,'0126','1250-AA-0126','Y',31),(14511,136,'0127','1250-AA-0127','Y',31),(14512,136,'0128','1250-AA-0128','Y',31),(14513,136,'0129','1250-AA-0129','Y',31),(14514,136,'0130','1250-AA-0130','Y',31),(14515,136,'0131','1250-AA-0131','Y',31),(14516,136,'0132','1250-AA-0132','Y',31),(14517,136,'0133','1250-AA-0133','Y',31),(14518,136,'0134','1250-AA-0134','Y',31),(14519,136,'0135','1250-AA-0135','Y',31),(14520,136,'0136','1250-AA-0136','Y',31),(14521,136,'0137','1250-AA-0137','Y',31),(14522,136,'0138','1250-AA-0138','Y',31),(14523,136,'0139','1250-AA-0139','Y',31),(14524,136,'0140','1250-AA-0140','Y',31),(14525,136,'0141','1250-AA-0141','Y',31),(14526,136,'0142','1250-AA-0142','Y',31),(14527,136,'0143','1250-AA-0143','Y',31),(14528,136,'0144','1250-AA-0144','Y',31),(14529,136,'0145','1250-AA-0145','Y',31),(14530,136,'0146','1250-AA-0146','Y',31),(14531,136,'0147','1250-AA-0147','Y',31),(14532,136,'0148','1250-AA-0148','Y',31),(14533,136,'0149','1250-AA-0149','Y',31),(14534,136,'0150','1250-AA-0150','Y',31),(14535,136,'0151','1250-AA-0151','Y',31),(14536,136,'0152','1250-AA-0152','Y',31),(14537,136,'0153','1250-AA-0153','Y',31),(14538,136,'0154','1250-AA-0154','Y',31),(14539,136,'0155','1250-AA-0155','Y',31),(14540,136,'0156','1250-AA-0156','Y',31),(14541,136,'0157','1250-AA-0157','Y',31),(14542,136,'0158','1250-AA-0158','Y',31),(14543,136,'0159','1250-AA-0159','Y',31),(14544,136,'0160','1250-AA-0160','Y',31),(14545,136,'0161','1250-AA-0161','Y',31),(14546,136,'0162','1250-AA-0162','Y',31),(14547,136,'0163','1250-AA-0163','Y',31),(14548,136,'0164','1250-AA-0164','Y',31),(14549,136,'0165','1250-AA-0165','Y',31),(14550,136,'0166','1250-AA-0166','Y',31),(14551,136,'0167','1250-AA-0167','Y',31),(14552,136,'0168','1250-AA-0168','Y',31),(14553,136,'0169','1250-AA-0169','Y',31),(14554,136,'0170','1250-AA-0170','Y',31),(14555,136,'0171','1250-AA-0171','Y',31),(14556,136,'0172','1250-AA-0172','Y',31),(14557,136,'0173','1250-AA-0173','Y',31),(14558,136,'0174','1250-AA-0174','Y',31),(14559,136,'0175','1250-AA-0175','Y',31),(14560,136,'0176','1250-AA-0176','Y',31),(14561,136,'0177','1250-AA-0177','Y',31),(14562,136,'0178','1250-AA-0178','Y',31),(14563,136,'0179','1250-AA-0179','Y',31),(14564,136,'0180','1250-AA-0180','Y',31),(14565,136,'0181','1250-AA-0181','Y',31),(14566,136,'0182','1250-AA-0182','Y',31),(14567,136,'0183','1250-AA-0183','Y',31),(14568,136,'0184','1250-AA-0184','Y',31),(14569,136,'0185','1250-AA-0185','Y',31),(14570,136,'0186','1250-AA-0186','Y',31),(14571,136,'0187','1250-AA-0187','Y',31),(14572,136,'0188','1250-AA-0188','Y',31),(14573,136,'0189','1250-AA-0189','Y',31),(14574,136,'0190','1250-AA-0190','Y',31),(14575,136,'0191','1250-AA-0191','Y',31),(14576,136,'0192','1250-AA-0192','Y',31),(14577,136,'0193','1250-AA-0193','Y',31),(14578,136,'0194','1250-AA-0194','Y',31),(14579,136,'0195','1250-AA-0195','Y',31),(14580,136,'0196','1250-AA-0196','Y',31),(14581,136,'0197','1250-AA-0197','Y',31),(14582,136,'0198','1250-AA-0198','Y',31),(14583,136,'0199','1250-AA-0199','Y',31),(14584,136,'0200','1250-AA-0200','Y',31),(14585,137,'0001','1250-BB-0001','N',31),(14586,137,'0002','1250-BB-0002','N',31),(14587,137,'0003','1250-BB-0003','N',31),(14588,137,'0004','1250-BB-0004','N',31),(14589,137,'0005','1250-BB-0005','N',31),(14590,137,'0006','1250-BB-0006','N',31),(14591,137,'0007','1250-BB-0007','N',31),(14592,137,'0008','1250-BB-0008','N',31),(14593,137,'0009','1250-BB-0009','N',31),(14594,137,'0010','1250-BB-0010','N',31),(14595,137,'0011','1250-BB-0011','N',31),(14596,137,'0012','1250-BB-0012','N',31),(14597,137,'0013','1250-BB-0013','N',31),(14598,137,'0014','1250-BB-0014','N',31),(14599,137,'0015','1250-BB-0015','N',31),(14600,137,'0016','1250-BB-0016','N',31),(14601,137,'0017','1250-BB-0017','N',31),(14602,137,'0018','1250-BB-0018','N',31),(14603,137,'0019','1250-BB-0019','N',31),(14604,137,'0020','1250-BB-0020','N',31),(14605,137,'0021','1250-BB-0021','N',31),(14606,137,'0022','1250-BB-0022','N',31),(14607,137,'0023','1250-BB-0023','N',31),(14608,137,'0024','1250-BB-0024','N',31),(14609,137,'0025','1250-BB-0025','N',31),(14610,137,'0026','1250-BB-0026','N',31),(14611,137,'0027','1250-BB-0027','N',31),(14612,137,'0028','1250-BB-0028','N',31),(14613,137,'0029','1250-BB-0029','N',31),(14614,137,'0030','1250-BB-0030','N',31),(14615,137,'0031','1250-BB-0031','Y',31),(14616,137,'0032','1250-BB-0032','Y',31),(14617,137,'0033','1250-BB-0033','Y',31),(14618,137,'0034','1250-BB-0034','Y',31),(14619,137,'0035','1250-BB-0035','Y',31),(14620,137,'0036','1250-BB-0036','Y',31),(14621,137,'0037','1250-BB-0037','Y',31),(14622,137,'0038','1250-BB-0038','Y',31),(14623,137,'0039','1250-BB-0039','Y',31),(14624,137,'0040','1250-BB-0040','Y',31),(14625,137,'0041','1250-BB-0041','Y',31),(14626,137,'0042','1250-BB-0042','Y',31),(14627,137,'0043','1250-BB-0043','Y',31),(14628,137,'0044','1250-BB-0044','Y',31),(14629,137,'0045','1250-BB-0045','Y',31),(14630,137,'0046','1250-BB-0046','Y',31),(14631,137,'0047','1250-BB-0047','Y',31),(14632,137,'0048','1250-BB-0048','Y',31),(14633,137,'0049','1250-BB-0049','Y',31),(14634,137,'0050','1250-BB-0050','Y',31),(14635,137,'0051','1250-BB-0051','Y',31),(14636,137,'0052','1250-BB-0052','Y',31),(14637,137,'0053','1250-BB-0053','Y',31),(14638,137,'0054','1250-BB-0054','Y',31),(14639,137,'0055','1250-BB-0055','Y',31),(14640,137,'0056','1250-BB-0056','Y',31),(14641,137,'0057','1250-BB-0057','Y',31),(14642,137,'0058','1250-BB-0058','Y',31),(14643,137,'0059','1250-BB-0059','Y',31),(14644,137,'0060','1250-BB-0060','Y',31),(14645,137,'0061','1250-BB-0061','Y',31),(14646,137,'0062','1250-BB-0062','Y',31),(14647,137,'0063','1250-BB-0063','Y',31),(14648,137,'0064','1250-BB-0064','Y',31),(14649,137,'0065','1250-BB-0065','Y',31),(14650,137,'0066','1250-BB-0066','Y',31),(14651,137,'0067','1250-BB-0067','Y',31),(14652,137,'0068','1250-BB-0068','Y',31),(14653,137,'0069','1250-BB-0069','Y',31),(14654,137,'0070','1250-BB-0070','Y',31),(14655,137,'0071','1250-BB-0071','Y',31),(14656,137,'0072','1250-BB-0072','Y',31),(14657,137,'0073','1250-BB-0073','Y',31),(14658,137,'0074','1250-BB-0074','Y',31),(14659,137,'0075','1250-BB-0075','Y',31),(14660,137,'0076','1250-BB-0076','Y',31),(14661,137,'0077','1250-BB-0077','Y',31),(14662,137,'0078','1250-BB-0078','Y',31),(14663,137,'0079','1250-BB-0079','Y',31),(14664,137,'0080','1250-BB-0080','Y',31),(14665,137,'0081','1250-BB-0081','Y',31),(14666,137,'0082','1250-BB-0082','Y',31),(14667,137,'0083','1250-BB-0083','Y',31),(14668,137,'0084','1250-BB-0084','Y',31),(14669,137,'0085','1250-BB-0085','Y',31),(14670,137,'0086','1250-BB-0086','Y',31),(14671,137,'0087','1250-BB-0087','Y',31),(14672,137,'0088','1250-BB-0088','Y',31),(14673,137,'0089','1250-BB-0089','Y',31),(14674,137,'0090','1250-BB-0090','Y',31),(14675,137,'0091','1250-BB-0091','Y',31),(14676,137,'0092','1250-BB-0092','Y',31),(14677,137,'0093','1250-BB-0093','Y',31),(14678,137,'0094','1250-BB-0094','Y',31),(14679,137,'0095','1250-BB-0095','Y',31),(14680,137,'0096','1250-BB-0096','Y',31),(14681,137,'0097','1250-BB-0097','Y',31),(14682,137,'0098','1250-BB-0098','Y',31),(14683,137,'0099','1250-BB-0099','Y',31),(14684,137,'0100','1250-BB-0100','Y',31),(14685,137,'0101','1250-BB-0101','Y',31),(14686,137,'0102','1250-BB-0102','Y',31),(14687,137,'0103','1250-BB-0103','Y',31),(14688,137,'0104','1250-BB-0104','Y',31),(14689,137,'0105','1250-BB-0105','Y',31),(14690,137,'0106','1250-BB-0106','Y',31),(14691,137,'0107','1250-BB-0107','Y',31),(14692,137,'0108','1250-BB-0108','Y',31),(14693,137,'0109','1250-BB-0109','Y',31),(14694,137,'0110','1250-BB-0110','Y',31),(14695,137,'0111','1250-BB-0111','Y',31),(14696,137,'0112','1250-BB-0112','Y',31),(14697,137,'0113','1250-BB-0113','Y',31),(14698,137,'0114','1250-BB-0114','Y',31),(14699,137,'0115','1250-BB-0115','Y',31),(14700,137,'0116','1250-BB-0116','Y',31),(14701,137,'0117','1250-BB-0117','Y',31),(14702,137,'0118','1250-BB-0118','Y',31),(14703,137,'0119','1250-BB-0119','Y',31),(14704,137,'0120','1250-BB-0120','Y',31),(14705,137,'0121','1250-BB-0121','Y',31),(14706,137,'0122','1250-BB-0122','Y',31),(14707,137,'0123','1250-BB-0123','Y',31),(14708,137,'0124','1250-BB-0124','Y',31),(14709,137,'0125','1250-BB-0125','Y',31),(14710,137,'0126','1250-BB-0126','Y',31),(14711,137,'0127','1250-BB-0127','Y',31),(14712,137,'0128','1250-BB-0128','Y',31),(14713,137,'0129','1250-BB-0129','Y',31),(14714,137,'0130','1250-BB-0130','Y',31),(14715,137,'0131','1250-BB-0131','Y',31),(14716,137,'0132','1250-BB-0132','Y',31),(14717,137,'0133','1250-BB-0133','Y',31),(14718,137,'0134','1250-BB-0134','Y',31),(14719,137,'0135','1250-BB-0135','Y',31),(14720,137,'0136','1250-BB-0136','Y',31),(14721,137,'0137','1250-BB-0137','Y',31),(14722,137,'0138','1250-BB-0138','Y',31),(14723,137,'0139','1250-BB-0139','Y',31),(14724,137,'0140','1250-BB-0140','Y',31),(14725,137,'0141','1250-BB-0141','Y',31),(14726,137,'0142','1250-BB-0142','Y',31),(14727,137,'0143','1250-BB-0143','Y',31),(14728,137,'0144','1250-BB-0144','Y',31),(14729,137,'0145','1250-BB-0145','Y',31),(14730,137,'0146','1250-BB-0146','Y',31),(14731,137,'0147','1250-BB-0147','Y',31),(14732,137,'0148','1250-BB-0148','Y',31),(14733,137,'0149','1250-BB-0149','Y',31),(14734,137,'0150','1250-BB-0150','Y',31),(14735,137,'0151','1250-BB-0151','Y',31),(14736,137,'0152','1250-BB-0152','Y',31),(14737,137,'0153','1250-BB-0153','Y',31),(14738,137,'0154','1250-BB-0154','Y',31),(14739,137,'0155','1250-BB-0155','Y',31),(14740,137,'0156','1250-BB-0156','Y',31),(14741,137,'0157','1250-BB-0157','Y',31),(14742,137,'0158','1250-BB-0158','Y',31),(14743,137,'0159','1250-BB-0159','Y',31),(14744,137,'0160','1250-BB-0160','Y',31),(14745,137,'0161','1250-BB-0161','Y',31),(14746,137,'0162','1250-BB-0162','Y',31),(14747,137,'0163','1250-BB-0163','Y',31),(14748,137,'0164','1250-BB-0164','Y',31),(14749,137,'0165','1250-BB-0165','Y',31),(14750,137,'0166','1250-BB-0166','Y',31),(14751,137,'0167','1250-BB-0167','Y',31),(14752,137,'0168','1250-BB-0168','Y',31),(14753,137,'0169','1250-BB-0169','Y',31),(14754,137,'0170','1250-BB-0170','Y',31),(14755,137,'0171','1250-BB-0171','Y',31),(14756,137,'0172','1250-BB-0172','Y',31),(14757,137,'0173','1250-BB-0173','Y',31),(14758,137,'0174','1250-BB-0174','Y',31),(14759,137,'0175','1250-BB-0175','Y',31),(14760,137,'0176','1250-BB-0176','Y',31),(14761,137,'0177','1250-BB-0177','Y',31),(14762,137,'0178','1250-BB-0178','Y',31),(14763,137,'0179','1250-BB-0179','Y',31),(14764,137,'0180','1250-BB-0180','Y',31),(14765,137,'0181','1250-BB-0181','Y',31),(14766,137,'0182','1250-BB-0182','Y',31),(14767,137,'0183','1250-BB-0183','Y',31),(14768,137,'0184','1250-BB-0184','Y',31),(14769,137,'0185','1250-BB-0185','Y',31),(14770,137,'0186','1250-BB-0186','Y',31),(14771,137,'0187','1250-BB-0187','Y',31),(14772,137,'0188','1250-BB-0188','Y',31),(14773,137,'0189','1250-BB-0189','Y',31),(14774,137,'0190','1250-BB-0190','Y',31),(14775,137,'0191','1250-BB-0191','Y',31),(14776,137,'0192','1250-BB-0192','Y',31),(14777,137,'0193','1250-BB-0193','Y',31),(14778,137,'0194','1250-BB-0194','Y',31),(14779,137,'0195','1250-BB-0195','Y',31),(14780,137,'0196','1250-BB-0196','Y',31),(14781,137,'0197','1250-BB-0197','Y',31),(14782,137,'0198','1250-BB-0198','Y',31),(14783,137,'0199','1250-BB-0199','Y',31),(14784,137,'0200','1250-BB-0200','Y',31),(14785,138,'0001','1250-AA1-0001','N',31),(14786,138,'0002','1250-AA1-0002','N',31),(14787,138,'0003','1250-AA1-0003','N',31),(14788,138,'0004','1250-AA1-0004','N',31),(14789,138,'0005','1250-AA1-0005','N',31),(14790,138,'0006','1250-AA1-0006','N',31),(14791,138,'0007','1250-AA1-0007','N',31),(14792,138,'0008','1250-AA1-0008','N',31),(14793,138,'0009','1250-AA1-0009','N',31),(14794,138,'0010','1250-AA1-0010','N',31),(14795,138,'0011','1250-AA1-0011','N',31),(14796,138,'0012','1250-AA1-0012','N',31),(14797,138,'0013','1250-AA1-0013','N',31),(14798,138,'0014','1250-AA1-0014','N',31),(14799,138,'0015','1250-AA1-0015','N',31),(14800,138,'0016','1250-AA1-0016','N',31),(14801,138,'0017','1250-AA1-0017','N',31),(14802,138,'0018','1250-AA1-0018','N',31),(14803,138,'0019','1250-AA1-0019','N',31),(14804,138,'0020','1250-AA1-0020','N',31),(14805,138,'0021','1250-AA1-0021','N',31),(14806,138,'0022','1250-AA1-0022','N',31),(14807,138,'0023','1250-AA1-0023','N',31),(14808,138,'0024','1250-AA1-0024','N',31),(14809,138,'0025','1250-AA1-0025','N',31),(14810,138,'0026','1250-AA1-0026','N',31),(14811,138,'0027','1250-AA1-0027','N',31),(14812,138,'0028','1250-AA1-0028','N',31),(14813,138,'0029','1250-AA1-0029','N',31),(14814,138,'0030','1250-AA1-0030','N',31),(14815,138,'0031','1250-AA1-0031','Y',31),(14816,138,'0032','1250-AA1-0032','Y',31),(14817,138,'0033','1250-AA1-0033','Y',31),(14818,138,'0034','1250-AA1-0034','Y',31),(14819,138,'0035','1250-AA1-0035','Y',31),(14820,138,'0036','1250-AA1-0036','Y',31),(14821,138,'0037','1250-AA1-0037','Y',31),(14822,138,'0038','1250-AA1-0038','Y',31),(14823,138,'0039','1250-AA1-0039','Y',31),(14824,138,'0040','1250-AA1-0040','Y',31),(14825,138,'0041','1250-AA1-0041','Y',31),(14826,138,'0042','1250-AA1-0042','Y',31),(14827,138,'0043','1250-AA1-0043','Y',31),(14828,138,'0044','1250-AA1-0044','Y',31),(14829,138,'0045','1250-AA1-0045','Y',31),(14830,138,'0046','1250-AA1-0046','Y',31),(14831,138,'0047','1250-AA1-0047','Y',31),(14832,138,'0048','1250-AA1-0048','Y',31),(14833,138,'0049','1250-AA1-0049','Y',31),(14834,138,'0050','1250-AA1-0050','Y',31),(14835,138,'0051','1250-AA1-0051','Y',31),(14836,138,'0052','1250-AA1-0052','Y',31),(14837,138,'0053','1250-AA1-0053','Y',31),(14838,138,'0054','1250-AA1-0054','Y',31),(14839,138,'0055','1250-AA1-0055','Y',31),(14840,138,'0056','1250-AA1-0056','Y',31),(14841,138,'0057','1250-AA1-0057','Y',31),(14842,138,'0058','1250-AA1-0058','Y',31),(14843,138,'0059','1250-AA1-0059','Y',31),(14844,138,'0060','1250-AA1-0060','Y',31),(14845,138,'0061','1250-AA1-0061','Y',31),(14846,138,'0062','1250-AA1-0062','Y',31),(14847,138,'0063','1250-AA1-0063','Y',31),(14848,138,'0064','1250-AA1-0064','Y',31),(14849,138,'0065','1250-AA1-0065','Y',31),(14850,138,'0066','1250-AA1-0066','Y',31),(14851,138,'0067','1250-AA1-0067','Y',31),(14852,138,'0068','1250-AA1-0068','Y',31),(14853,138,'0069','1250-AA1-0069','Y',31),(14854,138,'0070','1250-AA1-0070','Y',31),(14855,138,'0071','1250-AA1-0071','Y',31),(14856,138,'0072','1250-AA1-0072','Y',31),(14857,138,'0073','1250-AA1-0073','Y',31),(14858,138,'0074','1250-AA1-0074','Y',31),(14859,138,'0075','1250-AA1-0075','Y',31),(14860,138,'0076','1250-AA1-0076','Y',31),(14861,138,'0077','1250-AA1-0077','Y',31),(14862,138,'0078','1250-AA1-0078','Y',31),(14863,138,'0079','1250-AA1-0079','Y',31),(14864,138,'0080','1250-AA1-0080','Y',31),(14865,138,'0081','1250-AA1-0081','Y',31),(14866,138,'0082','1250-AA1-0082','Y',31),(14867,138,'0083','1250-AA1-0083','Y',31),(14868,138,'0084','1250-AA1-0084','Y',31),(14869,138,'0085','1250-AA1-0085','Y',31),(14870,138,'0086','1250-AA1-0086','Y',31),(14871,138,'0087','1250-AA1-0087','Y',31),(14872,138,'0088','1250-AA1-0088','Y',31),(14873,138,'0089','1250-AA1-0089','Y',31),(14874,138,'0090','1250-AA1-0090','Y',31),(14875,138,'0091','1250-AA1-0091','Y',31),(14876,138,'0092','1250-AA1-0092','Y',31),(14877,138,'0093','1250-AA1-0093','Y',31),(14878,138,'0094','1250-AA1-0094','Y',31),(14879,138,'0095','1250-AA1-0095','Y',31),(14880,138,'0096','1250-AA1-0096','Y',31),(14881,138,'0097','1250-AA1-0097','Y',31),(14882,138,'0098','1250-AA1-0098','Y',31),(14883,138,'0099','1250-AA1-0099','Y',31),(14884,138,'0100','1250-AA1-0100','Y',31),(14885,138,'0101','1250-AA1-0101','Y',31),(14886,138,'0102','1250-AA1-0102','Y',31),(14887,138,'0103','1250-AA1-0103','Y',31),(14888,138,'0104','1250-AA1-0104','Y',31),(14889,138,'0105','1250-AA1-0105','Y',31),(14890,138,'0106','1250-AA1-0106','Y',31),(14891,138,'0107','1250-AA1-0107','Y',31),(14892,138,'0108','1250-AA1-0108','Y',31),(14893,138,'0109','1250-AA1-0109','Y',31),(14894,138,'0110','1250-AA1-0110','Y',31),(14895,138,'0111','1250-AA1-0111','Y',31),(14896,138,'0112','1250-AA1-0112','Y',31),(14897,138,'0113','1250-AA1-0113','Y',31),(14898,138,'0114','1250-AA1-0114','Y',31),(14899,138,'0115','1250-AA1-0115','Y',31),(14900,138,'0116','1250-AA1-0116','Y',31),(14901,138,'0117','1250-AA1-0117','Y',31),(14902,138,'0118','1250-AA1-0118','Y',31),(14903,138,'0119','1250-AA1-0119','Y',31),(14904,138,'0120','1250-AA1-0120','Y',31),(14905,138,'0121','1250-AA1-0121','Y',31),(14906,138,'0122','1250-AA1-0122','Y',31),(14907,138,'0123','1250-AA1-0123','Y',31),(14908,138,'0124','1250-AA1-0124','Y',31),(14909,138,'0125','1250-AA1-0125','Y',31),(14910,138,'0126','1250-AA1-0126','Y',31),(14911,138,'0127','1250-AA1-0127','Y',31),(14912,138,'0128','1250-AA1-0128','Y',31),(14913,138,'0129','1250-AA1-0129','Y',31),(14914,138,'0130','1250-AA1-0130','Y',31),(14915,138,'0131','1250-AA1-0131','Y',31),(14916,138,'0132','1250-AA1-0132','Y',31),(14917,138,'0133','1250-AA1-0133','Y',31),(14918,138,'0134','1250-AA1-0134','Y',31),(14919,138,'0135','1250-AA1-0135','Y',31),(14920,138,'0136','1250-AA1-0136','Y',31),(14921,138,'0137','1250-AA1-0137','Y',31),(14922,138,'0138','1250-AA1-0138','Y',31),(14923,138,'0139','1250-AA1-0139','Y',31),(14924,138,'0140','1250-AA1-0140','Y',31),(14925,138,'0141','1250-AA1-0141','Y',31),(14926,138,'0142','1250-AA1-0142','Y',31),(14927,138,'0143','1250-AA1-0143','Y',31),(14928,138,'0144','1250-AA1-0144','Y',31),(14929,138,'0145','1250-AA1-0145','Y',31),(14930,138,'0146','1250-AA1-0146','Y',31),(14931,138,'0147','1250-AA1-0147','Y',31),(14932,138,'0148','1250-AA1-0148','Y',31),(14933,138,'0149','1250-AA1-0149','Y',31),(14934,138,'0150','1250-AA1-0150','Y',31),(14935,138,'0151','1250-AA1-0151','Y',31),(14936,138,'0152','1250-AA1-0152','Y',31),(14937,138,'0153','1250-AA1-0153','Y',31),(14938,138,'0154','1250-AA1-0154','Y',31),(14939,138,'0155','1250-AA1-0155','Y',31),(14940,138,'0156','1250-AA1-0156','Y',31),(14941,138,'0157','1250-AA1-0157','Y',31),(14942,138,'0158','1250-AA1-0158','Y',31),(14943,138,'0159','1250-AA1-0159','Y',31),(14944,138,'0160','1250-AA1-0160','Y',31),(14945,138,'0161','1250-AA1-0161','Y',31),(14946,138,'0162','1250-AA1-0162','Y',31),(14947,138,'0163','1250-AA1-0163','Y',31),(14948,138,'0164','1250-AA1-0164','Y',31),(14949,138,'0165','1250-AA1-0165','Y',31),(14950,138,'0166','1250-AA1-0166','Y',31),(14951,138,'0167','1250-AA1-0167','Y',31),(14952,138,'0168','1250-AA1-0168','Y',31),(14953,138,'0169','1250-AA1-0169','Y',31),(14954,138,'0170','1250-AA1-0170','Y',31),(14955,138,'0171','1250-AA1-0171','Y',31),(14956,138,'0172','1250-AA1-0172','Y',31),(14957,138,'0173','1250-AA1-0173','Y',31),(14958,138,'0174','1250-AA1-0174','Y',31),(14959,138,'0175','1250-AA1-0175','Y',31),(14960,138,'0176','1250-AA1-0176','Y',31),(14961,138,'0177','1250-AA1-0177','Y',31),(14962,138,'0178','1250-AA1-0178','Y',31),(14963,138,'0179','1250-AA1-0179','Y',31),(14964,138,'0180','1250-AA1-0180','Y',31),(14965,138,'0181','1250-AA1-0181','Y',31),(14966,138,'0182','1250-AA1-0182','Y',31),(14967,138,'0183','1250-AA1-0183','Y',31),(14968,138,'0184','1250-AA1-0184','Y',31),(14969,138,'0185','1250-AA1-0185','Y',31),(14970,138,'0186','1250-AA1-0186','Y',31),(14971,138,'0187','1250-AA1-0187','Y',31),(14972,138,'0188','1250-AA1-0188','Y',31),(14973,138,'0189','1250-AA1-0189','Y',31),(14974,138,'0190','1250-AA1-0190','Y',31),(14975,138,'0191','1250-AA1-0191','Y',31),(14976,138,'0192','1250-AA1-0192','Y',31),(14977,138,'0193','1250-AA1-0193','Y',31),(14978,138,'0194','1250-AA1-0194','Y',31),(14979,138,'0195','1250-AA1-0195','Y',31),(14980,138,'0196','1250-AA1-0196','Y',31),(14981,138,'0197','1250-AA1-0197','Y',31),(14982,138,'0198','1250-AA1-0198','Y',31),(14983,138,'0199','1250-AA1-0199','Y',31),(14984,138,'0200','1250-AA1-0200','Y',31);
/*!40000 ALTER TABLE `smplateslot` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tri_smplateslot_updshelf` AFTER UPDATE ON `smplateslot`
 FOR EACH ROW BEGIN
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smshelfgroup`
--

LOCK TABLES `smshelfgroup` WRITE;
/*!40000 ALTER TABLE `smshelfgroup` DISABLE KEYS */;
INSERT INTO `smshelfgroup` VALUES (94,'1000',31,10),(95,'1250',31,20),(96,'1650',31,30);
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
  PRIMARY KEY (`sf_id`),
  KEY `idx_smshelfsetting_orgid` (`sf_orgid`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smshelfsetting`
--

LOCK TABLES `smshelfsetting` WRITE;
/*!40000 ALTER TABLE `smshelfsetting` DISABLE KEYS */;
INSERT INTO `smshelfsetting` VALUES (133,94,'A1','1000-A1',200,31,'Y',10),(134,94,'A2','1000-A2',200,31,'Y',20),(135,94,'A3','1000-A3',200,31,'Y',30),(136,95,'AA','1250-AA',200,31,'Y',30),(137,95,'BB','1250-BB',200,31,'Y',30),(138,96,'AA1','1250-AA1',200,31,'Y',30);
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
  `smb_spid` tinyint NOT NULL,
  `maxdate` tinyint NOT NULL
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generatedata`(IN `p_orgid` INT)
BEGIN
  declare cnt,sgid,sfid,mincustid,maxcustid,cusid,slotid,randplate int default 0;  
  declare totplate int default 200;
  declare i int default 1;
  declare pscode varchar(20);
  DECLARE done INT DEFAULT FALSE;
  
  declare shelfcur cursor for select sf_id from smshelfsetting where sf_orgid = p_orgid;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
  
  delete from smshelfgroup where sg_orgid = p_orgid;
  delete from smshelfsetting where sf_orgid = p_orgid;
  delete from smplateslot where ps_orgid = p_orgid;
  delete from smcustomer where cus_orgid = p_orgid;
  
  
  select count(*) into cnt from smshelfgroup where sg_orgid = p_orgid;
  if cnt = 0 then
    
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
      
      insert into smshelfsetting (sf_sgid,sf_code,sf_desc,sf_totalplate,sf_orgid,sf_seq)
      values(sgid,'A1','1000-A1',totplate,p_orgid,10);
      
      select LAST_INSERT_ID() into sfid;
      set i = 1;      
      
      
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
      
      loop_plate3: LOOP     
         SELECT CONCAT('1000-A3-',LPAD(i,4,'0')) into pscode;
         insert into smplateslot(ps_sfid,ps_slotno,ps_code,ps_available,ps_orgid)
         values (sfid,LPAD(i,4,'0'),pscode, 'Y',p_orgid);
         SET i=i+1;
         IF i>totplate THEN
          LEAVE loop_plate3;
         END IF;
      END LOOP loop_plate3;
      
      
      select sg_id into sgid from smshelfgroup where sg_orgid = p_orgid and sg_groupname = '1250';            
      
      insert into smshelfsetting (sf_sgid,sf_code,sf_desc,sf_totalplate,sf_orgid,sf_seq)
      values(sgid,'AA','1250-AA',totplate,p_orgid,30);
      select LAST_INSERT_ID() into sfid;
      set i = 1;
      
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
      
      loop_plate5: LOOP     
         SELECT CONCAT('1250-BB-',LPAD(i,4,'0')) into pscode;
         insert into smplateslot(ps_sfid,ps_slotno,ps_code,ps_available,ps_orgid)
         values (sfid,LPAD(i,4,'0'),pscode, 'Y',p_orgid);
         SET i=i+1;
         IF i>totplate THEN
          LEAVE loop_plate5;
         END IF;
      END LOOP loop_plate5;

      
      select sg_id into sgid from smshelfgroup where sg_orgid = p_orgid and sg_groupname = '1650';            
      
      insert into smshelfsetting (sf_sgid,sf_code,sf_desc,sf_totalplate,sf_orgid,sf_seq)
      values(sgid,'AA1','1250-AA1',totplate,p_orgid,30);
      select LAST_INSERT_ID() into sfid;
      set i = 1;
      
      loop_plate6: LOOP     
         SELECT CONCAT('1250-AA1-',LPAD(i,4,'0')) into pscode;
         insert into smplateslot(ps_sfid,ps_slotno,ps_code,ps_available,ps_orgid)
         values (sfid,LPAD(i,4,'0'),pscode, 'Y',p_orgid);
         SET i=i+1;
         IF i>totplate THEN
          LEAVE loop_plate6;
         END IF;
      END LOOP loop_plate6;

      
     insert into smcustomer(cus_name,cus_regno,cus_masterid,cus_contactno,cus_orgid)
     select dm_cusname, dm_regno, dm_masterid, dm_contactno, p_orgid from smdemocustomer;
      
      select max(cus_id) , min(cus_id) into maxcustid,mincustid
      from smcustomer where cus_orgid = p_orgid;           

      
      open shelfcur;
      
      
      read_loop: loop
        fetch shelfcur into sfid;
        if done then
           leave read_loop;
        end if;                
        
        
        set randplate = 30;
        set i = 1;
         ins_plate: LOOP           
        
        select get_random_integer(mincustid,maxcustid) into cusid;
        
        select getslot(sfid) into slotid;
        
        insert into smplate(sp_cusid,sp_sfid,sp_psid,sp_platename,sp_platemodel,sp_createdby,sp_orgid)
        values(cusid,sfid,slotid,substring(upper(MD5(RAND())),1,6),substring(upper(MD5(RAND())),1,12),'SYSTEM',p_orgid);       
         SET i=i+1;
          call dolog( concat('i = ',i) );
          call dolog( concat('randplate = ',randplate) );
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
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
/*!50001 VIEW `vw_agingtransaction` AS select `smbtransaction`.`smb_spid` AS `smb_spid`,max(`smbtransaction`.`smb_printdate`) AS `maxdate` from `smbtransaction` where ((curdate() - interval 365 day) > `smbtransaction`.`smb_printdate`) group by `smbtransaction`.`smb_spid` */;
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

-- Dump completed on 2014-02-06 16:42:56
