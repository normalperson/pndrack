-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2013 at 07:52 PM
-- Server version: 5.5.35
-- PHP Version: 5.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pflex`
--

DELIMITER $$
--
-- Functions
--
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

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fclang`
--

CREATE TABLE IF NOT EXISTS `fclang` (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(5) DEFAULT NULL,
  `lang_name` varchar(200) DEFAULT NULL,
  `lang_status` varchar(12) DEFAULT 'ACTIVE',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `const_vlang_unikey` (`lang_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=159 ;

--
-- Dumping data for table `fclang`
--

INSERT INTO `fclang` (`lang_id`, `lang_code`, `lang_name`, `lang_status`) VALUES
(1, 'AF', 'Afrikaans', 'ACTIVE'),
(2, 'SQ', 'Albanian', 'ACTIVE'),
(3, 'AM', 'Amharic', 'ACTIVE'),
(4, 'AR-DZ', 'Arabic - Algeria', 'ACTIVE'),
(5, 'AR-BH', 'Arabic - Bahrain', 'ACTIVE'),
(6, 'AR-EG', 'Arabic - Egypt', 'ACTIVE'),
(7, 'AR-IQ', 'Arabic - Iraq', 'ACTIVE'),
(8, 'AR-JO', 'Arabic - Jordan', 'ACTIVE'),
(9, 'AR-KW', 'Arabic - Kuwait', 'ACTIVE'),
(10, 'AR-LB', 'Arabic - Lebanon', 'ACTIVE'),
(11, 'AR-LY', 'Arabic - Libya', 'ACTIVE'),
(12, 'AR-MA', 'Arabic - Morocco', 'ACTIVE'),
(13, 'AR-OM', 'Arabic - Oman', 'ACTIVE'),
(14, 'AR-QA', 'Arabic - Qatar', 'ACTIVE'),
(15, 'AR-SA', 'Arabic - Saudi Arabia', 'ACTIVE'),
(16, 'AR-SY', 'Arabic - Syria', 'ACTIVE'),
(17, 'AR-TN', 'Arabic - Tunisia', 'ACTIVE'),
(18, 'AR-AE', 'Arabic - United Arab Emirates', 'ACTIVE'),
(19, 'AR-YE', 'Arabic - Yemen', 'ACTIVE'),
(20, 'HY', 'Armenian', 'ACTIVE'),
(21, 'AS', 'Assamese', 'ACTIVE'),
(22, 'AZ-AZ', 'Azeri - Latin', 'ACTIVE'),
(23, 'EU', 'Basque', 'ACTIVE'),
(24, 'BE', 'Belarusian', 'ACTIVE'),
(25, 'BN', 'Bengali - Bangladesh', 'ACTIVE'),
(26, 'BS', 'Bosnian', 'ACTIVE'),
(27, 'BG', 'Bulgarian', 'ACTIVE'),
(28, 'MY', 'Burmese', 'ACTIVE'),
(29, 'CA', 'Catalan', 'ACTIVE'),
(30, 'ZH-CN', 'Chinese - China', 'ACTIVE'),
(31, 'ZH-HK', 'Chinese - Hong Kong SAR', 'ACTIVE'),
(32, 'ZH-MO', 'Chinese - Macau SAR', 'ACTIVE'),
(33, 'ZH-SG', 'Chinese - Singapore', 'ACTIVE'),
(34, 'ZH-TW', 'Chinese - Taiwan', 'ACTIVE'),
(35, 'HR', 'Croatian', 'ACTIVE'),
(36, 'CS', 'Czech', 'ACTIVE'),
(37, 'DA', 'Danish', 'ACTIVE'),
(38, 'DV', 'Divehi; Dhivehi; Maldivian', 'ACTIVE'),
(39, 'NL-BE', 'Dutch - Belgium', 'ACTIVE'),
(40, 'NL-NL', 'Dutch - Netherlands', 'ACTIVE'),
(41, 'EN-AU', 'English - Australia', 'ACTIVE'),
(42, 'EN-BZ', 'English - Belize', 'ACTIVE'),
(43, 'EN-CA', 'English - Canada', 'ACTIVE'),
(44, 'EN-CB', 'English - Caribbean', 'ACTIVE'),
(45, 'EN-GB', 'English - Great Britain', 'ACTIVE'),
(46, 'EN-IN', 'English - India', 'ACTIVE'),
(47, 'EN-IE', 'English - Ireland', 'ACTIVE'),
(48, 'EN-JM', 'English - Jamaica', 'ACTIVE'),
(49, 'EN-NZ', 'English - New Zealand', 'ACTIVE'),
(50, 'EN-PH', 'English - Phillippines', 'ACTIVE'),
(51, 'EN-ZA', 'English - Southern Africa', 'ACTIVE'),
(52, 'EN-TT', 'English - Trinidad', 'ACTIVE'),
(53, 'EN-US', 'English - United States', 'ACTIVE'),
(54, 'ET', 'Estonian', 'ACTIVE'),
(55, 'FO', 'Faroese', 'ACTIVE'),
(56, 'FA', 'Farsi - Persian', 'ACTIVE'),
(57, 'FI', 'Finnish', 'ACTIVE'),
(58, 'FR-BE', 'French - Belgium', 'ACTIVE'),
(59, 'FR-CA', 'French - Canada', 'ACTIVE'),
(60, 'FR-FR', 'French - France', 'ACTIVE'),
(61, 'FR-LU', 'French - Luxembourg', 'ACTIVE'),
(62, 'FR-CH', 'French - Switzerland', 'ACTIVE'),
(63, 'MK', 'FYRO Macedonia', 'ACTIVE'),
(64, 'GD-IE', 'Gaelic - Ireland', 'ACTIVE'),
(65, 'GD', 'Gaelic - Scotland', 'ACTIVE'),
(66, 'DE-AT', 'German - Austria', 'ACTIVE'),
(67, 'DE-DE', 'German - Germany', 'ACTIVE'),
(68, 'DE-LI', 'German - Liechtenstein', 'ACTIVE'),
(69, 'DE-LU', 'German - Luxembourg', 'ACTIVE'),
(70, 'DE-CH', 'German - Switzerland', 'ACTIVE'),
(71, 'EL', 'Greek', 'ACTIVE'),
(72, 'GN', 'Guarani - Paraguay', 'ACTIVE'),
(73, 'GU', 'Gujarati', 'ACTIVE'),
(74, 'HE', 'Hebrew', 'ACTIVE'),
(75, 'HI', 'Hindi', 'ACTIVE'),
(76, 'HU', 'Hungarian', 'ACTIVE'),
(77, 'IS', 'Icelandic', 'ACTIVE'),
(78, 'ID', 'Indonesian', 'ACTIVE'),
(79, 'IT-IT', 'Italian - Italy', 'ACTIVE'),
(80, 'IT-CH', 'Italian - Switzerland', 'ACTIVE'),
(81, 'JA', 'Japanese', 'ACTIVE'),
(82, 'KN', 'Kannada', 'ACTIVE'),
(83, 'KS', 'Kashmiri', 'ACTIVE'),
(84, 'KK', 'Kazakh', 'ACTIVE'),
(85, 'KM', 'Khmer', 'ACTIVE'),
(86, 'KO', 'Korean', 'ACTIVE'),
(87, 'LO', 'Lao', 'ACTIVE'),
(88, 'LA', 'Latin', 'ACTIVE'),
(89, 'LV', 'Latvian', 'ACTIVE'),
(90, 'LT', 'Lithuanian', 'ACTIVE'),
(91, 'MS-BN', 'Malay - Brunei', 'ACTIVE'),
(92, 'MS-MY', 'Malay - Malaysia', 'ACTIVE'),
(93, 'ML', 'Malayalam', 'ACTIVE'),
(94, 'MT', 'Maltese', 'ACTIVE'),
(95, 'MI', 'Maori', 'ACTIVE'),
(96, 'MR', 'Marathi', 'ACTIVE'),
(97, 'MN', 'Mongolian', 'ACTIVE'),
(98, 'NE', 'Nepali', 'ACTIVE'),
(99, 'NO-NO', 'Norwegian - Bokml', 'ACTIVE'),
(100, 'OR', 'Oriya', 'ACTIVE'),
(101, 'PL', 'Polish', 'ACTIVE'),
(102, 'PT-BR', 'Portuguese - Brazil', 'ACTIVE'),
(103, 'PT-PT', 'Portuguese - Portugal', 'ACTIVE'),
(104, 'PA', 'Punjabi', 'ACTIVE'),
(105, 'RM', 'Raeto-Romance', 'ACTIVE'),
(106, 'RO-MO', 'Romanian - Moldova', 'ACTIVE'),
(107, 'RO', 'Romanian - Romania', 'ACTIVE'),
(108, 'RU', 'Russian', 'ACTIVE'),
(109, 'RU-MO', 'Russian - Moldova', 'ACTIVE'),
(110, 'SA', 'Sanskrit', 'ACTIVE'),
(111, 'SR-SP', 'Serbian - Cyrillic', 'ACTIVE'),
(112, 'TN', 'Setsuana', 'ACTIVE'),
(113, 'SD', 'Sindhi', 'ACTIVE'),
(114, 'SI', 'Sinhala; Sinhalese', 'ACTIVE'),
(115, 'SK', 'Slovak', 'ACTIVE'),
(116, 'SL', 'Slovenian', 'ACTIVE'),
(117, 'SO', 'Somali', 'ACTIVE'),
(118, 'SB', 'Sorbian', 'ACTIVE'),
(119, 'ES-AR', 'Spanish - Argentina', 'ACTIVE'),
(120, 'ES-BO', 'Spanish - Bolivia', 'ACTIVE'),
(121, 'ES-CL', 'Spanish - Chile', 'ACTIVE'),
(122, 'ES-CO', 'Spanish - Colombia', 'ACTIVE'),
(123, 'ES-CR', 'Spanish - Costa Rica', 'ACTIVE'),
(124, 'ES-DO', 'Spanish - Dominican Republic', 'ACTIVE'),
(125, 'ES-EC', 'Spanish - Ecuador', 'ACTIVE'),
(126, 'ES-SV', 'Spanish - El Salvador', 'ACTIVE'),
(127, 'ES-GT', 'Spanish - Guatemala', 'ACTIVE'),
(128, 'ES-HN', 'Spanish - Honduras', 'ACTIVE'),
(129, 'ES-MX', 'Spanish - Mexico', 'ACTIVE'),
(130, 'ES-NI', 'Spanish - Nicaragua', 'ACTIVE'),
(131, 'ES-PA', 'Spanish - Panama', 'ACTIVE'),
(132, 'ES-PY', 'Spanish - Paraguay', 'ACTIVE'),
(133, 'ES-PE', 'Spanish - Peru', 'ACTIVE'),
(134, 'ES-PR', 'Spanish - Puerto Rico', 'ACTIVE'),
(135, 'ES-ES', 'Spanish - Spain (Traditional)', 'ACTIVE'),
(136, 'ES-UY', 'Spanish - Uruguay', 'ACTIVE'),
(137, 'ES-VE', 'Spanish - Venezuela', 'ACTIVE'),
(138, 'SW', 'Swahili', 'ACTIVE'),
(139, 'SV-FI', 'Swedish - Finland', 'ACTIVE'),
(140, 'SV-SE', 'Swedish - Sweden', 'ACTIVE'),
(141, 'TG', 'Tajik', 'ACTIVE'),
(142, 'TA', 'Tamil', 'ACTIVE'),
(143, 'TT', 'Tatar', 'ACTIVE'),
(144, 'TE', 'Telugu', 'ACTIVE'),
(145, 'TH', 'Thai', 'ACTIVE'),
(146, 'BO', 'Tibetan', 'ACTIVE'),
(147, 'TS', 'Tsonga', 'ACTIVE'),
(148, 'TR', 'Turkish', 'ACTIVE'),
(149, 'TK', 'Turkmen', 'ACTIVE'),
(150, 'UK', 'Ukrainian', 'ACTIVE'),
(151, 'UTF-8', 'Unicode', 'ACTIVE'),
(152, 'UR', 'Urdu', 'ACTIVE'),
(153, 'UZ-UZ', 'Uzbek - Cyrillic', 'ACTIVE'),
(154, 'VI', 'Vietnamese', 'ACTIVE'),
(155, 'CY', 'Welsh', 'ACTIVE'),
(156, 'XH', 'Xhosa', 'ACTIVE'),
(157, 'YI', 'Yiddish', 'ACTIVE'),
(158, 'ZU', 'Zulu', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `fclog`
--

CREATE TABLE IF NOT EXISTS `fclog` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fclookup`
--

CREATE TABLE IF NOT EXISTS `fclookup` (
  `lu_cat` varchar(12) NOT NULL,
  `lu_code` varchar(12) NOT NULL,
  `lu_parentcode` varchar(12) NOT NULL DEFAULT 'ROOT',
  `lu_title` varchar(50) DEFAULT NULL,
  `lu_status` varchar(12) DEFAULT 'ACTIVE',
  `lu_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lu_id`),
  UNIQUE KEY `const_hlookup_unikey` (`lu_cat`,`lu_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `fclookup`
--

INSERT INTO `fclookup` (`lu_cat`, `lu_code`, `lu_parentcode`, `lu_title`, `lu_status`, `lu_id`) VALUES
('THEME', 'blacktie', 'ROOT', 'Black Tie', 'ACTIVE', 1),
('THEME', 'blitzer', 'ROOT', 'Blitzer', 'ACTIVE', 2),
('THEME', 'darkness', 'ROOT', 'Darkness', 'ACTIVE', 3),
('THEME', 'dotluv', 'ROOT', 'Dot Luv', 'ACTIVE', 4),
('THEME', 'eggplant', 'ROOT', 'Eggplant', 'ACTIVE', 5),
('THEME', 'overcast', 'ROOT', 'Overcast', 'ACTIVE', 6),
('THEME', 'skyblue', 'ROOT', 'Skyblue', 'ACTIVE', 7),
('THEME', 'smoothness', 'ROOT', 'Smoothness', 'ACTIVE', 8),
('LANGUAGE', 'zh_TW', 'ROOT', 'Chinese', 'ACTIVE', 9),
('LANGUAGE', 'en_US', 'ROOT', 'English', 'ACTIVE', 10);

-- --------------------------------------------------------

--
-- Table structure for table `fcmenu`
--

CREATE TABLE IF NOT EXISTS `fcmenu` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `fcmenu`
--

INSERT INTO `fcmenu` (`mn_id`, `mn_code`, `mn_parentid`, `mn_title`, `mn_status`, `mn_order`, `mn_group`, `mn_url`, `mn_webflag`, `mn_class`, `mn_classlist`, `mn_func`, `mn_funclist`, `mn_param`) VALUES
(1, 'HEADERMENU', 0, 'Top Menu', 'ACTIVE', 0, NULL, '', 'Y', NULL, NULL, NULL, NULL, NULL),
(3, 'DASHBOARD', 1, 'Dashboard', 'INACTIVE', 1000, NULL, '', 'Y', 'Dashboard', NULL, 'revenueyeartodate', NULL, NULL),
(4, 'SHELF', 1, 'Shelf', 'INACTIVE', 2000, NULL, '', 'Y', 'Shelf', NULL, 'Home', NULL, NULL),
(5, 'REPORT', 1, 'Report', 'ACTIVE', 3000, NULL, '', 'Y', 'Report', NULL, 'rptrevdaily', NULL, NULL),
(6, 'SETTING', 1, 'Setting', 'ACTIVE', 4000, NULL, '', 'Y', 'Setting', NULL, 'gensetting', NULL, NULL),
(12, 'REVRPT', 5, 'Revenue Report', 'ACTIVE', 3100, NULL, '', 'Y', 'Report', NULL, 'rptrevdaily', NULL, NULL),
(21, 'GENSETTING', 6, 'General Setting', 'ACTIVE', 4100, NULL, NULL, 'Y', 'Setting', NULL, 'gensetting', NULL, NULL),
(40, 'SHELFSETTING', 6, 'Shelf Setting', 'ACTIVE', 4200, NULL, NULL, 'Y', 'Setting', '', 'shelfSetting', '', ''),
(41, 'DSHELFSETTING', 40, 'Shelf Setting', 'ACTIVE', 4210, NULL, NULL, 'Y', 'Setting', '', 'shelfSetting', '', ''),
(42, 'SHELFGSETTING', 40, 'Shelf Group Setting', 'ACTIVE', 4220, NULL, NULL, 'Y', 'Setting', '', 'shelfGroupSetting', '', ''),
(43, 'MAIN', 1, 'Main', 'ACTIVE', 1000, '', '', 'Y', 'Main', '', 'board', '', ''),
(44, 'CUSTOMER', 43, 'Customer List', 'ACTIVE', 1200, '', '', 'Y', 'Main', '', 'customer', '', ''),
(45, 'SEARCHPLATE', 43, 'Search Plate', 'ACTIVE', 1100, '', '', 'Y', 'Main', '', 'searchplate', '', ''),
(46, 'OPERATION', 1, 'Operation', 'ACTIVE', 2000, '', '', 'Y', 'rackOperation', 'checkinout', '', '', ''),
(47, 'CHECKINOUT', 46, 'Check In/Out', 'ACTIVE', 2100, '', '', 'Y', 'rackOperation', 'checkinout', 'checkinout', '', ''),
(48, 'STOCKCNT', 46, 'Stock Count', 'ACTIVE', 2200, '', '', 'Y', 'rackOperation', 'stockcount', 'stockcount', '', ''),
(49, 'CREATEPLATE', 43, 'Create Plate', 'ACTIVE', 1050, NULL, NULL, 'Y', 'Main', NULL, 'createplate', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fcorg`
--

CREATE TABLE IF NOT EXISTS `fcorg` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fcorg`
--

INSERT INTO `fcorg` (`org_id`, `org_code`, `org_name`, `org_parentid`, `org_primaryid`, `org_address`, `org_contactno`, `org_status`) VALUES
(1, 'SHERATON', 'SHERATON', 0, 'SHERATON', NULL, NULL, 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `fcpermission`
--

CREATE TABLE IF NOT EXISTS `fcpermission` (
  `pms_id` int(11) NOT NULL AUTO_INCREMENT,
  `pms_code` varchar(12) DEFAULT NULL,
  `pms_desc` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`pms_id`),
  UNIQUE KEY `const_vpermission_unikey` (`pms_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fcrole`
--

CREATE TABLE IF NOT EXISTS `fcrole` (
  `rol_id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_code` varchar(12) DEFAULT NULL,
  `rol_desc` varchar(2000) DEFAULT NULL,
  `rol_status` varchar(32) DEFAULT 'ACTIVE',
  PRIMARY KEY (`rol_id`),
  UNIQUE KEY `const_vrole_unikey` (`rol_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fcrole`
--

INSERT INTO `fcrole` (`rol_id`, `rol_code`, `rol_desc`, `rol_status`) VALUES
(1, 'admin', 'admin', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `fcroleperm`
--

CREATE TABLE IF NOT EXISTS `fcroleperm` (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `rp_rolid` int(11) DEFAULT NULL,
  `rp_pmsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rp_id`),
  UNIQUE KEY `const_vroleperm_unikey` (`rp_rolid`,`rp_pmsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fcsetting`
--

CREATE TABLE IF NOT EXISTS `fcsetting` (
  `set_id` int(11) NOT NULL AUTO_INCREMENT,
  `set_user` varchar(100) DEFAULT 'pflex',
  `set_code` varchar(32) DEFAULT NULL,
  `set_description` varchar(4000) DEFAULT NULL,
  `set_val` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`set_id`),
  UNIQUE KEY `const_vsetting_unikey` (`set_user`,`set_code`),
  UNIQUE KEY `idx_vsetting_code_user` (`set_user`,`set_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `fcsetting`
--

INSERT INTO `fcsetting` (`set_id`, `set_user`, `set_code`, `set_description`, `set_val`) VALUES
(1, '*', 'LANG', 'English - United States', 'EN-US'),
(2, '*', 'MAXLIFETIME', 'Maximum Idle Time (in second)', '15'),
(3, '*', 'DEFCHECKIN', 'Default Check In Time', NULL),
(4, '*', 'DEFCHECKOUT', 'Default Check Out Time', NULL),
(5, '*', 'THEME', 'Skyblue', 'skyblue'),
(6, '*', 'EICHARGE', 'Early Check In Charges', NULL),
(7, '*', 'LOCHARGE', 'Late Check Out Charges', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fcuser`
--

CREATE TABLE IF NOT EXISTS `fcuser` (
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

--
-- Dumping data for table `fcuser`
--

INSERT INTO `fcuser` (`usr_userid`, `usr_password`, `usr_created`, `usr_name`, `usr_email`, `usr_last_active`, `usr_last_success_login`, `usr_last_fail_login`, `usr_group`, `usr_sessiondata`, `usr_langid`, `usr_status`) VALUES
('admin', 'admin', '2013-08-15 01:55:18', 'Administrator', NULL, '2013-12-11 08:02:54', '2013-12-11 07:52:13', '2013-11-09 07:07:50', 'ADMIN', 'a:3:{s:14:"urlbeforelogin";s:9:"/pndrack/";s:7:"dbosess";a:4:{s:11:"setup_shelf";a:5:{s:6:"lastid";a:0:{}s:4:"sort";a:0:{}s:6:"search";a:0:{}s:5:"state";s:4:"list";s:5:"dbost";b:0;}s:14:"setup_customer";a:4:{s:6:"lastid";a:0:{}s:4:"sort";a:0:{}s:6:"search";a:0:{}s:5:"state";s:4:"list";}s:11:"setup_board";a:5:{s:6:"lastid";a:0:{}s:4:"sort";a:0:{}s:6:"search";a:0:{}s:5:"state";s:3:"new";s:5:"dbost";b:0;}s:16:"setup_shelfgroup";a:4:{s:6:"lastid";a:0:{}s:4:"sort";a:0:{}s:6:"search";a:0:{}s:5:"state";s:4:"list";}}s:9:"dboconfig";a:0:{}}', NULL, 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `fcuserlogin`
--

CREATE TABLE IF NOT EXISTS `fcuserlogin` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=199 ;

--
-- Dumping data for table `fcuserlogin`
--

INSERT INTO `fcuserlogin` (`ul_id`, `ul_userid`, `ul_ip`, `ul_success`, `ul_created`, `last_modified_date`, `last_synchronized_date`, `record_synchronized`, `cloud_refid`) VALUES
(1, 'admin', '127.0.0.1', 'Y', '2013-08-15 01:55:42', '2013-08-15 01:55:42', '2013-12-10 07:47:35', 'N', NULL),
(2, 'admin', '127.0.0.1', 'Y', '2013-08-15 02:59:43', '2013-08-15 02:59:43', '2013-12-10 07:47:35', 'N', NULL),
(3, 'admin', '127.0.0.1', 'Y', '2013-08-15 02:59:45', '2013-08-15 02:59:45', '2013-12-10 07:47:35', 'N', NULL),
(4, 'admin', '127.0.0.1', 'Y', '2013-08-15 04:31:47', '2013-08-15 04:31:47', '2013-12-10 07:47:35', 'N', NULL),
(5, 'admin', '127.0.0.1', 'Y', '2013-08-15 04:31:50', '2013-08-15 04:31:50', '2013-12-10 07:47:35', 'N', NULL),
(6, 'admin', '127.0.0.1', 'Y', '2013-08-16 01:31:41', '2013-08-16 01:31:41', '2013-12-10 07:47:35', 'N', NULL),
(7, 'admin', '127.0.0.1', 'Y', '2013-08-16 01:31:45', '2013-08-16 01:31:45', '2013-12-10 07:47:35', 'N', NULL),
(8, 'admin', '127.0.0.1', 'Y', '2013-08-16 11:30:04', '2013-08-16 11:30:04', '2013-12-10 07:47:35', 'N', NULL),
(9, 'admin', '127.0.0.1', 'Y', '2013-08-16 11:30:06', '2013-08-16 11:30:06', '2013-12-10 07:47:35', 'N', NULL),
(10, 'admin', '127.0.0.1', 'Y', '2013-08-17 04:03:56', '2013-08-17 04:03:56', '2013-12-10 07:47:35', 'N', NULL),
(11, 'admin', '127.0.0.1', 'Y', '2013-08-17 04:03:58', '2013-08-17 04:03:58', '2013-12-10 07:47:35', 'N', NULL),
(12, 'admin', '127.0.0.1', 'Y', '2013-08-17 16:07:07', '2013-08-17 16:07:07', '2013-12-10 07:47:35', 'N', NULL),
(13, 'admin', '127.0.0.1', 'Y', '2013-08-17 16:07:09', '2013-08-17 16:07:09', '2013-12-10 07:47:35', 'N', NULL),
(14, 'admin', '127.0.0.1', 'Y', '2013-08-19 01:49:37', '2013-08-19 01:49:37', '2013-12-10 07:47:35', 'N', NULL),
(15, 'admin', '127.0.0.1', 'Y', '2013-08-19 01:49:40', '2013-08-19 01:49:40', '2013-12-10 07:47:35', 'N', NULL),
(16, 'admin', '127.0.0.1', 'Y', '2013-08-19 06:05:24', '2013-08-19 06:05:24', '2013-12-10 07:47:35', 'N', NULL),
(17, 'admin', '127.0.0.1', 'Y', '2013-08-19 06:05:27', '2013-08-19 06:05:27', '2013-12-10 07:47:35', 'N', NULL),
(18, 'admin', '127.0.0.1', 'N', '2013-08-20 00:55:06', '2013-08-20 00:55:06', '2013-12-10 07:47:35', 'N', NULL),
(19, 'admin', '127.0.0.1', 'Y', '2013-08-20 00:55:09', '2013-08-20 00:55:09', '2013-12-10 07:47:35', 'N', NULL),
(20, 'admin', '127.0.0.1', 'Y', '2013-08-20 00:55:13', '2013-08-20 00:55:13', '2013-12-10 07:47:35', 'N', NULL),
(21, 'admin', '127.0.0.1', 'Y', '2013-08-20 12:50:37', '2013-08-20 12:50:37', '2013-12-10 07:47:35', 'N', NULL),
(22, 'admin', '127.0.0.1', 'Y', '2013-08-20 12:50:40', '2013-08-20 12:50:40', '2013-12-10 07:47:35', 'N', NULL),
(23, 'admin', '127.0.0.1', 'Y', '2013-08-20 16:05:39', '2013-08-20 16:05:39', '2013-12-10 07:47:35', 'N', NULL),
(24, 'admin', '127.0.0.1', 'Y', '2013-08-20 16:05:42', '2013-08-20 16:05:42', '2013-12-10 07:47:35', 'N', NULL),
(25, 'admin', '127.0.0.1', 'Y', '2013-08-21 01:18:20', '2013-08-21 01:18:20', '2013-12-10 07:47:35', 'N', NULL),
(26, 'admin', '127.0.0.1', 'Y', '2013-08-21 01:18:23', '2013-08-21 01:18:23', '2013-12-10 07:47:35', 'N', NULL),
(27, 'admin', '127.0.0.1', 'Y', '2013-08-21 10:05:58', '2013-08-21 10:05:58', '2013-12-10 07:47:35', 'N', NULL),
(28, 'admin', '127.0.0.1', 'Y', '2013-08-21 10:06:02', '2013-08-21 10:06:02', '2013-12-10 07:47:35', 'N', NULL),
(29, 'admin', '127.0.0.1', 'Y', '2013-08-21 13:57:25', '2013-08-21 13:57:25', '2013-12-10 07:47:35', 'N', NULL),
(30, 'admin', '127.0.0.1', 'Y', '2013-08-21 13:57:28', '2013-08-21 13:57:28', '2013-12-10 07:47:35', 'N', NULL),
(31, 'admin', '127.0.0.1', 'Y', '2013-08-21 13:59:38', '2013-08-21 13:59:38', '2013-12-10 07:47:35', 'N', NULL),
(32, 'admin', '127.0.0.1', 'Y', '2013-08-22 01:15:22', '2013-08-22 01:15:22', '2013-12-10 07:47:35', 'N', NULL),
(33, 'admin', '127.0.0.1', 'Y', '2013-08-22 01:39:36', '2013-08-22 01:39:36', '2013-12-10 07:47:35', 'N', NULL),
(34, 'admin', '127.0.0.1', 'Y', '2013-08-22 09:58:43', '2013-08-22 09:58:43', '2013-12-10 07:47:35', 'N', NULL),
(35, 'admin', '127.0.0.1', 'Y', '2013-08-22 09:58:49', '2013-08-22 09:58:49', '2013-12-10 07:47:35', 'N', NULL),
(36, 'admin', '127.0.0.1', 'Y', '2013-08-22 09:58:52', '2013-08-22 09:58:52', '2013-12-10 07:47:35', 'N', NULL),
(37, 'admin', '127.0.0.1', 'Y', '2013-08-23 02:16:44', '2013-08-23 02:16:44', '2013-12-10 07:47:35', 'N', NULL),
(38, 'admin', '127.0.0.1', 'Y', '2013-08-23 02:17:09', '2013-08-23 02:17:09', '2013-12-10 07:47:35', 'N', NULL),
(39, 'admin', '127.0.0.1', 'Y', '2013-08-23 02:18:45', '2013-08-23 02:18:45', '2013-12-10 07:47:35', 'N', NULL),
(40, 'admin', '127.0.0.1', 'Y', '2013-08-24 01:28:55', '2013-08-24 01:28:55', '2013-12-10 07:47:35', 'N', NULL),
(41, 'admin', '127.0.0.1', 'Y', '2013-08-24 01:29:00', '2013-08-24 01:29:00', '2013-12-10 07:47:35', 'N', NULL),
(42, 'admin', '127.0.0.1', 'Y', '2013-08-24 01:29:05', '2013-08-24 01:29:05', '2013-12-10 07:47:35', 'N', NULL),
(43, 'admin', '127.0.0.1', 'Y', '2013-08-25 12:55:31', '2013-08-25 12:55:31', '2013-12-10 07:47:35', 'N', NULL),
(44, 'admin', '127.0.0.1', 'Y', '2013-08-25 12:55:33', '2013-08-25 12:55:33', '2013-12-10 07:47:35', 'N', NULL),
(45, 'admin', '127.0.0.1', 'Y', '2013-08-25 13:38:38', '2013-08-25 13:38:38', '2013-12-10 07:47:35', 'N', NULL),
(46, 'admin', '127.0.0.1', 'Y', '2013-08-25 13:38:40', '2013-08-25 13:38:40', '2013-12-10 07:47:35', 'N', NULL),
(47, 'admin', '127.0.0.1', 'Y', '2013-08-26 01:23:28', '2013-08-26 01:23:28', '2013-12-10 07:47:35', 'N', NULL),
(48, 'admin', '127.0.0.1', 'Y', '2013-08-26 01:23:33', '2013-08-26 01:23:33', '2013-12-10 07:47:35', 'N', NULL),
(49, 'admin', '127.0.0.1', 'Y', '2013-08-26 12:33:59', '2013-08-26 12:33:59', '2013-12-10 07:47:35', 'N', NULL),
(50, 'admin', '127.0.0.1', 'Y', '2013-08-26 12:34:02', '2013-08-26 12:34:02', '2013-12-10 07:47:35', 'N', NULL),
(51, 'admin', '127.0.0.1', 'Y', '2013-08-26 12:34:06', '2013-08-26 12:34:06', '2013-12-10 07:47:35', 'N', NULL),
(52, 'admin', '127.0.0.1', 'Y', '2013-08-26 14:39:10', '2013-08-26 14:39:10', '2013-12-10 07:47:35', 'N', NULL),
(53, 'admin', '127.0.0.1', 'Y', '2013-08-26 14:39:13', '2013-08-26 14:39:13', '2013-12-10 07:47:35', 'N', NULL),
(54, 'admin', '127.0.0.1', 'Y', '2013-08-26 16:08:21', '2013-08-26 16:08:21', '2013-12-10 07:47:35', 'N', NULL),
(55, 'admin', '127.0.0.1', 'Y', '2013-08-26 16:08:24', '2013-08-26 16:08:24', '2013-12-10 07:47:35', 'N', NULL),
(56, 'admin', '127.0.0.1', 'Y', '2013-08-26 16:58:48', '2013-08-26 16:58:48', '2013-12-10 07:47:35', 'N', NULL),
(57, 'admin', '127.0.0.1', 'Y', '2013-08-26 16:58:50', '2013-08-26 16:58:50', '2013-12-10 07:47:35', 'N', NULL),
(58, 'admin', '127.0.0.1', 'Y', '2013-08-27 02:14:03', '2013-08-27 02:14:03', '2013-12-10 07:47:35', 'N', NULL),
(59, 'admin', '127.0.0.1', 'Y', '2013-08-27 02:14:05', '2013-08-27 02:14:05', '2013-12-10 07:47:35', 'N', NULL),
(60, 'admin', '127.0.0.1', 'Y', '2013-08-27 11:12:18', '2013-08-27 11:12:18', '2013-12-10 07:47:35', 'N', NULL),
(61, 'admin', '127.0.0.1', 'Y', '2013-08-27 11:12:21', '2013-08-27 11:12:21', '2013-12-10 07:47:35', 'N', NULL),
(62, 'admin', '127.0.0.1', 'Y', '2013-08-28 01:58:45', '2013-08-28 01:58:45', '2013-12-10 07:47:35', 'N', NULL),
(63, 'admin', '127.0.0.1', 'Y', '2013-08-28 02:00:04', '2013-08-28 02:00:04', '2013-12-10 07:47:35', 'N', NULL),
(64, 'admin', '127.0.0.1', 'Y', '2013-08-28 09:52:51', '2013-08-28 09:52:51', '2013-12-10 07:47:35', 'N', NULL),
(65, 'admin', '127.0.0.1', 'Y', '2013-08-28 09:52:55', '2013-08-28 09:52:55', '2013-12-10 07:47:35', 'N', NULL),
(66, 'admin', '127.0.0.1', 'Y', '2013-08-29 00:50:38', '2013-08-29 00:50:38', '2013-12-10 07:47:35', 'N', NULL),
(67, 'admin', '127.0.0.1', 'Y', '2013-08-29 00:50:41', '2013-08-29 00:50:41', '2013-12-10 07:47:35', 'N', NULL),
(68, 'admin', '127.0.0.1', 'Y', '2013-08-29 00:50:43', '2013-08-29 00:50:43', '2013-12-10 07:47:35', 'N', NULL),
(69, 'admin', '127.0.0.1', 'Y', '2013-08-29 04:43:53', '2013-08-29 04:43:53', '2013-12-10 07:47:35', 'N', NULL),
(70, 'admin', '127.0.0.1', 'Y', '2013-08-29 04:43:55', '2013-08-29 04:43:55', '2013-12-10 07:47:35', 'N', NULL),
(71, 'admin', '127.0.0.1', 'Y', '2013-08-30 01:35:54', '2013-08-30 01:35:54', '2013-12-10 07:47:35', 'N', NULL),
(72, 'admin', '127.0.0.1', 'Y', '2013-08-30 01:36:58', '2013-08-30 01:36:58', '2013-12-10 07:47:35', 'N', NULL),
(73, 'admin', '127.0.0.1', 'Y', '2013-08-31 00:37:13', '2013-08-31 00:37:13', '2013-12-10 07:47:35', 'N', NULL),
(74, 'admin', '127.0.0.1', 'Y', '2013-08-31 00:37:16', '2013-08-31 00:37:16', '2013-12-10 07:47:35', 'N', NULL),
(75, 'admin', '127.0.0.1', 'Y', '2013-08-31 01:32:58', '2013-08-31 01:32:58', '2013-12-10 07:47:35', 'N', NULL),
(76, 'admin', '127.0.0.1', 'Y', '2013-08-31 01:33:00', '2013-08-31 01:33:00', '2013-12-10 07:47:35', 'N', NULL),
(77, 'admin', '127.0.0.1', 'Y', '2013-08-31 03:18:25', '2013-08-31 03:18:25', '2013-12-10 07:47:35', 'N', NULL),
(78, 'admin', '127.0.0.1', 'Y', '2013-08-31 03:18:27', '2013-08-31 03:18:27', '2013-12-10 07:47:35', 'N', NULL),
(79, 'admin', '127.0.0.1', 'Y', '2013-09-02 05:10:26', '2013-09-02 05:10:26', '2013-12-10 07:47:35', 'N', NULL),
(80, 'admin', '127.0.0.1', 'Y', '2013-09-02 05:10:27', '2013-09-02 05:10:27', '2013-12-10 07:47:35', 'N', NULL),
(81, 'admin', '127.0.0.1', 'Y', '2013-09-03 01:08:40', '2013-09-03 01:08:40', '2013-12-10 07:47:35', 'N', NULL),
(82, 'admin', '127.0.0.1', 'Y', '2013-09-03 01:08:43', '2013-09-03 01:08:43', '2013-12-10 07:47:35', 'N', NULL),
(83, 'admin', '127.0.0.1', 'Y', '2013-09-06 02:12:01', '2013-09-06 02:12:01', '2013-12-10 07:47:35', 'N', NULL),
(84, 'admin', '127.0.0.1', 'Y', '2013-09-06 02:12:03', '2013-09-06 02:12:03', '2013-12-10 07:47:35', 'N', NULL),
(85, 'admin', '127.0.0.1', 'Y', '2013-09-07 04:20:53', '2013-09-07 04:20:53', '2013-12-10 07:47:35', 'N', NULL),
(86, 'admin', '127.0.0.1', 'Y', '2013-09-07 04:20:57', '2013-09-07 04:20:57', '2013-12-10 07:47:35', 'N', NULL),
(87, 'admin', '127.0.0.1', 'Y', '2013-09-07 04:20:59', '2013-09-07 04:20:59', '2013-12-10 07:47:35', 'N', NULL),
(88, 'admin', '127.0.0.1', 'Y', '2013-09-07 04:21:03', '2013-09-07 04:21:03', '2013-12-10 07:47:35', 'N', NULL),
(89, 'admin', '127.0.0.1', 'Y', '2013-09-07 07:45:14', '2013-09-07 07:45:14', '2013-12-10 07:47:35', 'N', NULL),
(90, 'admin', '127.0.0.1', 'Y', '2013-09-07 07:45:16', '2013-09-07 07:45:16', '2013-12-10 07:47:35', 'N', NULL),
(91, 'admin', '127.0.0.1', 'Y', '2013-09-07 10:25:27', '2013-09-07 10:25:27', '2013-12-10 07:47:35', 'N', NULL),
(92, 'admin', '127.0.0.1', 'Y', '2013-09-07 11:32:35', '2013-09-07 11:32:35', '2013-12-10 07:47:35', 'N', NULL),
(93, 'admin', '127.0.0.1', 'Y', '2013-09-07 11:32:37', '2013-09-07 11:32:37', '2013-12-10 07:47:35', 'N', NULL),
(94, 'admin', '127.0.0.1', 'Y', '2013-09-07 11:34:29', '2013-09-07 11:34:29', '2013-12-10 07:47:35', 'N', NULL),
(95, 'admin', '127.0.0.1', 'Y', '2013-09-07 11:34:31', '2013-09-07 11:34:31', '2013-12-10 07:47:35', 'N', NULL),
(96, 'admin', '127.0.0.1', 'Y', '2013-09-09 02:15:45', '2013-09-09 02:15:45', '2013-12-10 07:47:35', 'N', NULL),
(97, 'admin', '127.0.0.1', 'Y', '2013-09-09 02:15:47', '2013-09-09 02:15:47', '2013-12-10 07:47:35', 'N', NULL),
(98, 'admin', '127.0.0.1', 'Y', '2013-09-10 06:35:37', '2013-09-10 06:35:37', '2013-12-10 07:47:35', 'N', NULL),
(99, 'admin', '127.0.0.1', 'Y', '2013-09-10 06:35:39', '2013-09-10 06:35:39', '2013-12-10 07:47:35', 'N', NULL),
(100, 'admin', '127.0.0.1', 'Y', '2013-09-13 13:38:29', '2013-09-13 13:38:29', '2013-12-10 07:47:35', 'N', NULL),
(101, 'admin', '127.0.0.1', 'Y', '2013-09-13 13:38:31', '2013-09-13 13:38:31', '2013-12-10 07:47:35', 'N', NULL),
(102, 'admin', '127.0.0.1', 'Y', '2013-09-13 14:33:34', '2013-09-13 14:33:34', '2013-12-10 07:47:35', 'N', NULL),
(103, 'admin', '127.0.0.1', 'Y', '2013-09-13 14:33:36', '2013-09-13 14:33:36', '2013-12-10 07:47:35', 'N', NULL),
(104, 'admin', '127.0.0.1', 'Y', '2013-09-16 06:48:44', '2013-09-16 06:48:44', '2013-12-10 07:47:35', 'N', NULL),
(105, 'admin', '127.0.0.1', 'Y', '2013-09-16 06:48:48', '2013-09-16 06:48:48', '2013-12-10 07:47:35', 'N', NULL),
(106, 'admin', '127.0.0.1', 'Y', '2013-09-17 02:20:51', '2013-09-17 02:20:51', '2013-12-10 07:47:35', 'N', NULL),
(107, 'admin', '127.0.0.1', 'Y', '2013-09-17 02:20:54', '2013-09-17 02:20:54', '2013-12-10 07:47:35', 'N', NULL),
(108, 'admin', '127.0.0.1', 'Y', '2013-09-18 16:23:01', '2013-09-18 16:23:01', '2013-12-10 07:47:35', 'N', NULL),
(109, 'admin', '127.0.0.1', 'Y', '2013-09-18 16:23:03', '2013-09-18 16:23:03', '2013-12-10 07:47:35', 'N', NULL),
(110, 'admin', '127.0.0.1', 'Y', '2013-09-21 12:04:50', '2013-09-21 12:04:50', '2013-12-10 07:47:35', 'N', NULL),
(111, 'admin', '127.0.0.1', 'Y', '2013-09-21 12:04:52', '2013-09-21 12:04:52', '2013-12-10 07:47:35', 'N', NULL),
(112, 'admin', '127.0.0.1', 'Y', '2013-09-22 06:35:34', '2013-09-22 06:35:34', '2013-12-10 07:47:35', 'N', NULL),
(113, 'admin', '127.0.0.1', 'Y', '2013-09-22 06:35:36', '2013-09-22 06:35:36', '2013-12-10 07:47:35', 'N', NULL),
(114, 'admin', '127.0.0.1', 'Y', '2013-09-22 06:35:38', '2013-09-22 06:35:38', '2013-12-10 07:47:35', 'N', NULL),
(115, 'admin', '127.0.0.1', 'Y', '2013-09-23 01:04:35', '2013-09-23 01:04:35', '2013-12-10 07:47:35', 'N', NULL),
(116, 'admin', '127.0.0.1', 'Y', '2013-09-23 01:04:38', '2013-09-23 01:04:38', '2013-12-10 07:47:35', 'N', NULL),
(117, 'admin', '127.0.0.1', 'Y', '2013-09-23 15:38:32', '2013-09-23 15:38:32', '2013-12-10 07:47:35', 'N', NULL),
(118, 'admin', '127.0.0.1', 'Y', '2013-09-23 15:38:34', '2013-09-23 15:38:34', '2013-12-10 07:47:35', 'N', NULL),
(119, 'admin', '127.0.0.1', 'Y', '2013-09-24 14:30:17', '2013-09-24 14:30:17', '2013-12-10 07:47:35', 'N', NULL),
(120, 'admin', '127.0.0.1', 'Y', '2013-09-24 14:30:20', '2013-09-24 14:30:20', '2013-12-10 07:47:35', 'N', NULL),
(121, 'admin', '127.0.0.1', 'Y', '2013-09-24 14:30:22', '2013-09-24 14:30:22', '2013-12-10 07:47:35', 'N', NULL),
(122, 'admin', '127.0.0.1', 'Y', '2013-09-25 01:36:08', '2013-09-25 01:36:08', '2013-12-10 07:47:35', 'N', NULL),
(123, 'admin', '127.0.0.1', 'Y', '2013-09-25 01:36:10', '2013-09-25 01:36:10', '2013-12-10 07:47:35', 'N', NULL),
(124, 'admin', '127.0.0.1', 'Y', '2013-09-25 03:31:52', '2013-09-25 03:31:52', '2013-12-10 07:47:35', 'N', NULL),
(125, 'admin', '127.0.0.1', 'Y', '2013-09-25 03:32:04', '2013-09-25 03:32:04', '2013-12-10 07:47:35', 'N', NULL),
(126, 'admin', '127.0.0.1', 'Y', '2013-09-26 05:23:38', '2013-09-26 05:23:38', '2013-12-10 07:47:35', 'N', NULL),
(127, 'admin', '127.0.0.1', 'Y', '2013-09-26 05:23:40', '2013-09-26 05:23:40', '2013-12-10 07:47:35', 'N', NULL),
(128, 'admin', '127.0.0.1', 'Y', '2013-09-26 13:57:02', '2013-09-26 13:57:02', '2013-12-10 07:47:35', 'N', NULL),
(129, 'admin', '127.0.0.1', 'Y', '2013-09-26 13:57:03', '2013-09-26 13:57:03', '2013-12-10 07:47:35', 'N', NULL),
(130, 'admin', '127.0.0.1', 'Y', '2013-09-27 01:59:36', '2013-09-27 01:59:36', '2013-12-10 07:47:35', 'N', NULL),
(131, 'admin', '127.0.0.1', 'Y', '2013-09-27 01:59:39', '2013-09-27 01:59:39', '2013-12-10 07:47:35', 'N', NULL),
(132, 'admin', '127.0.0.1', 'Y', '2013-09-29 02:12:39', '2013-09-29 02:12:39', '2013-12-10 07:47:35', 'N', NULL),
(133, 'admin', '127.0.0.1', 'Y', '2013-09-29 02:12:41', '2013-09-29 02:12:41', '2013-12-10 07:47:35', 'N', NULL),
(134, 'admin', '127.0.0.1', 'Y', '2013-10-02 02:54:59', '2013-10-02 02:54:59', '2013-12-10 07:47:35', 'N', NULL),
(135, 'admin', '127.0.0.1', 'Y', '2013-10-02 02:55:04', '2013-10-02 02:55:04', '2013-12-10 07:47:35', 'N', NULL),
(136, 'admin', '127.0.0.1', 'Y', '2013-10-03 12:06:27', '2013-10-03 12:06:27', '2013-12-10 07:47:35', 'N', NULL),
(137, 'admin', '127.0.0.1', 'Y', '2013-10-03 12:06:29', '2013-10-03 12:06:29', '2013-12-10 07:47:35', 'N', NULL),
(138, 'admin', '127.0.0.1', 'Y', '2013-10-04 01:27:57', '2013-10-04 01:27:57', '2013-12-10 07:47:35', 'N', NULL),
(139, 'admin', '127.0.0.1', 'Y', '2013-10-04 01:28:00', '2013-10-04 01:28:00', '2013-12-10 07:47:35', 'N', NULL),
(140, 'admin', '127.0.0.1', 'Y', '2013-10-04 10:42:58', '2013-10-04 10:42:58', '2013-12-10 07:47:35', 'N', NULL),
(141, 'admin', '127.0.0.1', 'Y', '2013-10-04 10:42:59', '2013-10-04 10:42:59', '2013-12-10 07:47:35', 'N', NULL),
(142, 'admin', '127.0.0.1', 'Y', '2013-10-05 02:41:20', '2013-10-05 02:41:20', '2013-12-10 07:47:35', 'N', NULL),
(143, 'admin', '127.0.0.1', 'Y', '2013-10-05 02:41:22', '2013-10-05 02:41:22', '2013-12-10 07:47:35', 'N', NULL),
(144, 'admin', '127.0.0.1', 'Y', '2013-10-05 14:58:31', '2013-10-05 14:58:31', '2013-12-10 07:47:35', 'N', NULL),
(145, 'admin', '127.0.0.1', 'Y', '2013-10-05 14:58:33', '2013-10-05 14:58:33', '2013-12-10 07:47:35', 'N', NULL),
(146, 'admin', '127.0.0.1', 'Y', '2013-10-06 06:18:45', '2013-10-06 06:18:45', '2013-12-10 07:47:35', 'N', NULL),
(147, 'admin', '127.0.0.1', 'Y', '2013-10-06 06:18:48', '2013-10-06 06:18:48', '2013-12-10 07:47:35', 'N', NULL),
(148, 'admin', '127.0.0.1', 'Y', '2013-10-23 02:48:24', '2013-10-23 02:48:24', '2013-12-10 07:47:35', 'N', NULL),
(149, 'admin', '127.0.0.1', 'Y', '2013-10-23 02:48:28', '2013-10-23 02:48:28', '2013-12-10 07:47:35', 'N', NULL),
(150, 'admin', '127.0.0.1', 'Y', '2013-10-30 02:24:15', '2013-10-30 02:24:15', '2013-12-10 07:47:35', 'N', NULL),
(151, 'admin', '127.0.0.1', 'Y', '2013-10-30 02:24:19', '2013-10-30 02:24:19', '2013-12-10 07:47:35', 'N', NULL),
(152, 'admin', '127.0.0.1', 'Y', '2013-10-31 06:42:12', '2013-10-31 06:42:12', '2013-12-10 07:47:35', 'N', NULL),
(153, 'admin', NULL, NULL, '2013-10-31 06:46:14', '2013-10-31 06:46:14', '2013-12-10 07:47:35', 'N', NULL),
(154, 'admin', '127.0.0.1', 'Y', '2013-10-31 06:46:27', '2013-10-31 06:46:27', '2013-12-10 07:47:35', 'N', NULL),
(155, 'admin', '127.0.0.1', 'Y', '2013-10-31 06:57:26', '2013-10-31 06:57:26', '2013-12-10 07:47:35', 'N', NULL),
(156, 'admin', '127.0.0.1', 'Y', '2013-10-31 06:57:44', '2013-10-31 06:57:44', '2013-12-10 07:47:35', 'N', NULL),
(157, 'admin', '127.0.0.1', 'Y', '2013-11-01 01:45:44', '2013-11-01 01:45:44', '2013-12-10 07:47:35', 'N', NULL),
(158, 'admin', '127.0.0.1', 'Y', '2013-11-01 01:45:46', '2013-11-01 01:45:46', '2013-12-10 07:47:35', 'N', NULL),
(159, 'admin', '127.0.0.1', 'Y', '2013-11-01 03:00:52', '2013-11-01 03:00:52', '2013-12-10 07:47:35', 'N', NULL),
(160, 'admin', '127.0.0.1', 'Y', '2013-11-01 03:00:54', '2013-11-01 03:00:54', '2013-12-10 07:47:35', 'N', NULL),
(161, 'admin', '127.0.0.1', 'Y', '2013-11-01 03:07:38', '2013-11-01 03:07:38', '2013-12-10 07:47:35', 'N', NULL),
(162, 'admin', '127.0.0.1', 'Y', '2013-11-01 03:07:40', '2013-11-01 03:07:40', '2013-12-10 07:47:35', 'N', NULL),
(163, 'admin', '127.0.0.1', 'Y', '2013-11-02 05:20:41', '2013-11-02 05:20:41', '2013-12-10 07:47:35', 'N', NULL),
(164, 'admin', '127.0.0.1', 'Y', '2013-11-02 05:20:43', '2013-11-02 05:20:43', '2013-12-10 07:47:35', 'N', NULL),
(165, 'admin', '127.0.0.1', 'Y', '2013-11-04 01:16:28', '2013-11-04 01:16:28', '2013-12-10 07:47:35', 'N', NULL),
(166, 'admin', '127.0.0.1', 'Y', '2013-11-04 01:16:31', '2013-11-04 01:16:31', '2013-12-10 07:47:35', 'N', NULL),
(167, 'admin', '127.0.0.1', 'Y', '2013-11-05 06:59:33', '2013-11-05 06:59:33', '2013-12-10 07:47:35', 'N', NULL),
(168, 'admin', '127.0.0.1', 'Y', '2013-11-05 06:59:35', '2013-11-05 06:59:35', '2013-12-10 07:47:35', 'N', NULL),
(169, 'admin', '127.0.0.1', 'Y', '2013-11-06 01:27:25', '2013-11-06 01:27:25', '2013-12-10 07:47:35', 'N', NULL),
(170, 'admin', '127.0.0.1', 'Y', '2013-11-06 01:27:27', '2013-11-06 01:27:27', '2013-12-10 07:47:35', 'N', NULL),
(171, 'admin', '127.0.0.1', 'Y', '2013-11-09 07:03:55', '2013-11-09 07:03:55', '2013-12-10 07:47:35', 'N', NULL),
(172, 'admin', '127.0.0.1', 'N', '2013-11-09 07:03:58', '2013-11-09 07:03:58', '2013-12-10 07:47:35', 'N', NULL),
(173, 'admin', '127.0.0.1', 'Y', '2013-11-09 07:07:48', '2013-11-09 07:07:48', '2013-12-10 07:47:35', 'N', NULL),
(174, 'admin', '127.0.0.1', 'N', '2013-11-09 07:07:50', '2013-11-09 07:07:50', '2013-12-10 07:47:35', 'N', NULL),
(175, 'admin', '127.0.0.1', 'Y', '2013-11-09 07:09:13', '2013-11-09 07:09:13', '2013-12-10 07:47:35', 'N', NULL),
(176, 'admin', '127.0.0.1', 'Y', '2013-11-09 07:09:36', '2013-11-09 07:09:36', '2013-12-10 07:47:35', 'N', NULL),
(177, 'admin', '127.0.0.1', 'Y', '2013-11-09 07:11:30', '2013-11-09 07:11:30', '2013-12-10 07:47:35', 'N', NULL),
(178, 'admin', '127.0.0.1', 'Y', '2013-11-09 07:11:36', '2013-11-09 07:11:36', '2013-12-10 07:47:35', 'N', NULL),
(179, 'admin', '192.168.1.75', 'Y', '2013-11-09 07:39:31', '2013-11-09 07:39:31', '2013-12-10 07:47:35', 'N', NULL),
(180, 'admin', '192.168.1.75', 'Y', '2013-11-09 07:43:45', '2013-11-09 07:43:45', '2013-12-10 07:47:35', 'N', NULL),
(181, 'admin', '192.168.1.75', 'Y', '2013-11-09 07:47:06', '2013-11-09 07:47:06', '2013-12-10 07:47:35', 'N', NULL),
(182, 'admin', '127.0.0.1', 'Y', '2013-11-09 07:53:23', '2013-11-09 07:53:23', '2013-12-10 07:47:35', 'N', NULL),
(183, 'admin', '127.0.0.1', 'Y', '2013-11-11 02:18:32', '2013-11-11 02:18:32', '2013-12-10 07:47:35', 'N', NULL),
(184, 'admin', '127.0.0.1', 'Y', '2013-11-13 01:09:58', '2013-11-13 01:09:58', '2013-12-10 07:47:35', 'N', NULL),
(185, 'admin', '127.0.0.1', 'Y', '2013-11-13 05:11:58', '2013-11-13 05:11:58', '2013-12-10 07:47:35', 'N', NULL),
(186, 'admin', '127.0.0.1', 'Y', '2013-11-14 00:40:34', '2013-11-14 00:40:34', '2013-12-10 07:47:35', 'N', NULL),
(187, 'admin', '127.0.0.1', 'Y', '2013-11-15 11:06:54', '2013-11-15 11:06:54', '2013-12-10 07:47:35', 'N', NULL),
(188, 'admin', '127.0.0.1', 'Y', '2013-11-16 05:55:03', '2013-11-16 05:55:03', '2013-12-10 07:47:35', 'N', NULL),
(189, 'admin', '127.0.0.1', 'Y', '2013-11-17 10:21:41', '2013-11-17 10:21:41', '2013-12-10 07:47:35', 'N', NULL),
(190, 'admin', '127.0.0.1', 'Y', '2013-11-18 08:46:54', '2013-11-18 08:46:54', '2013-12-10 07:47:35', 'N', NULL),
(191, 'admin', '127.0.0.1', 'Y', '2013-11-19 06:20:26', '2013-11-19 06:20:26', '2013-12-10 07:47:35', 'N', NULL),
(192, 'admin', '127.0.0.1', 'Y', '2013-11-19 15:35:44', '2013-11-19 15:35:44', '2013-12-10 07:47:35', 'N', NULL),
(193, 'admin', '127.0.0.1', 'Y', '2013-11-21 08:14:15', '2013-11-21 08:14:15', '2013-12-10 07:47:35', 'N', NULL),
(194, 'admin', '127.0.0.1', 'Y', '2013-11-25 04:40:22', '2013-11-25 04:40:22', '2013-12-10 07:47:35', 'N', NULL),
(195, 'admin', '127.0.0.1', 'Y', '2013-12-10 06:00:47', '2013-12-10 06:00:47', '2013-12-10 07:47:35', 'N', NULL),
(196, 'admin', '127.0.0.1', 'Y', '2013-12-10 07:52:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(197, 'admin', '127.0.0.1', 'Y', '2013-12-10 07:56:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(198, 'admin', '127.0.0.1', 'Y', '2013-12-11 07:52:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fcuserorgrole`
--

CREATE TABLE IF NOT EXISTS `fcuserorgrole` (
  `uor_id` int(11) NOT NULL AUTO_INCREMENT,
  `uor_usrid` varchar(50) DEFAULT NULL,
  `uor_orgid` int(11) DEFAULT NULL,
  `uor_rolid` int(11) DEFAULT NULL,
  `uor_seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`uor_id`),
  UNIQUE KEY `const_vuserorgrole_unikey` (`uor_usrid`,`uor_orgid`,`uor_rolid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fcuserorgrole`
--

INSERT INTO `fcuserorgrole` (`uor_id`, `uor_usrid`, `uor_orgid`, `uor_rolid`, `uor_seq`) VALUES
(1, 'admin', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fcusersession`
--

CREATE TABLE IF NOT EXISTS `fcusersession` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=195 ;

--
-- Dumping data for table `fcusersession`
--

INSERT INTO `fcusersession` (`us_id`, `us_sessid`, `us_userid`, `us_ip`, `us_active`, `us_created`, `us_last_active`, `us_forcecloseby`) VALUES
(194, 'eusfh1k5at7ekmrfgps52a24f6', 'admin', '127.0.0.1', 'Y', '2013-12-11 07:52:13', '2013-12-11 07:52:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `smboard`
--

CREATE TABLE IF NOT EXISTS `smboard` (
  `sb_id` int(11) NOT NULL AUTO_INCREMENT,
  `sb_cusid` int(11) DEFAULT NULL,
  `sb_sgid` int(11) DEFAULT NULL,
  `sb_slfid` int(11) DEFAULT NULL,
  `sb_parentid` int(11) DEFAULT NULL,
  `sb_barcode` varchar(50) DEFAULT NULL,
  `sb_createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sb_id`),
  UNIQUE KEY `const_smboard_sb_barcode` (`sb_barcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `smboard`
--

INSERT INTO `smboard` (`sb_id`, `sb_cusid`, `sb_sgid`, `sb_slfid`, `sb_parentid`, `sb_barcode`, `sb_createddate`) VALUES
(2, 2, 2, 2, -1, '1650-A2-00000005', '2013-11-13 13:16:06'),
(3, 1, 3, 6, -1, '1000-1000-A1-00000006', '2013-11-18 09:16:21'),
(4, 1, 3, 6, -1, '1000-A1-00000007', '2013-11-18 09:18:02'),
(5, 1, 3, 1, -1, '1250-A1-00000008', '2013-11-18 09:18:28'),
(6, 1, 3, 1, -1, '1250-A1-00000009', '2013-11-18 09:18:35'),
(7, 1, 1, 2, -1, '1250-A2-00000010', '2013-11-18 09:19:43'),
(8, 1, 2, 5, -1, '1650-A2-00000011', '2013-11-18 09:20:33'),
(9, 1, 2, 4, -1, '1650-A1-00000012', '2013-11-18 09:21:00'),
(10, 1, 3, 6, -1, '1000-A1-00000013', '2013-11-18 09:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `smbtransaction`
--

CREATE TABLE IF NOT EXISTS `smbtransaction` (
  `smb_id` int(11) NOT NULL AUTO_INCREMENT,
  `smb_sbid` int(11) DEFAULT NULL,
  `smb_printdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `smb_printqty` int(11) DEFAULT NULL,
  `smb_saleamount` decimal(20,4) DEFAULT NULL,
  `smb_remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`smb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smcustomer`
--

CREATE TABLE IF NOT EXISTS `smcustomer` (
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(200) DEFAULT NULL,
  `cus_regno` varchar(100) DEFAULT NULL,
  `cus_masterid` varchar(100) DEFAULT NULL,
  `cus_contactno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `smcustomer`
--

INSERT INTO `smcustomer` (`cus_id`, `cus_name`, `cus_regno`, `cus_masterid`, `cus_contactno`) VALUES
(1, 'Sony', 'S13812-V', 'MS09-13-A31', NULL),
(2, 'Samsung', '9014555-V', 'MS09-11-B31', NULL),
(3, 'LG', '8555129-V', 'ML09-19-D11', NULL),
(4, 'Panasonic', 'P92141-V', 'MP09-31-F11', NULL),
(5, 'Electrolux', 'E22515-V', 'MK15-44-E11', NULL),
(6, 'Asus', 'A22515-V', 'MS41-77-E11', NULL),
(7, 'New Company', 'REg1234', NULL, NULL),
(8, 'Company 2', 'REg2222222', NULL, NULL),
(9, 'Company 3', 'Reg1234', NULL, NULL),
(10, 'New Company', 'Reg11', 'MASTE123', '012-1234');

-- --------------------------------------------------------

--
-- Table structure for table `smplate`
--

CREATE TABLE IF NOT EXISTS `smplate` (
  `sp_id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_cusid` int(11) NOT NULL COMMENT 'Foreign key to customer id',
  `sp_sfid` int(11) NOT NULL COMMENT 'Foreign key to smshelfsetting sf_id',
  `sp_parentid` int(11) NOT NULL DEFAULT '-1',
  `sp_psid` int(11) NOT NULL COMMENT 'Foreign Key to smplateslot ps_id',
  `sp_masterid` varchar(100) DEFAULT NULL,
  `sp_platename` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sp_id`),
  KEY `fk_sp_psid_ps_id` (`sp_psid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smplateslot`
--

CREATE TABLE IF NOT EXISTS `smplateslot` (
  `ps_id` int(11) NOT NULL AUTO_INCREMENT,
  `ps_sfid` int(11) NOT NULL,
  `ps_slotno` varchar(20) NOT NULL,
  `ps_code` varchar(50) NOT NULL,
  `ps_available` varchar(2) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ps_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=251 ;

--
-- Dumping data for table `smplateslot`
--

INSERT INTO `smplateslot` (`ps_id`, `ps_sfid`, `ps_slotno`, `ps_code`, `ps_available`) VALUES
(1, 8, '0001', '1000-A2-0001', 'Y'),
(2, 8, '0002', '1000-A2-0002', 'Y'),
(3, 8, '0003', '1000-A2-0003', 'Y'),
(4, 8, '0004', '1000-A2-0004', 'Y'),
(5, 8, '0005', '1000-A2-0005', 'Y'),
(6, 8, '0006', '1000-A2-0006', 'Y'),
(7, 8, '0007', '1000-A2-0007', 'Y'),
(8, 8, '0008', '1000-A2-0008', 'Y'),
(9, 8, '0009', '1000-A2-0009', 'Y'),
(10, 8, '0010', '1000-A2-0010', 'Y'),
(11, 8, '0011', '1000-A2-0011', 'Y'),
(12, 8, '0012', '1000-A2-0012', 'Y'),
(13, 8, '0013', '1000-A2-0013', 'Y'),
(14, 8, '0014', '1000-A2-0014', 'Y'),
(15, 8, '0015', '1000-A2-0015', 'Y'),
(16, 8, '0016', '1000-A2-0016', 'Y'),
(17, 8, '0017', '1000-A2-0017', 'Y'),
(18, 8, '0018', '1000-A2-0018', 'Y'),
(19, 8, '0019', '1000-A2-0019', 'Y'),
(20, 8, '0020', '1000-A2-0020', 'Y'),
(21, 8, '0021', '1000-A2-0021', 'Y'),
(22, 8, '0022', '1000-A2-0022', 'Y'),
(23, 8, '0023', '1000-A2-0023', 'Y'),
(24, 8, '0024', '1000-A2-0024', 'Y'),
(25, 8, '0025', '1000-A2-0025', 'Y'),
(26, 8, '0026', '1000-A2-0026', 'Y'),
(27, 8, '0027', '1000-A2-0027', 'Y'),
(28, 8, '0028', '1000-A2-0028', 'Y'),
(29, 8, '0029', '1000-A2-0029', 'Y'),
(30, 8, '0030', '1000-A2-0030', 'Y'),
(31, 8, '0031', '1000-A2-0031', 'Y'),
(32, 8, '0032', '1000-A2-0032', 'Y'),
(33, 8, '0033', '1000-A2-0033', 'Y'),
(34, 8, '0034', '1000-A2-0034', 'Y'),
(35, 8, '0035', '1000-A2-0035', 'Y'),
(36, 8, '0036', '1000-A2-0036', 'Y'),
(37, 8, '0037', '1000-A2-0037', 'Y'),
(38, 8, '0038', '1000-A2-0038', 'Y'),
(39, 8, '0039', '1000-A2-0039', 'Y'),
(40, 8, '0040', '1000-A2-0040', 'Y'),
(41, 8, '0041', '1000-A2-0041', 'Y'),
(42, 8, '0042', '1000-A2-0042', 'Y'),
(43, 8, '0043', '1000-A2-0043', 'Y'),
(44, 8, '0044', '1000-A2-0044', 'Y'),
(45, 8, '0045', '1000-A2-0045', 'Y'),
(46, 8, '0046', '1000-A2-0046', 'Y'),
(47, 8, '0047', '1000-A2-0047', 'Y'),
(48, 8, '0048', '1000-A2-0048', 'Y'),
(49, 8, '0049', '1000-A2-0049', 'Y'),
(50, 8, '0050', '1000-A2-0050', 'Y'),
(51, 8, '0051', '1000-A2-0051', 'Y'),
(52, 8, '0052', '1000-A2-0052', 'Y'),
(53, 8, '0053', '1000-A2-0053', 'Y'),
(54, 8, '0054', '1000-A2-0054', 'Y'),
(55, 8, '0055', '1000-A2-0055', 'Y'),
(56, 8, '0056', '1000-A2-0056', 'Y'),
(57, 8, '0057', '1000-A2-0057', 'Y'),
(58, 8, '0058', '1000-A2-0058', 'Y'),
(59, 8, '0059', '1000-A2-0059', 'Y'),
(60, 8, '0060', '1000-A2-0060', 'Y'),
(61, 8, '0061', '1000-A2-0061', 'Y'),
(62, 8, '0062', '1000-A2-0062', 'Y'),
(63, 8, '0063', '1000-A2-0063', 'Y'),
(64, 8, '0064', '1000-A2-0064', 'Y'),
(65, 8, '0065', '1000-A2-0065', 'Y'),
(66, 8, '0066', '1000-A2-0066', 'Y'),
(67, 8, '0067', '1000-A2-0067', 'Y'),
(68, 8, '0068', '1000-A2-0068', 'Y'),
(69, 8, '0069', '1000-A2-0069', 'Y'),
(70, 8, '0070', '1000-A2-0070', 'Y'),
(71, 8, '0071', '1000-A2-0071', 'Y'),
(72, 8, '0072', '1000-A2-0072', 'Y'),
(73, 8, '0073', '1000-A2-0073', 'Y'),
(74, 8, '0074', '1000-A2-0074', 'Y'),
(75, 8, '0075', '1000-A2-0075', 'Y'),
(76, 8, '0076', '1000-A2-0076', 'Y'),
(77, 8, '0077', '1000-A2-0077', 'Y'),
(78, 8, '0078', '1000-A2-0078', 'Y'),
(79, 8, '0079', '1000-A2-0079', 'Y'),
(80, 8, '0080', '1000-A2-0080', 'Y'),
(81, 8, '0081', '1000-A2-0081', 'Y'),
(82, 8, '0082', '1000-A2-0082', 'Y'),
(83, 8, '0083', '1000-A2-0083', 'Y'),
(84, 8, '0084', '1000-A2-0084', 'Y'),
(85, 8, '0085', '1000-A2-0085', 'Y'),
(86, 8, '0086', '1000-A2-0086', 'Y'),
(87, 8, '0087', '1000-A2-0087', 'Y'),
(88, 8, '0088', '1000-A2-0088', 'Y'),
(89, 8, '0089', '1000-A2-0089', 'Y'),
(90, 8, '0090', '1000-A2-0090', 'Y'),
(91, 8, '0091', '1000-A2-0091', 'Y'),
(92, 8, '0092', '1000-A2-0092', 'Y'),
(93, 8, '0093', '1000-A2-0093', 'Y'),
(94, 8, '0094', '1000-A2-0094', 'Y'),
(95, 8, '0095', '1000-A2-0095', 'Y'),
(96, 8, '0096', '1000-A2-0096', 'Y'),
(97, 8, '0097', '1000-A2-0097', 'Y'),
(98, 8, '0098', '1000-A2-0098', 'Y'),
(99, 8, '0099', '1000-A2-0099', 'Y'),
(100, 8, '0100', '1000-A2-0100', 'Y'),
(101, 8, '0101', '1000-A2-0101', 'Y'),
(102, 8, '0102', '1000-A2-0102', 'Y'),
(103, 8, '0103', '1000-A2-0103', 'Y'),
(104, 8, '0104', '1000-A2-0104', 'Y'),
(105, 8, '0105', '1000-A2-0105', 'Y'),
(106, 8, '0106', '1000-A2-0106', 'Y'),
(107, 8, '0107', '1000-A2-0107', 'Y'),
(108, 8, '0108', '1000-A2-0108', 'Y'),
(109, 8, '0109', '1000-A2-0109', 'Y'),
(110, 8, '0110', '1000-A2-0110', 'Y'),
(111, 8, '0111', '1000-A2-0111', 'Y'),
(112, 8, '0112', '1000-A2-0112', 'Y'),
(113, 8, '0113', '1000-A2-0113', 'Y'),
(114, 8, '0114', '1000-A2-0114', 'Y'),
(115, 8, '0115', '1000-A2-0115', 'Y'),
(116, 8, '0116', '1000-A2-0116', 'Y'),
(117, 8, '0117', '1000-A2-0117', 'Y'),
(118, 8, '0118', '1000-A2-0118', 'Y'),
(119, 8, '0119', '1000-A2-0119', 'Y'),
(120, 8, '0120', '1000-A2-0120', 'Y'),
(121, 8, '0121', '1000-A2-0121', 'Y'),
(122, 8, '0122', '1000-A2-0122', 'Y'),
(123, 8, '0123', '1000-A2-0123', 'Y'),
(124, 8, '0124', '1000-A2-0124', 'Y'),
(125, 8, '0125', '1000-A2-0125', 'Y'),
(126, 8, '0126', '1000-A2-0126', 'Y'),
(127, 8, '0127', '1000-A2-0127', 'Y'),
(128, 8, '0128', '1000-A2-0128', 'Y'),
(129, 8, '0129', '1000-A2-0129', 'Y'),
(130, 8, '0130', '1000-A2-0130', 'Y'),
(131, 8, '0131', '1000-A2-0131', 'Y'),
(132, 8, '0132', '1000-A2-0132', 'Y'),
(133, 8, '0133', '1000-A2-0133', 'Y'),
(134, 8, '0134', '1000-A2-0134', 'Y'),
(135, 8, '0135', '1000-A2-0135', 'Y'),
(136, 8, '0136', '1000-A2-0136', 'Y'),
(137, 8, '0137', '1000-A2-0137', 'Y'),
(138, 8, '0138', '1000-A2-0138', 'Y'),
(139, 8, '0139', '1000-A2-0139', 'Y'),
(140, 8, '0140', '1000-A2-0140', 'Y'),
(141, 8, '0141', '1000-A2-0141', 'Y'),
(142, 8, '0142', '1000-A2-0142', 'Y'),
(143, 8, '0143', '1000-A2-0143', 'Y'),
(144, 8, '0144', '1000-A2-0144', 'Y'),
(145, 8, '0145', '1000-A2-0145', 'Y'),
(146, 8, '0146', '1000-A2-0146', 'Y'),
(147, 8, '0147', '1000-A2-0147', 'Y'),
(148, 8, '0148', '1000-A2-0148', 'Y'),
(149, 8, '0149', '1000-A2-0149', 'Y'),
(150, 8, '0150', '1000-A2-0150', 'Y'),
(151, 8, '0151', '1000-A2-0151', 'Y'),
(152, 8, '0152', '1000-A2-0152', 'Y'),
(153, 8, '0153', '1000-A2-0153', 'Y'),
(154, 8, '0154', '1000-A2-0154', 'Y'),
(155, 8, '0155', '1000-A2-0155', 'Y'),
(156, 8, '0156', '1000-A2-0156', 'Y'),
(157, 8, '0157', '1000-A2-0157', 'Y'),
(158, 8, '0158', '1000-A2-0158', 'Y'),
(159, 8, '0159', '1000-A2-0159', 'Y'),
(160, 8, '0160', '1000-A2-0160', 'Y'),
(161, 8, '0161', '1000-A2-0161', 'Y'),
(162, 8, '0162', '1000-A2-0162', 'Y'),
(163, 8, '0163', '1000-A2-0163', 'Y'),
(164, 8, '0164', '1000-A2-0164', 'Y'),
(165, 8, '0165', '1000-A2-0165', 'Y'),
(166, 8, '0166', '1000-A2-0166', 'Y'),
(167, 8, '0167', '1000-A2-0167', 'Y'),
(168, 8, '0168', '1000-A2-0168', 'Y'),
(169, 8, '0169', '1000-A2-0169', 'Y'),
(170, 8, '0170', '1000-A2-0170', 'Y'),
(171, 8, '0171', '1000-A2-0171', 'Y'),
(172, 8, '0172', '1000-A2-0172', 'Y'),
(173, 8, '0173', '1000-A2-0173', 'Y'),
(174, 8, '0174', '1000-A2-0174', 'Y'),
(175, 8, '0175', '1000-A2-0175', 'Y'),
(176, 8, '0176', '1000-A2-0176', 'Y'),
(177, 8, '0177', '1000-A2-0177', 'Y'),
(178, 8, '0178', '1000-A2-0178', 'Y'),
(179, 8, '0179', '1000-A2-0179', 'Y'),
(180, 8, '0180', '1000-A2-0180', 'Y'),
(181, 8, '0181', '1000-A2-0181', 'Y'),
(182, 8, '0182', '1000-A2-0182', 'Y'),
(183, 8, '0183', '1000-A2-0183', 'Y'),
(184, 8, '0184', '1000-A2-0184', 'Y'),
(185, 8, '0185', '1000-A2-0185', 'Y'),
(186, 8, '0186', '1000-A2-0186', 'Y'),
(187, 8, '0187', '1000-A2-0187', 'Y'),
(188, 8, '0188', '1000-A2-0188', 'Y'),
(189, 8, '0189', '1000-A2-0189', 'Y'),
(190, 8, '0190', '1000-A2-0190', 'Y'),
(191, 8, '0191', '1000-A2-0191', 'Y'),
(192, 8, '0192', '1000-A2-0192', 'Y'),
(193, 8, '0193', '1000-A2-0193', 'Y'),
(194, 8, '0194', '1000-A2-0194', 'Y'),
(195, 8, '0195', '1000-A2-0195', 'Y'),
(196, 8, '0196', '1000-A2-0196', 'Y'),
(197, 8, '0197', '1000-A2-0197', 'Y'),
(198, 8, '0198', '1000-A2-0198', 'Y'),
(199, 8, '0199', '1000-A2-0199', 'Y'),
(200, 8, '0200', '1000-A2-0200', 'Y'),
(201, 10, '0001', '1000-A3-0001', 'Y'),
(202, 10, '0002', '1000-A3-0002', 'Y'),
(203, 10, '0003', '1000-A3-0003', 'Y'),
(204, 10, '0004', '1000-A3-0004', 'Y'),
(205, 10, '0005', '1000-A3-0005', 'Y'),
(206, 10, '0006', '1000-A3-0006', 'Y'),
(207, 10, '0007', '1000-A3-0007', 'Y'),
(208, 10, '0008', '1000-A3-0008', 'Y'),
(209, 10, '0009', '1000-A3-0009', 'Y'),
(210, 10, '0010', '1000-A3-0010', 'Y'),
(211, 10, '0011', '1000-A3-0011', 'Y'),
(212, 10, '0012', '1000-A3-0012', 'Y'),
(213, 10, '0013', '1000-A3-0013', 'Y'),
(214, 10, '0014', '1000-A3-0014', 'Y'),
(215, 10, '0015', '1000-A3-0015', 'Y'),
(216, 10, '0016', '1000-A3-0016', 'Y'),
(217, 10, '0017', '1000-A3-0017', 'Y'),
(218, 10, '0018', '1000-A3-0018', 'Y'),
(219, 10, '0019', '1000-A3-0019', 'Y'),
(220, 10, '0020', '1000-A3-0020', 'Y'),
(221, 10, '0021', '1000-A3-0021', 'Y'),
(222, 10, '0022', '1000-A3-0022', 'Y'),
(223, 10, '0023', '1000-A3-0023', 'Y'),
(224, 10, '0024', '1000-A3-0024', 'Y'),
(225, 10, '0025', '1000-A3-0025', 'Y'),
(226, 10, '0026', '1000-A3-0026', 'Y'),
(227, 10, '0027', '1000-A3-0027', 'Y'),
(228, 10, '0028', '1000-A3-0028', 'Y'),
(229, 10, '0029', '1000-A3-0029', 'Y'),
(230, 10, '0030', '1000-A3-0030', 'Y'),
(231, 10, '0031', '1000-A3-0031', 'Y'),
(232, 10, '0032', '1000-A3-0032', 'Y'),
(233, 10, '0033', '1000-A3-0033', 'Y'),
(234, 10, '0034', '1000-A3-0034', 'Y'),
(235, 10, '0035', '1000-A3-0035', 'Y'),
(236, 10, '0036', '1000-A3-0036', 'Y'),
(237, 10, '0037', '1000-A3-0037', 'Y'),
(238, 10, '0038', '1000-A3-0038', 'Y'),
(239, 10, '0039', '1000-A3-0039', 'Y'),
(240, 10, '0040', '1000-A3-0040', 'Y'),
(241, 10, '0041', '1000-A3-0041', 'Y'),
(242, 10, '0042', '1000-A3-0042', 'Y'),
(243, 10, '0043', '1000-A3-0043', 'Y'),
(244, 10, '0044', '1000-A3-0044', 'Y'),
(245, 10, '0045', '1000-A3-0045', 'Y'),
(246, 10, '0046', '1000-A3-0046', 'Y'),
(247, 10, '0047', '1000-A3-0047', 'Y'),
(248, 10, '0048', '1000-A3-0048', 'Y'),
(249, 10, '0049', '1000-A3-0049', 'Y'),
(250, 10, '0050', '1000-A3-0050', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `smshelf`
--

CREATE TABLE IF NOT EXISTS `smshelf` (
  `slf_id` int(11) NOT NULL AUTO_INCREMENT,
  `slf_sfid` int(11) DEFAULT NULL,
  `slf_code` varchar(100) DEFAULT NULL,
  `slf_row` int(11) DEFAULT NULL,
  `slf_col` int(11) DEFAULT NULL,
  `slf_qty` int(11) DEFAULT '0',
  PRIMARY KEY (`slf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smshelfgroup`
--

CREATE TABLE IF NOT EXISTS `smshelfgroup` (
  `sg_id` int(11) NOT NULL AUTO_INCREMENT,
  `sg_code` varchar(10) DEFAULT NULL,
  `sg_groupname` varchar(200) DEFAULT NULL,
  `sg_seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`sg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `smshelfgroup`
--

INSERT INTO `smshelfgroup` (`sg_id`, `sg_code`, `sg_groupname`, `sg_seq`) VALUES
(1, '1250', '1250 Group', 20),
(2, '1650', '1650 Group', 30),
(3, '1000', '1000 Group', 10);

-- --------------------------------------------------------

--
-- Table structure for table `smshelfitem`
--

CREATE TABLE IF NOT EXISTS `smshelfitem` (
  `sfi_id` int(11) NOT NULL AUTO_INCREMENT,
  `sfi_slfid` int(11) DEFAULT NULL,
  `sfi_itemname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sfi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `smshelfitem`
--

INSERT INTO `smshelfitem` (`sfi_id`, `sfi_slfid`, `sfi_itemname`) VALUES
(1, 193, '193-1'),
(2, 193, '193-2'),
(3, 194, '194-10'),
(4, 194, '194-20');

-- --------------------------------------------------------

--
-- Table structure for table `smshelfsetting`
--

CREATE TABLE IF NOT EXISTS `smshelfsetting` (
  `sf_id` int(11) NOT NULL AUTO_INCREMENT,
  `sf_sgid` int(11) DEFAULT NULL,
  `sf_code` varchar(10) DEFAULT NULL,
  `sf_desc` varchar(200) DEFAULT NULL,
  `sf_totalplate` int(11) NOT NULL,
  `sf_seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`sf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `smshelfsetting`
--

INSERT INTO `smshelfsetting` (`sf_id`, `sf_sgid`, `sf_code`, `sf_desc`, `sf_totalplate`, `sf_seq`) VALUES
(7, 3, 'A1', 'For Machine 1000', 200, 10),
(8, 3, 'A2', 'Testing ', 200, 20),
(10, 3, 'A3', 'Testing 2', 50, 20);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `smplate`
--
ALTER TABLE `smplate`
  ADD CONSTRAINT `fk_sp_psid_ps_id` FOREIGN KEY (`sp_psid`) REFERENCES `smplateslot` (`ps_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
