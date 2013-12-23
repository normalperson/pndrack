-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 23, 2013 at 10:50 AM
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
CREATE DEFINER=`root`@`localhost` FUNCTION `getslot`(p_shelfid int) RETURNS int(11)
BEGIN
  DECLARE v_slotid int  DEFAULT 0;
 
  select min(ps_id) into v_slotid from smplateslot where ps_sfid = p_shelfid and ps_available = 'Y';
  
  update smplateslot 
  set ps_available = 'N'
  where ps_id = v_slotid;

  return v_slotid;
END$$

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

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
(49, 'CREATEPLATE', 43, 'Create Plate', 'ACTIVE', 1050, NULL, NULL, 'Y', 'Main', NULL, 'createplate', NULL, NULL),
(50, 'USERSETT', 6, 'User Setting', 'ACTIVE', 4300, '', '', 'Y', 'Setting', '', 'usersetup', '', ''),
(52, 'USERSETUP', 50, 'User Setup', 'ACTIVE', 4310, '', '', 'Y', 'Setting', '', 'usersetup', '', ''),
(53, 'ROLESETUP', 50, 'Role Setup', 'ACTIVE', 4320, '', '', 'Y', 'Setting', '', 'rolesetup', '', ''),
(54, 'PERMSETUP', 50, 'Permission Setup', 'ACTIVE', 4330, '', '', 'Y', 'Setting', '', 'permissionsetup', '', ''),
(55, 'ORGSETUP', 6, 'Org Setting', 'ACTIVE', 4300, NULL, NULL, 'Y', 'Setting', NULL, 'org', NULL, NULL),
(56, 'CLIUSRSETUP', 50, 'Client User Menu', 'ACTIVE', 4305, '', '', 'Y', 'Setting', '', 'cusersetup', '', ''),
(57, 'PCKGSETUP', 6, 'Package Setup', 'ACTIVE', 4300, NULL, NULL, 'Y', 'Setting', NULL, 'packagesetup', NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `fcorg`
--

INSERT INTO `fcorg` (`org_id`, `org_code`, `org_name`, `org_parentid`, `org_primaryid`, `org_address`, `org_contactno`, `org_status`) VALUES
(1, 'SHERATON', 'SHERATON', 0, 'SHERATON', NULL, NULL, 'ACTIVE'),
(2, 'Deswell', 'Deswell', NULL, NULL, NULL, NULL, 'ACTIVE'),
(3, 'Deswell_KLANG', 'Deswell Klang Branch', 2, NULL, NULL, NULL, 'ACTIVE'),
(4, 'darun', 'darun', NULL, NULL, NULL, NULL, 'ACTIVE'),
(5, 'Darun_KLANG', 'Darun KLANG', 4, NULL, NULL, NULL, 'ACTIVE');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fcpermission`
--

INSERT INTO `fcpermission` (`pms_id`, `pms_code`, `pms_desc`) VALUES
(1, 'VW_MAIN', 'View Main');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fcrole`
--

INSERT INTO `fcrole` (`rol_id`, `rol_code`, `rol_desc`, `rol_status`) VALUES
(1, 'admin', 'admin', 'ACTIVE'),
(2, 'MANAGER', 'Manager', 'ACTIVE');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fcroleperm`
--

INSERT INTO `fcroleperm` (`rp_id`, `rp_rolid`, `rp_pmsid`) VALUES
(2, 1, 1),
(1, 2, 1);

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
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2013-08-15 01:55:18', 'Administrator', NULL, '2013-12-22 13:36:48', '2013-12-22 10:10:53', '2013-12-22 09:54:32', 'ADMIN', 'a:3:{s:14:"urlbeforelogin";s:9:"/pndrack/";s:7:"dbosess";a:6:{s:11:"setup_shelf";a:4:{s:6:"lastid";a:0:{}s:4:"sort";a:0:{}s:6:"search";a:0:{}s:5:"state";s:4:"list";}s:16:"setup_shelfgroup";a:4:{s:6:"lastid";a:0:{}s:4:"sort";a:0:{}s:6:"search";a:0:{}s:5:"state";s:4:"list";}s:9:"platelist";a:4:{s:6:"lastid";a:0:{}s:4:"sort";a:0:{}s:6:"search";a:0:{}s:5:"state";s:4:"list";}s:14:"setup_customer";a:4:{s:6:"lastid";a:0:{}s:4:"sort";a:0:{}s:6:"search";a:0:{}s:5:"state";s:4:"list";}s:9:"setup_org";a:4:{s:6:"lastid";a:0:{}s:4:"sort";a:0:{}s:6:"search";a:0:{}s:5:"state";s:4:"list";}s:7:"profile";a:4:{s:6:"lastid";a:1:{s:10:"usr_userid";s:5:"admin";}s:4:"sort";a:0:{}s:6:"search";a:0:{}s:5:"state";s:4:"edit";}}s:9:"dboconfig";a:0:{}}', NULL, 'ACTIVE'),
('danny', 'df4bf92e16bbb7396c50d637f6b7ad9a4c8c274c', '2013-12-22 10:04:40', 'Danny', NULL, '2013-12-22 10:10:51', '2013-12-22 10:04:48', '0000-00-00 00:00:00', NULL, 'a:0:{}', NULL, 'ACTIVE'),
('hongyee', '6e9c3873353e809bcb5968684b71cc07ed68399f', '2013-12-22 09:53:38', 'Hong Yee', NULL, '2013-12-22 09:59:20', '2013-12-22 09:55:35', '0000-00-00 00:00:00', NULL, 'a:0:{}', NULL, 'ACTIVE');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=221 ;

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
(198, 'admin', '127.0.0.1', 'Y', '2013-12-11 07:52:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(199, 'admin', '127.0.0.1', 'Y', '2013-12-12 04:10:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(200, 'admin', '127.0.0.1', 'Y', '2013-12-12 04:13:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(201, 'admin', '127.0.0.1', 'Y', '2013-12-12 05:15:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(202, 'admin', '127.0.0.1', 'Y', '2013-12-14 07:05:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(203, 'admin', '127.0.0.1', 'Y', '2013-12-14 12:39:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(204, 'admin', '127.0.0.1', 'Y', '2013-12-19 07:13:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(205, 'admin', '127.0.0.1', 'Y', '2013-12-19 07:16:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(206, 'admin', '127.0.0.1', 'Y', '2013-12-20 08:06:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(207, 'admin', '127.0.0.1', 'Y', '2013-12-20 11:09:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(208, 'admin', '127.0.0.1', 'Y', '2013-12-22 09:06:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(209, 'hongyee', '127.0.0.1', 'N', '2013-12-22 09:54:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(210, 'admin', '127.0.0.1', 'N', '2013-12-22 09:54:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(211, 'admin', '127.0.0.1', 'N', '2013-12-22 09:54:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(212, 'admin', '127.0.0.1', 'N', '2013-12-22 09:54:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(213, 'admin', '127.0.0.1', 'N', '2013-12-22 09:54:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(214, 'admin', '127.0.0.1', 'N', '2013-12-22 09:54:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(215, 'admin', '127.0.0.1', 'N', '2013-12-22 09:54:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(216, 'admin', '127.0.0.1', 'N', '2013-12-22 09:54:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(217, 'hongyee', '127.0.0.1', 'Y', '2013-12-22 09:55:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(218, 'admin', '127.0.0.1', 'Y', '2013-12-22 09:59:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(219, 'danny', '127.0.0.1', 'Y', '2013-12-22 10:04:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL),
(220, 'admin', '127.0.0.1', 'Y', '2013-12-22 10:10:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'N', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `fcuserorgrole`
--

INSERT INTO `fcuserorgrole` (`uor_id`, `uor_usrid`, `uor_orgid`, `uor_rolid`, `uor_seq`) VALUES
(2, 'Deswell', 3, 1, 1),
(3, 'Hong Yee', 3, 1, 1),
(5, 'admin', 1, 1, 1),
(6, 'danny', 5, 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=209 ;

--
-- Dumping data for table `fcusersession`
--

INSERT INTO `fcusersession` (`us_id`, `us_sessid`, `us_userid`, `us_ip`, `us_active`, `us_created`, `us_last_active`, `us_forcecloseby`) VALUES
(208, 'ejudlov2aatn52smciv2qb9bq2', 'admin', '127.0.0.1', 'Y', '2013-12-22 10:10:54', '2013-12-22 10:10:54', NULL);

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
  `cus_orgid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `smcustomer`
--

INSERT INTO `smcustomer` (`cus_id`, `cus_name`, `cus_regno`, `cus_masterid`, `cus_contactno`, `cus_orgid`) VALUES
(1, 'Sony', 'S13812-V', 'MS09-13-A31', NULL, NULL),
(2, 'Samsung', '9014555-V', 'MS09-11-B31', NULL, NULL),
(3, 'LG', '8555129-V', 'ML09-19-D11', NULL, NULL),
(4, 'Panasonic', 'P92141-V', 'MP09-31-F11', NULL, NULL),
(5, 'Electrolux', 'E22515-V', 'MK15-44-E11', NULL, NULL),
(6, 'Asus', 'A22515-V', 'MS41-77-E11', NULL, NULL),
(7, 'New Company', 'REg1234', NULL, NULL, NULL),
(8, 'Company 2', 'REg2222222', NULL, NULL, NULL),
(9, 'Company 3', 'Reg1234', NULL, NULL, NULL),
(10, 'New Company', 'Reg11', 'MASTE123', '012-1234', NULL),
(11, 'CompanyA', 'A', NULL, NULL, NULL),
(12, 'CompanyB', 'B', NULL, NULL, NULL),
(13, 'CompanyC', 'C', NULL, NULL, NULL),
(14, 'CompanyD', 'D', NULL, NULL, NULL),
(15, 'CompanyE', 'E', NULL, NULL, NULL),
(16, 'CompanyF', 'F', NULL, NULL, NULL),
(17, 'CompanyG', 'G', NULL, NULL, NULL),
(18, 'CompanyH', 'H', NULL, NULL, NULL),
(19, 'CompanyI', 'I', NULL, NULL, NULL),
(20, 'CompanyJ', 'J', NULL, NULL, NULL),
(21, 'CompanyL', 'L', NULL, NULL, NULL),
(22, 'CompanyM', 'M', NULL, NULL, NULL),
(23, 'CompanyN', 'N', NULL, NULL, NULL),
(24, 'CompanyO', 'O', NULL, NULL, NULL),
(25, 'CompanyP', 'P', NULL, NULL, NULL),
(26, 'CompanyQ', 'Q', 'Q', 'Q', NULL),
(27, 'CompanyR', 'R', 'R', 'R', NULL),
(28, 'CompanyS', 'S', 'S', 'S', NULL),
(29, 'CompanyT', 'T', 'T', 'T', NULL),
(30, 'CompanyU', 'U', 'U', 'U', NULL),
(31, 'CompanyV', 'V', 'V', 'V', NULL),
(32, 'TestFinal', 'Final', 'Final', 'Final', NULL),
(59, 'New Cust 1', 'New Cust 1', 'New Cust 1', 'New Cust 1', NULL),
(60, 'Danny Foo', 'DF001', 'DF001', 'DF001', NULL),
(61, 'Fong1234', 'Fong1234', 'Fong1234', 'Fong1234', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `smpackage`
--

CREATE TABLE IF NOT EXISTS `smpackage` (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `pk_description` varchar(200) DEFAULT NULL,
  `pk_price` decimal(10,2) DEFAULT NULL,
  `pk_minplate` int(11) DEFAULT NULL,
  `pk_maxplate` int(11) DEFAULT NULL,
  `pk_maxuser` int(11) DEFAULT NULL,
  `pk_maxorg` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `smpackage`
--

INSERT INTO `smpackage` (`pk_id`, `pk_description`, `pk_price`, `pk_minplate`, `pk_maxplate`, `pk_maxuser`, `pk_maxorg`) VALUES
(1, 'Package 1', '200.00', 1, 10000, NULL, NULL),
(2, 'Package 2', '400.00', 1, 20000, NULL, NULL),
(3, 'Package 3', '600.00', 1, 999999999, NULL, NULL);

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
  `sp_platemodel` varchar(100) DEFAULT NULL,
  `sp_createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sp_createdby` varchar(50) DEFAULT NULL,
  `sp_status` varchar(20) DEFAULT 'ACTIVE' COMMENT 'ACTIVE (Current active using) DAMAGE (Plate damage) THROW (Throw because no repeat order)',
  `sp_orgid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sp_id`),
  KEY `fk_sp_psid_ps_id` (`sp_psid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `smplate`
--

INSERT INTO `smplate` (`sp_id`, `sp_cusid`, `sp_sfid`, `sp_parentid`, `sp_psid`, `sp_masterid`, `sp_platename`, `sp_platemodel`, `sp_createddate`, `sp_createdby`, `sp_status`, `sp_orgid`) VALUES
(27, 1, 11, -1, 272, NULL, 'Sony optional plate name', 'Sony optional plate model', '2013-12-12 08:17:05', 'admin', 'ACTIVE', NULL),
(28, 3, 11, -1, 273, NULL, 'A1', 'A1', '2013-12-12 08:24:56', 'admin', 'ACTIVE', NULL),
(44, 57, 11, -1, 289, NULL, 'CUST20', 'CUST20', '2013-12-12 08:44:51', 'admin', 'ACTIVE', NULL),
(45, 58, 11, -1, 290, NULL, 'CUST22', 'CUST22', '2013-12-12 08:45:37', 'admin', 'ACTIVE', NULL),
(46, 59, 11, -1, 291, NULL, 'New Cust 1', 'New Cust 1', '2013-12-12 08:58:37', 'admin', 'ACTIVE', NULL),
(47, 60, 11, -1, 292, NULL, 'DF001', 'DF001', '2013-12-14 07:06:50', 'admin', 'ACTIVE', NULL),
(48, 60, 11, -1, 293, NULL, 'DF001', 'DF001', '2013-12-14 07:07:11', 'admin', 'ACTIVE', NULL),
(49, 61, 11, -1, 294, NULL, 'Fong1234', 'Fong1234', '2013-12-14 12:51:54', 'admin', 'ACTIVE', NULL),
(50, 1, 14, -1, 851, NULL, 'Plate 1', 'Plate model 1', '2013-12-19 08:16:46', 'admin', 'ACTIVE', NULL),
(51, 1, 14, -1, 852, NULL, 'Plate 2', 'Plate 2', '2013-12-19 08:24:18', 'admin', 'ACTIVE', NULL);

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
  `ps_orgid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ps_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1251 ;

--
-- Dumping data for table `smplateslot`
--

INSERT INTO `smplateslot` (`ps_id`, `ps_sfid`, `ps_slotno`, `ps_code`, `ps_available`, `ps_orgid`) VALUES
(251, 11, '0001', '1000-A1-0001', 'N', NULL),
(252, 11, '0002', '1000-A1-0002', 'N', NULL),
(253, 11, '0003', '1000-A1-0003', 'N', NULL),
(254, 11, '0004', '1000-A1-0004', 'N', NULL),
(255, 11, '0005', '1000-A1-0005', 'N', NULL),
(256, 11, '0006', '1000-A1-0006', 'N', NULL),
(257, 11, '0007', '1000-A1-0007', 'N', NULL),
(258, 11, '0008', '1000-A1-0008', 'N', NULL),
(259, 11, '0009', '1000-A1-0009', 'N', NULL),
(260, 11, '0010', '1000-A1-0010', 'N', NULL),
(261, 11, '0011', '1000-A1-0011', 'N', NULL),
(262, 11, '0012', '1000-A1-0012', 'N', NULL),
(263, 11, '0013', '1000-A1-0013', 'N', NULL),
(264, 11, '0014', '1000-A1-0014', 'N', NULL),
(265, 11, '0015', '1000-A1-0015', 'N', NULL),
(266, 11, '0016', '1000-A1-0016', 'N', NULL),
(267, 11, '0017', '1000-A1-0017', 'N', NULL),
(268, 11, '0018', '1000-A1-0018', 'N', NULL),
(269, 11, '0019', '1000-A1-0019', 'N', NULL),
(270, 11, '0020', '1000-A1-0020', 'N', NULL),
(271, 11, '0021', '1000-A1-0021', 'N', NULL),
(272, 11, '0022', '1000-A1-0022', 'N', NULL),
(273, 11, '0023', '1000-A1-0023', 'N', NULL),
(274, 11, '0024', '1000-A1-0024', 'N', NULL),
(275, 11, '0025', '1000-A1-0025', 'N', NULL),
(276, 11, '0026', '1000-A1-0026', 'N', NULL),
(277, 11, '0027', '1000-A1-0027', 'N', NULL),
(278, 11, '0028', '1000-A1-0028', 'N', NULL),
(279, 11, '0029', '1000-A1-0029', 'N', NULL),
(280, 11, '0030', '1000-A1-0030', 'N', NULL),
(281, 11, '0031', '1000-A1-0031', 'N', NULL),
(282, 11, '0032', '1000-A1-0032', 'N', NULL),
(283, 11, '0033', '1000-A1-0033', 'N', NULL),
(284, 11, '0034', '1000-A1-0034', 'N', NULL),
(285, 11, '0035', '1000-A1-0035', 'N', NULL),
(286, 11, '0036', '1000-A1-0036', 'N', NULL),
(287, 11, '0037', '1000-A1-0037', 'N', NULL),
(288, 11, '0038', '1000-A1-0038', 'N', NULL),
(289, 11, '0039', '1000-A1-0039', 'N', NULL),
(290, 11, '0040', '1000-A1-0040', 'N', NULL),
(291, 11, '0041', '1000-A1-0041', 'N', NULL),
(292, 11, '0042', '1000-A1-0042', 'N', NULL),
(293, 11, '0043', '1000-A1-0043', 'N', NULL),
(294, 11, '0044', '1000-A1-0044', 'N', NULL),
(295, 11, '0045', '1000-A1-0045', 'Y', NULL),
(296, 11, '0046', '1000-A1-0046', 'Y', NULL),
(297, 11, '0047', '1000-A1-0047', 'Y', NULL),
(298, 11, '0048', '1000-A1-0048', 'Y', NULL),
(299, 11, '0049', '1000-A1-0049', 'Y', NULL),
(300, 11, '0050', '1000-A1-0050', 'Y', NULL),
(301, 11, '0051', '1000-A1-0051', 'Y', NULL),
(302, 11, '0052', '1000-A1-0052', 'Y', NULL),
(303, 11, '0053', '1000-A1-0053', 'Y', NULL),
(304, 11, '0054', '1000-A1-0054', 'Y', NULL),
(305, 11, '0055', '1000-A1-0055', 'Y', NULL),
(306, 11, '0056', '1000-A1-0056', 'Y', NULL),
(307, 11, '0057', '1000-A1-0057', 'Y', NULL),
(308, 11, '0058', '1000-A1-0058', 'Y', NULL),
(309, 11, '0059', '1000-A1-0059', 'Y', NULL),
(310, 11, '0060', '1000-A1-0060', 'Y', NULL),
(311, 11, '0061', '1000-A1-0061', 'Y', NULL),
(312, 11, '0062', '1000-A1-0062', 'Y', NULL),
(313, 11, '0063', '1000-A1-0063', 'Y', NULL),
(314, 11, '0064', '1000-A1-0064', 'Y', NULL),
(315, 11, '0065', '1000-A1-0065', 'Y', NULL),
(316, 11, '0066', '1000-A1-0066', 'Y', NULL),
(317, 11, '0067', '1000-A1-0067', 'Y', NULL),
(318, 11, '0068', '1000-A1-0068', 'Y', NULL),
(319, 11, '0069', '1000-A1-0069', 'Y', NULL),
(320, 11, '0070', '1000-A1-0070', 'Y', NULL),
(321, 11, '0071', '1000-A1-0071', 'Y', NULL),
(322, 11, '0072', '1000-A1-0072', 'Y', NULL),
(323, 11, '0073', '1000-A1-0073', 'Y', NULL),
(324, 11, '0074', '1000-A1-0074', 'Y', NULL),
(325, 11, '0075', '1000-A1-0075', 'Y', NULL),
(326, 11, '0076', '1000-A1-0076', 'Y', NULL),
(327, 11, '0077', '1000-A1-0077', 'Y', NULL),
(328, 11, '0078', '1000-A1-0078', 'Y', NULL),
(329, 11, '0079', '1000-A1-0079', 'Y', NULL),
(330, 11, '0080', '1000-A1-0080', 'Y', NULL),
(331, 11, '0081', '1000-A1-0081', 'Y', NULL),
(332, 11, '0082', '1000-A1-0082', 'Y', NULL),
(333, 11, '0083', '1000-A1-0083', 'Y', NULL),
(334, 11, '0084', '1000-A1-0084', 'Y', NULL),
(335, 11, '0085', '1000-A1-0085', 'Y', NULL),
(336, 11, '0086', '1000-A1-0086', 'Y', NULL),
(337, 11, '0087', '1000-A1-0087', 'Y', NULL),
(338, 11, '0088', '1000-A1-0088', 'Y', NULL),
(339, 11, '0089', '1000-A1-0089', 'Y', NULL),
(340, 11, '0090', '1000-A1-0090', 'Y', NULL),
(341, 11, '0091', '1000-A1-0091', 'Y', NULL),
(342, 11, '0092', '1000-A1-0092', 'Y', NULL),
(343, 11, '0093', '1000-A1-0093', 'Y', NULL),
(344, 11, '0094', '1000-A1-0094', 'Y', NULL),
(345, 11, '0095', '1000-A1-0095', 'Y', NULL),
(346, 11, '0096', '1000-A1-0096', 'Y', NULL),
(347, 11, '0097', '1000-A1-0097', 'Y', NULL),
(348, 11, '0098', '1000-A1-0098', 'Y', NULL),
(349, 11, '0099', '1000-A1-0099', 'Y', NULL),
(350, 11, '0100', '1000-A1-0100', 'Y', NULL),
(351, 11, '0101', '1000-A1-0101', 'Y', NULL),
(352, 11, '0102', '1000-A1-0102', 'Y', NULL),
(353, 11, '0103', '1000-A1-0103', 'Y', NULL),
(354, 11, '0104', '1000-A1-0104', 'Y', NULL),
(355, 11, '0105', '1000-A1-0105', 'Y', NULL),
(356, 11, '0106', '1000-A1-0106', 'Y', NULL),
(357, 11, '0107', '1000-A1-0107', 'Y', NULL),
(358, 11, '0108', '1000-A1-0108', 'Y', NULL),
(359, 11, '0109', '1000-A1-0109', 'Y', NULL),
(360, 11, '0110', '1000-A1-0110', 'Y', NULL),
(361, 11, '0111', '1000-A1-0111', 'Y', NULL),
(362, 11, '0112', '1000-A1-0112', 'Y', NULL),
(363, 11, '0113', '1000-A1-0113', 'Y', NULL),
(364, 11, '0114', '1000-A1-0114', 'Y', NULL),
(365, 11, '0115', '1000-A1-0115', 'Y', NULL),
(366, 11, '0116', '1000-A1-0116', 'Y', NULL),
(367, 11, '0117', '1000-A1-0117', 'Y', NULL),
(368, 11, '0118', '1000-A1-0118', 'Y', NULL),
(369, 11, '0119', '1000-A1-0119', 'Y', NULL),
(370, 11, '0120', '1000-A1-0120', 'Y', NULL),
(371, 11, '0121', '1000-A1-0121', 'Y', NULL),
(372, 11, '0122', '1000-A1-0122', 'Y', NULL),
(373, 11, '0123', '1000-A1-0123', 'Y', NULL),
(374, 11, '0124', '1000-A1-0124', 'Y', NULL),
(375, 11, '0125', '1000-A1-0125', 'Y', NULL),
(376, 11, '0126', '1000-A1-0126', 'Y', NULL),
(377, 11, '0127', '1000-A1-0127', 'Y', NULL),
(378, 11, '0128', '1000-A1-0128', 'Y', NULL),
(379, 11, '0129', '1000-A1-0129', 'Y', NULL),
(380, 11, '0130', '1000-A1-0130', 'Y', NULL),
(381, 11, '0131', '1000-A1-0131', 'Y', NULL),
(382, 11, '0132', '1000-A1-0132', 'Y', NULL),
(383, 11, '0133', '1000-A1-0133', 'Y', NULL),
(384, 11, '0134', '1000-A1-0134', 'Y', NULL),
(385, 11, '0135', '1000-A1-0135', 'Y', NULL),
(386, 11, '0136', '1000-A1-0136', 'Y', NULL),
(387, 11, '0137', '1000-A1-0137', 'Y', NULL),
(388, 11, '0138', '1000-A1-0138', 'Y', NULL),
(389, 11, '0139', '1000-A1-0139', 'Y', NULL),
(390, 11, '0140', '1000-A1-0140', 'Y', NULL),
(391, 11, '0141', '1000-A1-0141', 'Y', NULL),
(392, 11, '0142', '1000-A1-0142', 'Y', NULL),
(393, 11, '0143', '1000-A1-0143', 'Y', NULL),
(394, 11, '0144', '1000-A1-0144', 'Y', NULL),
(395, 11, '0145', '1000-A1-0145', 'Y', NULL),
(396, 11, '0146', '1000-A1-0146', 'Y', NULL),
(397, 11, '0147', '1000-A1-0147', 'Y', NULL),
(398, 11, '0148', '1000-A1-0148', 'Y', NULL),
(399, 11, '0149', '1000-A1-0149', 'Y', NULL),
(400, 11, '0150', '1000-A1-0150', 'Y', NULL),
(401, 11, '0151', '1000-A1-0151', 'Y', NULL),
(402, 11, '0152', '1000-A1-0152', 'Y', NULL),
(403, 11, '0153', '1000-A1-0153', 'Y', NULL),
(404, 11, '0154', '1000-A1-0154', 'Y', NULL),
(405, 11, '0155', '1000-A1-0155', 'Y', NULL),
(406, 11, '0156', '1000-A1-0156', 'Y', NULL),
(407, 11, '0157', '1000-A1-0157', 'Y', NULL),
(408, 11, '0158', '1000-A1-0158', 'Y', NULL),
(409, 11, '0159', '1000-A1-0159', 'Y', NULL),
(410, 11, '0160', '1000-A1-0160', 'Y', NULL),
(411, 11, '0161', '1000-A1-0161', 'Y', NULL),
(412, 11, '0162', '1000-A1-0162', 'Y', NULL),
(413, 11, '0163', '1000-A1-0163', 'Y', NULL),
(414, 11, '0164', '1000-A1-0164', 'Y', NULL),
(415, 11, '0165', '1000-A1-0165', 'Y', NULL),
(416, 11, '0166', '1000-A1-0166', 'Y', NULL),
(417, 11, '0167', '1000-A1-0167', 'Y', NULL),
(418, 11, '0168', '1000-A1-0168', 'Y', NULL),
(419, 11, '0169', '1000-A1-0169', 'Y', NULL),
(420, 11, '0170', '1000-A1-0170', 'Y', NULL),
(421, 11, '0171', '1000-A1-0171', 'Y', NULL),
(422, 11, '0172', '1000-A1-0172', 'Y', NULL),
(423, 11, '0173', '1000-A1-0173', 'Y', NULL),
(424, 11, '0174', '1000-A1-0174', 'Y', NULL),
(425, 11, '0175', '1000-A1-0175', 'Y', NULL),
(426, 11, '0176', '1000-A1-0176', 'Y', NULL),
(427, 11, '0177', '1000-A1-0177', 'Y', NULL),
(428, 11, '0178', '1000-A1-0178', 'Y', NULL),
(429, 11, '0179', '1000-A1-0179', 'Y', NULL),
(430, 11, '0180', '1000-A1-0180', 'Y', NULL),
(431, 11, '0181', '1000-A1-0181', 'Y', NULL),
(432, 11, '0182', '1000-A1-0182', 'Y', NULL),
(433, 11, '0183', '1000-A1-0183', 'Y', NULL),
(434, 11, '0184', '1000-A1-0184', 'Y', NULL),
(435, 11, '0185', '1000-A1-0185', 'Y', NULL),
(436, 11, '0186', '1000-A1-0186', 'Y', NULL),
(437, 11, '0187', '1000-A1-0187', 'Y', NULL),
(438, 11, '0188', '1000-A1-0188', 'Y', NULL),
(439, 11, '0189', '1000-A1-0189', 'Y', NULL),
(440, 11, '0190', '1000-A1-0190', 'Y', NULL),
(441, 11, '0191', '1000-A1-0191', 'Y', NULL),
(442, 11, '0192', '1000-A1-0192', 'Y', NULL),
(443, 11, '0193', '1000-A1-0193', 'Y', NULL),
(444, 11, '0194', '1000-A1-0194', 'Y', NULL),
(445, 11, '0195', '1000-A1-0195', 'Y', NULL),
(446, 11, '0196', '1000-A1-0196', 'Y', NULL),
(447, 11, '0197', '1000-A1-0197', 'Y', NULL),
(448, 11, '0198', '1000-A1-0198', 'Y', NULL),
(449, 11, '0199', '1000-A1-0199', 'Y', NULL),
(450, 11, '0200', '1000-A1-0200', 'Y', NULL),
(451, 12, '0001', '1000-A2-0001', 'Y', NULL),
(452, 12, '0002', '1000-A2-0002', 'Y', NULL),
(453, 12, '0003', '1000-A2-0003', 'Y', NULL),
(454, 12, '0004', '1000-A2-0004', 'Y', NULL),
(455, 12, '0005', '1000-A2-0005', 'Y', NULL),
(456, 12, '0006', '1000-A2-0006', 'Y', NULL),
(457, 12, '0007', '1000-A2-0007', 'Y', NULL),
(458, 12, '0008', '1000-A2-0008', 'Y', NULL),
(459, 12, '0009', '1000-A2-0009', 'Y', NULL),
(460, 12, '0010', '1000-A2-0010', 'Y', NULL),
(461, 12, '0011', '1000-A2-0011', 'Y', NULL),
(462, 12, '0012', '1000-A2-0012', 'Y', NULL),
(463, 12, '0013', '1000-A2-0013', 'Y', NULL),
(464, 12, '0014', '1000-A2-0014', 'Y', NULL),
(465, 12, '0015', '1000-A2-0015', 'Y', NULL),
(466, 12, '0016', '1000-A2-0016', 'Y', NULL),
(467, 12, '0017', '1000-A2-0017', 'Y', NULL),
(468, 12, '0018', '1000-A2-0018', 'Y', NULL),
(469, 12, '0019', '1000-A2-0019', 'Y', NULL),
(470, 12, '0020', '1000-A2-0020', 'Y', NULL),
(471, 12, '0021', '1000-A2-0021', 'Y', NULL),
(472, 12, '0022', '1000-A2-0022', 'Y', NULL),
(473, 12, '0023', '1000-A2-0023', 'Y', NULL),
(474, 12, '0024', '1000-A2-0024', 'Y', NULL),
(475, 12, '0025', '1000-A2-0025', 'Y', NULL),
(476, 12, '0026', '1000-A2-0026', 'Y', NULL),
(477, 12, '0027', '1000-A2-0027', 'Y', NULL),
(478, 12, '0028', '1000-A2-0028', 'Y', NULL),
(479, 12, '0029', '1000-A2-0029', 'Y', NULL),
(480, 12, '0030', '1000-A2-0030', 'Y', NULL),
(481, 12, '0031', '1000-A2-0031', 'Y', NULL),
(482, 12, '0032', '1000-A2-0032', 'Y', NULL),
(483, 12, '0033', '1000-A2-0033', 'Y', NULL),
(484, 12, '0034', '1000-A2-0034', 'Y', NULL),
(485, 12, '0035', '1000-A2-0035', 'Y', NULL),
(486, 12, '0036', '1000-A2-0036', 'Y', NULL),
(487, 12, '0037', '1000-A2-0037', 'Y', NULL),
(488, 12, '0038', '1000-A2-0038', 'Y', NULL),
(489, 12, '0039', '1000-A2-0039', 'Y', NULL),
(490, 12, '0040', '1000-A2-0040', 'Y', NULL),
(491, 12, '0041', '1000-A2-0041', 'Y', NULL),
(492, 12, '0042', '1000-A2-0042', 'Y', NULL),
(493, 12, '0043', '1000-A2-0043', 'Y', NULL),
(494, 12, '0044', '1000-A2-0044', 'Y', NULL),
(495, 12, '0045', '1000-A2-0045', 'Y', NULL),
(496, 12, '0046', '1000-A2-0046', 'Y', NULL),
(497, 12, '0047', '1000-A2-0047', 'Y', NULL),
(498, 12, '0048', '1000-A2-0048', 'Y', NULL),
(499, 12, '0049', '1000-A2-0049', 'Y', NULL),
(500, 12, '0050', '1000-A2-0050', 'Y', NULL),
(501, 12, '0051', '1000-A2-0051', 'Y', NULL),
(502, 12, '0052', '1000-A2-0052', 'Y', NULL),
(503, 12, '0053', '1000-A2-0053', 'Y', NULL),
(504, 12, '0054', '1000-A2-0054', 'Y', NULL),
(505, 12, '0055', '1000-A2-0055', 'Y', NULL),
(506, 12, '0056', '1000-A2-0056', 'Y', NULL),
(507, 12, '0057', '1000-A2-0057', 'Y', NULL),
(508, 12, '0058', '1000-A2-0058', 'Y', NULL),
(509, 12, '0059', '1000-A2-0059', 'Y', NULL),
(510, 12, '0060', '1000-A2-0060', 'Y', NULL),
(511, 12, '0061', '1000-A2-0061', 'Y', NULL),
(512, 12, '0062', '1000-A2-0062', 'Y', NULL),
(513, 12, '0063', '1000-A2-0063', 'Y', NULL),
(514, 12, '0064', '1000-A2-0064', 'Y', NULL),
(515, 12, '0065', '1000-A2-0065', 'Y', NULL),
(516, 12, '0066', '1000-A2-0066', 'Y', NULL),
(517, 12, '0067', '1000-A2-0067', 'Y', NULL),
(518, 12, '0068', '1000-A2-0068', 'Y', NULL),
(519, 12, '0069', '1000-A2-0069', 'Y', NULL),
(520, 12, '0070', '1000-A2-0070', 'Y', NULL),
(521, 12, '0071', '1000-A2-0071', 'Y', NULL),
(522, 12, '0072', '1000-A2-0072', 'Y', NULL),
(523, 12, '0073', '1000-A2-0073', 'Y', NULL),
(524, 12, '0074', '1000-A2-0074', 'Y', NULL),
(525, 12, '0075', '1000-A2-0075', 'Y', NULL),
(526, 12, '0076', '1000-A2-0076', 'Y', NULL),
(527, 12, '0077', '1000-A2-0077', 'Y', NULL),
(528, 12, '0078', '1000-A2-0078', 'Y', NULL),
(529, 12, '0079', '1000-A2-0079', 'Y', NULL),
(530, 12, '0080', '1000-A2-0080', 'Y', NULL),
(531, 12, '0081', '1000-A2-0081', 'Y', NULL),
(532, 12, '0082', '1000-A2-0082', 'Y', NULL),
(533, 12, '0083', '1000-A2-0083', 'Y', NULL),
(534, 12, '0084', '1000-A2-0084', 'Y', NULL),
(535, 12, '0085', '1000-A2-0085', 'Y', NULL),
(536, 12, '0086', '1000-A2-0086', 'Y', NULL),
(537, 12, '0087', '1000-A2-0087', 'Y', NULL),
(538, 12, '0088', '1000-A2-0088', 'Y', NULL),
(539, 12, '0089', '1000-A2-0089', 'Y', NULL),
(540, 12, '0090', '1000-A2-0090', 'Y', NULL),
(541, 12, '0091', '1000-A2-0091', 'Y', NULL),
(542, 12, '0092', '1000-A2-0092', 'Y', NULL),
(543, 12, '0093', '1000-A2-0093', 'Y', NULL),
(544, 12, '0094', '1000-A2-0094', 'Y', NULL),
(545, 12, '0095', '1000-A2-0095', 'Y', NULL),
(546, 12, '0096', '1000-A2-0096', 'Y', NULL),
(547, 12, '0097', '1000-A2-0097', 'Y', NULL),
(548, 12, '0098', '1000-A2-0098', 'Y', NULL),
(549, 12, '0099', '1000-A2-0099', 'Y', NULL),
(550, 12, '0100', '1000-A2-0100', 'Y', NULL),
(551, 12, '0101', '1000-A2-0101', 'Y', NULL),
(552, 12, '0102', '1000-A2-0102', 'Y', NULL),
(553, 12, '0103', '1000-A2-0103', 'Y', NULL),
(554, 12, '0104', '1000-A2-0104', 'Y', NULL),
(555, 12, '0105', '1000-A2-0105', 'Y', NULL),
(556, 12, '0106', '1000-A2-0106', 'Y', NULL),
(557, 12, '0107', '1000-A2-0107', 'Y', NULL),
(558, 12, '0108', '1000-A2-0108', 'Y', NULL),
(559, 12, '0109', '1000-A2-0109', 'Y', NULL),
(560, 12, '0110', '1000-A2-0110', 'Y', NULL),
(561, 12, '0111', '1000-A2-0111', 'Y', NULL),
(562, 12, '0112', '1000-A2-0112', 'Y', NULL),
(563, 12, '0113', '1000-A2-0113', 'Y', NULL),
(564, 12, '0114', '1000-A2-0114', 'Y', NULL),
(565, 12, '0115', '1000-A2-0115', 'Y', NULL),
(566, 12, '0116', '1000-A2-0116', 'Y', NULL),
(567, 12, '0117', '1000-A2-0117', 'Y', NULL),
(568, 12, '0118', '1000-A2-0118', 'Y', NULL),
(569, 12, '0119', '1000-A2-0119', 'Y', NULL),
(570, 12, '0120', '1000-A2-0120', 'Y', NULL),
(571, 12, '0121', '1000-A2-0121', 'Y', NULL),
(572, 12, '0122', '1000-A2-0122', 'Y', NULL),
(573, 12, '0123', '1000-A2-0123', 'Y', NULL),
(574, 12, '0124', '1000-A2-0124', 'Y', NULL),
(575, 12, '0125', '1000-A2-0125', 'Y', NULL),
(576, 12, '0126', '1000-A2-0126', 'Y', NULL),
(577, 12, '0127', '1000-A2-0127', 'Y', NULL),
(578, 12, '0128', '1000-A2-0128', 'Y', NULL),
(579, 12, '0129', '1000-A2-0129', 'Y', NULL),
(580, 12, '0130', '1000-A2-0130', 'Y', NULL),
(581, 12, '0131', '1000-A2-0131', 'Y', NULL),
(582, 12, '0132', '1000-A2-0132', 'Y', NULL),
(583, 12, '0133', '1000-A2-0133', 'Y', NULL),
(584, 12, '0134', '1000-A2-0134', 'Y', NULL),
(585, 12, '0135', '1000-A2-0135', 'Y', NULL),
(586, 12, '0136', '1000-A2-0136', 'Y', NULL),
(587, 12, '0137', '1000-A2-0137', 'Y', NULL),
(588, 12, '0138', '1000-A2-0138', 'Y', NULL),
(589, 12, '0139', '1000-A2-0139', 'Y', NULL),
(590, 12, '0140', '1000-A2-0140', 'Y', NULL),
(591, 12, '0141', '1000-A2-0141', 'Y', NULL),
(592, 12, '0142', '1000-A2-0142', 'Y', NULL),
(593, 12, '0143', '1000-A2-0143', 'Y', NULL),
(594, 12, '0144', '1000-A2-0144', 'Y', NULL),
(595, 12, '0145', '1000-A2-0145', 'Y', NULL),
(596, 12, '0146', '1000-A2-0146', 'Y', NULL),
(597, 12, '0147', '1000-A2-0147', 'Y', NULL),
(598, 12, '0148', '1000-A2-0148', 'Y', NULL),
(599, 12, '0149', '1000-A2-0149', 'Y', NULL),
(600, 12, '0150', '1000-A2-0150', 'Y', NULL),
(601, 12, '0151', '1000-A2-0151', 'Y', NULL),
(602, 12, '0152', '1000-A2-0152', 'Y', NULL),
(603, 12, '0153', '1000-A2-0153', 'Y', NULL),
(604, 12, '0154', '1000-A2-0154', 'Y', NULL),
(605, 12, '0155', '1000-A2-0155', 'Y', NULL),
(606, 12, '0156', '1000-A2-0156', 'Y', NULL),
(607, 12, '0157', '1000-A2-0157', 'Y', NULL),
(608, 12, '0158', '1000-A2-0158', 'Y', NULL),
(609, 12, '0159', '1000-A2-0159', 'Y', NULL),
(610, 12, '0160', '1000-A2-0160', 'Y', NULL),
(611, 12, '0161', '1000-A2-0161', 'Y', NULL),
(612, 12, '0162', '1000-A2-0162', 'Y', NULL),
(613, 12, '0163', '1000-A2-0163', 'Y', NULL),
(614, 12, '0164', '1000-A2-0164', 'Y', NULL),
(615, 12, '0165', '1000-A2-0165', 'Y', NULL),
(616, 12, '0166', '1000-A2-0166', 'Y', NULL),
(617, 12, '0167', '1000-A2-0167', 'Y', NULL),
(618, 12, '0168', '1000-A2-0168', 'Y', NULL),
(619, 12, '0169', '1000-A2-0169', 'Y', NULL),
(620, 12, '0170', '1000-A2-0170', 'Y', NULL),
(621, 12, '0171', '1000-A2-0171', 'Y', NULL),
(622, 12, '0172', '1000-A2-0172', 'Y', NULL),
(623, 12, '0173', '1000-A2-0173', 'Y', NULL),
(624, 12, '0174', '1000-A2-0174', 'Y', NULL),
(625, 12, '0175', '1000-A2-0175', 'Y', NULL),
(626, 12, '0176', '1000-A2-0176', 'Y', NULL),
(627, 12, '0177', '1000-A2-0177', 'Y', NULL),
(628, 12, '0178', '1000-A2-0178', 'Y', NULL),
(629, 12, '0179', '1000-A2-0179', 'Y', NULL),
(630, 12, '0180', '1000-A2-0180', 'Y', NULL),
(631, 12, '0181', '1000-A2-0181', 'Y', NULL),
(632, 12, '0182', '1000-A2-0182', 'Y', NULL),
(633, 12, '0183', '1000-A2-0183', 'Y', NULL),
(634, 12, '0184', '1000-A2-0184', 'Y', NULL),
(635, 12, '0185', '1000-A2-0185', 'Y', NULL),
(636, 12, '0186', '1000-A2-0186', 'Y', NULL),
(637, 12, '0187', '1000-A2-0187', 'Y', NULL),
(638, 12, '0188', '1000-A2-0188', 'Y', NULL),
(639, 12, '0189', '1000-A2-0189', 'Y', NULL),
(640, 12, '0190', '1000-A2-0190', 'Y', NULL),
(641, 12, '0191', '1000-A2-0191', 'Y', NULL),
(642, 12, '0192', '1000-A2-0192', 'Y', NULL),
(643, 12, '0193', '1000-A2-0193', 'Y', NULL),
(644, 12, '0194', '1000-A2-0194', 'Y', NULL),
(645, 12, '0195', '1000-A2-0195', 'Y', NULL),
(646, 12, '0196', '1000-A2-0196', 'Y', NULL),
(647, 12, '0197', '1000-A2-0197', 'Y', NULL),
(648, 12, '0198', '1000-A2-0198', 'Y', NULL),
(649, 12, '0199', '1000-A2-0199', 'Y', NULL),
(650, 12, '0200', '1000-A2-0200', 'Y', NULL),
(651, 13, '0001', '1000-A3-0001', 'Y', NULL),
(652, 13, '0002', '1000-A3-0002', 'Y', NULL),
(653, 13, '0003', '1000-A3-0003', 'Y', NULL),
(654, 13, '0004', '1000-A3-0004', 'Y', NULL),
(655, 13, '0005', '1000-A3-0005', 'Y', NULL),
(656, 13, '0006', '1000-A3-0006', 'Y', NULL),
(657, 13, '0007', '1000-A3-0007', 'Y', NULL),
(658, 13, '0008', '1000-A3-0008', 'Y', NULL),
(659, 13, '0009', '1000-A3-0009', 'Y', NULL),
(660, 13, '0010', '1000-A3-0010', 'Y', NULL),
(661, 13, '0011', '1000-A3-0011', 'Y', NULL),
(662, 13, '0012', '1000-A3-0012', 'Y', NULL),
(663, 13, '0013', '1000-A3-0013', 'Y', NULL),
(664, 13, '0014', '1000-A3-0014', 'Y', NULL),
(665, 13, '0015', '1000-A3-0015', 'Y', NULL),
(666, 13, '0016', '1000-A3-0016', 'Y', NULL),
(667, 13, '0017', '1000-A3-0017', 'Y', NULL),
(668, 13, '0018', '1000-A3-0018', 'Y', NULL),
(669, 13, '0019', '1000-A3-0019', 'Y', NULL),
(670, 13, '0020', '1000-A3-0020', 'Y', NULL),
(671, 13, '0021', '1000-A3-0021', 'Y', NULL),
(672, 13, '0022', '1000-A3-0022', 'Y', NULL),
(673, 13, '0023', '1000-A3-0023', 'Y', NULL),
(674, 13, '0024', '1000-A3-0024', 'Y', NULL),
(675, 13, '0025', '1000-A3-0025', 'Y', NULL),
(676, 13, '0026', '1000-A3-0026', 'Y', NULL),
(677, 13, '0027', '1000-A3-0027', 'Y', NULL),
(678, 13, '0028', '1000-A3-0028', 'Y', NULL),
(679, 13, '0029', '1000-A3-0029', 'Y', NULL),
(680, 13, '0030', '1000-A3-0030', 'Y', NULL),
(681, 13, '0031', '1000-A3-0031', 'Y', NULL),
(682, 13, '0032', '1000-A3-0032', 'Y', NULL),
(683, 13, '0033', '1000-A3-0033', 'Y', NULL),
(684, 13, '0034', '1000-A3-0034', 'Y', NULL),
(685, 13, '0035', '1000-A3-0035', 'Y', NULL),
(686, 13, '0036', '1000-A3-0036', 'Y', NULL),
(687, 13, '0037', '1000-A3-0037', 'Y', NULL),
(688, 13, '0038', '1000-A3-0038', 'Y', NULL),
(689, 13, '0039', '1000-A3-0039', 'Y', NULL),
(690, 13, '0040', '1000-A3-0040', 'Y', NULL),
(691, 13, '0041', '1000-A3-0041', 'Y', NULL),
(692, 13, '0042', '1000-A3-0042', 'Y', NULL),
(693, 13, '0043', '1000-A3-0043', 'Y', NULL),
(694, 13, '0044', '1000-A3-0044', 'Y', NULL),
(695, 13, '0045', '1000-A3-0045', 'Y', NULL),
(696, 13, '0046', '1000-A3-0046', 'Y', NULL),
(697, 13, '0047', '1000-A3-0047', 'Y', NULL),
(698, 13, '0048', '1000-A3-0048', 'Y', NULL),
(699, 13, '0049', '1000-A3-0049', 'Y', NULL),
(700, 13, '0050', '1000-A3-0050', 'Y', NULL),
(701, 13, '0051', '1000-A3-0051', 'Y', NULL),
(702, 13, '0052', '1000-A3-0052', 'Y', NULL),
(703, 13, '0053', '1000-A3-0053', 'Y', NULL),
(704, 13, '0054', '1000-A3-0054', 'Y', NULL),
(705, 13, '0055', '1000-A3-0055', 'Y', NULL),
(706, 13, '0056', '1000-A3-0056', 'Y', NULL),
(707, 13, '0057', '1000-A3-0057', 'Y', NULL),
(708, 13, '0058', '1000-A3-0058', 'Y', NULL),
(709, 13, '0059', '1000-A3-0059', 'Y', NULL),
(710, 13, '0060', '1000-A3-0060', 'Y', NULL),
(711, 13, '0061', '1000-A3-0061', 'Y', NULL),
(712, 13, '0062', '1000-A3-0062', 'Y', NULL),
(713, 13, '0063', '1000-A3-0063', 'Y', NULL),
(714, 13, '0064', '1000-A3-0064', 'Y', NULL),
(715, 13, '0065', '1000-A3-0065', 'Y', NULL),
(716, 13, '0066', '1000-A3-0066', 'Y', NULL),
(717, 13, '0067', '1000-A3-0067', 'Y', NULL),
(718, 13, '0068', '1000-A3-0068', 'Y', NULL),
(719, 13, '0069', '1000-A3-0069', 'Y', NULL),
(720, 13, '0070', '1000-A3-0070', 'Y', NULL),
(721, 13, '0071', '1000-A3-0071', 'Y', NULL),
(722, 13, '0072', '1000-A3-0072', 'Y', NULL),
(723, 13, '0073', '1000-A3-0073', 'Y', NULL),
(724, 13, '0074', '1000-A3-0074', 'Y', NULL),
(725, 13, '0075', '1000-A3-0075', 'Y', NULL),
(726, 13, '0076', '1000-A3-0076', 'Y', NULL),
(727, 13, '0077', '1000-A3-0077', 'Y', NULL),
(728, 13, '0078', '1000-A3-0078', 'Y', NULL),
(729, 13, '0079', '1000-A3-0079', 'Y', NULL),
(730, 13, '0080', '1000-A3-0080', 'Y', NULL),
(731, 13, '0081', '1000-A3-0081', 'Y', NULL),
(732, 13, '0082', '1000-A3-0082', 'Y', NULL),
(733, 13, '0083', '1000-A3-0083', 'Y', NULL),
(734, 13, '0084', '1000-A3-0084', 'Y', NULL),
(735, 13, '0085', '1000-A3-0085', 'Y', NULL),
(736, 13, '0086', '1000-A3-0086', 'Y', NULL),
(737, 13, '0087', '1000-A3-0087', 'Y', NULL),
(738, 13, '0088', '1000-A3-0088', 'Y', NULL),
(739, 13, '0089', '1000-A3-0089', 'Y', NULL),
(740, 13, '0090', '1000-A3-0090', 'Y', NULL),
(741, 13, '0091', '1000-A3-0091', 'Y', NULL),
(742, 13, '0092', '1000-A3-0092', 'Y', NULL),
(743, 13, '0093', '1000-A3-0093', 'Y', NULL),
(744, 13, '0094', '1000-A3-0094', 'Y', NULL),
(745, 13, '0095', '1000-A3-0095', 'Y', NULL),
(746, 13, '0096', '1000-A3-0096', 'Y', NULL),
(747, 13, '0097', '1000-A3-0097', 'Y', NULL),
(748, 13, '0098', '1000-A3-0098', 'Y', NULL),
(749, 13, '0099', '1000-A3-0099', 'Y', NULL),
(750, 13, '0100', '1000-A3-0100', 'Y', NULL),
(751, 13, '0101', '1000-A3-0101', 'Y', NULL),
(752, 13, '0102', '1000-A3-0102', 'Y', NULL),
(753, 13, '0103', '1000-A3-0103', 'Y', NULL),
(754, 13, '0104', '1000-A3-0104', 'Y', NULL),
(755, 13, '0105', '1000-A3-0105', 'Y', NULL),
(756, 13, '0106', '1000-A3-0106', 'Y', NULL),
(757, 13, '0107', '1000-A3-0107', 'Y', NULL),
(758, 13, '0108', '1000-A3-0108', 'Y', NULL),
(759, 13, '0109', '1000-A3-0109', 'Y', NULL),
(760, 13, '0110', '1000-A3-0110', 'Y', NULL),
(761, 13, '0111', '1000-A3-0111', 'Y', NULL),
(762, 13, '0112', '1000-A3-0112', 'Y', NULL),
(763, 13, '0113', '1000-A3-0113', 'Y', NULL),
(764, 13, '0114', '1000-A3-0114', 'Y', NULL),
(765, 13, '0115', '1000-A3-0115', 'Y', NULL),
(766, 13, '0116', '1000-A3-0116', 'Y', NULL),
(767, 13, '0117', '1000-A3-0117', 'Y', NULL),
(768, 13, '0118', '1000-A3-0118', 'Y', NULL),
(769, 13, '0119', '1000-A3-0119', 'Y', NULL),
(770, 13, '0120', '1000-A3-0120', 'Y', NULL),
(771, 13, '0121', '1000-A3-0121', 'Y', NULL),
(772, 13, '0122', '1000-A3-0122', 'Y', NULL),
(773, 13, '0123', '1000-A3-0123', 'Y', NULL),
(774, 13, '0124', '1000-A3-0124', 'Y', NULL),
(775, 13, '0125', '1000-A3-0125', 'Y', NULL),
(776, 13, '0126', '1000-A3-0126', 'Y', NULL),
(777, 13, '0127', '1000-A3-0127', 'Y', NULL),
(778, 13, '0128', '1000-A3-0128', 'Y', NULL),
(779, 13, '0129', '1000-A3-0129', 'Y', NULL),
(780, 13, '0130', '1000-A3-0130', 'Y', NULL),
(781, 13, '0131', '1000-A3-0131', 'Y', NULL),
(782, 13, '0132', '1000-A3-0132', 'Y', NULL),
(783, 13, '0133', '1000-A3-0133', 'Y', NULL),
(784, 13, '0134', '1000-A3-0134', 'Y', NULL),
(785, 13, '0135', '1000-A3-0135', 'Y', NULL),
(786, 13, '0136', '1000-A3-0136', 'Y', NULL),
(787, 13, '0137', '1000-A3-0137', 'Y', NULL),
(788, 13, '0138', '1000-A3-0138', 'Y', NULL),
(789, 13, '0139', '1000-A3-0139', 'Y', NULL),
(790, 13, '0140', '1000-A3-0140', 'Y', NULL),
(791, 13, '0141', '1000-A3-0141', 'Y', NULL),
(792, 13, '0142', '1000-A3-0142', 'Y', NULL),
(793, 13, '0143', '1000-A3-0143', 'Y', NULL),
(794, 13, '0144', '1000-A3-0144', 'Y', NULL),
(795, 13, '0145', '1000-A3-0145', 'Y', NULL),
(796, 13, '0146', '1000-A3-0146', 'Y', NULL),
(797, 13, '0147', '1000-A3-0147', 'Y', NULL),
(798, 13, '0148', '1000-A3-0148', 'Y', NULL),
(799, 13, '0149', '1000-A3-0149', 'Y', NULL),
(800, 13, '0150', '1000-A3-0150', 'Y', NULL),
(801, 13, '0151', '1000-A3-0151', 'Y', NULL),
(802, 13, '0152', '1000-A3-0152', 'Y', NULL),
(803, 13, '0153', '1000-A3-0153', 'Y', NULL),
(804, 13, '0154', '1000-A3-0154', 'Y', NULL),
(805, 13, '0155', '1000-A3-0155', 'Y', NULL),
(806, 13, '0156', '1000-A3-0156', 'Y', NULL),
(807, 13, '0157', '1000-A3-0157', 'Y', NULL),
(808, 13, '0158', '1000-A3-0158', 'Y', NULL),
(809, 13, '0159', '1000-A3-0159', 'Y', NULL),
(810, 13, '0160', '1000-A3-0160', 'Y', NULL),
(811, 13, '0161', '1000-A3-0161', 'Y', NULL),
(812, 13, '0162', '1000-A3-0162', 'Y', NULL),
(813, 13, '0163', '1000-A3-0163', 'Y', NULL),
(814, 13, '0164', '1000-A3-0164', 'Y', NULL),
(815, 13, '0165', '1000-A3-0165', 'Y', NULL),
(816, 13, '0166', '1000-A3-0166', 'Y', NULL),
(817, 13, '0167', '1000-A3-0167', 'Y', NULL),
(818, 13, '0168', '1000-A3-0168', 'Y', NULL),
(819, 13, '0169', '1000-A3-0169', 'Y', NULL),
(820, 13, '0170', '1000-A3-0170', 'Y', NULL),
(821, 13, '0171', '1000-A3-0171', 'Y', NULL),
(822, 13, '0172', '1000-A3-0172', 'Y', NULL),
(823, 13, '0173', '1000-A3-0173', 'Y', NULL),
(824, 13, '0174', '1000-A3-0174', 'Y', NULL),
(825, 13, '0175', '1000-A3-0175', 'Y', NULL),
(826, 13, '0176', '1000-A3-0176', 'Y', NULL),
(827, 13, '0177', '1000-A3-0177', 'Y', NULL),
(828, 13, '0178', '1000-A3-0178', 'Y', NULL),
(829, 13, '0179', '1000-A3-0179', 'Y', NULL),
(830, 13, '0180', '1000-A3-0180', 'Y', NULL),
(831, 13, '0181', '1000-A3-0181', 'Y', NULL),
(832, 13, '0182', '1000-A3-0182', 'Y', NULL),
(833, 13, '0183', '1000-A3-0183', 'Y', NULL),
(834, 13, '0184', '1000-A3-0184', 'Y', NULL),
(835, 13, '0185', '1000-A3-0185', 'Y', NULL),
(836, 13, '0186', '1000-A3-0186', 'Y', NULL),
(837, 13, '0187', '1000-A3-0187', 'Y', NULL),
(838, 13, '0188', '1000-A3-0188', 'Y', NULL),
(839, 13, '0189', '1000-A3-0189', 'Y', NULL),
(840, 13, '0190', '1000-A3-0190', 'Y', NULL),
(841, 13, '0191', '1000-A3-0191', 'Y', NULL),
(842, 13, '0192', '1000-A3-0192', 'Y', NULL),
(843, 13, '0193', '1000-A3-0193', 'Y', NULL),
(844, 13, '0194', '1000-A3-0194', 'Y', NULL),
(845, 13, '0195', '1000-A3-0195', 'Y', NULL),
(846, 13, '0196', '1000-A3-0196', 'Y', NULL),
(847, 13, '0197', '1000-A3-0197', 'Y', NULL),
(848, 13, '0198', '1000-A3-0198', 'Y', NULL),
(849, 13, '0199', '1000-A3-0199', 'Y', NULL),
(850, 13, '0200', '1000-A3-0200', 'Y', NULL),
(851, 14, '0001', '1000-A1-0001', 'N', NULL),
(852, 14, '0002', '1000-A1-0002', 'N', NULL),
(853, 14, '0003', '1000-A1-0003', 'Y', NULL),
(854, 14, '0004', '1000-A1-0004', 'Y', NULL),
(855, 14, '0005', '1000-A1-0005', 'Y', NULL),
(856, 14, '0006', '1000-A1-0006', 'Y', NULL),
(857, 14, '0007', '1000-A1-0007', 'Y', NULL),
(858, 14, '0008', '1000-A1-0008', 'Y', NULL),
(859, 14, '0009', '1000-A1-0009', 'Y', NULL),
(860, 14, '0010', '1000-A1-0010', 'Y', NULL),
(861, 14, '0011', '1000-A1-0011', 'Y', NULL),
(862, 14, '0012', '1000-A1-0012', 'Y', NULL),
(863, 14, '0013', '1000-A1-0013', 'Y', NULL),
(864, 14, '0014', '1000-A1-0014', 'Y', NULL),
(865, 14, '0015', '1000-A1-0015', 'Y', NULL),
(866, 14, '0016', '1000-A1-0016', 'Y', NULL),
(867, 14, '0017', '1000-A1-0017', 'Y', NULL),
(868, 14, '0018', '1000-A1-0018', 'Y', NULL),
(869, 14, '0019', '1000-A1-0019', 'Y', NULL),
(870, 14, '0020', '1000-A1-0020', 'Y', NULL),
(871, 14, '0021', '1000-A1-0021', 'Y', NULL),
(872, 14, '0022', '1000-A1-0022', 'Y', NULL),
(873, 14, '0023', '1000-A1-0023', 'Y', NULL),
(874, 14, '0024', '1000-A1-0024', 'Y', NULL),
(875, 14, '0025', '1000-A1-0025', 'Y', NULL),
(876, 14, '0026', '1000-A1-0026', 'Y', NULL),
(877, 14, '0027', '1000-A1-0027', 'Y', NULL),
(878, 14, '0028', '1000-A1-0028', 'Y', NULL),
(879, 14, '0029', '1000-A1-0029', 'Y', NULL),
(880, 14, '0030', '1000-A1-0030', 'Y', NULL),
(881, 14, '0031', '1000-A1-0031', 'Y', NULL),
(882, 14, '0032', '1000-A1-0032', 'Y', NULL),
(883, 14, '0033', '1000-A1-0033', 'Y', NULL),
(884, 14, '0034', '1000-A1-0034', 'Y', NULL),
(885, 14, '0035', '1000-A1-0035', 'Y', NULL),
(886, 14, '0036', '1000-A1-0036', 'Y', NULL),
(887, 14, '0037', '1000-A1-0037', 'Y', NULL),
(888, 14, '0038', '1000-A1-0038', 'Y', NULL),
(889, 14, '0039', '1000-A1-0039', 'Y', NULL),
(890, 14, '0040', '1000-A1-0040', 'Y', NULL),
(891, 14, '0041', '1000-A1-0041', 'Y', NULL),
(892, 14, '0042', '1000-A1-0042', 'Y', NULL),
(893, 14, '0043', '1000-A1-0043', 'Y', NULL),
(894, 14, '0044', '1000-A1-0044', 'Y', NULL),
(895, 14, '0045', '1000-A1-0045', 'Y', NULL),
(896, 14, '0046', '1000-A1-0046', 'Y', NULL),
(897, 14, '0047', '1000-A1-0047', 'Y', NULL),
(898, 14, '0048', '1000-A1-0048', 'Y', NULL),
(899, 14, '0049', '1000-A1-0049', 'Y', NULL),
(900, 14, '0050', '1000-A1-0050', 'Y', NULL),
(901, 14, '0051', '1000-A1-0051', 'Y', NULL),
(902, 14, '0052', '1000-A1-0052', 'Y', NULL),
(903, 14, '0053', '1000-A1-0053', 'Y', NULL),
(904, 14, '0054', '1000-A1-0054', 'Y', NULL),
(905, 14, '0055', '1000-A1-0055', 'Y', NULL),
(906, 14, '0056', '1000-A1-0056', 'Y', NULL),
(907, 14, '0057', '1000-A1-0057', 'Y', NULL),
(908, 14, '0058', '1000-A1-0058', 'Y', NULL),
(909, 14, '0059', '1000-A1-0059', 'Y', NULL),
(910, 14, '0060', '1000-A1-0060', 'Y', NULL),
(911, 14, '0061', '1000-A1-0061', 'Y', NULL),
(912, 14, '0062', '1000-A1-0062', 'Y', NULL),
(913, 14, '0063', '1000-A1-0063', 'Y', NULL),
(914, 14, '0064', '1000-A1-0064', 'Y', NULL),
(915, 14, '0065', '1000-A1-0065', 'Y', NULL),
(916, 14, '0066', '1000-A1-0066', 'Y', NULL),
(917, 14, '0067', '1000-A1-0067', 'Y', NULL),
(918, 14, '0068', '1000-A1-0068', 'Y', NULL),
(919, 14, '0069', '1000-A1-0069', 'Y', NULL),
(920, 14, '0070', '1000-A1-0070', 'Y', NULL),
(921, 14, '0071', '1000-A1-0071', 'Y', NULL),
(922, 14, '0072', '1000-A1-0072', 'Y', NULL),
(923, 14, '0073', '1000-A1-0073', 'Y', NULL),
(924, 14, '0074', '1000-A1-0074', 'Y', NULL),
(925, 14, '0075', '1000-A1-0075', 'Y', NULL),
(926, 14, '0076', '1000-A1-0076', 'Y', NULL),
(927, 14, '0077', '1000-A1-0077', 'Y', NULL),
(928, 14, '0078', '1000-A1-0078', 'Y', NULL),
(929, 14, '0079', '1000-A1-0079', 'Y', NULL),
(930, 14, '0080', '1000-A1-0080', 'Y', NULL),
(931, 14, '0081', '1000-A1-0081', 'Y', NULL),
(932, 14, '0082', '1000-A1-0082', 'Y', NULL),
(933, 14, '0083', '1000-A1-0083', 'Y', NULL),
(934, 14, '0084', '1000-A1-0084', 'Y', NULL),
(935, 14, '0085', '1000-A1-0085', 'Y', NULL),
(936, 14, '0086', '1000-A1-0086', 'Y', NULL),
(937, 14, '0087', '1000-A1-0087', 'Y', NULL),
(938, 14, '0088', '1000-A1-0088', 'Y', NULL),
(939, 14, '0089', '1000-A1-0089', 'Y', NULL),
(940, 14, '0090', '1000-A1-0090', 'Y', NULL),
(941, 14, '0091', '1000-A1-0091', 'Y', NULL),
(942, 14, '0092', '1000-A1-0092', 'Y', NULL),
(943, 14, '0093', '1000-A1-0093', 'Y', NULL),
(944, 14, '0094', '1000-A1-0094', 'Y', NULL),
(945, 14, '0095', '1000-A1-0095', 'Y', NULL),
(946, 14, '0096', '1000-A1-0096', 'Y', NULL),
(947, 14, '0097', '1000-A1-0097', 'Y', NULL),
(948, 14, '0098', '1000-A1-0098', 'Y', NULL),
(949, 14, '0099', '1000-A1-0099', 'Y', NULL),
(950, 14, '0100', '1000-A1-0100', 'Y', NULL),
(951, 14, '0101', '1000-A1-0101', 'Y', NULL),
(952, 14, '0102', '1000-A1-0102', 'Y', NULL),
(953, 14, '0103', '1000-A1-0103', 'Y', NULL),
(954, 14, '0104', '1000-A1-0104', 'Y', NULL),
(955, 14, '0105', '1000-A1-0105', 'Y', NULL),
(956, 14, '0106', '1000-A1-0106', 'Y', NULL),
(957, 14, '0107', '1000-A1-0107', 'Y', NULL),
(958, 14, '0108', '1000-A1-0108', 'Y', NULL),
(959, 14, '0109', '1000-A1-0109', 'Y', NULL),
(960, 14, '0110', '1000-A1-0110', 'Y', NULL),
(961, 14, '0111', '1000-A1-0111', 'Y', NULL),
(962, 14, '0112', '1000-A1-0112', 'Y', NULL),
(963, 14, '0113', '1000-A1-0113', 'Y', NULL),
(964, 14, '0114', '1000-A1-0114', 'Y', NULL),
(965, 14, '0115', '1000-A1-0115', 'Y', NULL),
(966, 14, '0116', '1000-A1-0116', 'Y', NULL),
(967, 14, '0117', '1000-A1-0117', 'Y', NULL),
(968, 14, '0118', '1000-A1-0118', 'Y', NULL),
(969, 14, '0119', '1000-A1-0119', 'Y', NULL),
(970, 14, '0120', '1000-A1-0120', 'Y', NULL),
(971, 14, '0121', '1000-A1-0121', 'Y', NULL),
(972, 14, '0122', '1000-A1-0122', 'Y', NULL),
(973, 14, '0123', '1000-A1-0123', 'Y', NULL),
(974, 14, '0124', '1000-A1-0124', 'Y', NULL),
(975, 14, '0125', '1000-A1-0125', 'Y', NULL),
(976, 14, '0126', '1000-A1-0126', 'Y', NULL),
(977, 14, '0127', '1000-A1-0127', 'Y', NULL),
(978, 14, '0128', '1000-A1-0128', 'Y', NULL),
(979, 14, '0129', '1000-A1-0129', 'Y', NULL),
(980, 14, '0130', '1000-A1-0130', 'Y', NULL),
(981, 14, '0131', '1000-A1-0131', 'Y', NULL),
(982, 14, '0132', '1000-A1-0132', 'Y', NULL),
(983, 14, '0133', '1000-A1-0133', 'Y', NULL),
(984, 14, '0134', '1000-A1-0134', 'Y', NULL),
(985, 14, '0135', '1000-A1-0135', 'Y', NULL),
(986, 14, '0136', '1000-A1-0136', 'Y', NULL),
(987, 14, '0137', '1000-A1-0137', 'Y', NULL),
(988, 14, '0138', '1000-A1-0138', 'Y', NULL),
(989, 14, '0139', '1000-A1-0139', 'Y', NULL),
(990, 14, '0140', '1000-A1-0140', 'Y', NULL),
(991, 14, '0141', '1000-A1-0141', 'Y', NULL),
(992, 14, '0142', '1000-A1-0142', 'Y', NULL),
(993, 14, '0143', '1000-A1-0143', 'Y', NULL),
(994, 14, '0144', '1000-A1-0144', 'Y', NULL),
(995, 14, '0145', '1000-A1-0145', 'Y', NULL),
(996, 14, '0146', '1000-A1-0146', 'Y', NULL),
(997, 14, '0147', '1000-A1-0147', 'Y', NULL),
(998, 14, '0148', '1000-A1-0148', 'Y', NULL),
(999, 14, '0149', '1000-A1-0149', 'Y', NULL),
(1000, 14, '0150', '1000-A1-0150', 'Y', NULL),
(1001, 14, '0151', '1000-A1-0151', 'Y', NULL),
(1002, 14, '0152', '1000-A1-0152', 'Y', NULL),
(1003, 14, '0153', '1000-A1-0153', 'Y', NULL),
(1004, 14, '0154', '1000-A1-0154', 'Y', NULL),
(1005, 14, '0155', '1000-A1-0155', 'Y', NULL),
(1006, 14, '0156', '1000-A1-0156', 'Y', NULL),
(1007, 14, '0157', '1000-A1-0157', 'Y', NULL),
(1008, 14, '0158', '1000-A1-0158', 'Y', NULL),
(1009, 14, '0159', '1000-A1-0159', 'Y', NULL),
(1010, 14, '0160', '1000-A1-0160', 'Y', NULL),
(1011, 14, '0161', '1000-A1-0161', 'Y', NULL),
(1012, 14, '0162', '1000-A1-0162', 'Y', NULL),
(1013, 14, '0163', '1000-A1-0163', 'Y', NULL),
(1014, 14, '0164', '1000-A1-0164', 'Y', NULL),
(1015, 14, '0165', '1000-A1-0165', 'Y', NULL),
(1016, 14, '0166', '1000-A1-0166', 'Y', NULL),
(1017, 14, '0167', '1000-A1-0167', 'Y', NULL),
(1018, 14, '0168', '1000-A1-0168', 'Y', NULL),
(1019, 14, '0169', '1000-A1-0169', 'Y', NULL),
(1020, 14, '0170', '1000-A1-0170', 'Y', NULL),
(1021, 14, '0171', '1000-A1-0171', 'Y', NULL),
(1022, 14, '0172', '1000-A1-0172', 'Y', NULL),
(1023, 14, '0173', '1000-A1-0173', 'Y', NULL),
(1024, 14, '0174', '1000-A1-0174', 'Y', NULL),
(1025, 14, '0175', '1000-A1-0175', 'Y', NULL),
(1026, 14, '0176', '1000-A1-0176', 'Y', NULL),
(1027, 14, '0177', '1000-A1-0177', 'Y', NULL),
(1028, 14, '0178', '1000-A1-0178', 'Y', NULL),
(1029, 14, '0179', '1000-A1-0179', 'Y', NULL),
(1030, 14, '0180', '1000-A1-0180', 'Y', NULL),
(1031, 14, '0181', '1000-A1-0181', 'Y', NULL),
(1032, 14, '0182', '1000-A1-0182', 'Y', NULL),
(1033, 14, '0183', '1000-A1-0183', 'Y', NULL),
(1034, 14, '0184', '1000-A1-0184', 'Y', NULL),
(1035, 14, '0185', '1000-A1-0185', 'Y', NULL),
(1036, 14, '0186', '1000-A1-0186', 'Y', NULL),
(1037, 14, '0187', '1000-A1-0187', 'Y', NULL),
(1038, 14, '0188', '1000-A1-0188', 'Y', NULL),
(1039, 14, '0189', '1000-A1-0189', 'Y', NULL),
(1040, 14, '0190', '1000-A1-0190', 'Y', NULL),
(1041, 14, '0191', '1000-A1-0191', 'Y', NULL),
(1042, 14, '0192', '1000-A1-0192', 'Y', NULL),
(1043, 14, '0193', '1000-A1-0193', 'Y', NULL),
(1044, 14, '0194', '1000-A1-0194', 'Y', NULL),
(1045, 14, '0195', '1000-A1-0195', 'Y', NULL),
(1046, 14, '0196', '1000-A1-0196', 'Y', NULL),
(1047, 14, '0197', '1000-A1-0197', 'Y', NULL),
(1048, 14, '0198', '1000-A1-0198', 'Y', NULL),
(1049, 14, '0199', '1000-A1-0199', 'Y', NULL),
(1050, 14, '0200', '1000-A1-0200', 'Y', NULL),
(1051, 15, '0001', '1000-A2-0001', 'Y', NULL),
(1052, 15, '0002', '1000-A2-0002', 'Y', NULL),
(1053, 15, '0003', '1000-A2-0003', 'Y', NULL),
(1054, 15, '0004', '1000-A2-0004', 'Y', NULL),
(1055, 15, '0005', '1000-A2-0005', 'Y', NULL),
(1056, 15, '0006', '1000-A2-0006', 'Y', NULL),
(1057, 15, '0007', '1000-A2-0007', 'Y', NULL),
(1058, 15, '0008', '1000-A2-0008', 'Y', NULL),
(1059, 15, '0009', '1000-A2-0009', 'Y', NULL),
(1060, 15, '0010', '1000-A2-0010', 'Y', NULL),
(1061, 15, '0011', '1000-A2-0011', 'Y', NULL),
(1062, 15, '0012', '1000-A2-0012', 'Y', NULL),
(1063, 15, '0013', '1000-A2-0013', 'Y', NULL),
(1064, 15, '0014', '1000-A2-0014', 'Y', NULL),
(1065, 15, '0015', '1000-A2-0015', 'Y', NULL),
(1066, 15, '0016', '1000-A2-0016', 'Y', NULL),
(1067, 15, '0017', '1000-A2-0017', 'Y', NULL),
(1068, 15, '0018', '1000-A2-0018', 'Y', NULL),
(1069, 15, '0019', '1000-A2-0019', 'Y', NULL),
(1070, 15, '0020', '1000-A2-0020', 'Y', NULL),
(1071, 15, '0021', '1000-A2-0021', 'Y', NULL),
(1072, 15, '0022', '1000-A2-0022', 'Y', NULL),
(1073, 15, '0023', '1000-A2-0023', 'Y', NULL),
(1074, 15, '0024', '1000-A2-0024', 'Y', NULL),
(1075, 15, '0025', '1000-A2-0025', 'Y', NULL),
(1076, 15, '0026', '1000-A2-0026', 'Y', NULL),
(1077, 15, '0027', '1000-A2-0027', 'Y', NULL),
(1078, 15, '0028', '1000-A2-0028', 'Y', NULL),
(1079, 15, '0029', '1000-A2-0029', 'Y', NULL),
(1080, 15, '0030', '1000-A2-0030', 'Y', NULL),
(1081, 15, '0031', '1000-A2-0031', 'Y', NULL),
(1082, 15, '0032', '1000-A2-0032', 'Y', NULL),
(1083, 15, '0033', '1000-A2-0033', 'Y', NULL),
(1084, 15, '0034', '1000-A2-0034', 'Y', NULL),
(1085, 15, '0035', '1000-A2-0035', 'Y', NULL),
(1086, 15, '0036', '1000-A2-0036', 'Y', NULL),
(1087, 15, '0037', '1000-A2-0037', 'Y', NULL),
(1088, 15, '0038', '1000-A2-0038', 'Y', NULL),
(1089, 15, '0039', '1000-A2-0039', 'Y', NULL),
(1090, 15, '0040', '1000-A2-0040', 'Y', NULL),
(1091, 15, '0041', '1000-A2-0041', 'Y', NULL),
(1092, 15, '0042', '1000-A2-0042', 'Y', NULL),
(1093, 15, '0043', '1000-A2-0043', 'Y', NULL),
(1094, 15, '0044', '1000-A2-0044', 'Y', NULL),
(1095, 15, '0045', '1000-A2-0045', 'Y', NULL),
(1096, 15, '0046', '1000-A2-0046', 'Y', NULL),
(1097, 15, '0047', '1000-A2-0047', 'Y', NULL),
(1098, 15, '0048', '1000-A2-0048', 'Y', NULL),
(1099, 15, '0049', '1000-A2-0049', 'Y', NULL),
(1100, 15, '0050', '1000-A2-0050', 'Y', NULL),
(1101, 15, '0051', '1000-A2-0051', 'Y', NULL),
(1102, 15, '0052', '1000-A2-0052', 'Y', NULL),
(1103, 15, '0053', '1000-A2-0053', 'Y', NULL),
(1104, 15, '0054', '1000-A2-0054', 'Y', NULL),
(1105, 15, '0055', '1000-A2-0055', 'Y', NULL),
(1106, 15, '0056', '1000-A2-0056', 'Y', NULL),
(1107, 15, '0057', '1000-A2-0057', 'Y', NULL),
(1108, 15, '0058', '1000-A2-0058', 'Y', NULL),
(1109, 15, '0059', '1000-A2-0059', 'Y', NULL),
(1110, 15, '0060', '1000-A2-0060', 'Y', NULL),
(1111, 15, '0061', '1000-A2-0061', 'Y', NULL),
(1112, 15, '0062', '1000-A2-0062', 'Y', NULL),
(1113, 15, '0063', '1000-A2-0063', 'Y', NULL),
(1114, 15, '0064', '1000-A2-0064', 'Y', NULL),
(1115, 15, '0065', '1000-A2-0065', 'Y', NULL),
(1116, 15, '0066', '1000-A2-0066', 'Y', NULL),
(1117, 15, '0067', '1000-A2-0067', 'Y', NULL),
(1118, 15, '0068', '1000-A2-0068', 'Y', NULL),
(1119, 15, '0069', '1000-A2-0069', 'Y', NULL),
(1120, 15, '0070', '1000-A2-0070', 'Y', NULL),
(1121, 15, '0071', '1000-A2-0071', 'Y', NULL),
(1122, 15, '0072', '1000-A2-0072', 'Y', NULL),
(1123, 15, '0073', '1000-A2-0073', 'Y', NULL),
(1124, 15, '0074', '1000-A2-0074', 'Y', NULL),
(1125, 15, '0075', '1000-A2-0075', 'Y', NULL),
(1126, 15, '0076', '1000-A2-0076', 'Y', NULL),
(1127, 15, '0077', '1000-A2-0077', 'Y', NULL),
(1128, 15, '0078', '1000-A2-0078', 'Y', NULL),
(1129, 15, '0079', '1000-A2-0079', 'Y', NULL),
(1130, 15, '0080', '1000-A2-0080', 'Y', NULL),
(1131, 15, '0081', '1000-A2-0081', 'Y', NULL),
(1132, 15, '0082', '1000-A2-0082', 'Y', NULL),
(1133, 15, '0083', '1000-A2-0083', 'Y', NULL),
(1134, 15, '0084', '1000-A2-0084', 'Y', NULL),
(1135, 15, '0085', '1000-A2-0085', 'Y', NULL),
(1136, 15, '0086', '1000-A2-0086', 'Y', NULL),
(1137, 15, '0087', '1000-A2-0087', 'Y', NULL),
(1138, 15, '0088', '1000-A2-0088', 'Y', NULL),
(1139, 15, '0089', '1000-A2-0089', 'Y', NULL),
(1140, 15, '0090', '1000-A2-0090', 'Y', NULL),
(1141, 15, '0091', '1000-A2-0091', 'Y', NULL),
(1142, 15, '0092', '1000-A2-0092', 'Y', NULL),
(1143, 15, '0093', '1000-A2-0093', 'Y', NULL),
(1144, 15, '0094', '1000-A2-0094', 'Y', NULL),
(1145, 15, '0095', '1000-A2-0095', 'Y', NULL),
(1146, 15, '0096', '1000-A2-0096', 'Y', NULL),
(1147, 15, '0097', '1000-A2-0097', 'Y', NULL),
(1148, 15, '0098', '1000-A2-0098', 'Y', NULL),
(1149, 15, '0099', '1000-A2-0099', 'Y', NULL),
(1150, 15, '0100', '1000-A2-0100', 'Y', NULL),
(1151, 15, '0101', '1000-A2-0101', 'Y', NULL),
(1152, 15, '0102', '1000-A2-0102', 'Y', NULL),
(1153, 15, '0103', '1000-A2-0103', 'Y', NULL),
(1154, 15, '0104', '1000-A2-0104', 'Y', NULL),
(1155, 15, '0105', '1000-A2-0105', 'Y', NULL),
(1156, 15, '0106', '1000-A2-0106', 'Y', NULL),
(1157, 15, '0107', '1000-A2-0107', 'Y', NULL),
(1158, 15, '0108', '1000-A2-0108', 'Y', NULL),
(1159, 15, '0109', '1000-A2-0109', 'Y', NULL),
(1160, 15, '0110', '1000-A2-0110', 'Y', NULL),
(1161, 15, '0111', '1000-A2-0111', 'Y', NULL),
(1162, 15, '0112', '1000-A2-0112', 'Y', NULL),
(1163, 15, '0113', '1000-A2-0113', 'Y', NULL),
(1164, 15, '0114', '1000-A2-0114', 'Y', NULL),
(1165, 15, '0115', '1000-A2-0115', 'Y', NULL),
(1166, 15, '0116', '1000-A2-0116', 'Y', NULL),
(1167, 15, '0117', '1000-A2-0117', 'Y', NULL),
(1168, 15, '0118', '1000-A2-0118', 'Y', NULL),
(1169, 15, '0119', '1000-A2-0119', 'Y', NULL),
(1170, 15, '0120', '1000-A2-0120', 'Y', NULL),
(1171, 15, '0121', '1000-A2-0121', 'Y', NULL),
(1172, 15, '0122', '1000-A2-0122', 'Y', NULL),
(1173, 15, '0123', '1000-A2-0123', 'Y', NULL),
(1174, 15, '0124', '1000-A2-0124', 'Y', NULL),
(1175, 15, '0125', '1000-A2-0125', 'Y', NULL),
(1176, 15, '0126', '1000-A2-0126', 'Y', NULL),
(1177, 15, '0127', '1000-A2-0127', 'Y', NULL),
(1178, 15, '0128', '1000-A2-0128', 'Y', NULL),
(1179, 15, '0129', '1000-A2-0129', 'Y', NULL),
(1180, 15, '0130', '1000-A2-0130', 'Y', NULL),
(1181, 15, '0131', '1000-A2-0131', 'Y', NULL),
(1182, 15, '0132', '1000-A2-0132', 'Y', NULL),
(1183, 15, '0133', '1000-A2-0133', 'Y', NULL),
(1184, 15, '0134', '1000-A2-0134', 'Y', NULL),
(1185, 15, '0135', '1000-A2-0135', 'Y', NULL),
(1186, 15, '0136', '1000-A2-0136', 'Y', NULL),
(1187, 15, '0137', '1000-A2-0137', 'Y', NULL),
(1188, 15, '0138', '1000-A2-0138', 'Y', NULL),
(1189, 15, '0139', '1000-A2-0139', 'Y', NULL),
(1190, 15, '0140', '1000-A2-0140', 'Y', NULL),
(1191, 15, '0141', '1000-A2-0141', 'Y', NULL),
(1192, 15, '0142', '1000-A2-0142', 'Y', NULL),
(1193, 15, '0143', '1000-A2-0143', 'Y', NULL),
(1194, 15, '0144', '1000-A2-0144', 'Y', NULL),
(1195, 15, '0145', '1000-A2-0145', 'Y', NULL),
(1196, 15, '0146', '1000-A2-0146', 'Y', NULL),
(1197, 15, '0147', '1000-A2-0147', 'Y', NULL),
(1198, 15, '0148', '1000-A2-0148', 'Y', NULL),
(1199, 15, '0149', '1000-A2-0149', 'Y', NULL),
(1200, 15, '0150', '1000-A2-0150', 'Y', NULL),
(1201, 15, '0151', '1000-A2-0151', 'Y', NULL),
(1202, 15, '0152', '1000-A2-0152', 'Y', NULL),
(1203, 15, '0153', '1000-A2-0153', 'Y', NULL),
(1204, 15, '0154', '1000-A2-0154', 'Y', NULL),
(1205, 15, '0155', '1000-A2-0155', 'Y', NULL),
(1206, 15, '0156', '1000-A2-0156', 'Y', NULL),
(1207, 15, '0157', '1000-A2-0157', 'Y', NULL),
(1208, 15, '0158', '1000-A2-0158', 'Y', NULL),
(1209, 15, '0159', '1000-A2-0159', 'Y', NULL),
(1210, 15, '0160', '1000-A2-0160', 'Y', NULL),
(1211, 15, '0161', '1000-A2-0161', 'Y', NULL),
(1212, 15, '0162', '1000-A2-0162', 'Y', NULL),
(1213, 15, '0163', '1000-A2-0163', 'Y', NULL),
(1214, 15, '0164', '1000-A2-0164', 'Y', NULL),
(1215, 15, '0165', '1000-A2-0165', 'Y', NULL),
(1216, 15, '0166', '1000-A2-0166', 'Y', NULL),
(1217, 15, '0167', '1000-A2-0167', 'Y', NULL),
(1218, 15, '0168', '1000-A2-0168', 'Y', NULL),
(1219, 15, '0169', '1000-A2-0169', 'Y', NULL),
(1220, 15, '0170', '1000-A2-0170', 'Y', NULL),
(1221, 15, '0171', '1000-A2-0171', 'Y', NULL),
(1222, 15, '0172', '1000-A2-0172', 'Y', NULL),
(1223, 15, '0173', '1000-A2-0173', 'Y', NULL),
(1224, 15, '0174', '1000-A2-0174', 'Y', NULL),
(1225, 15, '0175', '1000-A2-0175', 'Y', NULL),
(1226, 15, '0176', '1000-A2-0176', 'Y', NULL),
(1227, 15, '0177', '1000-A2-0177', 'Y', NULL),
(1228, 15, '0178', '1000-A2-0178', 'Y', NULL),
(1229, 15, '0179', '1000-A2-0179', 'Y', NULL),
(1230, 15, '0180', '1000-A2-0180', 'Y', NULL),
(1231, 15, '0181', '1000-A2-0181', 'Y', NULL),
(1232, 15, '0182', '1000-A2-0182', 'Y', NULL),
(1233, 15, '0183', '1000-A2-0183', 'Y', NULL),
(1234, 15, '0184', '1000-A2-0184', 'Y', NULL),
(1235, 15, '0185', '1000-A2-0185', 'Y', NULL),
(1236, 15, '0186', '1000-A2-0186', 'Y', NULL),
(1237, 15, '0187', '1000-A2-0187', 'Y', NULL),
(1238, 15, '0188', '1000-A2-0188', 'Y', NULL),
(1239, 15, '0189', '1000-A2-0189', 'Y', NULL),
(1240, 15, '0190', '1000-A2-0190', 'Y', NULL),
(1241, 15, '0191', '1000-A2-0191', 'Y', NULL),
(1242, 15, '0192', '1000-A2-0192', 'Y', NULL),
(1243, 15, '0193', '1000-A2-0193', 'Y', NULL),
(1244, 15, '0194', '1000-A2-0194', 'Y', NULL),
(1245, 15, '0195', '1000-A2-0195', 'Y', NULL),
(1246, 15, '0196', '1000-A2-0196', 'Y', NULL),
(1247, 15, '0197', '1000-A2-0197', 'Y', NULL),
(1248, 15, '0198', '1000-A2-0198', 'Y', NULL),
(1249, 15, '0199', '1000-A2-0199', 'Y', NULL),
(1250, 15, '0200', '1000-A2-0200', 'Y', NULL);

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
  `sg_orgid` int(11) DEFAULT NULL,
  `sg_seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`sg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `smshelfgroup`
--

INSERT INTO `smshelfgroup` (`sg_id`, `sg_code`, `sg_groupname`, `sg_orgid`, `sg_seq`) VALUES
(1, '1250', '1250', NULL, 20),
(2, '1650', '1650', NULL, 30),
(3, '1000', '1000', NULL, 10);

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
  `sf_orgid` int(11) DEFAULT NULL,
  `sf_seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`sf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `smshelfsetting`
--

INSERT INTO `smshelfsetting` (`sf_id`, `sf_sgid`, `sf_code`, `sf_desc`, `sf_totalplate`, `sf_orgid`, `sf_seq`) VALUES
(14, 3, 'A1', '1000-A1', 200, NULL, 10),
(15, 3, 'A2', '1000-A2', 200, NULL, 20);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
