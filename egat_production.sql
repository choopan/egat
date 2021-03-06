-- phpMyAdmin SQL Dump
-- version 3.3.7deb2build0.10.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 06, 2011 at 02:47 AM
-- Server version: 5.1.49
-- PHP Version: 5.3.3-1ubuntu9.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `egat_production`
--

-- --------------------------------------------------------

--
-- Table structure for table `application_uses`
--

CREATE TABLE IF NOT EXISTS `application_uses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `application_uses`
--

INSERT INTO `application_uses` (`id`, `value`, `created_at`, `updated_at`, `score`, `score_message`) VALUES
(61, 'Mobile', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 1, 'Very Low'),
(62, 'Cold Standby', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 2, 'Low'),
(63, 'Hot Standby', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 3, 'Moderate'),
(64, 'In-Service', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 4, 'High'),
(65, NULL, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 5, 'Very High'),
(66, NULL, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 6, 'Extremely High');

-- --------------------------------------------------------

--
-- Table structure for table `arrester`
--

CREATE TABLE IF NOT EXISTS `arrester` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `ambient_temp` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `is_gap_less` int(11) DEFAULT NULL,
  `mfghv` varchar(255) DEFAULT NULL,
  `mfglv` varchar(255) DEFAULT NULL,
  `mfgtv` varchar(255) DEFAULT NULL,
  `rated_current` double DEFAULT NULL,
  `rated_ka` double DEFAULT NULL,
  `rated_kahv` double DEFAULT NULL,
  `rated_kalv` double DEFAULT NULL,
  `rated_katv` double DEFAULT NULL,
  `rated_kvhv` double DEFAULT NULL,
  `rated_kvlv` double DEFAULT NULL,
  `rated_kvtv` double DEFAULT NULL,
  `rated_voltage` double DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `typehv` varchar(255) DEFAULT NULL,
  `typelv` varchar(255) DEFAULT NULL,
  `typetv` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `weather` varchar(255) DEFAULT NULL,
  `yearhv` varchar(255) DEFAULT NULL,
  `yearlv` varchar(255) DEFAULT NULL,
  `yeartv` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `arrester`
--


-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `created_at`, `updated_at`, `name`, `score`, `score_message`) VALUES
(1, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'ASEA', 1, 'Very Low'),
(2, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'National', 1, 'Very Low'),
(3, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Schorch', 1, 'Very Low'),
(4, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Siemens', 1, 'Very Low'),
(5, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Tira Thai', 1, 'Very Low'),
(6, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Takaoka', 1, 'Very Low'),
(7, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Alstom', 2, 'Low'),
(8, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Trafo Union', 2, 'Low'),
(9, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Meiden', 2, 'Low'),
(10, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Rade Koncar', 2, 'Low'),
(11, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Toshiba', 3, 'Moderate'),
(12, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Elektro Bauag', 4, 'High'),
(13, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'ABB', 4, 'High'),
(14, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Fuji', 5, 'Very High'),
(15, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Mitsubishi', 5, 'Very High'),
(16, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'OSAKA', 5, 'Very High'),
(17, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Daihen', 5, 'Very High'),
(18, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Jeumont Schneider', 5, 'Very High'),
(19, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Meidensha', 5, 'Very High'),
(20, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Ekarat Daihen', 5, 'Very High'),
(21, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'TMT & D', 5, 'Very High'),
(22, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Chenyang', 5, 'Very High'),
(23, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Volta Werke', 5, 'Very High'),
(24, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Elin', 5, 'Very High'),
(25, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Hyundai', 5, 'Very High'),
(26, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 'Siriwiwat', 5, 'Very High');

-- --------------------------------------------------------

--
-- Table structure for table `bushing`
--

CREATE TABLE IF NOT EXISTS `bushing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `amphv` double DEFAULT NULL,
  `amplv` double DEFAULT NULL,
  `amptv` double DEFAULT NULL,
  `bilhv` int(11) DEFAULT NULL,
  `billv` int(11) DEFAULT NULL,
  `biltv` int(11) DEFAULT NULL,
  `caphv` double DEFAULT NULL,
  `caplv` double DEFAULT NULL,
  `captv` double DEFAULT NULL,
  `classhv` int(11) DEFAULT NULL,
  `classlv` int(11) DEFAULT NULL,
  `classtv` int(11) DEFAULT NULL,
  `kvhv` double DEFAULT NULL,
  `kvlv` double DEFAULT NULL,
  `kvtv` double DEFAULT NULL,
  `manufachv` varchar(255) DEFAULT NULL,
  `manufaclv` varchar(255) DEFAULT NULL,
  `manufactv` varchar(255) DEFAULT NULL,
  `pfhv` double DEFAULT NULL,
  `pflv` double DEFAULT NULL,
  `pftv` double DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `typehv` varchar(255) DEFAULT NULL,
  `typelv` varchar(255) DEFAULT NULL,
  `typetv` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `yearhv` varchar(255) DEFAULT NULL,
  `yearlv` varchar(255) DEFAULT NULL,
  `yeartv` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bushing`
--


-- --------------------------------------------------------

--
-- Table structure for table `bushing_conditions`
--

CREATE TABLE IF NOT EXISTS `bushing_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oil_color_hv` decimal(10,0) DEFAULT NULL,
  `oil_color_lv` decimal(10,0) DEFAULT NULL,
  `oil_color_tv` decimal(10,0) DEFAULT NULL,
  `oil_fail_hv` decimal(10,0) DEFAULT NULL,
  `oil_fail_lv` decimal(10,0) DEFAULT NULL,
  `oil_fail_tv` decimal(10,0) DEFAULT NULL,
  `oil_level_hv` decimal(10,0) DEFAULT NULL,
  `oil_level_lv` decimal(10,0) DEFAULT NULL,
  `oil_level_tv` decimal(10,0) DEFAULT NULL,
  `porcelain_clean_hv` decimal(10,0) DEFAULT NULL,
  `porcelain_clean_lv` decimal(10,0) DEFAULT NULL,
  `porcelain_clean_tv` decimal(10,0) DEFAULT NULL,
  `porcelain_status_hv` decimal(10,0) DEFAULT NULL,
  `porcelain_status_lv` decimal(10,0) DEFAULT NULL,
  `porcelain_status_tv` decimal(10,0) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bushing_conditions`
--

INSERT INTO `bushing_conditions` (`id`, `oil_color_hv`, `oil_color_lv`, `oil_color_tv`, `oil_fail_hv`, `oil_fail_lv`, `oil_fail_tv`, `oil_level_hv`, `oil_level_lv`, `oil_level_tv`, `porcelain_clean_hv`, `porcelain_clean_lv`, `porcelain_clean_tv`, `porcelain_status_hv`, `porcelain_status_lv`, `porcelain_status_tv`, `visual_inspection_id`) VALUES
(1, '65', '77', '87', '59', '73', '90', '62', '76', '86', '55', '69', '83', '52', '66', '79', 2),
(2, '64', '77', NULL, '58', '72', NULL, '61', '75', NULL, '55', '69', NULL, '52', '66', NULL, 3),
(3, '65', '78', '88', '58', '72', '89', '61', '75', '85', '55', '69', '82', '52', '66', '79', 4);

-- --------------------------------------------------------

--
-- Table structure for table `bushing_condition_factors`
--

CREATE TABLE IF NOT EXISTS `bushing_condition_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `bushing_condition_factors`
--

INSERT INTO `bushing_condition_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `updated_at`, `created_at`) VALUES
(1, 4, 'Good', 0, 39, '0,255,0', NULL, NULL),
(2, 3, 'Acceptable', 40, 43, '0,0,255', NULL, NULL),
(3, 2, 'Need Caution', 44, 46, '0,255,255', NULL, NULL),
(4, 1, 'Poor', 47, 49, '255,146,0', NULL, NULL),
(5, 0, 'Very Poor', 50, NULL, '255,0,0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bus_voltages`
--

CREATE TABLE IF NOT EXISTS `bus_voltages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `bus_voltages`
--

INSERT INTO `bus_voltages` (`id`, `start`, `end`, `created_at`, `updated_at`) VALUES
(21, 0, 115, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(22, 116, NULL, '2010-09-09 22:45:34', '2010-09-09 22:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `bus_voltage_hvs`
--

CREATE TABLE IF NOT EXISTS `bus_voltage_hvs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `bus_voltage_hvs`
--

INSERT INTO `bus_voltage_hvs` (`id`, `value`, `created_at`, `updated_at`) VALUES
(41, '69', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(42, '115', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(43, '230', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(44, '500', '2010-09-09 22:45:34', '2010-09-09 22:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `bus_voltage_lvs`
--

CREATE TABLE IF NOT EXISTS `bus_voltage_lvs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `bus_voltage_lvs`
--

INSERT INTO `bus_voltage_lvs` (`id`, `value`, `created_at`, `updated_at`) VALUES
(51, '22', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(52, '33', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(53, '69', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(54, '115', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(55, '230', '2010-09-09 22:45:34', '2010-09-09 22:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `chart_present`
--

CREATE TABLE IF NOT EXISTS `chart_present` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `chart_present`
--


-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'green', '0,255,0', '2011-02-26 17:35:23', '2011-02-26 17:35:23'),
(2, 'blue', '0,0,255', '2011-02-26 17:35:23', '2011-02-26 17:35:23'),
(3, 'yellow', '255,255,0', '2011-02-26 17:35:23', '2011-02-26 17:35:23'),
(4, 'orange', '255,146,0', '2011-02-26 17:35:23', '2011-02-26 17:35:23'),
(5, 'red', '255,0,0', '2011-02-26 17:35:23', '2011-02-26 17:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `conservator_tank`
--

CREATE TABLE IF NOT EXISTS `conservator_tank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `breather_maintank` decimal(10,0) DEFAULT NULL,
  `breather_oltc` decimal(10,0) DEFAULT NULL,
  `corrosion_maintank` decimal(10,0) DEFAULT NULL,
  `corrosion_oltc` decimal(10,0) DEFAULT NULL,
  `jel_color_maintank` decimal(10,0) DEFAULT NULL,
  `jel_color_oltc` decimal(10,0) DEFAULT NULL,
  `oil_level_maintank` decimal(10,0) DEFAULT NULL,
  `oil_level_oltc` decimal(10,0) DEFAULT NULL,
  `oilfail_maintank` decimal(10,0) DEFAULT NULL,
  `oilfail_oltc` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `conservator_tank`
--

INSERT INTO `conservator_tank` (`id`, `version`, `test_by`, `test_date`, `work_order`, `breather_maintank`, `breather_oltc`, `corrosion_maintank`, `corrosion_oltc`, `jel_color_maintank`, `jel_color_oltc`, `oil_level_maintank`, `oil_level_oltc`, `oilfail_maintank`, `oilfail_oltc`, `perform_type`, `transformer`) VALUES
(1, NULL, 'Test', '2010-06-01 00:00:00', '111111222', '16', '16', '25', '26', '142', '144', '132', '130', '111', '111', '1', '343'),
(2, NULL, 'Test', '2010-06-02 00:00:00', '56575', '17', '16', '25', '25', '142', '145', '132', '130', '111', '111', '1', '14');

-- --------------------------------------------------------

--
-- Table structure for table `conservator_tanks`
--

CREATE TABLE IF NOT EXISTS `conservator_tanks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `breather_maintank` decimal(10,0) DEFAULT NULL,
  `breather_oltc` decimal(10,0) DEFAULT NULL,
  `corrosion_maintank` decimal(10,0) DEFAULT NULL,
  `corrosion_oltc` decimal(10,0) DEFAULT NULL,
  `jel_color_maintank` decimal(10,0) DEFAULT NULL,
  `jel_color_oltc` decimal(10,0) DEFAULT NULL,
  `oil_level_maintank` decimal(10,0) DEFAULT NULL,
  `oil_level_oltc` decimal(10,0) DEFAULT NULL,
  `oilfail_maintank` decimal(10,0) DEFAULT NULL,
  `oilfail_oltc` decimal(10,0) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `conservator_tanks`
--

INSERT INTO `conservator_tanks` (`id`, `breather_maintank`, `breather_oltc`, `corrosion_maintank`, `corrosion_oltc`, `jel_color_maintank`, `jel_color_oltc`, `oil_level_maintank`, `oil_level_oltc`, `oilfail_maintank`, `oilfail_oltc`, `visual_inspection_id`) VALUES
(3, '105', '121', '92', '108', '100', '116', '97', '113', '94', '110', 2),
(4, '105', '121', '92', '109', '102', '116', '97', '115', '95', '110', 4);

-- --------------------------------------------------------

--
-- Table structure for table `conservator_tank_factors`
--

CREATE TABLE IF NOT EXISTS `conservator_tank_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `conservator_tank_factors`
--

INSERT INTO `conservator_tank_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 35, '0,255,0', '2011-02-10 11:13:23', '2011-02-10 11:13:23'),
(2, 3, 'Acceptable', 36, 39, '0,0,255', '2011-02-10 11:13:23', '2011-02-10 11:13:23'),
(3, 2, 'Need Caution', 40, 43, '0,255,255', '2011-02-10 11:13:23', '2011-02-10 11:13:23'),
(4, 1, 'Poor', 44, 49, '255,146,0', '2011-02-10 11:13:23', '2011-02-10 11:13:23'),
(5, 0, 'Very Poor', 50, NULL, '255,0,0', '2011-02-10 11:13:23', '2011-02-10 11:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `damage_of_properties`
--

CREATE TABLE IF NOT EXISTS `damage_of_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `damage_of_properties`
--

INSERT INTO `damage_of_properties` (`id`, `value`, `message`, `created_at`, `updated_at`) VALUES
(51, '1', 'มีผนังกันไฟ (Fire Wall)', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(52, '2', 'มี Oil Pit', '2010-09-09 22:45:34', '2011-01-07 03:58:44'),
(53, '3', 'ระยะห่างระหว่างหม้อแปลง > 11m สำหรับหม้อแปลง Loading และ >15m สำหรับหม้อแปลง Tie หรือไม่มีหม้อแปลงรอบข้าง', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(54, '4', 'มีระบบดับเพลิง หรือสารดับเพลิง ที่พร้อมใช้งาน', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(55, '5', 'ไม่มีทั้ง 4 ข้อข้างต้น', '2010-09-09 22:45:34', '2011-01-07 04:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `damage_of_properties_transformer_informations`
--

CREATE TABLE IF NOT EXISTS `damage_of_properties_transformer_informations` (
  `damage_of_property_id` int(11) DEFAULT NULL,
  `transformer_information_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `damage_of_properties_transformer_informations`
--

INSERT INTO `damage_of_properties_transformer_informations` (`damage_of_property_id`, `transformer_information_id`, `created_at`, `updated_at`) VALUES
(9, 1, '2010-09-06 09:01:05', '2010-09-06 09:01:05'),
(10, 1, '2010-09-06 09:01:05', '2010-09-06 09:01:05'),
(41, 3, '2010-09-08 14:00:30', '2010-09-08 14:00:30'),
(42, 3, '2010-09-08 14:00:30', '2010-09-08 14:00:30'),
(43, 3, '2010-09-08 14:00:30', '2010-09-08 14:00:30'),
(51, 11, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(54, 14, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(51, 15, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(52, 10, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(52, 11, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(52, 12, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(53, 14, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(52, 15, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(53, 10, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(53, 11, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(53, 12, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(53, 16, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(54, 12, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(54, 16, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(55, 13, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(55, 17, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(53, 18, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(54, 18, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(55, 19, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(55, 20, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(54, 21, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(55, 22, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(53, 23, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(53, 24, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(54, 24, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(51, 25, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(53, 25, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(54, 25, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(53, 26, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(54, 26, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(53, 27, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(51, 28, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(51, 29, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(51, 30, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(51, 31, '2010-09-09 22:45:34', '2010-09-09 22:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `dgas`
--

CREATE TABLE IF NOT EXISTS `dgas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gas` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dgas`
--

INSERT INTO `dgas` (`id`, `gas`, `start`, `end`, `score`, `score_message`, `weight`, `created_at`, `updated_at`) VALUES
(1, 'CO2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dga_gas_scores`
--

CREATE TABLE IF NOT EXISTS `dga_gas_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `gas_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `dga_gas_scores`
--

INSERT INTO `dga_gas_scores` (`id`, `score`, `score_message`, `start`, `end`, `weight`, `gas_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Good', 0, 3000, 1, 1, NULL, NULL),
(2, 2, NULL, 3001, 3500, 1, 1, NULL, NULL),
(3, 3, NULL, 3501, 4000, 1, 1, NULL, NULL),
(4, 4, NULL, 4001, 4500, 1, 1, NULL, NULL),
(5, 5, NULL, 4501, 5000, 1, 1, NULL, NULL),
(6, 6, 'Poor', 5001, NULL, 1, 1, NULL, NULL),
(7, 1, 'Good', 0, 700, 1, 2, NULL, NULL),
(8, 2, NULL, 701, 800, 1, 2, NULL, NULL),
(9, 3, NULL, 801, 900, 1, 2, NULL, NULL),
(10, 4, NULL, 901, 1100, 1, 2, NULL, NULL),
(11, 5, NULL, 1101, 1300, 1, 2, NULL, NULL),
(12, 6, 'Poor', 1301, NULL, 1, 2, NULL, NULL),
(13, 1, 'Good', 0, 100, 2, 3, NULL, NULL),
(14, 2, NULL, 101, 200, 2, 3, NULL, NULL),
(15, 3, NULL, 201, 300, 2, 3, NULL, NULL),
(16, 4, NULL, 301, 500, 2, 3, NULL, NULL),
(17, 5, NULL, 501, 700, 2, 3, NULL, NULL),
(18, 6, 'Poor', 701, NULL, 2, 3, NULL, NULL),
(19, 1, 'Good', 0, 120, 3, 4, NULL, NULL),
(20, 2, NULL, 121, 150, 3, 4, NULL, NULL),
(21, 3, NULL, 151, 200, 3, 4, NULL, NULL),
(22, 4, NULL, 201, 400, 3, 4, NULL, NULL),
(23, 5, NULL, 401, 600, 3, 4, NULL, NULL),
(24, 6, 'Poor', 601, NULL, 3, 4, NULL, NULL),
(25, 1, 'Good', 0, 3, 5, 5, NULL, NULL),
(26, 2, NULL, 4, 10, 5, 5, NULL, NULL),
(27, 3, NULL, 11, 50, 5, 5, NULL, NULL),
(28, 4, NULL, 51, 100, 5, 5, NULL, NULL),
(29, 5, NULL, 101, 200, 5, 5, NULL, NULL),
(30, 6, 'Poor', 201, NULL, 5, 5, NULL, NULL),
(31, 1, 'Good', 0, 50, 3, 6, NULL, NULL),
(32, 2, NULL, 51, 100, 3, 6, NULL, NULL),
(33, 3, NULL, 101, 150, 3, 6, NULL, NULL),
(34, 4, NULL, 151, 250, 3, 6, NULL, NULL),
(35, 5, NULL, 251, 500, 3, 6, NULL, NULL),
(36, 6, 'Poor', 501, NULL, 3, 6, NULL, NULL),
(37, 1, 'Good', 0, 65, 1, 7, NULL, NULL),
(38, 2, NULL, 66, 100, 1, 7, NULL, NULL),
(39, 3, NULL, 101, 150, 1, 7, NULL, NULL),
(40, 4, NULL, 151, 250, 1, 7, NULL, NULL),
(41, 5, NULL, 251, 500, 1, 7, NULL, NULL),
(42, 6, 'Poor', 501, NULL, 1, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `elec_cor`
--

CREATE TABLE IF NOT EXISTS `elec_cor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `resistance` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `elec_cor`
--

INSERT INTO `elec_cor` (`id`, `version`, `resistance`, `test_by`, `test_date`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 90, 'Group B', '2009-12-04 00:00:00', 'Test', '3', '343'),
(2, NULL, 93, 'Group B', '2009-10-04 00:00:00', 'Test', '3', '344'),
(3, NULL, 91, 'Group B', '2009-10-01 00:00:00', 'Test', '3', '173'),
(4, NULL, 92, 'Group B', '2010-06-04 00:00:00', 'Test', '3', '215'),
(5, NULL, 94, 'Group B', '2007-10-04 00:00:00', 'Test', '3', '96'),
(6, NULL, 95, 'Group B', '2009-06-10 00:00:00', 'Test', '3', '51'),
(7, NULL, 96, 'Group B', '2008-03-03 00:00:00', 'Test', '3', '248'),
(8, NULL, 97, 'Group B', '2009-07-03 00:00:00', 'Test', '3', '232'),
(9, NULL, 98, 'Group B', '2010-06-01 00:00:00', 'Test', '3', '109'),
(10, NULL, 99, 'Group B', '2007-04-01 00:00:00', 'Test', '3', '167'),
(11, NULL, 99, 'Group B', '2009-12-04 00:00:00', 'Test', '3', '343');

-- --------------------------------------------------------

--
-- Table structure for table `elec_dcr`
--

CREATE TABLE IF NOT EXISTS `elec_dcr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `ambient_temp` double DEFAULT NULL,
  `amph1h0_2r` double DEFAULT NULL,
  `amph1h0_max` double DEFAULT NULL,
  `amph1h0_min` double DEFAULT NULL,
  `amph1h0_n` double DEFAULT NULL,
  `amph2h0_2r` double DEFAULT NULL,
  `amph2h0_max` double DEFAULT NULL,
  `amph2h0_min` double DEFAULT NULL,
  `amph2h0_n` double DEFAULT NULL,
  `amph3h0_2r` double DEFAULT NULL,
  `amph3h0_max` double DEFAULT NULL,
  `amph3h0_min` double DEFAULT NULL,
  `amph3h0_n` double DEFAULT NULL,
  `ampx1x0` double DEFAULT NULL,
  `ampx2x0` double DEFAULT NULL,
  `ampx3x0` double DEFAULT NULL,
  `ampy1y2` double DEFAULT NULL,
  `ampy2y3` double DEFAULT NULL,
  `ampy3y1` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `oil_temp` double DEFAULT NULL,
  `rated_current` double DEFAULT NULL,
  `remarkhv_2r` varchar(255) DEFAULT NULL,
  `remarkhv_max` varchar(255) DEFAULT NULL,
  `remarkhv_min` varchar(255) DEFAULT NULL,
  `remarkhv_n` varchar(255) DEFAULT NULL,
  `remarklv` varchar(255) DEFAULT NULL,
  `remarktv` varchar(255) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `volth1h0_2r` double DEFAULT NULL,
  `volth1h0_max` double DEFAULT NULL,
  `volth1h0_min` double DEFAULT NULL,
  `volth1h0_n` double DEFAULT NULL,
  `volth2h0_2r` double DEFAULT NULL,
  `volth2h0_max` double DEFAULT NULL,
  `volth2h0_min` double DEFAULT NULL,
  `volth2h0_n` double DEFAULT NULL,
  `volth3h0_2r` double DEFAULT NULL,
  `volth3h0_max` double DEFAULT NULL,
  `volth3h0_min` double DEFAULT NULL,
  `volth3h0_n` double DEFAULT NULL,
  `voltx1x0` double DEFAULT NULL,
  `voltx2x0` double DEFAULT NULL,
  `voltx3x0` double DEFAULT NULL,
  `volty1y2` double DEFAULT NULL,
  `volty2y3` double DEFAULT NULL,
  `volty3y1` double DEFAULT NULL,
  `wdg_temp` double DEFAULT NULL,
  `weather` varchar(255) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `elec_dcr`
--

INSERT INTO `elec_dcr` (`id`, `version`, `ambient_temp`, `amph1h0_2r`, `amph1h0_max`, `amph1h0_min`, `amph1h0_n`, `amph2h0_2r`, `amph2h0_max`, `amph2h0_min`, `amph2h0_n`, `amph3h0_2r`, `amph3h0_max`, `amph3h0_min`, `amph3h0_n`, `ampx1x0`, `ampx2x0`, `ampx3x0`, `ampy1y2`, `ampy2y3`, `ampy3y1`, `humidity`, `oil_temp`, `rated_current`, `remarkhv_2r`, `remarkhv_max`, `remarkhv_min`, `remarkhv_n`, `remarklv`, `remarktv`, `test_by`, `test_date`, `volth1h0_2r`, `volth1h0_max`, `volth1h0_min`, `volth1h0_n`, `volth2h0_2r`, `volth2h0_max`, `volth2h0_min`, `volth2h0_n`, `volth3h0_2r`, `volth3h0_max`, `volth3h0_min`, `volth3h0_n`, `voltx1x0`, `voltx2x0`, `voltx3x0`, `volty1y2`, `volty2y3`, `volty3y1`, `wdg_temp`, `weather`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 20, 1.45000004768372, 1, 0.5, 1.45000004768372, 0.46000000834465, 1, 1.4099999666214, 1.46000003814697, 1.41999995708466, 1, 1.37999999523163, 1.40400004386902, 0.0399999991059303, 0.0399999991059303, 0.0399999991059303, 0.5, 0.5, 0.5, 85, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GA????-?', '1997-01-03 00:00:00', 0.430000007152557, 0.721000015735626, 1.39999997615814, 0.439999997615814, 1.44000005722046, 0.720000028610229, 0.519999980926514, 0.439999997615814, 0.439999997615814, 0.720000028610229, 0.505999982357025, 0.449999988079071, 1.95500004291534, 1.92999994754791, 1.91999995708466, 0.0140000004321337, 0.0149999996647239, 0.0149999996647239, 38, 'Clear', 'Test', '1', '343'),
(2, NULL, 20, 1.46399998664856, 1, 0.5, 1.45299994945526, 0.455000013113022, 1, 1.39999997615814, 1.46399998664856, 1.41700005531311, 1, 1.39999997615814, 1.40400004386902, 0.0399999991059303, 0.0399999991059303, 0.0399999991059303, 0.5, 0.5, 0.5, 85, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???-?', '2001-12-06 00:00:00', 0.448000013828278, 0.721000015735626, 1.43099999427795, 0.465000003576279, 1.48000001907349, 0.720000028610229, 0.519999980926514, 0.467999994754791, 0.232999995350838, 0.720000028610229, 0.505999982357025, 0.449999988079071, 1.92700004577637, 1.91999995708466, 1.91999995708466, 0.0149999996647239, 0.0160000007599592, 0.0149999996647239, 42, 'Clear', 'Test', '3', '343'),
(3, NULL, 28, 0.5, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 46, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???.?Group3', '2001-11-03 00:00:00', 1.27999997138977, 0.356000006198883, 1.33000004291534, 1.30499994754791, 1.29900002479553, 0.356000006198883, 1.4099999666214, 1.32099997997284, 1.27999997138977, 0.358000010251999, 1.39900004863739, 1.33000004291534, 5.90999984741211, 5.94999980926514, 5.98999977111816, 2.21000003814697, 2.22000002861023, 2.20000004768372, 36, 'Sunny', 'Test', '1', '344'),
(4, NULL, 36, 0.5, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 45, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???.?Group3', '2009-10-04 00:00:00', 1.26999998092651, 0.360000014305115, 1.37999999523163, 1.29999995231628, 1.29499995708466, 0.361000001430511, 1.39999997615814, 1.32000005245209, 1.2849999666214, 0.360000014305115, 1.38999998569489, 1.32000005245209, 5.94999980926514, 5.94999980926514, 5.94999980926514, 2.20000004768372, 2.20000004768372, 2.20000004768372, 45, 'Sunny', 'Test', '3', '344'),
(5, NULL, 20, 21.25, 2.29999995231628, 20.7900009155273, 21.1399993896484, 21.5400009155273, 2.23000001907349, 20.3500003814697, 21.2900009155273, 21, 2.09999990463257, 20.6000003814697, 20.75, 5.40000009536743, 5.19999980926514, 22.3899993896484, 17.4500007629395, 17.5, 17.1000003814697, 85, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6343,????-??', '2003-06-01 00:00:00', 5.13800001144409, 1.43099999427795, 5.55600023269653, 5.26000022888184, 5.21000003814697, 1.29999995231628, 5.44000005722046, 5.26000022888184, 5.07999992370605, 1.32500004768372, 5.50799989700317, 5.11999988555908, 0.180000007152557, 0.180000007152557, 0.699999988079071, 0.127000004053116, 0.127000004053116, 0.123000003397465, 43, 'Clear', 'Test', '1', '173'),
(6, NULL, 34, 1, 2, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 15.3000001907349, 18.7999992370605, 1, 0.5, 0.5, 0.5, 68, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'G-A', '2009-10-01 00:00:00', 0.0900000035762787, 1.30400002002716, 0.75, 0.0299999993294477, 0.660000026226044, 1.307000041008, 0.740000009536743, 0.649999976158142, 0.589999973773956, 1.29799997806549, 0.699999988079071, 0.629999995231628, 0.156000003218651, 0.155000001192093, 0.0189999993890524, 0.0149999996647239, 0.0149999996647239, 0.0179999992251396, 30, 'Clear', 'Test', '3', '173'),
(7, NULL, 30, 1, 2, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 15.3000001907349, 15.3000001907349, 1, 0.5, 0.5, 0.5, 70, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TCS#1', '2007-09-02 00:00:00', 0.0869999974966049, 1.32599997520447, 0.740000009536743, 0.0240000002086163, 0.586000025272369, 1.32799994945526, 0.740000009536743, 0.624000012874603, 0.583999991416931, 1.32599997520447, 0.740000009536743, 0.623000025749207, 0.156000003218651, 0.156000003218651, 0.0189999993890524, 0.0140000004321337, 0.0149999996647239, 0.0149999996647239, 36, 'CLEAR', 'Test', '1', '215'),
(8, NULL, 32, 1, 2.12700009346008, 1, 1, 1, 2.13700008392334, 1, 1, 1, 2.02600002288818, 1, 1, 15.1999998092651, 18.8999996185303, 1, 0.5, 0.5, 0.5, 69, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???-?G2', '2010-06-04 00:00:00', 0.0900000035762787, 1.38800001144409, 0.800000011920929, 0.0199999995529652, 0.600000023841858, 1.38999998569489, 0.680000007152557, 0.680000007152557, 0.550000011920929, 1.32400000095367, 0.579999983310699, 0.621999979019165, 0.150000005960464, 0.180000007152557, 0.0189999993890524, 0.0140000004321337, 0.0160000007599592, 0.0149999996647239, 38, 'CLEAR', 'Test', '3', '215'),
(9, NULL, 30, 0.5, 10, 0.5, 0.5, 0.5, 10, 0.5, 0.5, 0.5, 10, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 52, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???.? Group3', '2003-06-05 00:00:00', 0.165000006556511, 9.25800037384033, 0.187999993562698, 0.177000001072884, 1.16100001335144, 9.21199989318848, 0.185000002384186, 0.175999999046326, 0.165999993681908, 9.22700023651123, 0.188999995589256, 0.175999999046326, 0.0810000002384186, 0.0879999995231628, 0.0850000008940697, 0.0149999996647239, 0.0109999999403954, 0.0160000007599592, 39, 'Sunny', 'Test', '1', '96'),
(10, NULL, 32, 0.5, 10, 0.5, 0.5, 0.5, 10, 0.5, 0.5, 0.5, 10, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 56, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???.? Group3', '2007-10-04 00:00:00', 0.167999997735023, 9.23999977111816, 0.184000000357628, 0.17399999499321, 0.168999999761581, 9.19999980926514, 0.185000002384186, 0.174999997019768, 0.168999999761581, 9.22999954223633, 0.185000002384186, 0.17399999499321, 0.0820000022649765, 0.0820000022649765, 0.0820000022649765, 0.0140000004321337, 0.0140000004321337, 0.0140000004321337, 39, 'Sunny', 'Test', '3', '96'),
(11, NULL, 35, 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 5, 5, 5, 5, 5, 5, 52, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???-?', '2003-05-10 00:00:00', 1.04700005054474, 0.731000006198883, 1.30400002002716, 1.11000001430511, 1.04799997806549, 0.730000019073486, 1.307000041008, 1.11000001430511, 1.0460000038147, 0.732999980449677, 1.29799997806549, 1.10899996757507, 0.046000000089407, 0.046000000089407, 0.046000000089407, 0.0467999987304211, 0.046000000089407, 0.0467000007629395, 39, 'CLEAR', 'Test', '1', '51'),
(12, NULL, 37, 2.40000009536743, 1, 2.36999988555908, 2.33500003814697, 2.32999992370605, 1, 2.23799991607666, 2.28699994087219, 2.24699997901917, 1, 2.1800000667572, 2.1949999332428, 3.98799991607666, 3.87800002098083, 0.0350000001490116, 3.98900008201599, 3.88100004196167, 0.0348000004887581, 54, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???-?', '2009-06-10 00:00:00', 1.33800005912781, 0.730000019073486, 1.43099999427795, 1.37600004673004, 1.24800002574921, 0.735000014305115, 1.29999995231628, 1.28600001335144, 1.2610000371933, 0.730000019073486, 1.32500004768372, 1.29499995708466, 0.0359999984502792, 0.0350000001490116, 3.78999996185303, 0.0368999987840652, 0.0357999987900257, 3.79099988937378, 40, 'CLEAR', 'Test', '3', '51'),
(13, NULL, 20, 1, 20.2000007629395, 1, 1, 1, 21, 1, 1, 1, 19.7000007629395, 1, 1, 1, 1, 1, 1, 1, 1, 85, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TCS#1', '2004-12-08 00:00:00', 0.301999986171722, 5.26999998092651, 0.356000006198883, 0.314000010490417, 0.300999999046326, 5.26999998092651, 0.356000006198883, 0.314999997615814, 0.301999986171722, 5.26100015640259, 0.35699999332428, 0.314999997615814, 0.0109999999403954, 0.0109999999403954, 0.0120000001043081, 0.0149999996647239, 0.0109999999403954, 0.0149999996647239, 43, 'Clear', 'Test', '1', '248'),
(14, NULL, 20, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 85, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SETS/G3', '2008-03-03 00:00:00', 0.312000006437302, 0.730000019073486, 0.370000004768372, 0.32600000500679, 0.312000006437302, 0.720000028610229, 0.370000004768372, 0.32600000500679, 0.312999993562698, 0.75, 0.370999991893768, 0.326999992132187, 0.0109999999403954, 0.0120000001043081, 0.0120000001043081, 0.0189999993890524, 0.017000000923872, 0.0130000002682209, 43, 'Clear', 'Test', '3', '248'),
(15, NULL, 30, 1, 0.5, 1, 1, 1, 0.5, 1, 1, 1, 0.5, 1, 1, 1, 1, 1, 1, 1, 1, 65, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'G-A+B', '2003-06-03 00:00:00', 0.0879999995231628, 1.38999998569489, 0.759999990463257, 0.0240000002086163, 0.58899998664856, 1.39999997615814, 0.749000012874603, 0.629000008106232, 0.587999999523163, 1.39999997615814, 0.75, 0.621999979019165, 0.155000001192093, 0.158999994397163, 0.159999996423721, 0.0160000007599592, 0.0179999992251396, 0.0149999996647239, 45, 'CLEAR', 'Test', '1', '232'),
(16, NULL, 30, 1, 0.5, 1, 1, 1, 0.5, 1, 1, 1, 0.5, 1, 1, 1, 1, 1, 1, 1, 1, 65, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'G-A+B', '2009-07-03 00:00:00', 0.0810000002384186, 1.37999999523163, 0.759999990463257, 0.0209999997168779, 0.579999983310699, 1.39999997615814, 0.745000004768371, 0.620000004768372, 0.579999983310699, 1.38999998569489, 0.758000016212463, 0.619000017642975, 0.158999994397163, 0.150000005960464, 0.155000001192093, 0.0179999992251396, 0.0209999997168779, 0.0189999993890524, 42, 'CLEAR', 'Test', '3', '232'),
(17, NULL, 28, 10, 0.5, 10, 10, 10, 0.5, 10, 10, 10, 0.5, 10, 10, 1, 1, 1, 1, 1, 1, 78, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PRAMOTE', '2004-05-01 00:00:00', 7.47599983215332, 0.180000007152557, 7.80999994277954, 7.86700010299683, 7.4670000076294, 0.185000002384186, 7.84999990463257, 7.84600019454956, 7.46299982070923, 0.185000002384186, 7.80999994277954, 7.84800004959106, 0.10700000077486, 0.104000002145767, 0.105999998748302, 0.0209999997168779, 0.0219999998807907, 0.25, 43, 'CLEAR', 'Test', '1', '109'),
(18, NULL, 28, 10, 0.5, 10, 10, 10, 0.5, 10, 10, 10, 0.5, 10, 10, 1, 1, 1, 1, 1, 1, 78, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'G.A', '2010-06-01 00:00:00', 7.5, 0.186000004410744, 7.84999990463257, 7.84999990463257, 7.49900007247925, 0.186000004410744, 7.80000019073486, 7.84000015258789, 7.46999979019165, 0.186000004410744, 7.82000017166138, 7.84000015258789, 0.0469999983906746, 0.0469999983906746, 0.0500000007450581, 0.0219999998807907, 0.025000000372529, 0.280000001192093, 43, 'CLEAR', 'Test', '3', '109'),
(19, NULL, 36, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 54, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???.8-1  ???.', '2001-03-01 00:00:00', 3.06699991226196, 3.34699988365173, 3.22000002861023, 3.14499998092651, 3.06599998474121, 3.37400007247925, 3.25, 3.15499997138977, 3.07200002670288, 3.34400010108948, 3.22000002861023, 3.13899993896484, 3.10999989509583, 3.11999988555908, 3.15000009536743, 2.98000001907349, 2.98000001907349, 2.91000008583069, 35, 'Sunny', 'Test', '1', '167'),
(20, NULL, 37, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 56, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group.B', '2007-04-01 00:00:00', 3.0699999332428, 3.34999990463257, 3.16000008583069, 3.15000009536743, 3.0699999332428, 3.38000011444092, 3.16000008583069, 3.16000008583069, 3.07500004768372, 3.34999990463257, 3.14000010490417, 3.14000010490417, 3.09999990463257, 3.19000005722046, 3.09999990463257, 3, 3, 3, 50, 'Sunny', 'Test', '3', '167');

-- --------------------------------------------------------

--
-- Table structure for table `elec_exc`
--

CREATE TABLE IF NOT EXISTS `elec_exc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ac_amph1h0` double DEFAULT NULL,
  `ac_amph1h0_2r` double DEFAULT NULL,
  `ac_amph1h0_max` double DEFAULT NULL,
  `ac_amph1h0_min` double DEFAULT NULL,
  `ac_amph1h0_n` double DEFAULT NULL,
  `ac_amph2h0` double DEFAULT NULL,
  `ac_amph2h0_2r` double DEFAULT NULL,
  `ac_amph2h0_max` double DEFAULT NULL,
  `ac_amph2h0_min` double DEFAULT NULL,
  `ac_amph2h0_n` double DEFAULT NULL,
  `ac_amph3h0` double DEFAULT NULL,
  `ac_amph3h0_2r` double DEFAULT NULL,
  `ac_amph3h0_max` double DEFAULT NULL,
  `ac_amph3h0_min` double DEFAULT NULL,
  `ac_amph3h0_n` double DEFAULT NULL,
  `ac_ampx1x0` double DEFAULT NULL,
  `ac_ampx1x0_n` double DEFAULT NULL,
  `ac_ampx2x0` double DEFAULT NULL,
  `ac_ampx2x0_n` double DEFAULT NULL,
  `ac_ampx3x0` double DEFAULT NULL,
  `ac_ampx3x0_n` double DEFAULT NULL,
  `ac_ampy1y2` double DEFAULT NULL,
  `ac_ampy2y3` double DEFAULT NULL,
  `ac_ampy3y1` double DEFAULT NULL,
  `ac_kvhv` double DEFAULT NULL,
  `ac_kvlv` double DEFAULT NULL,
  `ac_volthv` double DEFAULT NULL,
  `ac_voltlv` double DEFAULT NULL,
  `ac_volttv` double DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `ambient_temp` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `hv_max_tap` varchar(255) DEFAULT NULL,
  `hv_min_tap` varchar(255) DEFAULT NULL,
  `hv_tap` varchar(255) DEFAULT NULL,
  `oil_temp` double DEFAULT NULL,
  `rated_current` double DEFAULT NULL,
  `remarkhv` varchar(255) DEFAULT NULL,
  `remarkhv_2r` varchar(255) DEFAULT NULL,
  `remarkhv_max` varchar(255) DEFAULT NULL,
  `remarkhv_min` varchar(255) DEFAULT NULL,
  `remarkhv_n` varchar(255) DEFAULT NULL,
  `remarklv` varchar(255) DEFAULT NULL,
  `remarklv_n` varchar(255) DEFAULT NULL,
  `remarktv` varchar(255) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `wdg_temp` double DEFAULT NULL,
  `weather` varchar(255) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `elec_exc`
--

INSERT INTO `elec_exc` (`id`, `ac_amph1h0`, `ac_amph1h0_2r`, `ac_amph1h0_max`, `ac_amph1h0_min`, `ac_amph1h0_n`, `ac_amph2h0`, `ac_amph2h0_2r`, `ac_amph2h0_max`, `ac_amph2h0_min`, `ac_amph2h0_n`, `ac_amph3h0`, `ac_amph3h0_2r`, `ac_amph3h0_max`, `ac_amph3h0_min`, `ac_amph3h0_n`, `ac_ampx1x0`, `ac_ampx1x0_n`, `ac_ampx2x0`, `ac_ampx2x0_n`, `ac_ampx3x0`, `ac_ampx3x0_n`, `ac_ampy1y2`, `ac_ampy2y3`, `ac_ampy3y1`, `ac_kvhv`, `ac_kvlv`, `ac_volthv`, `ac_voltlv`, `ac_volttv`, `version`, `ambient_temp`, `humidity`, `hv_max_tap`, `hv_min_tap`, `hv_tap`, `oil_temp`, `rated_current`, `remarkhv`, `remarkhv_2r`, `remarkhv_max`, `remarkhv_min`, `remarkhv_n`, `remarklv`, `remarklv_n`, `remarktv`, `test_by`, `test_date`, `wdg_temp`, `weather`, `work_order`, `perform_type`, `transformer`) VALUES
(1, 27.5499992370605, 2.34699988365173, 2.03600001335144, 2.98399996757507, 2.28099989891052, 20.5, 1.94000005722046, 1.61099994182587, 2.32999992370605, 1.83000004291534, 27.6299991607666, 2.4210000038147, 2.01600003242493, 2.99300003051758, 2.33100008964539, 30, 33, 20.8999996185303, 25.8999996185303, 30.3999996185303, 33.4000015258789, 36.2099990844727, 30, 39, 10, NULL, 200, 200, 200, NULL, 32, 69, 'Tap10R', 'Tap7L', 'Tap10R', 42, 251.020004272461, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???-?G2', '2001-12-06 00:00:00', 42, 'Sunny', 'Test', '1', '343'),
(2, 30, 2.36999988555908, 1.91999995708466, 2.97000002861023, 2.25999999046326, 25, 2.51999998092651, 1.51999998092651, 2.33999991416931, 2.40000009536743, 30, 2.35999989509583, 1.87000000476837, 2.96000003814697, 2.24000000953674, 26.7000007629395, 26.7000007629395, 19.6499996185303, 19.6499996185303, 26.5200004577637, 26.5200004577637, 38.7000007629395, 29.7999992370605, 41.4599990844727, 10, NULL, 200, 200, 200, NULL, 37, 43, 'Tap10R', 'Tap7L', 'Tap10R', 38, 251.020004272461, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TCS#1', '2008-11-03 00:00:00', 38, 'CLEAR', 'Test', '3', '343'),
(3, 35.8499984741211, 2.15000009536743, 2.73000001907349, 1.72000002861023, 2.04999995231628, 26.2199993133545, 1.55999994277954, 1.96000003814697, 1.25999999046326, 1.49000000953674, 38.5200004577637, 2.11999988555908, 2.71000003814697, 1.71000003814697, 2.01999998092651, 27.1599998474121, 27.1599998474121, 17.7099990844727, 17.7099990844727, 27.0200004577637, 27.0200004577637, 35.5900001525879, 34.0200004577637, 32.9799995422363, 10, NULL, 200, 200, 200, NULL, 37, 48, 'Tap10R', 'Tap7L', 'Tap10R', 34, 251.020004272461, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TCS#1', '2002-03-03 00:00:00', 34, 'Sunny', 'Test', '1', '344'),
(4, 35.8600006103516, 2.23000001907349, 2.82999992370605, 1.72000002861023, 2.05999994277954, 26.1200008392334, 1.52999997138977, 1.98000001907349, 1.1599999666214, 1.42999994754791, 38.5900001525879, 2.29999995231628, 2.98000001907349, 1.83000004291534, 2.13000011444092, 30, 31.7600002288818, 20, 200, 30, 33.9099998474121, 35.5499992370605, 34.1100006103516, 33.0110015869141, 10, NULL, 200, 200, 200, NULL, 36, 45, 'Tap10R', 'Tap7L', 'Tap10R', 45, 251.020004272461, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SETS/G3', '2009-10-04 00:00:00', 45, 'Sunny', 'Test', '3', '344'),
(5, 20.8899993896484, 3.3199999332428, 1.91999995708466, 4.15999984741211, 3.16000008583069, 28, 2.51999998092651, 2.04999995231628, 3.14000010490417, 2.40000009536743, 21.0279998779297, 3.22000002861023, 2.59999990463257, 4, 3.05999994277954, 4.21000003814697, 4.21000003814697, 7.82600021362305, 7.82600021362305, 3.66000008583069, 3.66000008583069, 38.7000007629395, 29.7999992370605, 38.9000015258789, 10, NULL, 200, 200, 200, NULL, 28, 78, 'Tap10R', 'Tap7L', 'Tap10R', 40, 251.020004272461, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GA????-?', '2003-06-01 00:00:00', 43, 'CLEAR', 'Test', '1', '173'),
(6, 21.7999992370605, 4.23000001907349, 1.22000002861023, 4.61999988555908, 5.96000003814697, 30.8999996185303, 4.65999984741211, 3.78999996185303, 5.76000022888184, 2.45000004768372, 21.8999996185303, 5.98000001907349, 4.98999977111816, 7.32000017166138, 5.73999977111816, 3.41599988937378, 3.41599988937378, 4.46600008010864, 2.46600008010864, 3.69000005722046, 3.69000005722046, 32.7000007629395, 24.9599990844727, 41.4599990844727, 10, NULL, 200, 200, 200, NULL, 34, 68, 'Tap10R', 'Tap7L', 'Tap10R', 30, 251.020004272461, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???-?', '2009-10-01 00:00:00', 30, 'CLEAR', 'Test', '3', '173'),
(7, 4.32999992370605, 0.810999989509583, 0.998000025749207, 0.680000007152557, 0.75, 8.39000034332275, 0.9549999833107, 1.22300004959106, 0.754999995231629, 0.907999992370605, 9.01099967956543, 1.08000004291534, 1.25499999523163, 0.830999970436096, 0.966000020503998, 28.4500007629395, 28.4899997711182, 20.5499992370605, 20.5200004577637, 26.5900001525879, 26.6900005340576, 38.6500015258789, 29.6599998474121, 38.8499984741211, 10, NULL, 200, 200, 200, NULL, 30, 70, 'Tap10R', 'Tap7L', 'Tap10R', 35, 251.020004272461, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???-??', '2007-09-02 00:00:00', 36, 'CLEAR', 'Test', '1', '215'),
(8, 4.21999979019165, 0.805999994277954, 0.992999970912933, 0.658999979496002, 0.772000014781952, 8.34000015258789, 0.955999970436096, 1.21700000762939, 0.762000024318695, 0.907999992370605, 9.06999969482422, 1.01900005340576, 1.27300000190735, 0.824999988079071, 0.972000002861023, 28.4400005340576, 28.4400005340576, 20.5160007476807, 20.5160007476807, 26.6599998474121, 26.6599998474121, 38.689998626709, 29.6889991760254, 38.8800010681152, 10, NULL, 200, 200, 200, NULL, 32, 69, 'Tap10R', 'Tap7L', 'Tap10R', 38, 251.020004272461, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???-?', '2010-06-04 00:00:00', 38, 'CLEAR', 'Test', '3', '215'),
(9, 2.49600005149841, 2.89000010490417, 3.38000011444092, 2.40100002288818, 2.81100010871887, 14.4899997711182, 2.23300004005432, 2.65000009536743, 1.88999998569489, 2.23300004005432, 11.789999961853, 2.78900003433228, 3.44000005722046, 2.49900007247925, 2.76999998092651, 14.5100002288818, 14.5100002288818, 12.6199998855591, 12.6199998855591, 16.1200008392334, 16.1200008392334, 129.100006103516, 101.110000610352, 129.679992675781, 10, NULL, 200, 200, 200, NULL, 30, 52, 'Tap10R', 'Tap7L', 'Tap10R', 48, 200.820007324219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PRAMOTE', '2003-06-05 00:00:00', 39, 'Sunny', 'Test', '1', '96'),
(10, 3.86899995803833, 2.88000011444092, 3.3050000667572, 2.45000004768372, 2.79999995231628, 18.9409999847412, 2.30100011825562, 2.65899991989136, 1.89999997615814, 2.2409999370575, 14.0270004272461, 2.75600004196167, 3.45000004768372, 2.50099992752075, 2.78900003433228, 14.6899995803833, 14.6899995803833, 12.6099996566772, 12.6099996566772, 16.25, 16.25, 128.979995727539, 101.319999694824, 129.589996337891, 10, NULL, 200, 200, 200, NULL, 32, 56, 'Tap10R', 'Tap7L', 'Tap10R', 50, 200.820007324219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'G.A', '2007-07-05 00:00:00', 39, 'Sunny', 'Test', '3', '96'),
(11, 21.2900009155273, 2.80999994277954, 3.3199999332428, 2.40000009536743, 2.79999995231628, 15.7700004577637, 2.22000002861023, 2.6800000667572, 1.89999997615814, 2.22000002861023, 22.1100006103516, 2.88000011444092, 3.42000007629395, 2.5, 2.89000010490417, 15.9200000762939, 15.9200000762939, 12.6300001144409, 12.6300001144409, 16.1100006103516, 16.1100006103516, 129.600006103516, 101.400001525879, 130.699996948242, 10, NULL, 200, 200, 200, NULL, 35, 52, 'Tap10R', 'Tap8L', 'Tap10R', 50, 502.040008544922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'G-A+B', '2003-05-10 00:00:00', 39, 'CLEAR', 'Test', '1', '51'),
(12, 21.4500007629395, 3.04500007629395, 3.47499990463257, 2.57399988174438, 2.92499995231628, 15.960000038147, 2.38800001144409, 2.74200010299683, 1.96599996089935, 2.29500007629395, 22.5699996948242, 3.04299998283386, 3.44799995422363, 2.45300006866455, 2.98900008201599, 16.2409992218018, 16.2409992218018, 12.6040000915527, 12.6040000915527, 16.2830009460449, 16.2830009460449, 126.599998474121, 100, 129.130004882812, 10, NULL, 200, 200, 200, NULL, 37, 54, 'Tap8R', 'Tap8L', 'Tap8R', 50, 502.040008544922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'G-A+B', '2009-06-10 00:00:00', 40, 'CLEAR', 'Test', '3', '51'),
(13, 20.3600006103516, 3.19000005722046, 2.64000010490417, 3.99000000953674, 3.07100009918213, 10.2399997711182, 1.8639999628067, 1.49100005626678, 2.44000005722046, 1.79200005531311, 14.4399995803833, 2.12700009346008, 1.68099999427795, 2.68300008773804, 2.03299999237061, 16.3799991607666, 16.3799991607666, 7.71999979019165, 7.71999979019165, 8.73999977111816, 8.73999977111816, 86.2200012207031, 67.6500015258789, 80.5500030517578, 10, NULL, 200, 200, 200, NULL, 35, 87, 'Tap10R', 'Tap7L', 'Tap10R', 35, 502.040008544922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'G-A', '2004-10-07 00:00:00', 35, 'Sunny', 'Test', '1', '248'),
(14, 13.5740003585815, 1.85899996757507, 1.50800001621246, 2.34200000762939, 1.78999996185303, 28, 1.47899997234344, 1.2039999961853, 1.93400001525879, 1.41799998283386, 14.2189998626709, 1.93499994277954, 1.56500005722046, 2.44600009918213, 1.85199999809265, 10.7399997711182, 10.7399997711182, 7.82600021362305, 7.82600021362305, 10.5159997940063, 10.5159997940063, 88.5400009155273, 67.6500015258789, 93.5100021362305, 10, NULL, 200, 200, 200, NULL, 36, 45, 'Tap10R', 'Tap7L', 'Tap10R', 35, 502.040008544922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'G-A', '2008-03-03 00:00:00', 56, 'Sunny', 'Test', '3', '248'),
(15, 25.1550006866455, 1.54999995231628, 1.82000005245209, 1.14999997615814, 1.44000005722046, 18.6399993896484, 1.66700005531311, 1.35000002384186, 0.850000023841858, 1.14999997615814, 29.3390007019043, 1.58899998664856, 2.04999995231628, 1.29799997806549, 1.50100004673004, 3.61999988555908, 3.61999988555908, 2.54999995231628, 2.54999995231628, 3.90100002288818, 3.90100002288818, 25.0009994506836, 17.8819999694824, 28.2189998626709, 10, NULL, 200, 200, 200, NULL, 30, 65, 'Tap12R', 'Tap8L', 'Tap12R', 37, 502.040008544922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???.? Group3', '2003-06-03 00:00:00', 45, 'CLEAR', 'Test', '1', '232'),
(16, 25.1529998779297, 1.66999995708466, 1.85000002384186, 1.13999998569489, 1.39999997615814, 18.6499996185303, 1.64999997615814, 1.38999998569489, 0.870000004768371, 1.02999997138977, 30.3360004425049, 1.54999995231628, 2.00999999046326, 1.25, 1.49000000953674, 3.60999989509583, 3.60999989509583, 2.55999994277954, 2.55999994277954, 3.95000004768372, 3.95000004768372, 24.8600006103516, 17.7800006866455, 28.3099994659424, 10, NULL, 200, 200, 200, NULL, 30, 65, 'Tap12R', 'Tap8L', 'Tap12R', 36, 502.040008544922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???.? Group3', '2009-07-03 00:00:00', 42, 'CLEAR', 'Test', '3', '232'),
(17, 21.0100002288818, 2.22000002861023, 3.00099992752075, 1.78900003433228, 2.09999990463257, 14.8199996948242, 1.72000002861023, 2.33999991416931, 1.35000002384186, 1.71000003814697, 21.0189990997314, 1.88999998569489, 2.99000000953674, 1.6599999666214, 2.20499992370605, 6.19000005722046, 6.19000005722046, 4.69000005722046, 4.69000005722046, 6.40999984741211, 6.40999984741211, 38.6599998474121, 29.5599994659424, 38.8899993896484, 10, NULL, 200, 200, 200, NULL, 28, 78, 'Tap12R', 'Tap8L', 'Tap12R', 40, 502.040008544922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???.? GROUP  3', '2004-05-01 00:00:00', 43, 'CLEAR', 'Test', '1', '109'),
(18, 20.8899993896484, 2.25, 2.99000000953674, 1.78999996185303, 2.14000010490417, 14.7130002975464, 1.75, 2.34999990463257, 1.36000001430511, 1.69000005722046, 21.0279998779297, 1.95000004768372, 3.02999997138977, 1.77999997138977, 2.21000003814697, 6.25, 6.25, 4.69999980926514, 4.69999980926514, 6.34000015258789, 6.34000015258789, 38.7000007629395, 29.7999992370605, 38.9000015258789, 10, NULL, 200, 200, 200, NULL, 28, 78, 'Tap12R', 'Tap8L', 'Tap12R', 40, 502.040008544922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???.? GROUP  3', '2010-06-01 00:00:00', 43, 'CLEAR', 'Test', '3', '109'),
(19, 28, 5.26999998092651, 9.28999996185303, 3.50999999046326, 4.8899998664856, 18.5, 4.32999992370605, 7.01000022888184, 2.96000003814697, 4.01000022888184, 28.5, 5.40000009536743, 9.47999954223633, 3.6800000667572, 5.01999998092651, 5.19999980926514, 4.21000003814697, 3.38000011444092, 3.38000011444092, 8, 200, 24.3600006103516, 18.1000003814697, 24.4500007629395, 10, NULL, 200, 200, 200, NULL, 36, 54, 'Tap12R', 'Tap8L', 'Tap12R', 35, 502.040008544922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '???.8-1  ???.', '2001-03-01 00:00:00', 35, 'Sunny', 'Test', '1', '167'),
(20, 28.371000289917, 6.53499984741211, 9.05399990081787, 4.30900001525879, 5.94600009918213, 19.2000007629395, 5.30600023269653, 7.34999990463257, 3.28099989891052, 4.64400005340576, 30, 6.79899978637695, 10.835000038147, 5.11100006103516, 6.11499977111816, 6.07600021362305, 6.07600021362305, 4.11999988555908, 5.01399993896484, 7.20599985122681, 7.20599985122681, 26.2229995727539, 20.0890007019043, 24.5009994506836, 10, NULL, 200, 200, 200, NULL, 37, 56, 'Tap12R', 'Tap8L', 'Tap12R', 48, 502.040008544922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group.B', '2007-04-01 00:00:00', 50, 'Sunny', 'Test', '3', '167');

-- --------------------------------------------------------

--
-- Table structure for table `elec_imp_single`
--

CREATE TABLE IF NOT EXISTS `elec_imp_single` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `ambient_temp` double DEFAULT NULL,
  `amp1_2r` double DEFAULT NULL,
  `amp1_max` double DEFAULT NULL,
  `amp1_min` double DEFAULT NULL,
  `amp1_n` double DEFAULT NULL,
  `amp1_n_ht` double DEFAULT NULL,
  `amp1_n_lt` double DEFAULT NULL,
  `amp2_2r` double DEFAULT NULL,
  `amp2_max` double DEFAULT NULL,
  `amp2_min` double DEFAULT NULL,
  `amp2_n` double DEFAULT NULL,
  `amp2_n_ht` double DEFAULT NULL,
  `amp2_n_lt` double DEFAULT NULL,
  `amp3_2r` double DEFAULT NULL,
  `amp3_max` double DEFAULT NULL,
  `amp3_min` double DEFAULT NULL,
  `amp3_n` double DEFAULT NULL,
  `amp3_n_ht` double DEFAULT NULL,
  `amp3_n_lt` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `max_tap` varchar(255) DEFAULT NULL,
  `min_tap` varchar(255) DEFAULT NULL,
  `oil_temp` double DEFAULT NULL,
  `rate_imp1_2r` double DEFAULT NULL,
  `rate_imp1_max` double DEFAULT NULL,
  `rate_imp1_min` double DEFAULT NULL,
  `rate_imp1_n` double DEFAULT NULL,
  `rate_imp1_n_ht` double DEFAULT NULL,
  `rate_imp1_n_lt` double DEFAULT NULL,
  `rate_imp2_2r` double DEFAULT NULL,
  `rate_imp2_max` double DEFAULT NULL,
  `rate_imp2_min` double DEFAULT NULL,
  `rate_imp2_n` double DEFAULT NULL,
  `rate_imp2_n_ht` double DEFAULT NULL,
  `rate_imp2_n_lt` double DEFAULT NULL,
  `rate_imp3_2r` double DEFAULT NULL,
  `rate_imp3_max` double DEFAULT NULL,
  `rate_imp3_min` double DEFAULT NULL,
  `rate_imp3_n` double DEFAULT NULL,
  `rate_imp3_n_ht` double DEFAULT NULL,
  `rate_imp3_n_lt` double DEFAULT NULL,
  `rated_current` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_choice_2r` varchar(255) DEFAULT NULL,
  `test_choice_max` varchar(255) DEFAULT NULL,
  `test_choice_min` varchar(255) DEFAULT NULL,
  `test_choice_n` varchar(255) DEFAULT NULL,
  `test_choice_n_ht` varchar(255) DEFAULT NULL,
  `test_choice_n_lt` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `volt1_2r` double DEFAULT NULL,
  `volt1_max` double DEFAULT NULL,
  `volt1_min` double DEFAULT NULL,
  `volt1_n` double DEFAULT NULL,
  `volt1_n_ht` double DEFAULT NULL,
  `volt1_n_lt` double DEFAULT NULL,
  `volt2_2r` double DEFAULT NULL,
  `volt2_max` double DEFAULT NULL,
  `volt2_min` double DEFAULT NULL,
  `volt2_n` double DEFAULT NULL,
  `volt2_n_ht` double DEFAULT NULL,
  `volt2_n_lt` double DEFAULT NULL,
  `volt3_2r` double DEFAULT NULL,
  `volt3_max` double DEFAULT NULL,
  `volt3_min` double DEFAULT NULL,
  `volt3_n` double DEFAULT NULL,
  `volt3_n_ht` double DEFAULT NULL,
  `volt3_n_lt` double DEFAULT NULL,
  `wdg_temp` double DEFAULT NULL,
  `weather` varchar(255) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `elec_imp_single`
--

INSERT INTO `elec_imp_single` (`id`, `version`, `ambient_temp`, `amp1_2r`, `amp1_max`, `amp1_min`, `amp1_n`, `amp1_n_ht`, `amp1_n_lt`, `amp2_2r`, `amp2_max`, `amp2_min`, `amp2_n`, `amp2_n_ht`, `amp2_n_lt`, `amp3_2r`, `amp3_max`, `amp3_min`, `amp3_n`, `amp3_n_ht`, `amp3_n_lt`, `humidity`, `max_tap`, `min_tap`, `oil_temp`, `rate_imp1_2r`, `rate_imp1_max`, `rate_imp1_min`, `rate_imp1_n`, `rate_imp1_n_ht`, `rate_imp1_n_lt`, `rate_imp2_2r`, `rate_imp2_max`, `rate_imp2_min`, `rate_imp2_n`, `rate_imp2_n_ht`, `rate_imp2_n_lt`, `rate_imp3_2r`, `rate_imp3_max`, `rate_imp3_min`, `rate_imp3_n`, `rate_imp3_n_ht`, `rate_imp3_n_lt`, `rated_current`, `test_by`, `test_choice_2r`, `test_choice_max`, `test_choice_min`, `test_choice_n`, `test_choice_n_ht`, `test_choice_n_lt`, `test_date`, `volt1_2r`, `volt1_max`, `volt1_min`, `volt1_n`, `volt1_n_ht`, `volt1_n_lt`, `volt2_2r`, `volt2_max`, `volt2_min`, `volt2_n`, `volt2_n_ht`, `volt2_n_lt`, `volt3_2r`, `volt3_max`, `volt3_min`, `volt3_n`, `volt3_n_ht`, `volt3_n_lt`, `wdg_temp`, `weather`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 37, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 43, 'Tap10R', 'Tap7L', 38, 29, 39.1500015258789, 21.2000007629395, 30.5, 84.9000015258789, 31.5, 28.8799991607666, 39.3800010681152, 21.4500007629395, 30.5, 85, 30.8999996185303, 28.3199996948242, 39.4199981689453, 21.3999996185303, 31, 84.3899993896484, 31.7000007629395, 251.020004272461, 'TCS#1', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', '2002-06-07 00:00:00', 143.100006103516, 197, 106.5, 153.300003051758, 426, 157.990005493164, 145.600006103516, 198, 107.599998474121, 154, 425.200012207031, 155.020004272461, 147.100006103516, 197.600006103516, 108, 154.199996948242, 424, 159, 38, 'CLEAR', 'Test', '3', '343'),
(2, NULL, 36, 9, 9, 2, 9, 3, 5, 9, 9, 2, 9, 3, 5, 9, 9, 2, 9, 3, 5, 45, 'Tap10R', 'Tap7L', 45, 30.701000213623, 21.7900009155273, 75.1999969482422, 28.7999992370605, 78.0500030517578, 31.5, 30.6200008392334, 21.7800006866455, 118.5, 28.6000003814697, 78.2900009155273, 31.8999996185303, 30.5, 21.9099998474121, 121.5, 28.6800003051758, 77.8899993896484, 31.5100002288818, 251.020004272461, 'SETS/G3', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', '2002-06-07 00:00:00', 277.299987792969, 195, 151, 260.010009765625, 234.559997558594, 158.669998168945, 277, 196, 210.100006103516, 259, 235.220001220703, 159.5, 277, 198.600006103516, 207, 258.880004882812, 233.770004272461, 158.399993896484, 45, 'Sunny', 'Test', '3', '344'),
(3, NULL, 34, 4, 3, 5, 4, 3, 3, 4, 3, 5, 4, 3, 3, 4, 3, 5, 4, 3, 3, 68, 'Tap10R', 'Tap7L', 30, 60.2210006713867, 85.5, 13.1999998092651, 64.9000015258789, 182.669998168945, 32.0299987792969, 60.5099983215332, 84.4000015258789, 12.5, 65.4000015258789, 182.029998779297, 32.1599998474121, 64.9000015258789, 84.5, 13.539999961853, 65.0999984741211, 183.300003051758, 32.1699981689453, 251.020004272461, '???-?', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', '2002-06-07 00:00:00', 240, 250.009994506836, 65.120002746582, 260, 544.900024414062, 95, 244.009994506836, 251.330001831055, 65.8899993896484, 264, 547.049987792969, 95.3000030517578, 268.630004882812, 250, 65.379997253418, 260.019989013672, 550, 95.6100006103516, 30, 'CLEAR', 'Test', '3', '173'),
(4, NULL, 32, 4, 4, 4, 4, 3, 3, 4, 4, 4, 4, 3, 3, 4, 4, 4, 4, 3, 3, 69, 'Tap10R', 'Tap7L', 38, 29.0450000762939, 40, 21.5, 31.25, 182.669998168945, 32, 28.75, 39.75, 21.4300003051758, 31, 182.300003051758, 32.0699996948242, 29.0300006866455, 39.9799995422363, 21.5, 31.2800006866455, 182.300003051758, 32.1699981689453, 251.020004272461, '???-?', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', '2002-06-07 00:00:00', 115.150001525879, 160.25, 85.3000030517578, 124, 546.099975585938, 96.0999984741211, 114.099998474121, 158, 84.8399963378906, 123, 545.049987792969, 96.3889999389648, 115.099998474121, 162, 85.4400024414062, 124.900001525879, 550, 96.0110015869141, 38, 'CLEAR', 'Test', '3', '215'),
(5, NULL, 32, 4, 4, 4, 4, 3, 3, 4, 4, 4, 4, 3, 3, 4, 4, 4, 4, 3, 3, 56, 'Tap10R', 'Tap7L', 50, 29.0300006866455, 40.0900001525879, 21.4500007629395, 31.25, 182.669998168945, 33.6599998474121, 28.75, 39.75, 21.3999996185303, 31, 182.300003051758, 33.2599983215332, 29.0300006866455, 39.439998626709, 21.4500007629395, 31.2800006866455, 182.350006103516, 33.1599998474121, 200.820007324219, 'G.A', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', '2002-06-07 00:00:00', 115.099998474121, 160.199996948242, 85.4000015258789, 124.110000610352, 546.099975585938, 97.8219985961914, 114, 158, 84.5999984741211, 122.620002746582, 545, 96.6800003051758, 115, 161, 85.5, 124.400001525879, 549.109985351562, 96.1880035400391, 39, 'Sunny', 'Test', '3', '96'),
(6, NULL, 37, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 54, 'Tap8R', 'Tap8L', 50, 28.6200008392334, 21.3899993896484, 39.689998626709, 30.7999992370605, 84.5, 31.5200004577637, 28.75, 21.7110004425049, 39.2999992370605, 31.1000003814697, 85, 31.6000003814697, 28.7999992370605, 21.6700000762939, 40, 31.2000007629395, 85.1999969482422, 31.5100002288818, 502.040008544922, 'G-A+B', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', '2002-06-07 00:00:00', 143.199996948242, 106, 199, 155, 423, 158.800003051758, 144.399993896484, 107.199996948242, 197, 155.610000610352, 425.220001220703, 158, 144.300003051758, 107.099998474121, 200.009994506836, 155.770004272461, 426.660003662109, 157.800003051758, 40, 'CLEAR', 'Test', '3', '51'),
(7, NULL, 36, 3, 3, 3, 3, 5, 5, 3, 3, 3, 3, 5, 5, 3, 3, 3, 3, 5, 5, 45, 'Tap10R', 'Tap7L', 35, 77.8000030517578, 77.8000030517578, 77.8000030517578, 77.8000030517578, 31.5, 21.7999992370605, 77.5, 77.5100021362305, 77.5, 77.5, 31.7999992370605, 21.7700004577637, 77.5999984741211, 77.5400009155273, 77.5999984741211, 77.5999984741211, 31.7000007629395, 21.6000003814697, 502.040008544922, 'G-A', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', '2002-06-07 00:00:00', 233, 230, 234, 230.5, 158, 109, 232, 230.559997558594, 233, 231.110000610352, 158.899993896484, 108.099998474121, 233, 232, 231.899993896484, 232.100006103516, 158, 108.019996643066, 56, 'Sunny', 'Test', '3', '248'),
(8, NULL, 30, 4, 3, 5, 4, 3, 3, 4, 3, 5, 4, 3, 3, 4, 3, 5, 4, 3, 3, 65, 'Tap12R', 'Tap8L', 36, 60.810001373291, 84.5899963378906, 14.1999998092651, 64.8499984741211, 182.600006103516, 32.25, 63.5, 84.3030014038086, 13.2299995422363, 64.4000015258789, 183.009994506836, 32.2299995422363, 64, 84.1100006103516, 13.1199998855591, 65.0100021362305, 183.509994506836, 32.1199989318848, 502.040008544922, '???.? Group3', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', '2002-06-07 00:00:00', 251, 257, 69, 265, 545.099975585938, 95.3880004882812, 248.910003662109, 256.5, 65.9800033569336, 263, 546.119995117188, 95.7099990844727, 260, 253.699996948242, 65.879997253418, 265.100006103516, 550.049987792969, 95.629997253418, 42, 'CLEAR', 'Test', '3', '232'),
(9, NULL, 28, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 78, 'Tap12R', 'Tap8L', 40, 29.7000007629395, 29.5, 37.0999984741211, 30.8500003814697, 182.669998168945, 32.0299987792969, 29.7000007629395, 29.8299999237061, 37.1699981689453, 30.8500003814697, 182.330001831055, 32.1300010681152, 30.0300006866455, 29.3600006103516, 37.5299987792969, 31.1200008392334, 183.330001831055, 32.1699981689453, 502.040008544922, '???.? GROUP  3', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', '2002-06-07 00:00:00', 88, 88.5100021362305, 110.25, 91.9499969482422, 545.239990234375, 95.0100021362305, 89, 89.4100036621094, 110.230003356934, 92.0699996948242, 546.099975585938, 95.2900009155273, 89.0999984741211, 88.1800003051758, 111.769996643066, 92.9000015258789, 549.200012207031, 95.5699996948242, 43, 'CLEAR', 'Test', '3', '109'),
(10, NULL, 37, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 56, 'Tap12R', 'Tap8L', 48, 29.7000007629395, 29.5, 37.0999984741211, 30.8500003814697, 182.669998168945, 32.0299987792969, 29.7000007629395, 29.8299999237061, 37.1699981689453, 30.8500003814697, 182.330001831055, 32.1300010681152, 30.0300006866455, 29.3600006103516, 37.5299987792969, 31.1200008392334, 183.330001831055, 32.1699981689453, 502.040008544922, 'group.B', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', 'FIRSTTEST', '2002-06-07 00:00:00', 87.9899978637695, 88.4000015258789, 110.25, 91.9499969482422, 545.239990234375, 95.0100021362305, 88.120002746582, 89.0999984741211, 110.230003356934, 92.0699996948242, 546.099975585938, 95.2900009155273, 89.1800003051758, 88.129997253418, 111.769996643066, 92.9000015258789, 549.200012207031, 95.5699996948242, 50, 'Sunny', 'Test', '3', '167');

-- --------------------------------------------------------

--
-- Table structure for table `elec_imp_three`
--

CREATE TABLE IF NOT EXISTS `elec_imp_three` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `ambient_temp` double DEFAULT NULL,
  `amp1_2r` double DEFAULT NULL,
  `amp1_max` double DEFAULT NULL,
  `amp1_min` double DEFAULT NULL,
  `amp1_n` double DEFAULT NULL,
  `amp1_n_ht` double DEFAULT NULL,
  `amp1_n_lt` double DEFAULT NULL,
  `amp2_2r` double DEFAULT NULL,
  `amp2_max` double DEFAULT NULL,
  `amp2_min` double DEFAULT NULL,
  `amp2_n` double DEFAULT NULL,
  `amp2_n_ht` double DEFAULT NULL,
  `amp2_n_lt` double DEFAULT NULL,
  `amp3_2r` double DEFAULT NULL,
  `amp3_max` double DEFAULT NULL,
  `amp3_min` double DEFAULT NULL,
  `amp3_n` double DEFAULT NULL,
  `amp3_n_ht` double DEFAULT NULL,
  `amp3_n_lt` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `impedance_from_2r` varchar(255) DEFAULT NULL,
  `impedance_from_max` varchar(255) DEFAULT NULL,
  `impedance_from_min` varchar(255) DEFAULT NULL,
  `impedance_from_n` varchar(255) DEFAULT NULL,
  `impedance_from_n_ht` varchar(255) DEFAULT NULL,
  `impedance_from_n_lt` varchar(255) DEFAULT NULL,
  `max_tap` varchar(255) DEFAULT NULL,
  `min_tap` varchar(255) DEFAULT NULL,
  `oil_temp` double DEFAULT NULL,
  `rate_impedance_2r` double DEFAULT NULL,
  `rate_impedance_max` double DEFAULT NULL,
  `rate_impedance_min` double DEFAULT NULL,
  `rate_impedance_n` double DEFAULT NULL,
  `rate_impedance_n_ht` double DEFAULT NULL,
  `rate_impedance_n_lt` double DEFAULT NULL,
  `rated_kv` double DEFAULT NULL,
  `tap_voltage_2r` double DEFAULT NULL,
  `tap_voltage_max` double DEFAULT NULL,
  `tap_voltage_min` double DEFAULT NULL,
  `tap_voltage_n` double DEFAULT NULL,
  `tap_voltage_n_ht` double DEFAULT NULL,
  `tap_voltage_n_lt` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `volt1_2r` double DEFAULT NULL,
  `volt1_max` double DEFAULT NULL,
  `volt1_min` double DEFAULT NULL,
  `volt1_n` double DEFAULT NULL,
  `volt1_n_ht` double DEFAULT NULL,
  `volt1_n_lt` double DEFAULT NULL,
  `volt2_2r` double DEFAULT NULL,
  `volt2_max` double DEFAULT NULL,
  `volt2_min` double DEFAULT NULL,
  `volt2_n` double DEFAULT NULL,
  `volt2_n_ht` double DEFAULT NULL,
  `volt2_n_lt` double DEFAULT NULL,
  `volt3_2r` double DEFAULT NULL,
  `volt3_max` double DEFAULT NULL,
  `volt3_min` double DEFAULT NULL,
  `volt3_n` double DEFAULT NULL,
  `volt3_n_ht` double DEFAULT NULL,
  `volt3_n_lt` double DEFAULT NULL,
  `wdg_temp` double DEFAULT NULL,
  `weather` varchar(255) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `elec_imp_three`
--

INSERT INTO `elec_imp_three` (`id`, `version`, `ambient_temp`, `amp1_2r`, `amp1_max`, `amp1_min`, `amp1_n`, `amp1_n_ht`, `amp1_n_lt`, `amp2_2r`, `amp2_max`, `amp2_min`, `amp2_n`, `amp2_n_ht`, `amp2_n_lt`, `amp3_2r`, `amp3_max`, `amp3_min`, `amp3_n`, `amp3_n_ht`, `amp3_n_lt`, `humidity`, `impedance_from_2r`, `impedance_from_max`, `impedance_from_min`, `impedance_from_n`, `impedance_from_n_ht`, `impedance_from_n_lt`, `max_tap`, `min_tap`, `oil_temp`, `rate_impedance_2r`, `rate_impedance_max`, `rate_impedance_min`, `rate_impedance_n`, `rate_impedance_n_ht`, `rate_impedance_n_lt`, `rated_kv`, `tap_voltage_2r`, `tap_voltage_max`, `tap_voltage_min`, `tap_voltage_n`, `tap_voltage_n_ht`, `tap_voltage_n_lt`, `test_by`, `test_date`, `volt1_2r`, `volt1_max`, `volt1_min`, `volt1_n`, `volt1_n_ht`, `volt1_n_lt`, `volt2_2r`, `volt2_max`, `volt2_min`, `volt2_n`, `volt2_n_ht`, `volt2_n_lt`, `volt3_2r`, `volt3_max`, `volt3_min`, `volt3_n`, `volt3_n_ht`, `volt3_n_lt`, `wdg_temp`, `weather`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 37, 2.5, 3, 2, 3, 1, 1, 2.5, 3, 2, 3, 1, 1, 2.5, 3, 2, 3, 1, 1, 43, 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'Tap10R', 'Tap7L', 38, 15.8999996185303, 13.039999961853, 12.4399995803833, 12.4700002670288, 16.5100002288818, 16.5100002288818, 50000, 111.550003051758, 97.75, 127.074996948242, 115, 127, 127, 'TCS#1', '2008-11-03 00:00:00', 200, 160, 162, 200, 428, 428, 202, 150, 162, 200, 429, 429, 201, 152, 161, 198, 427, 427, 38, 'Clear', 'Test', '3', '343'),
(2, NULL, 37, 3, 3, 2, 3, 1, 1, 3, 3, 2, 3, 1, 1, 3, 3, 2, 3, 2, 2, 48, 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'Tap10R', 'Tap7L', 45, 11, 13.1000003814697, 12.1999998092651, 12.1999998092651, 16.8999996185303, 16.8999996185303, 50000, 111.550003051758, 97.75, 127.074996948242, 115, 127, 127, 'SETS,G3', '2009-10-04 00:00:00', 154, 152, 161, 199, 426, 426, 155, 154, 161, 199, 427, 427, 153, 152, 159, 198, 427, 427, 45, 'Sunny', 'Test', '3', '344'),
(3, NULL, 34, 3, 3, 3, 3, 2, 2, 3, 3, 3, 3, 2, 2, 3, 3, 3, 3, 2, 2, 68, 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'Tap10R', 'Tap7L', 30, 10.1000003814697, 13, 11.8999996185303, 12.1000003814697, 15.4899997711182, 15.4899997711182, 50000, 111.550003051758, 97.75, 127.074996948242, 115, 127, 127, 'GA????-?', '2009-10-01 00:00:00', 153, 148.889999389648, 228.429992675781, 191.600006103516, 794.299987792969, 794.299987792969, 154.199996948242, 149.080001831055, 229.949996948242, 191.899993896484, 797.599975585938, 797.599975585938, 152.800003051758, 148.300003051758, 227.529998779297, 190.309997558594, 792.400024414062, 792.400024414062, 30, 'Clear', 'Test', '3', '173'),
(4, NULL, 32, 2.5, 3.20000004768372, 2.52999997138977, 2.79999995231628, 2.5, 2.5, 2.5, 3.20000004768372, 2.52999997138977, 2.79999995231628, 2.5, 2.5, 2.5, 3.20000004768372, 2.52999997138977, 2.79999995231628, 2.5, 2.5, 69, 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'Tap8R', 'Tap7L', 38, 16, 14.6000003814697, 12.5, 13.3000001907349, 12.5, 12.5, 50000, 111.550003051758, 97.75, 127.074996948242, 115, 127, 127, '???-?', '2010-06-04 00:00:00', 201, 199, 200, 200.5, 200, 200, 199, 200, 199, 200, 203, 203, 201, 201, 202, 201, 201, 201, 38, 'Clear', 'Test', '3', '215'),
(5, NULL, 32, 3, 3, 3, 3, 2, 2, 3, 3, 3, 3, 2, 2, 3, 3, 3, 3, 2, 2, 56, 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'Tap10R', 'Tap7L', 50, 11.3999996185303, 13.3000001907349, 12, 12.1999998092651, 15.5, 15.5, 40000, 111.550003051758, 97.75, 127.074996948242, 115, 127, 127, 'G-A', '2007-07-05 00:00:00', 156, 149, 230, 190, 794, 794, 155, 150, 231, 193, 798, 798, 152, 149, 228, 191, 792, 792, 39, 'Clear', 'Test', '3', '96'),
(6, NULL, 35, 2.5, 3.20000004768372, 2.52999997138977, 2.79999995231628, 2.5, 2.5, 2.5, 3.20000004768372, 2.52999997138977, 2.79999995231628, 2.5, 2.5, 2.5, 3.20000004768372, 2.52999997138977, 2.79999995231628, 2.5, 2.5, 52, 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'Tap10R', 'Tap7L', 50, 15.8999996185303, 14.5600004196167, 12.4300003051758, 13.25, 12.5, 12.5, 200000, 224, 207, 253, 230, 253, 253, 'G-A+B', '2011-01-05 00:00:00', 203, 204, 202, 201, 197, 197, 199, 199, 199, 202, 205, 205, 198, 200, 202, 200, 201, 201, 39, 'Clear', 'Test', '3', '51'),
(7, NULL, 35, 2.5, 3, 2.52999997138977, 2.86999988555908, 2.5, 2.5, 2.5, 3, 2.52999997138977, 2.86999988555908, 2.5, 2.5, 2.5, 3, 2.52999997138977, 2.86999988555908, 2.5, 2.5, 87, 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'Tap10R', 'Tap7L', 35, 15.8999996185303, 13, 12.4300003051758, 13.25, 12.5, 12.5, 200000, 224, 195.5, 253, 230, 253, 253, 'G-A', '2008-03-03 00:00:00', 200, 148.889999389648, 200, 200, 200, 200, 202, 149.080001831055, 200, 200, 203, 203, 201, 148.300003051758, 200, 200, 200, 200, 56, 'Sunny', 'Test', '3', '248'),
(8, NULL, 30, 2.5, 3, 2, 3, 1, 1, 2.5, 3, 2, 3, 3, 3, 2.5, 3, 2, 3, 1, 1, 65, 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'Tap12R', 'Tap8L', 36, 15.5, 13, 12.1999998092651, 12.1999998092651, 16.3999996185303, 16.3999996185303, 200000, 224, 195.5, 253, 230, 253, 253, '???.?Group3', '2009-07-03 00:00:00', 199, 150, 162, 199, 426, 426, 198, 151, 162.100006103516, 199.5, 426.299987792969, 426.299987792969, 199.600006103516, 151.5, 160, 198, 427, 427, 42, 'Clear', 'Test', '3', '232'),
(9, NULL, 28, 3, 3, 3, 3, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 78, 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'Tap12R', 'Tap8L', 40, 11, 13.1999998092651, 12, 12.1999998092651, 15.5, 15.5, 200000, 224, 195.5, 253, 230, 253, 253, '???.?Group3', '2010-06-01 00:00:00', 154, 150, 230, 192, 794, 794, 154, 149, 229, 190, 797, 797, 153, 148, 228, 192, 792, 792, 43, 'Clear', 'Test', '3', '109'),
(10, NULL, 37, 3, 3, 2, 3, 1, 1, 3, 3, 2, 3, 1, 1, 3, 3, 2, 3, 1, 1, 56, 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'MANUFACTURE', 'Tap10R', 'Tap7L', 48, 11.3999996185303, 13.1999998092651, 12.5, 12.5, 16.5, 16.5, 200000, 224, 195.5, 253, 230, 253, 253, 'Group B', '2007-04-01 00:00:00', 155, 152, 166, 200, 428, 428, 157, 155, 163, 198, 430, 430, 151, 157, 160, 199, 427, 427, 50, 'Sunny', 'Test', '3', '167');

-- --------------------------------------------------------

--
-- Table structure for table `elec_ins_auto`
--

CREATE TABLE IF NOT EXISTS `elec_ins_auto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `ambient_temp` double DEFAULT NULL,
  `cap1` double DEFAULT NULL,
  `cap2` double DEFAULT NULL,
  `cap3` double DEFAULT NULL,
  `cap4` double DEFAULT NULL,
  `corpc` double DEFAULT NULL,
  `current1` double DEFAULT NULL,
  `current2` double DEFAULT NULL,
  `current3` double DEFAULT NULL,
  `current4` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `hv1` double DEFAULT NULL,
  `hv10` double DEFAULT NULL,
  `hv_test` double DEFAULT NULL,
  `oil_temp` double DEFAULT NULL,
  `rated_current` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `test_kv` double DEFAULT NULL,
  `tv1` double DEFAULT NULL,
  `tv10` double DEFAULT NULL,
  `tv_test` double DEFAULT NULL,
  `watt1` double DEFAULT NULL,
  `watt2` double DEFAULT NULL,
  `watt3` double DEFAULT NULL,
  `watt4` double DEFAULT NULL,
  `wdg_temp` double DEFAULT NULL,
  `weather` varchar(255) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `elec_ins_auto`
--

INSERT INTO `elec_ins_auto` (`id`, `version`, `ambient_temp`, `cap1`, `cap2`, `cap3`, `cap4`, `corpc`, `current1`, `current2`, `current3`, `current4`, `humidity`, `hv1`, `hv10`, `hv_test`, `oil_temp`, `rated_current`, `test_by`, `test_date`, `test_kv`, `tv1`, `tv10`, `tv_test`, `watt1`, `watt2`, `watt3`, `watt4`, `wdg_temp`, `weather`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 35, 26640, 9820, 38600, 20900, 0.810000002384186, 85.6600036621094, 29.8799991607666, 120.5, 67.5, 52, 400, 750, 2500, 50, 502.040008544922, 'G-A+B', '2003-05-10 00:00:00', 10, 600, 1300, 2500, 2.34999990463257, 0.980000019073486, 6.40999984741211, 4.51999998092651, 39, 'CLEAR', 'Test', '1', '51'),
(2, NULL, 37, 26648.419921875, 8914.66015625, 38606, 20871.05078125, 0.810000002384186, 83.7190017700195, 28.0069999694824, 121.289001464844, 65.5699996948242, 54, 480, 722, 2500, 50, 502.040008544922, 'G-A+B', '2009-06-10 00:00:00', 10, 502, 1250, 2500, 2.27600002288818, 0.931999981403351, 6.37799978256226, 4.98000001907349, 40, 'CLEAR', 'Test', '3', '51'),
(3, NULL, 35, 32000, 16700, 18400, 1350, 0.949999988079071, 99.1999969482422, 51.75, 56.5, 9.10999965667725, 87, 1700, 4500, 2500, 35, 502.040008544922, '????-??', '2004-12-07 00:00:00', 10, 1850, 4350, 2500, 1.89999997615814, 1.33000004291534, 1.00999999046326, 0.189999997615814, 35, 'Sunny', 'Test', '1', '248'),
(4, NULL, 36, 31963.58984375, 16754.69921875, 18329.720703125, 3121.1298828125, 0.910000026226044, 100.416999816895, 52.6360015869141, 57.5839996337891, 9.80500030517578, 45, 1470, 2530, 2500, 35, 502.040008544922, 'G-A', '2008-03-03 00:00:00', 10, 2030, 3630, 2500, 2.21300005912781, 1.40100002288818, 1.03699994087219, 0.230000004172325, 56, 'Sunny', 'Test', '3', '248'),
(5, NULL, 30, 18250, 7350, 24680, 13700, 0.910000026226044, 58, 24.5, 79.5, 45.5, 65, 1.29999995231628, 2.70000004768372, 2500, 37, 502.040008544922, '???.? Group3', '2003-06-03 00:00:00', 10, 1.39999997615814, 2.75, 2500, 1.64999997615814, 0.949999988079071, 3.21000003814697, 2.5, 45, 'CLEAR', 'Test', '1', '232'),
(6, NULL, 30, 18268.509765625, 7358.458984375, 24684.48046875, 13775.7099609375, 0.910000026226044, 57.3940010070801, 23.1180000305176, 77.5500030517578, 43.2799987792969, 65, 1.29999995231628, 2.29999995231628, 2500, 36, 502.040008544922, '???.? Group3', '2009-07-03 00:00:00', 10, 1.37999999523163, 2.66000008583069, 2500, 1.54799997806549, 0.768999993801117, 3.13000011444092, 2.33599996566772, 42, 'CLEAR', 'Test', '3', '232'),
(7, NULL, 28, 17200, 7800, 26500, 16700, 1.0900000333786, 54.5, 25.5799999237061, 85.5599975585938, 55.7999992370605, 78, 6.09999990463257, 12.5, 2500, 40, 502.040008544922, '???.? GROUP  3', '2004-05-01 00:00:00', 10, 6.19999980926514, 12.5500001907349, 2500, 1.64999997615814, 1.12000000476837, 3.45000004768372, 2.76999998092651, 43, 'CLEAR', 'Test', '1', '109'),
(8, NULL, 28, 17227.349609375, 7808.85400390625, 26832.689453125, 16616.529296875, 1.0900000333786, 54.1230010986328, 24.5330009460449, 84.3000030517578, 52.2039985656738, 78, 5.59999990463257, 11.1999998092651, 2500, 40, 502.040008544922, '???.? GROUP  3', '2010-06-01 00:00:00', 10, 4.90000009536743, 11.8000001907349, 2500, 1.71300005912781, 0.987999975681305, 3.39599990844727, 2.6800000667572, 43, 'CLEAR', 'Test', '3', '109'),
(9, NULL, 36, 18000, 7900, 26900, 17000, 0.910000026226044, 58.8940010070801, 24.9060001373291, 85.1999969482422, 55.2299995422363, 54, 2880, 6280, 2500, 35, 502.040008544922, '???.8-1  ???.', '2001-03-01 00:00:00', 10, 3500, 6800, 2500, 1.17900002002716, 0.611999988555908, 3.25, 2.54999995231628, 35, 'Sunny', 'Test', '1', '167'),
(10, NULL, 37, 17791, 7904, 26910, 17027, 0.8299999833107, 55.9020004272461, 24.8330001831055, 84.5540008544922, 53.4980010986328, 56, 4800, 6450, 2500, 48, 502.040008544922, 'group.B', '2007-04-01 00:00:00', 10, 3700, 6850, 2500, 1.13900005817413, 0.46900001168251, 3.14199995994568, 2.47699999809265, 50, 'Sunny', 'Test', '3', '167');

-- --------------------------------------------------------

--
-- Table structure for table `elec_ins_three`
--

CREATE TABLE IF NOT EXISTS `elec_ins_three` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `ambient_temp` double DEFAULT NULL,
  `cap1` double DEFAULT NULL,
  `cap2` double DEFAULT NULL,
  `cap3` double DEFAULT NULL,
  `cap4` double DEFAULT NULL,
  `cap5` double DEFAULT NULL,
  `cap6` double DEFAULT NULL,
  `corpc` double DEFAULT NULL,
  `current1` double DEFAULT NULL,
  `current2` double DEFAULT NULL,
  `current3` double DEFAULT NULL,
  `current4` double DEFAULT NULL,
  `current5` double DEFAULT NULL,
  `current6` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `hv1` double DEFAULT NULL,
  `hv10` double DEFAULT NULL,
  `hv_test` double DEFAULT NULL,
  `lv1` double DEFAULT NULL,
  `lv10` double DEFAULT NULL,
  `lv_test` double DEFAULT NULL,
  `oil_temp` double DEFAULT NULL,
  `rated_current` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `test_kv` double DEFAULT NULL,
  `tv1` double DEFAULT NULL,
  `tv10` double DEFAULT NULL,
  `tv_test` double DEFAULT NULL,
  `watt1` double DEFAULT NULL,
  `watt2` double DEFAULT NULL,
  `watt3` double DEFAULT NULL,
  `watt4` double DEFAULT NULL,
  `watt5` double DEFAULT NULL,
  `watt6` double DEFAULT NULL,
  `wdg_temp` double DEFAULT NULL,
  `weather` varchar(255) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `elec_ins_three`
--

INSERT INTO `elec_ins_three` (`id`, `version`, `ambient_temp`, `cap1`, `cap2`, `cap3`, `cap4`, `cap5`, `cap6`, `corpc`, `current1`, `current2`, `current3`, `current4`, `current5`, `current6`, `humidity`, `hv1`, `hv10`, `hv_test`, `lv1`, `lv10`, `lv_test`, `oil_temp`, `rated_current`, `test_by`, `test_date`, `test_kv`, `tv1`, `tv10`, `tv_test`, `watt1`, `watt2`, `watt3`, `watt4`, `watt5`, `watt6`, `wdg_temp`, `weather`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 37, 12788, 4203, 18347, 3676, 15532, 15422, 0.899999976158142, 40.1800003051758, 13.1999998092651, 57.6599998474121, 11.5500001907349, 48.810001373291, 46.4599990844727, 43, 1580, 3340, 2500, 1090, 2700, 2500, 38, 251.020004272461, 'TCS#1', '1996-11-03 00:00:00', 10, 1090, 2580, 2500, 0.685000002384186, 0.296999990940094, 1.04900002479553, 0.298000007867813, 0.774999976158142, 0.776000022888183, 38, 'CLEAR', 'Test', '1', '343'),
(2, NULL, 32, 12900, 4300, 18400, 3700, 15500, 15500, 0.870000004768371, 42.1500015258789, 15.2600002288818, 58.2599983215332, 12.5799999237061, 50.2299995422363, 45.5, 69, 1500, 3400, 2500, 1300, 2800, 2500, 42, 251.020004272461, '???-?G2', '2001-12-06 00:00:00', 10, 1200, 2600, 2500, 0.699999988079071, 0.349999994039536, 1.12000000476837, 0.349999994039536, 0.850000023841858, 0.75, 42, 'Sunny', 'Test', '3', '343'),
(3, NULL, 37, 12000, 3950, 17500, 40100, 17100, 16900, 0.930000007152557, 39.5, 15.4399995803833, 51.8800010681152, 15.6800003051758, 55.4799995422363, 54.3300018310547, 48, 20000, 50000, 2500, 19000, 35000, 2500, 34, 251.020004272461, 'TCS#1', '2002-03-03 00:00:00', 10, 14000, 25000, 2500, 0.75, 0.519999980926514, 0.889999985694885, 0.550000011920929, 1.95000004768372, 1.95000004768372, 34, 'Sunny', 'Test', '1', '344'),
(4, NULL, 36, 12061, 3928, 16630, 40048, 17054, 16989, 0.839999973773956, 37.9000015258789, 12.3400001525879, 52.2599983215332, 12.7200002670288, 53.5900001525879, 53.3899993896484, 45, 38000, 54000, 2500, 18400, 34000, 2500, 45, 251.020004272461, 'SETS/G3', '2009-10-04 00:00:00', 10, 13400, 24600, 2500, 0.66100001335144, 0.310999989509583, 0.944000005722046, 0.412000000476837, 1.84399998188019, 1.85099995136261, 45, 'Sunny', 'Test', '3', '344'),
(5, NULL, 28, 15200, 1500, 19600, 2350, 19600, 12000, 0.889999985694885, 34, 14.4300003051758, 28.3999996185303, 3.41499996185303, 30.3500003814697, 30.25, 78, 2000, 3040, 2500, 1570, 4960, 2500, 40, 251.020004272461, 'GA????-?', '2003-06-01 00:00:00', 10, 1310, 5500, 2500, 0.670000016689301, 0.400000005960464, 0.610000014305115, 0.305999994277954, 2.13000011444092, 2.11999988555908, 43, 'CLEAR', 'Test', '1', '173'),
(6, NULL, 34, 15140, 1429, 19635, 2332, 19635, 11660, 0.949999988079071, 41.5999984741211, 13.4700002670288, 39.5499992370605, 9.72999954223633, 33.3499984741211, 33.1500015258789, 68, 15500, 23800, 2500, 11200, 24900, 2500, 30, 251.020004272461, '???-?', '2009-10-01 00:00:00', 10, 13200, 27600, 2500, 0.790000021457672, 0.344999998807907, 0.910000026226044, 0.384999990463257, 0.509999990463257, 0.529999971389771, 30, 'CLEAR', 'Test', '3', '173');

-- --------------------------------------------------------

--
-- Table structure for table `elec_ins_two`
--

CREATE TABLE IF NOT EXISTS `elec_ins_two` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `ambient_temp` double DEFAULT NULL,
  `cap1` double DEFAULT NULL,
  `cap2` double DEFAULT NULL,
  `cap3` double DEFAULT NULL,
  `cap4` double DEFAULT NULL,
  `corpc` double DEFAULT NULL,
  `current1` double DEFAULT NULL,
  `current2` double DEFAULT NULL,
  `current3` double DEFAULT NULL,
  `current4` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `hv1` double DEFAULT NULL,
  `hv10` double DEFAULT NULL,
  `hv_test` double DEFAULT NULL,
  `lv1` double DEFAULT NULL,
  `lv10` double DEFAULT NULL,
  `lv_test` double DEFAULT NULL,
  `oil_temp` double DEFAULT NULL,
  `rated_current` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `test_kv` double DEFAULT NULL,
  `watt1` double DEFAULT NULL,
  `watt2` double DEFAULT NULL,
  `watt3` double DEFAULT NULL,
  `watt4` double DEFAULT NULL,
  `wdg_temp` double DEFAULT NULL,
  `weather` varchar(255) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `elec_ins_two`
--

INSERT INTO `elec_ins_two` (`id`, `version`, `ambient_temp`, `cap1`, `cap2`, `cap3`, `cap4`, `corpc`, `current1`, `current2`, `current3`, `current4`, `humidity`, `hv1`, `hv10`, `hv_test`, `lv1`, `lv10`, `lv_test`, `oil_temp`, `rated_current`, `test_by`, `test_date`, `test_kv`, `watt1`, `watt2`, `watt3`, `watt4`, `wdg_temp`, `weather`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 30, 9800, 3250, 22300, 16300, 0.910000026226044, 30, 10, 7205, 50.5, 70, 9000, 15000, 2500, 4500, 9000, 2500, 35, 251.020004272461, '???-?', '2007-09-02 00:00:00', 10, 0.5, 0.209999993443489, 1.12000000476837, 0.819999992847443, 36, 'CLEAR', 'Test', '1', '215'),
(2, NULL, 32, 9870, 3226, 22930, 16250, 0.899999976158142, 30.6000003814697, 10.0299997329712, 7106, 50.5499992370605, 69, 10000, 13800, 2500, 4530, 9170, 2500, 38, 251.020004272461, '???-?', '2010-06-04 00:00:00', 10, 0.430000007152557, 0.189999997615814, 1.01999998092651, 0.790000021457672, 38, 'CLEAR', 'Test', '3', '215'),
(3, NULL, 30, 12500, 3706, 17024, 11608, 0.8299999833107, 28.6700000762939, 11.6400003433228, 53.4900016784668, 36.4700012207031, 52, 299, 359, 2500, 358, 400, 2500, 48, 200.820007324219, 'PRAMOTE', '2003-06-05 00:00:00', 10, 1.87100005149841, 0.685000002384186, 4.00500011444092, 2.80800008773804, 39, 'Sunny', 'Test', '1', '96'),
(4, NULL, 32, 12800, 3700, 17019, 11600, 0.810000002384186, 30.5599994659424, 12.3299999237061, 53.4809989929199, 36.4490013122559, 56, 300, 350, 2500, 900, 1400, 2500, 50, 200.820007324219, 'G.A', '2007-07-05 00:00:00', 10, 1.95000004768372, 0.649999976158142, 2.66700005531311, 1.91199994087219, 39, 'Sunny', 'Test', '3', '96');

-- --------------------------------------------------------

--
-- Table structure for table `elec_rat`
--

CREATE TABLE IF NOT EXISTS `elec_rat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `ambient_temp` double DEFAULT NULL,
  `h1h0ratio_2r` double DEFAULT NULL,
  `h1h0ratio_max` double DEFAULT NULL,
  `h1h0ratio_min` double DEFAULT NULL,
  `h1h0ratio_n` double DEFAULT NULL,
  `h1h0ratio_n_tv` double DEFAULT NULL,
  `h2h0ratio_2r` double DEFAULT NULL,
  `h2h0ratio_max` double DEFAULT NULL,
  `h2h0ratio_min` double DEFAULT NULL,
  `h2h0ratio_n` double DEFAULT NULL,
  `h2h0ratio_n_tv` double DEFAULT NULL,
  `h3h0ratio_2r` double DEFAULT NULL,
  `h3h0ratio_max` double DEFAULT NULL,
  `h3h0ratio_min` double DEFAULT NULL,
  `h3h0ratio_n` double DEFAULT NULL,
  `h3h0ratio_n_tv` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `max_tap` varchar(255) DEFAULT NULL,
  `min_tap` varchar(255) DEFAULT NULL,
  `oil_temp` double DEFAULT NULL,
  `rated_current` double DEFAULT NULL,
  `remark_2r` varchar(255) DEFAULT NULL,
  `remark_lv_tv` varchar(255) DEFAULT NULL,
  `remark_max` varchar(255) DEFAULT NULL,
  `remark_min` varchar(255) DEFAULT NULL,
  `remark_n` varchar(255) DEFAULT NULL,
  `remark_n_tv` varchar(255) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `volthv_2r` double DEFAULT NULL,
  `volthv_hv_tv` double DEFAULT NULL,
  `volthv_lv_tv` double DEFAULT NULL,
  `volthv_max` double DEFAULT NULL,
  `volthv_min` double DEFAULT NULL,
  `volthv_n` double DEFAULT NULL,
  `voltlv_2r` double DEFAULT NULL,
  `voltlv_hv_tv` double DEFAULT NULL,
  `voltlv_lv_tv` double DEFAULT NULL,
  `voltlv_max` double DEFAULT NULL,
  `voltlv_min` double DEFAULT NULL,
  `voltlv_n` double DEFAULT NULL,
  `wdg_temp` double DEFAULT NULL,
  `weather` varchar(255) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `x1x0ratio_lv_tv` double DEFAULT NULL,
  `x2x0ratio_lv_tv` double DEFAULT NULL,
  `x3x0ratio_lv_tv` double DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `elec_rat`
--

INSERT INTO `elec_rat` (`id`, `version`, `ambient_temp`, `h1h0ratio_2r`, `h1h0ratio_max`, `h1h0ratio_min`, `h1h0ratio_n`, `h1h0ratio_n_tv`, `h2h0ratio_2r`, `h2h0ratio_max`, `h2h0ratio_min`, `h2h0ratio_n`, `h2h0ratio_n_tv`, `h3h0ratio_2r`, `h3h0ratio_max`, `h3h0ratio_min`, `h3h0ratio_n`, `h3h0ratio_n_tv`, `humidity`, `max_tap`, `min_tap`, `oil_temp`, `rated_current`, `remark_2r`, `remark_lv_tv`, `remark_max`, `remark_min`, `remark_n`, `remark_n_tv`, `test_by`, `test_date`, `volthv_2r`, `volthv_hv_tv`, `volthv_lv_tv`, `volthv_max`, `volthv_min`, `volthv_n`, `voltlv_2r`, `voltlv_hv_tv`, `voltlv_lv_tv`, `voltlv_max`, `voltlv_min`, `voltlv_n`, `wdg_temp`, `weather`, `work_order`, `x1x0ratio_lv_tv`, `x2x0ratio_lv_tv`, `x3x0ratio_lv_tv`, `perform_type`, `transformer`) VALUES
(1, NULL, 30, 4.84000015258789, 5.53999996185303, 4.25600004196167, 5.53700017929077, 5.54300022125244, 4.84100008010864, 5.55999994277954, 4.22300004959106, 5.53200006484985, 5.56599998474121, 4.85300016403198, 5.53000020980835, 4.26000022888184, 5.5310001373291, 5.59100008010864, 48, 'Tap10R', 'Tap7L', 32, 0, NULL, NULL, NULL, NULL, NULL, NULL, '???-?', '2009-12-04 00:00:00', 111550, 127075, 127075, 127075, 97750, 115000, 23000, 23000, 23000, 23000, 23000, 23000, 32, 'CLEAR', 'Test', NULL, NULL, NULL, '3', '343'),
(2, NULL, 36, 1.85000002384186, 2.08999991416931, 1.61500000953674, 3.17499995231628, 5.5, 1.85500001907349, 2.09100008010864, 1.61600005626678, 3.17600011825562, 5.50099992752075, 1.85300004482269, 2.08999991416931, 1.61199998855591, 3.17600011825562, 5.5, 45, 'Tap12R', 'Tap8L', 45, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Group3', '2009-10-04 00:00:00', 224250, 121000, 121000, 127075, 195500, 230000, 121000, 22000, 22000, 23000, 121000, 121000, 45, 'Sunny', 'Test', NULL, NULL, NULL, '3', '344'),
(3, NULL, 32, 4.85099983215332, 5.51000022888184, 4.25, 5.53000020980835, 5.54300022125244, 4.84100008010864, 5.59000015258789, 4.22599983215332, 5.53700017929077, 5.56599998474121, 4.85799980163574, 5.57999992370605, 4.25299978256226, 5.53599977493286, 5.59100008010864, 48, 'Tap10R', 'Tap7L', 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'G-A', '2009-10-01 00:00:00', 111550, 127075, 127075, 127075, 97750, 115000, 23000, 23000, 23000, 23000, 23000, 23000, 30, 'CLEAR', 'Test', NULL, NULL, NULL, '3', '173'),
(4, NULL, 32, 4.85099983215332, 5.51100015640259, 4.25, 5.53000020980835, 5.54300022125244, 4.84100008010864, 5.59000015258789, 4.22599983215332, 5.53800010681152, 5.56099987030029, 4.85300016403198, 5.58099985122681, 4.25299978256226, 5.53599977493286, 5.59100008010864, 69, 'Tap10R', 'Tap7L', 38, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TCS#1', '2010-06-04 00:00:00', 111550, 127075, 127075, 127075, 97750, 115000, 23000, 23000, 23000, 23000, 23000, 23000, 38, 'CLEAR', 'Test', NULL, NULL, NULL, '1', '215'),
(5, NULL, 32, 1.85300004482269, 2.09100008010864, 1.61600005626678, 3.17600011825562, 5.5, 1.85300004482269, 2.09100008010864, 1.61600005626678, 3.17499995231628, 5.50600004196167, 1.85300004482269, 2.09100008010864, 1.61600005626678, 3.17600011825562, 5.5, 56, 'Tap12R', 'Tap8L', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, '???.?Group4', '2007-10-04 00:00:00', 224250, 121000, 121000, 127075, 195500, 230000, 121000, 22000, 22000, 23000, 121000, 121000, 39, 'Sunny', 'Test', NULL, NULL, NULL, '3', '96'),
(6, NULL, 37, 4.85099983215332, 5.52500009536743, 4.25099992752075, 5.52500009536743, 5.52099990844727, 4.85200023651123, 5.51999998092651, 4.25, 5.52199983596802, 5.51999998092651, 4.85400009155273, 5.52500009536743, 4.25500011444092, 5.51999998092651, 5.52500009536743, 54, 'Tap10R', 'Tap7L', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, '???-?', '2009-06-10 00:00:00', 111550, 127075, 127075, 253000, 97750, 115000, 23000, 23000, 23000, 121000, 23000, 23000, 40, 'CLEAR', 'Test', NULL, NULL, NULL, '3', '51'),
(7, NULL, 30, 4.84000015258789, 5.51999998092651, 4.24100017547607, 5.52500009536743, 5.52500009536743, 4.82000017166138, 5.51999998092651, 4.24200010299683, 5.52199983596802, 5.52199983596802, 4.84999990463257, 5.51999998092651, 4.24100017547607, 5.52400016784668, 5.52199983596802, 48, 'Tap10R', 'Tap7L', 32, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'SETS/G3', '2008-03-03 00:00:00', 111550, 127075, 127075, 127075, 97750, 115000, 23000, 23000, 23000, 23000, 23000, 23000, 32, 'Sunny', 'Test', NULL, NULL, NULL, '3', '248'),
(8, NULL, 30, 1.85300004482269, 2.08999991416931, 1.61500000953674, 5.51200008392334, 5.5, 1.85500001907349, 2.09100008010864, 1.61699998378754, 5.51000022888184, 5.48999977111816, 1.85300004482269, 2.09500002861023, 1.61500000953674, 5.51100015640259, 5.49700021743774, 65, 'Tap12R', 'Tap8L', 36, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'G-A+B', '2009-07-03 00:00:00', 224250, 121000, 121000, 253000, 195500, 230000, 121000, 22000, 22000, 121000, 121000, 121000, 42, 'CLEAR', 'Test', NULL, NULL, NULL, '3', '232'),
(9, NULL, 28, 4.84999990463257, 5.52500009536743, 4.25, 5.52500009536743, 5.51999998092651, 4.85500001907349, 5.52199983596802, 4.25500011444092, 5.51999998092651, 5.52899980545044, 4.85900020599365, 5.52500009536743, 4.25, 5.52500009536743, 5.5, 78, 'Tap10R', 'Tap7L', 40, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'G.A', '2010-06-01 00:00:00', 111550, 127075, 127075, 253000, 97750, 115000, 23000, 23000, 23000, 121000, 23000, 23000, 43, 'CLEAR', 'Test', NULL, NULL, NULL, '3', '109'),
(10, NULL, 37, 4.84999990463257, 5.52500009536743, 4.25099992752075, 5.51999998092651, 5.52500009536743, 4.85099983215332, 5.52600002288818, 4.25, 5.52899980545044, 5.52699995040894, 4.85500001907349, 5.52500009536743, 4.25600004196167, 5.52099990844727, 5.53000020980835, 56, 'Tap12R', 'Tap8L', 48, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'group.B', '2007-04-01 00:00:00', 111550, 127075, 127075, 127075, 97750, 115000, 23000, 23000, 23000, 23000, 23000, 23000, 50, 'Sunny', 'Test', NULL, NULL, NULL, '3', '167'),
(11, NULL, 30, 4.84000015258789, 5.53999996185303, 4.25600004196167, 5.53700017929077, 5.54300022125244, 4.84100008010864, 5.55999994277954, 4.22300004959106, 5.53200006484985, 5.56599998474121, 4.85300016403198, 5.53000020980835, 4.26000022888184, 5.5310001373291, 5.59100008010864, 48, 'Tap10R', 'Tap7L', 32, 10, NULL, NULL, NULL, NULL, NULL, NULL, '???-?', '2009-12-04 00:00:00', 111550, 127075, 127075, 127075, 97750, 115000, 23000, 23000, 23000, 23000, 23000, 23000, 32, 'CLEAR', 'Test', NULL, NULL, NULL, '3', '343'),
(12, NULL, 30, 4.84000015258789, 5.53999996185303, 4.25600004196167, 5.53700017929077, 5.54300022125244, 4.84100008010864, 5.55999994277954, 4.22300004959106, 5.53200006484985, 5.56599998474121, 4.85300016403198, 5.53000020980835, 4.26000022888184, 5.5310001373291, 5.59100008010864, 48, 'Tap10R', 'Tap7L', 32, 10, NULL, NULL, NULL, NULL, NULL, NULL, '???-?', '2009-12-04 00:00:00', 111550, 127075, 127075, 127075, 97750, 115000, 23000, 23000, 23000, 23000, 23000, 23000, 32, 'CLEAR', 'Test', NULL, NULL, NULL, '3', '343'),
(13, NULL, 36, 1.85000002384186, 2.08999991416931, 1.61500000953674, 3.17499995231628, 5.5, 1.85500001907349, 2.09100008010864, 1.61600005626678, 3.17600011825562, 5.50099992752075, 1.85300004482269, 2.08999991416931, 1.61199998855591, 3.17600011825562, 5.5, 45, 'Tap12R', 'Tap8L', 45, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'Group3', '2009-10-04 00:00:00', 224250, 121000, 121000, 127075, 195500, 230000, 121000, 22000, 22000, 23000, 121000, 121000, 45, 'Sunny', 'Test', NULL, NULL, NULL, '3', '344'),
(14, NULL, 32, 4.85099983215332, 5.51100015640259, 4.25, 5.53000020980835, 5.54300022125244, 4.84100008010864, 5.59000015258789, 4.22599983215332, 5.53800010681152, 5.56099987030029, 4.85300016403198, 5.58099985122681, 4.25299978256226, 5.53599977493286, 5.59100008010864, 69, 'Tap10R', 'Tap7L', 38, 10, NULL, NULL, NULL, NULL, NULL, NULL, 'TCS#1', '2010-06-04 00:00:00', 111550, 127075, 127075, 127075, 97750, 115000, 23000, 23000, 23000, 23000, 23000, 23000, 38, 'CLEAR', 'Test', NULL, NULL, NULL, '1', '215'),
(15, NULL, 30, 4.84000015258789, 5.53999996185303, 4.25600004196167, 5.53700017929077, 5.54300022125244, 4.84100008010864, 5.55999994277954, 4.22300004959106, 5.53200006484985, 5.56599998474121, 4.85300016403198, 5.53000020980835, 4.26000022888184, 5.5310001373291, 5.59100008010864, 48, 'Tap10R', 'Tap7L', 32, 10, NULL, NULL, NULL, NULL, NULL, NULL, '???-?', '2009-12-04 00:00:00', 111550, 127075, 127075, 127075, 97750, 115000, 23000, 23000, 23000, 23000, 23000, 23000, 32, 'CLEAR', 'Test', NULL, NULL, NULL, '3', '343'),
(16, NULL, 30, 4.84000015258789, 5.53999996185303, 4.25600004196167, 5.53700017929077, 5.54300022125244, 4.84100008010864, 5.55999994277954, 4.22300004959106, 5.53200006484985, 5.56599998474121, 4.85300016403198, 5.53000020980835, 4.26000022888184, 5.5310001373291, 5.59100008010864, 48, 'Tap10R', 'Tap7L', 32, 10, NULL, NULL, NULL, NULL, NULL, NULL, '???-?', '2009-12-04 00:00:00', 111550, 127075, 127075, 127075, 97750, 115000, 23000, 23000, 23000, 23000, 23000, 23000, 32, 'CLEAR', 'Test', NULL, NULL, NULL, '3', '343'),
(17, 0, 30, 4.84000015258789, 5.53999996185303, 4.25600004196167, 5.53700017929077, 5.54300022125244, 4.84100008010864, 5.55999994277954, 4.22300004959106, 5.53200006484985, 5.56599998474121, 4.85300016403198, 5.53000020980835, 4.26000022888184, 5.5310001373291, 5.59100008010864, 48, 'Tap10R', 'Tap7L', 32, 10, '', '', '', '', '', '', '???-?', '2009-12-04 00:00:00', 111550, 127075, 127075, 127075, 97750, 115000, 23000, 23000, 23000, 23000, 23000, 23000, 32, 'CLEAR', 'Test', 1, 1, 1, '3', '343');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE IF NOT EXISTS `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `equipment_group` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=178 ;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `version`, `name`, `equipment_group`) VALUES
(1, NULL, 'Load Tap Changer', '6'),
(2, NULL, '??????????????? GAS DETECTOR AN', '9'),
(3, NULL, 'Main Tank', '2'),
(4, NULL, '???????? COUNTER ??? KT4', '9'),
(5, NULL, '????? TAP DIFF', '9'),
(6, NULL, '??????????? SILICA GE', '9'),
(7, NULL, '??????????? SILIGA GE', '9'),
(8, NULL, 'Fan', '3'),
(9, NULL, 'Main Tank', '2'),
(10, NULL, 'Diaphragm / rubber bag', '2'),
(11, NULL, '????? GAS DETECTOR SHOW ALAR', '9'),
(12, NULL, '???????? CONTROL GROUN', '9'),
(13, NULL, '??????? SILICA GE', '9'),
(14, NULL, ' ????? ANN.AC.SUPPLY,AC.REGULATING', '4'),
(15, NULL, '????????????? SILICA GE', '9'),
(16, NULL, '?????????????? SILICA GE', '9'),
(17, NULL, '??? Lead', '1'),
(18, NULL, 'Load Tap Changer', '6'),
(19, NULL, '??????????????? SILICA GE', '9'),
(20, NULL, '????????????? SILICA OLT', '9'),
(21, NULL, 'HV Bushing', '7'),
(22, NULL, '??????? TAP TRANSDUCUR', '9'),
(23, NULL, ' ??????? RESISTANCE TRANSDUCER', '4'),
(24, NULL, ' ??????? RESISTANCE TRANSDUCER', '4'),
(25, NULL, '????????????? RAISE-LOW TAP ?????', '9'),
(26, NULL, 'Pressure Relief', '4'),
(27, NULL, '????? TAP TRANSDUCER ???? LOW ???????', '9'),
(28, NULL, 'Fan', '3'),
(29, NULL, 'TAP  TRANSDUCSER  FUSE ???????????? TA', '9'),
(30, NULL, 'Load Tap Changer', '6'),
(31, NULL, 'Load Tap Changer', '6'),
(32, NULL, '??????? SILICA GEL & SEAL ?????', '9'),
(33, NULL, 'BUCHHOLZ RELAY', '4'),
(34, NULL, '??????? SILICA GEL ??? OLTC.& MAIN TAN', '9'),
(35, NULL, '??????? SILICA GEL MAIN TAN', '9'),
(36, NULL, 'Fan', '3'),
(37, NULL, '????? TAP KT1A ???', '9'),
(38, NULL, 'LV Bushing', '7'),
(39, NULL, '??????? AUX.RELAY ??? AC.UNDER VOLTAG', '9'),
(40, NULL, 'SUK-KT1A ??????? TAP ?????????????', '9'),
(41, NULL, 'Main Tank', '2'),
(42, NULL, '????? GAS DETECTER SHOW ALARM(YL1-GA', '9'),
(43, NULL, '????? CONTROL TAP ??????? LOWER ?????', '9'),
(44, NULL, '????? TEST SWITCH ???', '9'),
(45, NULL, '????? GAS DETECTOR SHWOW ALAR', '9'),
(46, NULL, '??????????????????', '9'),
(47, NULL, 'HV Bushing', '7'),
(48, NULL, 'TAP TRANSDUCER KT4', '9'),
(49, NULL, 'Load Tap Changer', '6'),
(50, NULL, 'Load Tap Changer', '6'),
(51, NULL, '????????????? SILICAGEL???????????', '9'),
(52, NULL, '????????????? SILICAGEL???????????? 3K', '9'),
(53, NULL, 'Main Tank', '2'),
(54, NULL, 'LV Bushing', '7'),
(55, NULL, 'LV ARRESTER ???? 3 PHASE', '8'),
(56, NULL, '????? GAS DETACTOR ALAR', '9'),
(57, NULL, 'Fan', '3'),
(58, NULL, 'HV Arrester', '8'),
(59, NULL, 'Load Tap Changer', '6'),
(60, NULL, '????????KT3A ANN.SHOW RESET ?????', '9'),
(61, NULL, 'HV Bushing', '7'),
(62, NULL, 'Fan', '3'),
(63, NULL, '??????? LIGHTNING ARRESTER ???? HV.???', '9'),
(64, NULL, '?????????????? SILICA GEL ???', '9'),
(65, NULL, 'Fan', '3'),
(66, NULL, 'SUK-KT1A ??????? TAP?????????????', '9'),
(67, NULL, 'Load Tap Changer', '6'),
(68, NULL, 'Main Tank', '2'),
(69, NULL, 'Main Tank', '2'),
(70, NULL, 'HV Bushing', '7'),
(71, NULL, 'Main Tank', '2'),
(72, NULL, 'Main Tank', '2'),
(73, NULL, '???????????? OIL TEM', '9'),
(74, NULL, ' ????? Contactor', '4'),
(75, NULL, 'OLTC Pressure relay', '4'),
(76, NULL, 'Load Tap Changer', '6'),
(77, NULL, 'Pressure Relief', '4'),
(78, NULL, ' Buchholz relay', '4'),
(79, NULL, '????  ?????? Radiato', '9'),
(80, NULL, '????????? CONTROL TA', '9'),
(81, NULL, ' Over current relay', '4'),
(82, NULL, ' Buchholz relay', '4'),
(83, NULL, '????', '9'),
(84, NULL, 'Load Tap Changer', '6'),
(85, NULL, 'Fan', '3'),
(86, NULL, 'Fan', '3'),
(87, NULL, '???? Resistor??? Magnetic D1 ??', '9'),
(88, NULL, '???', '9'),
(89, NULL, 'Mano mete', '9'),
(90, NULL, 'Oil Contamination', '5'),
(91, NULL, 'Diaphragm / rubber bag', '2'),
(92, NULL, 'HV Bushing', '7'),
(93, NULL, 'Load Tap Changer', '6'),
(94, NULL, '???? RADIATO', '9'),
(95, NULL, '???? Motor driv', '9'),
(96, NULL, '???????? wiring contro', '9'),
(97, NULL, 'Sudden pressure relay', '4'),
(98, NULL, 'Load Tap Changer', '6'),
(99, NULL, '??? Lead', '1'),
(100, NULL, 'Fan', '3'),
(101, NULL, 'Fan', '3'),
(102, NULL, 'Main Tank', '2'),
(103, NULL, 'HV Bushing', '7'),
(104, NULL, 'Main Tank', '2'),
(105, NULL, 'LV ARRESTER ???? 3 PHASE', '8'),
(106, NULL, 'Fan', '3'),
(107, NULL, 'Fan', '3'),
(108, NULL, 'Fan', '3'),
(109, NULL, 'Main Tank', '2'),
(110, NULL, 'Main Tank', '2'),
(111, NULL, 'HV Bushing', '7'),
(112, NULL, 'Main Tank', '2'),
(113, NULL, 'Load Tap Changer', '6'),
(114, NULL, 'Pressure Relief', '4'),
(115, NULL, ' Buchholz relay', '4'),
(116, NULL, ' Buchholz relay', '4'),
(117, NULL, 'Fan', '3'),
(118, NULL, 'Oil Contamination', '5'),
(119, NULL, 'HV Bushing', '7'),
(120, NULL, 'Load Tap Changer', '6'),
(121, NULL, 'Load Tap Changer', '6'),
(122, NULL, '?????????????????CLEAN SUPPOR', '9'),
(123, NULL, '???? ????????? Radiato', '9'),
(124, NULL, '????????????? SILIGA MAIN & OLT', '9'),
(125, NULL, 'Hand Hol', '9'),
(126, NULL, 'Neutral Bushing', '7'),
(127, NULL, 'Neutral Bushing', '7'),
(128, NULL, '??????? SURGE CONTE', '9'),
(129, NULL, '??????????????? OIL LEVE', '9'),
(130, NULL, '???????????', '9'),
(131, NULL, 'HV Arrester', '8'),
(132, NULL, '???? Bushing PT???? Low Sid', '9'),
(133, NULL, '??????? SILICAGE', '9'),
(134, NULL, '???? .....???', '9'),
(135, NULL, 'fuse  2291F ??', '9'),
(136, NULL, 'HV Arrester', '8'),
(137, NULL, 'Pressure Relay  Alar', '9'),
(138, NULL, 'HV Arrester', '8'),
(139, NULL, '??????? AUX.RELAY ??? ANN', '9'),
(140, NULL, '?????????????? SILICA GE', '9'),
(141, NULL, '?????????????? bkr. 223', '9'),
(142, NULL, 'Connector', '1'),
(143, NULL, '??? Sound Frequency Vibratio', '9'),
(144, NULL, 'Hot Line Oil Filte', '9'),
(145, NULL, '???? ?????????????????????OLTC??????', '9'),
(146, NULL, 'Connector', '1'),
(147, NULL, 'Oil Contamination', '5'),
(148, NULL, '??????????? bkr.  222', '9'),
(149, NULL, 'HV Bushing', '7'),
(150, NULL, 'Oil Contamination', '5'),
(151, NULL, 'Oil Contamination', '5'),
(152, NULL, 'Neutral Bushing Phase A', '7'),
(153, NULL, '??? Lead', '1'),
(154, NULL, 'HV Bushing', '7'),
(155, NULL, 'Fan', '3'),
(156, NULL, 'Oil Contamination', '5'),
(157, NULL, 'HV Arrester', '8'),
(158, NULL, 'HV Arrester', '8'),
(159, NULL, 'HV Arrester', '8'),
(160, NULL, 'Connector', '1'),
(161, NULL, 'Oil Contamination', '5'),
(162, NULL, 'Oil Contamination', '5'),
(163, NULL, 'Oil Contamination', '5'),
(164, NULL, 'Oil Contamination', '5'),
(165, NULL, 'HV Arrester', '8'),
(166, NULL, 'HV Arrester', '8'),
(167, NULL, 'Connector', '1'),
(168, NULL, 'Oil Contamination', '5'),
(169, NULL, 'Oil Contamination', '5'),
(170, NULL, 'Oil Contamination', '5'),
(171, NULL, 'Oil Contamination', '5'),
(172, NULL, 'HV Arrester', '8'),
(173, NULL, 'Connector', '1'),
(174, NULL, 'HV Arrester', '8'),
(175, NULL, 'Connector', '1'),
(176, NULL, 'HV Arrester', '8'),
(177, NULL, 'HV Arrester', '8');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_group`
--

CREATE TABLE IF NOT EXISTS `equipment_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `equipment_group`
--

INSERT INTO `equipment_group` (`id`, `version`, `description`) VALUES
(1, NULL, 'Active Part'),
(2, NULL, 'Tank'),
(3, NULL, 'Cooling'),
(4, NULL, 'Protective Device'),
(5, NULL, '??????????????'),
(6, NULL, 'Load Tap Changer'),
(7, NULL, 'Bushing'),
(8, NULL, 'Arrester'),
(9, NULL, '?????');

-- --------------------------------------------------------

--
-- Table structure for table `failure_condition`
--

CREATE TABLE IF NOT EXISTS `failure_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `failure_condition`
--

INSERT INTO `failure_condition` (`id`, `version`, `description`) VALUES
(1, NULL, 'Environment'),
(2, NULL, 'Abnormal Environment'),
(3, NULL, 'Damage Data'),
(4, NULL, 'Real Cause'),
(5, NULL, 'Failure Mode'),
(6, NULL, 'Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `failure_condition_detail`
--

CREATE TABLE IF NOT EXISTS `failure_condition_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `is_other` int(11) DEFAULT NULL,
  `failure_condition` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `failure_condition_detail`
--

INSERT INTO `failure_condition_detail` (`id`, `version`, `detail`, `is_other`, `failure_condition`) VALUES
(1, NULL, '????????????? ??????????????????????????? / ???????', 0, '1'),
(2, NULL, '??????', 0, '1'),
(3, NULL, '????????????? ???? ???????', 0, '1'),
(4, NULL, '???????? ???? ????', 0, '1'),
(5, NULL, '????????', 0, '1'),
(6, NULL, '?????', 1, '1'),
(7, NULL, '??????????', 0, '2'),
(8, NULL, '??? Energization', 0, '2'),
(9, NULL, '?????????????????????????????????', 0, '2'),
(10, NULL, '?????????????????? ??????? ???? ?????', 0, '2'),
(11, NULL, '??????????????????????????????????????', 0, '2'),
(12, NULL, '?????? guarantee period', 0, '2'),
(13, NULL, '?????', 1, '2'),
(14, NULL, '????', 0, '3'),
(15, NULL, '???????', 0, '3'),
(16, NULL, '???/???', 0, '3'),
(17, NULL, '???/??????', 0, '3'),
(18, NULL, '????/????', 0, '3'),
(19, NULL, '????/?????', 0, '3'),
(20, NULL, '???????', 0, '3'),
(21, NULL, 'Flashover', 0, '3'),
(22, NULL, 'Hot Spot', 0, '3'),
(23, NULL, '????????????', 0, '3'),
(24, NULL, '????????', 0, '3'),
(25, NULL, '???????????????', 0, '3'),
(26, NULL, '?????????????????Alarm Show"Rubber Bag Rupture"', 0, '3'),
(27, NULL, '????????????', 0, '3'),
(28, NULL, '?????', 1, '3'),
(29, NULL, '??????/?????????????????', 0, '4'),
(30, NULL, '????????????????/??????', 0, '4'),
(31, NULL, '????????????????/??????????', 0, '4'),
(32, NULL, '???????????????/????????????', 0, '4'),
(33, NULL, '??????????/???????', 0, '4'),
(34, NULL, '?????', 0, '4'),
(35, NULL, '???????????', 0, '4'),
(36, NULL, 'Human Error', 0, '4'),
(37, NULL, '?????', 1, '4'),
(38, NULL, 'minor', 0, '5'),
(39, NULL, 'major', 0, '5'),
(40, NULL, 'overhaul', 0, '5'),
(41, NULL, 'Repair', 0, '6'),
(42, NULL, 'Replace', 0, '6'),
(43, NULL, 'Calibrate', 0, '6'),
(44, NULL, 'Lubricate', 0, '6'),
(45, NULL, 'Re-condition/Refill', 0, '6'),
(46, NULL, 'Modify', 0, '6'),
(47, NULL, '???????????????', 0, '6'),
(48, NULL, 'Derated (????????????????????????)', 0, '6'),
(49, NULL, '??????????????????? (Relocate)', 0, '6'),
(50, NULL, '????????(????????????)', 0, '6'),
(51, NULL, '???????????????', 0, '6'),
(52, NULL, '?????', 1, '6'),
(53, NULL, '?????????????', 1, '1'),
(54, NULL, '?????????????', 1, '2'),
(55, NULL, '?????…Over haul ???????', 1, '4'),
(56, NULL, '????? Overhaul', 1, '6'),
(57, NULL, '???? ? ERROR', 1, '3'),
(58, NULL, '????? ??????? Overhaul OLTC', 1, '2'),
(59, NULL, '????? Limit  swith  ??? Buchholz  ????', 1, '3'),
(60, NULL, 'overhaul  oltc.', 1, '2'),
(61, NULL, '????? ??????? Overhaul ???????', 1, '2'),
(62, NULL, '????? Overhaul ???????', 1, '4'),
(63, NULL, '????? ??????????? ????????', 1, '6'),
(64, NULL, '?????……………………………..', 1, '4'),
(65, NULL, '????? ??? PF ???', 1, '4'),
(66, NULL, '??????????????????.VY8B', 1, '1'),
(67, NULL, '????? ???????? Function ????', 1, '4'),
(68, NULL, '????? ??? Setting Relay 90', 1, '4'),
(69, NULL, '?????  Modefy Pressure Relief ???? Qualitrol', 1, '2'),
(70, NULL, '????? ????? Function  Alarm', 1, '4'),
(71, NULL, '????? ????????? X0 ??? ?????????', 1, '4'),
(72, NULL, '????? Rubber Bag??????????', 1, '3'),
(73, NULL, '????? ??????????????????? PT ???? Low Side', 1, '1'),
(74, NULL, '????? Arc???bushing phase A 2222', 1, '1'),
(75, NULL, '????? ??????? Trip ????  Alarm', 1, '4'),
(76, NULL, 'rip  Relay;Tx.Diff phase A,C', 1, '2'),
(77, NULL, 'rip Relay;OC. Phase A,B', 1, '2'),
(78, NULL, '????? ????????????? Surge Counter', 1, '3'),
(79, NULL, '????? ?????????????', 1, '4'),
(80, NULL, '????? Installation', 1, '6'),
(81, NULL, '?????…??????????????', 1, '4'),
(82, NULL, '????? ??????? ????????????????', 1, '2'),
(83, NULL, '????????????? Oil Flow Relay', 1, '2'),
(84, NULL, 'overhaul  ???????', 1, '4'),
(85, NULL, '?????...???????????????? OLTC. ???????? Arc', 1, '4'),
(86, NULL, '????? ??????? Capacitor Bushing', 1, '4'),
(87, NULL, '?????????????????', 1, '2'),
(88, NULL, '??????????????????????????? OLTC', 1, '6'),
(89, NULL, '???? ??? Sound Frequency Vibration', 1, '4'),
(90, NULL, '????? ?????????????????????', 1, '3'),
(91, NULL, '????? ??? N2 ?????????? Conservator', 1, '6'),
(92, NULL, '????? ??????? ?????????????????????OLTC', 1, '2'),
(93, NULL, '??????????????????????????OLTC???????', 1, '4'),
(94, NULL, '????? ??????????????????????????', 1, '6'),
(95, NULL, '?????????????', 1, '1'),
(96, NULL, '????? ??????? ?????????Rubber Bag????????????????', 1, '2'),
(97, NULL, '??????????????????? setting relay', 1, '4'),
(98, NULL, '?????....??????????  Conservator  Tank', 1, '4'),
(99, NULL, '??????', 1, '2'),
(100, NULL, 'QW2A Phase B   ??????', 1, '4');

-- --------------------------------------------------------

--
-- Table structure for table `fruits`
--

CREATE TABLE IF NOT EXISTS `fruits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `fruits`
--


-- --------------------------------------------------------

--
-- Table structure for table `furans`
--

CREATE TABLE IF NOT EXISTS `furans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acf` double DEFAULT NULL,
  `fal` double DEFAULT NULL,
  `fol` double DEFAULT NULL,
  `hmf` double DEFAULT NULL,
  `mef` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer_id` int(11) DEFAULT NULL,
  `test_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `furans`
--

INSERT INTO `furans` (`id`, `acf`, `fal`, `fol`, `hmf`, `mef`, `test_by`, `test_date`, `work_order`, `perform_type`, `transformer_id`, `test_type`) VALUES
(1, NULL, 0, 9, 0, 0, '???-?,???-?', '2010-10-04 00:00:00', 'Test', '3', NULL, NULL),
(2, NULL, 0, 9, 0, 0, '???-?,???-?', '2010-08-04 00:00:00', 'Test', '3', NULL, NULL),
(3, NULL, 9, 0, 0, 0, '???-?,???-?', '2010-07-05 00:00:00', 'Test', '3', NULL, NULL),
(4, NULL, 9, 0, 0, 0, '???-?,???-?', '2010-07-05 00:00:00', 'Test', '3', NULL, NULL),
(5, NULL, 18, 11, 0, 0, '???-?,???-?', '2009-12-03 00:00:00', 'Test', '3', NULL, NULL),
(6, NULL, 9, 9, 0, 0, '???-?,???-?', '2010-08-03 00:00:00', 'Test', '3', NULL, NULL),
(7, NULL, 9, 9, 0, 0, '???-?,???-?', '2010-08-03 00:00:00', 'Test', '3', NULL, NULL),
(8, NULL, 10, 0, 0, 0, '???-?,???-?', '2011-07-03 00:00:00', 'Test', '3', NULL, NULL),
(9, NULL, 13, 9, 0, 0, '???-?,???-?', '2011-07-03 00:00:00', 'Test', '3', NULL, NULL),
(10, NULL, 0, 13, 0, 0, '???-?,???-?', '2009-12-03 00:00:00', 'Test', '3', NULL, NULL),
(11, 1, 0.1, 2, 3, 4, NULL, '2011-02-20 00:00:00', '11111', NULL, 1, 'Commissioning'),
(12, 0, 1.4, 0, 0, 0, NULL, '2011-02-22 00:00:00', '11111', NULL, 1, 'Commissioning'),
(13, 2.3, 1.4, 3.2, 2.6, 0.3, NULL, '2011-03-04 00:00:00', '002', NULL, 1, '6 months');

-- --------------------------------------------------------

--
-- Table structure for table `furan_factors`
--

CREATE TABLE IF NOT EXISTS `furan_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` float DEFAULT NULL,
  `end` float DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `furan_factors`
--

INSERT INTO `furan_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 0.5, '0,255,0', '2011-02-23 22:21:05', '2011-02-23 22:21:05'),
(2, 3, 'Acceptable', 0.5, 1, '0,0,255', '2011-02-23 22:21:05', '2011-02-23 22:21:05'),
(3, 2, 'Need Caution', 1.1, 1.5, '0,255,255', '2011-02-23 22:21:05', '2011-02-23 22:21:05'),
(4, 1, 'Poor', 1.6, 2, '255,146,0', '2011-02-23 22:21:05', '2011-02-23 22:21:05'),
(5, 0, 'Very Poor', 2, NULL, '255,0,0', '2011-02-23 22:21:05', '2011-02-23 22:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `gas`
--

CREATE TABLE IF NOT EXISTS `gas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `gas`
--

INSERT INTO `gas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CO2', NULL, NULL),
(2, 'CO', NULL, NULL),
(3, 'H2', NULL, NULL),
(4, 'CH4', NULL, NULL),
(5, 'C2H2', NULL, NULL),
(6, 'C2H4', NULL, NULL),
(7, 'C2H6', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `general_condition`
--

CREATE TABLE IF NOT EXISTS `general_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `animal_protect` decimal(10,0) DEFAULT NULL,
  `foundation` decimal(10,0) DEFAULT NULL,
  `ground_connector` decimal(10,0) DEFAULT NULL,
  `percentload` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `sound` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  `vibration` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `general_condition`
--

INSERT INTO `general_condition` (`id`, `version`, `test_by`, `test_date`, `work_order`, `animal_protect`, `foundation`, `ground_connector`, `percentload`, `perform_type`, `sound`, `transformer`, `vibration`) VALUES
(1, NULL, 'Test', '2010-06-01 00:00:00', '1111222', '13', '39', '42', NULL, '1', '68', '343', '133'),
(2, NULL, 'Test', '2010-06-02 00:00:00', '1234134', '14', '39', '44', NULL, '1', '68', '1', '133'),
(3, NULL, 'Test', '2010-06-08 00:00:00', '4445555', '13', '39', '43', NULL, '1', '69', '14', '133'),
(4, NULL, 'Test', '2010-06-01 00:00:00', '1111222', '13', '39', '42', '54', '1', '68', '343', '133'),
(5, NULL, 'Test', '2010-06-02 00:00:00', '1234134', '14', '39', '44', '56', '1', '68', '1', '133');

-- --------------------------------------------------------

--
-- Table structure for table `general_conditions`
--

CREATE TABLE IF NOT EXISTS `general_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `animal_protect` decimal(10,0) DEFAULT NULL,
  `foundation` decimal(10,0) DEFAULT NULL,
  `ground_connector` decimal(10,0) DEFAULT NULL,
  `maxload` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `sound` decimal(10,0) DEFAULT NULL,
  `transformer_id` decimal(10,0) DEFAULT NULL,
  `vibration` decimal(10,0) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `general_conditions`
--

INSERT INTO `general_conditions` (`id`, `test_by`, `test_date`, `work_order`, `animal_protect`, `foundation`, `ground_connector`, `maxload`, `perform_type`, `sound`, `transformer_id`, `vibration`, `visual_inspection_id`) VALUES
(11, NULL, NULL, NULL, '16', '13', '8', '1', NULL, '6', NULL, '11', 3),
(10, NULL, NULL, NULL, '16', '13', '8', '1', NULL, '7', NULL, '11', 2),
(7, NULL, NULL, NULL, '16', '14', '8', '5', NULL, '7', NULL, '12', 1),
(8, NULL, NULL, NULL, '16', '14', '8', '1', NULL, '7', NULL, '12', 2),
(9, NULL, NULL, NULL, '18', '14', '9', '1', NULL, '6', NULL, '12', 3),
(12, NULL, NULL, NULL, '16', '13', '8', '2', NULL, '6', NULL, '11', 4);

-- --------------------------------------------------------

--
-- Table structure for table `general_condition_factors`
--

CREATE TABLE IF NOT EXISTS `general_condition_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `general_condition_factors`
--

INSERT INTO `general_condition_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 35, '0,255,0', NULL, NULL),
(2, 3, 'Acceptable', 36, 39, '0,0,255', NULL, NULL),
(3, 2, 'Need Caution', 40, 43, '0,255,255', NULL, NULL),
(4, 1, 'Poor', 44, 49, '255,146,0', NULL, NULL),
(5, 0, 'Very Poor', 50, NULL, '255,0,0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hif_of_oil_dgas`
--

CREATE TABLE IF NOT EXISTS `hif_of_oil_dgas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `percent_dgaf_start` int(11) DEFAULT NULL,
  `percent_dgaf_end` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hif_of_oil_dgas`
--

INSERT INTO `hif_of_oil_dgas` (`id`, `hi_factor`, `condition`, `percent_dgaf_start`, `percent_dgaf_end`, `created_at`, `updated_at`, `color`) VALUES
(1, 4, 'Good', 0, 20, NULL, NULL, '0,255,0'),
(2, 3, 'Acceptable', 21, 30, NULL, NULL, '0,0,255'),
(3, 3, 'Need Caution', 31, 40, NULL, NULL, '0,255,255'),
(4, 1, 'Poor', 41, 50, NULL, NULL, '255,146,0'),
(5, 0, 'Very Poor', 51, NULL, NULL, NULL, '255,0,0');

-- --------------------------------------------------------

--
-- Table structure for table `hot_line_oil_filter`
--

CREATE TABLE IF NOT EXISTS `hot_line_oil_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `corrosion` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `pressure` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hot_line_oil_filter`
--

INSERT INTO `hot_line_oil_filter` (`id`, `version`, `test_by`, `test_date`, `work_order`, `corrosion`, `perform_type`, `pressure`, `transformer`) VALUES
(1, NULL, 'Test', '2010-06-01 00:00:00', '11111222', '27', '1', '103', '343');

-- --------------------------------------------------------

--
-- Table structure for table `hot_line_oil_filters`
--

CREATE TABLE IF NOT EXISTS `hot_line_oil_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `corrosion` decimal(10,0) DEFAULT NULL,
  `pressure` decimal(10,0) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hot_line_oil_filters`
--

INSERT INTO `hot_line_oil_filters` (`id`, `corrosion`, `pressure`, `visual_inspection_id`) VALUES
(2, '135', '137', 2),
(3, '136', '138', 4);

-- --------------------------------------------------------

--
-- Table structure for table `hot_line_oil_filter_factors`
--

CREATE TABLE IF NOT EXISTS `hot_line_oil_filter_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hot_line_oil_filter_factors`
--

INSERT INTO `hot_line_oil_filter_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 35, '0,255,0', '2011-02-10 18:56:45', '2011-02-10 18:56:45'),
(2, 3, 'Acceptable', 36, 39, '0,0,255', '2011-02-10 18:56:45', '2011-02-10 18:56:45'),
(3, 2, 'Need Caution', 40, 43, '0,255,255', '2011-02-10 18:56:45', '2011-02-10 18:56:45'),
(4, 1, 'Poor', 44, 49, '255,146,0', '2011-02-10 18:56:45', '2011-02-10 18:56:45'),
(5, 0, 'Very Poor', 50, NULL, '255,0,0', '2011-02-10 18:56:45', '2011-02-10 18:56:45');

-- --------------------------------------------------------

--
-- Table structure for table `importance_indices`
--

CREATE TABLE IF NOT EXISTS `importance_indices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `importance` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `importance_indices`
--

INSERT INTO `importance_indices` (`id`, `start`, `end`, `importance`, `action`, `created_at`, `updated_at`) VALUES
(1, 0, 40, 'Low', 'Normal Maintenance', NULL, NULL),
(2, 41, 60, 'Medium', 'Need Careful Attention', NULL, NULL),
(3, 61, 100, 'High', 'Reduce Importance Index', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inspection`
--

CREATE TABLE IF NOT EXISTS `inspection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `perform_name` varchar(255) DEFAULT NULL,
  `wi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `inspection`
--

INSERT INTO `inspection` (`id`, `version`, `name`, `perform_name`, `wi`) VALUES
(1, NULL, 'CORROSION', 'Conservator Tank', 5),
(2, NULL, 'OIL FAIL', 'Conservator Tank', 5),
(3, NULL, 'OIL LEVEL', 'Conservator Tank', 5),
(4, NULL, 'JEL COLOR', 'Conservator Tank', 5),
(5, NULL, 'BREATHER', 'Conservator Tank', 5),
(6, NULL, 'LOAD', 'General Condition', 5),
(7, NULL, 'SOUND', 'General Condition', 4),
(8, NULL, 'VIBRATION', 'General Condition', 4),
(9, NULL, 'GROUND CONNECTOR', 'General Condition', 3),
(10, NULL, 'FOUNDATION', 'General Condition', 2),
(11, NULL, 'ANIMAL PROTECTION', 'General Condition', 1),
(12, NULL, 'CORROSION', 'Hot Line Oil Filter', 5),
(13, NULL, 'OIL FAIL', 'Hot Line Oil Filter', 5),
(14, NULL, 'PRESSURE', 'Hot Line Oil Filter', 3),
(15, NULL, 'POCELAIN STATUS', 'Lightning Arrester', 5),
(16, NULL, 'POCELAIN CLEAN', 'Lightning Arrester', 5),
(17, NULL, 'LEAKAGE CURRENT', 'Lightning Arrester', 5),
(18, NULL, 'GROUND CONNECTOR', 'Lightning Arrester', 5),
(19, NULL, 'OIL FAIL', 'Main Tank', 3),
(20, NULL, 'CORROSION', 'Main Tank', 5),
(21, NULL, 'NGR BASE', 'NGR', 5),
(22, NULL, 'NGR STATUS', 'NGR', 5),
(23, NULL, 'POCELAIN CLEAN', 'NGR', 5),
(24, NULL, 'GROUND CONNECTOR', 'NGR', 5),
(25, NULL, 'OIL FAIL', 'OLTC Compartment', 5),
(26, NULL, 'CORROSION', 'OLTC Compartment', 4),
(27, NULL, 'CORROSION', 'OLTC Control Cabinet', 5),
(28, NULL, 'ANIMAL', 'OLTC Control Cabinet', 5),
(29, NULL, 'CONTROL HUMIDITY', 'OLTC Control Cabinet', 5),
(30, NULL, 'PRAGEN', 'OLTC Control Cabinet', 5),
(31, NULL, 'WIRING CONTROL', 'OLTC Control Cabinet', 3),
(32, NULL, 'CORROSION', 'Radiator and Cooling System', 5),
(33, NULL, 'OIL FAIL', 'Radiator and Cooling System', 5),
(34, NULL, 'NOISE LEVEL', 'Radiator and Cooling System', 5),
(35, NULL, 'OIL PUMP', 'Radiator and Cooling System', 5),
(36, NULL, 'ANIMAL', 'Radiator and Cooling System', 3),
(37, NULL, 'CORROSION', 'Transformer Control Cabinet', 5),
(38, NULL, 'ANIMAL', 'Transformer Control Cabinet', 5),
(39, NULL, 'CONTROL HUMIDITY', 'Transformer Control Cabinet', 5),
(40, NULL, 'PRAGEN', 'Transformer Control Cabinet', 5),
(41, NULL, 'WIRING CONTROL', 'Transformer Control Cabinet', 3),
(42, NULL, 'POCELAIN CLEAN', 'Bushing', 5),
(43, NULL, 'POCELAIN STATUS', 'Bushing', 5),
(44, NULL, 'OIL FAIL', 'Bushing', 5),
(45, NULL, 'OIL LEVEL', 'Bushing', 5),
(46, NULL, 'OIL COLOR', 'Bushing', 5),
(47, NULL, 'POCELAIN CLEAN', 'Regulating PT', 5),
(48, NULL, 'OIL FAIL', 'Regulating PT', 5),
(49, NULL, 'POCELAIN STATUS', 'Regulating PT', 5),
(50, NULL, 'OIL LEVEL', 'Regulating PT', 5),
(51, NULL, 'OIL COLOR', 'Regulating PT', 3);

-- --------------------------------------------------------

--
-- Table structure for table `inspection_detail`
--

CREATE TABLE IF NOT EXISTS `inspection_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `visual_inspection` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `inspection_detail`
--

INSERT INTO `inspection_detail` (`id`, `version`, `color`, `description`, `score`, `visual_inspection`) VALUES
(1, NULL, 'green', '????', 1, '35'),
(2, NULL, 'yellow', '??????????', 2, '35'),
(3, NULL, 'red', '????????', 3, '35'),
(4, NULL, 'green', '?????????????', 1, '28'),
(5, NULL, 'yellow', '?????????????????', 2, '28'),
(6, NULL, 'red', '??????????', 3, '28'),
(7, NULL, 'green', '?????????????', 1, '36'),
(8, NULL, 'yellow', '?????????????????', 2, '36'),
(9, NULL, 'red', '??????????', 3, '36'),
(10, NULL, 'green', '?????????????', 1, '38'),
(11, NULL, 'yellow', '?????????????????', 2, '38'),
(12, NULL, 'red', '??????????', 3, '38'),
(13, NULL, 'green', '????????', 1, '11'),
(14, NULL, 'yellow', '?????????', 2, '11'),
(15, NULL, 'red', '???????????', 3, '11'),
(16, NULL, 'green', '????', 1, '5'),
(17, NULL, 'yellow', '???????????????????????', 2, '5'),
(18, NULL, 'red', '??????????????????????', 3, '5'),
(19, NULL, 'green', '????', 1, '29'),
(20, NULL, 'yellow', '????????????????????????????', 2, '29'),
(21, NULL, 'red', '???????? ???/???? ??????', 3, '29'),
(22, NULL, 'green', '????', 1, '39'),
(23, NULL, 'yellow', '????????????????????????????', 2, '39'),
(24, NULL, 'red', '???????? ???/???? ??????', 3, '39'),
(25, NULL, 'green', '????', 1, '1'),
(26, NULL, 'red', '??????', 2, '1'),
(27, NULL, 'green', '????', 1, '12'),
(28, NULL, 'red', '??????', 2, '12'),
(29, NULL, 'green', '????', 1, '20'),
(30, NULL, 'red', '??????', 2, '20'),
(31, NULL, 'green', '????', 1, '26'),
(32, NULL, 'red', '??????', 2, '26'),
(33, NULL, 'green', '????', 1, '27'),
(34, NULL, 'red', '??????', 2, '27'),
(35, NULL, 'green', '????', 1, '32'),
(36, NULL, 'red', '??????', 2, '32'),
(37, NULL, 'green', '????', 1, '37'),
(38, NULL, 'red', '??????', 2, '37'),
(39, NULL, 'green', '????', 1, '10'),
(40, NULL, 'yellow', '????????????????', 2, '10'),
(41, NULL, 'red', '???????????', 3, '10'),
(42, NULL, 'green', '????', 1, '9'),
(43, NULL, 'yellow', '????', 2, '9'),
(44, NULL, 'red', '????', 3, '9'),
(45, NULL, 'green', '????', 1, '18'),
(46, NULL, 'yellow', '????', 2, '18'),
(47, NULL, 'red', '????', 3, '18'),
(48, NULL, 'green', '????', 1, '24'),
(49, NULL, 'yellow', '????', 2, '24'),
(50, NULL, 'red', '????', 3, '24'),
(51, NULL, 'green', '???????', 1, '17'),
(52, NULL, 'red', '??????? 1.5 ??????????????????', 2, '17'),
(53, NULL, 'green', '<60%', 1, '6'),
(54, NULL, 'blue', '60-100%', 2, '6'),
(55, NULL, 'yellow', '101-130%', 3, '6'),
(56, NULL, 'orange', '131-150%', 4, '6'),
(57, NULL, 'red', '>150%', 5, '6'),
(58, NULL, 'green', '????', 1, '21'),
(59, NULL, 'blue', '????????????????', 2, '21'),
(60, NULL, 'yellow', '???????????', 3, '21'),
(61, NULL, 'red', '????', 4, '21'),
(62, NULL, 'green', '????', 1, '22'),
(63, NULL, 'yellow', '?????????????/?????????', 2, '22'),
(64, NULL, 'red', '??????/???????', 3, '22'),
(65, NULL, 'green', '????', 1, '34'),
(66, NULL, 'yellow', '??????????', 2, '34'),
(67, NULL, 'red', '????????????????', 3, '34'),
(68, NULL, 'green', '????', 1, '7'),
(69, NULL, 'red', '???????', 2, '7'),
(70, NULL, 'green', '????(??)', 1, '46'),
(71, NULL, 'red', '????????', 2, '46'),
(72, NULL, 'green', '????(??)', 1, '51'),
(73, NULL, 'red', '????????', 2, '51'),
(74, NULL, 'green', '????', 1, '16'),
(75, NULL, 'yellow', '?????????????', 2, '16'),
(76, NULL, 'red', '????????', 3, '16'),
(77, NULL, 'green', '????', 1, '23'),
(78, NULL, 'yellow', '?????????????', 2, '23'),
(79, NULL, 'red', '????????', 3, '23'),
(80, NULL, 'green', '????', 1, '42'),
(81, NULL, 'yellow', '?????????????', 2, '42'),
(82, NULL, 'red', '????????', 3, '42'),
(83, NULL, 'green', '????', 1, '47'),
(84, NULL, 'yellow', '?????????????', 2, '47'),
(85, NULL, 'red', '????????', 3, '47'),
(86, NULL, 'green', '????', 1, '15'),
(87, NULL, 'yellow', '?????????????????', 2, '15'),
(88, NULL, 'red', '???????????????? 1 ????', 3, '15'),
(89, NULL, 'green', '????', 1, '43'),
(90, NULL, 'yellow', '?????????????????', 2, '43'),
(91, NULL, 'red', '???????????????? 1 ????', 3, '43'),
(92, NULL, 'green', '????', 1, '49'),
(93, NULL, 'yellow', '?????????????????', 2, '49'),
(94, NULL, 'red', '???????????????? 1 ????', 3, '49'),
(95, NULL, 'green', '??????', 1, '30'),
(96, NULL, 'yellow', '?????????/?????????????? ??????????????????', 2, '30'),
(97, NULL, 'red', '?????????/?????????????????????????????', 3, '30'),
(98, NULL, 'green', '??????', 1, '40'),
(99, NULL, 'yellow', '?????????/?????????????? ??????????????????', 2, '40'),
(100, NULL, 'red', '?????????/?????????????????????????????', 3, '40'),
(101, NULL, 'green', '< 2 bar', 1, '14'),
(102, NULL, 'blue', '< 3 bar', 2, '14'),
(103, NULL, 'yellow', '< 4 bar', 3, '14'),
(104, NULL, 'red', '>4 bar', 4, '14'),
(105, NULL, 'green', '???????????????', 1, '48'),
(106, NULL, 'yellow', '????????????????', 2, '48'),
(107, NULL, 'red', '?????????????????', 3, '48'),
(108, NULL, 'green', '???????????????', 1, '44'),
(109, NULL, 'yellow', '????????????????', 2, '44'),
(110, NULL, 'red', '?????????????????', 3, '44'),
(111, NULL, 'green', '????', 1, '2'),
(112, NULL, 'yellow', '????????????????', 2, '2'),
(113, NULL, 'red', '?????????????????', 3, '2'),
(114, NULL, 'green', '????', 1, '13'),
(115, NULL, 'yellow', '????????????????', 2, '13'),
(116, NULL, 'red', '?????????????????', 3, '13'),
(117, NULL, 'green', '????', 1, '19'),
(118, NULL, 'yellow', '????????????????', 2, '19'),
(119, NULL, 'red', '?????????????????', 3, '19'),
(120, NULL, 'green', '????', 1, '25'),
(121, NULL, 'yellow', '????????????????', 2, '25'),
(122, NULL, 'red', '?????????????????', 3, '25'),
(123, NULL, 'green', '????', 1, '33'),
(124, NULL, 'yellow', '????????????????', 2, '33'),
(125, NULL, 'red', '?????????????????', 3, '33'),
(126, NULL, 'green', '????', 1, '45'),
(127, NULL, 'red', '???????', 2, '45'),
(128, NULL, 'green', '????', 1, '50'),
(129, NULL, 'red', '???????', 2, '50'),
(130, NULL, 'green', '????', 1, '3'),
(131, NULL, 'yellow', '???????????????????', 2, '3'),
(132, NULL, 'red', '??????????????', 3, '3'),
(133, NULL, 'green', '????', 1, '8'),
(134, NULL, 'yellow', '????????', 2, '8'),
(135, NULL, 'red', '???????', 3, '8'),
(136, NULL, 'green', '??????', 1, '31'),
(137, NULL, 'yellow', '?????????????/??????????????', 2, '31'),
(138, NULL, 'red', '????????', 3, '31'),
(139, NULL, 'green', '??????', 1, '41'),
(140, NULL, 'yellow', '?????????????/??????????????', 2, '41'),
(141, NULL, 'red', '????????', 3, '41'),
(142, NULL, 'green', '????', 1, '4'),
(143, NULL, 'blue', '???????????????????????????? 1 ?? 4', 2, '4'),
(144, NULL, 'yellow', '???????????????????????????? 1 ?? 2', 3, '4'),
(145, NULL, 'orange', '??????????????????????????? 1 ?? 2', 4, '4'),
(146, NULL, 'red', '?????????????????????????????????', 5, '4');

-- --------------------------------------------------------

--
-- Table structure for table `insulating_oils`
--

CREATE TABLE IF NOT EXISTS `insulating_oils` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `ambient_temp` double DEFAULT NULL,
  `cf` double DEFAULT NULL,
  `current_avg_maintank` double DEFAULT NULL,
  `current_avg_oltc` double DEFAULT NULL,
  `gap_distance_maintank` double DEFAULT NULL,
  `gap_distance_oltc` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `oil_temp` double DEFAULT NULL,
  `remark_maintank` varchar(255) DEFAULT NULL,
  `remark_oltc` varchar(255) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `watt_avg_maintank` double DEFAULT NULL,
  `watt_avg_oltc` double DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `xi1_maintank` double DEFAULT NULL,
  `xi1_oltc` double DEFAULT NULL,
  `xi2_maintank` double DEFAULT NULL,
  `xi2_oltc` double DEFAULT NULL,
  `xi3_maintank` double DEFAULT NULL,
  `xi3_oltc` double DEFAULT NULL,
  `xi4_maintank` double DEFAULT NULL,
  `xi4_oltc` double DEFAULT NULL,
  `xi5_maintank` double DEFAULT NULL,
  `xi5_oltc` double DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `test_type` varchar(255) DEFAULT NULL,
  `transformer_id` int(11) DEFAULT NULL,
  `test_kv_maintank` int(11) DEFAULT NULL,
  `test_kv_oltc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `insulating_oils`
--

INSERT INTO `insulating_oils` (`id`, `version`, `ambient_temp`, `cf`, `current_avg_maintank`, `current_avg_oltc`, `gap_distance_maintank`, `gap_distance_oltc`, `humidity`, `oil_temp`, `remark_maintank`, `remark_oltc`, `test_by`, `test_date`, `watt_avg_maintank`, `watt_avg_oltc`, `work_order`, `xi1_maintank`, `xi1_oltc`, `xi2_maintank`, `xi2_oltc`, `xi3_maintank`, `xi3_oltc`, `xi4_maintank`, `xi4_oltc`, `xi5_maintank`, `xi5_oltc`, `perform_type`, `test_type`, `transformer_id`, `test_kv_maintank`, `test_kv_oltc`) VALUES
(23, NULL, 52, 0.5, 700, 800, 1, 2, 75, 24, 'test', 'test', NULL, '2011-02-28 00:00:00', 0.3, 0.6, '002', 24, 34, 25, 35, 26, 36, 27, 37, 28, 38, NULL, 'Others', 1, 10, 10),
(22, NULL, 23, 1, 720, 732, 1, 2, 42, 14, 'test1', 'test2', NULL, '2011-02-23 00:00:00', 0.0042, 0.0048, '023', 23, 26, 35, 27, 24, 28, 27, 24, 28, 23, NULL, '6 months', 1, 10, 10),
(21, NULL, NULL, 1, 744, 746, NULL, NULL, NULL, NULL, '', '', NULL, '2011-02-22 00:00:00', 0.0058, 0.0058, '', 51, 23, 54, 88, 58, 14, 47, 2, 65, 90, NULL, 'Commissioning', 1, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `lightning_arrester`
--

CREATE TABLE IF NOT EXISTS `lightning_arrester` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `ground_connector_hv` decimal(10,0) DEFAULT NULL,
  `ground_connector_lv` decimal(10,0) DEFAULT NULL,
  `ground_connector_tv` decimal(10,0) DEFAULT NULL,
  `leakage_current_hv` decimal(10,0) DEFAULT NULL,
  `leakage_current_lv` decimal(10,0) DEFAULT NULL,
  `leakage_current_tv` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `pocelain_clean_hv` decimal(10,0) DEFAULT NULL,
  `pocelain_clean_lv` decimal(10,0) DEFAULT NULL,
  `pocelain_clean_tv` decimal(10,0) DEFAULT NULL,
  `pocelain_status_hv` decimal(10,0) DEFAULT NULL,
  `pocelain_status_lv` decimal(10,0) DEFAULT NULL,
  `pocelain_status_tv` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lightning_arrester`
--

INSERT INTO `lightning_arrester` (`id`, `version`, `test_by`, `test_date`, `work_order`, `ground_connector_hv`, `ground_connector_lv`, `ground_connector_tv`, `leakage_current_hv`, `leakage_current_lv`, `leakage_current_tv`, `perform_type`, `pocelain_clean_hv`, `pocelain_clean_lv`, `pocelain_clean_tv`, `pocelain_status_hv`, `pocelain_status_lv`, `pocelain_status_tv`, `transformer`) VALUES
(1, NULL, 'Test', '2010-06-01 00:00:00', '11111222', '46', '45', '45', '51', '52', '51', '1', '76', '74', '75', '86', '86', '86', '343'),
(2, NULL, 'Test', '2010-06-02 00:00:00', '346546', '45', '45', '45', '51', '51', '51', '1', '74', '74', '74', '86', '86', '86', '1');

-- --------------------------------------------------------

--
-- Table structure for table `load_history`
--

CREATE TABLE IF NOT EXISTS `load_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `n0` int(11) DEFAULT NULL,
  `n1` int(11) DEFAULT NULL,
  `n2` int(11) DEFAULT NULL,
  `n3` int(11) DEFAULT NULL,
  `n4` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `load_history`
--

INSERT INTO `load_history` (`id`, `version`, `n0`, `n1`, `n2`, `n3`, `n4`, `test_by`, `test_date`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 1, 2, 1, 1, 1, 'Test', '2010-06-01 00:00:00', '11111', '1', '343');

-- --------------------------------------------------------

--
-- Table structure for table `load_history_factors`
--

CREATE TABLE IF NOT EXISTS `load_history_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `load_history_factors`
--

INSERT INTO `load_history_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 59, '0,255,0', NULL, NULL),
(2, 3, 'Acceptable', 60, 100, '0,0,255', NULL, NULL),
(3, 2, 'Need Caution', 101, 130, '0,255,255', NULL, NULL),
(4, 1, 'Poor', 131, 150, '255,146,0', NULL, NULL),
(5, 0, 'Very Poor', 151, NULL, '255,0,0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `load_pattern_factors`
--

CREATE TABLE IF NOT EXISTS `load_pattern_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `load_pattern_factors`
--

INSERT INTO `load_pattern_factors` (`id`, `start`, `end`, `score`, `score_message`, `created_at`, `updated_at`) VALUES
(61, 0, 20, 1, 'Very Low', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(62, 21, 40, 2, 'Low', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(63, 41, 65, 3, 'Moderate', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(64, 66, 85, 4, 'High', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(65, 86, NULL, 5, 'Very High', '2010-09-09 22:45:34', '2010-09-09 22:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `load_pattern_per_years`
--

CREATE TABLE IF NOT EXISTS `load_pattern_per_years` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lteq_0_pt_6` int(11) DEFAULT NULL,
  `gt_0_pt_6_and_lteq_1` int(11) DEFAULT NULL,
  `gt_1_and_lteq_1_pt_2` int(11) DEFAULT NULL,
  `gt_1_pt_2_and_lteq_1_pt_5` int(11) DEFAULT NULL,
  `gt_1_pt_5` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `transformer_information_id` int(11) DEFAULT NULL,
  `load_pattern_factor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `load_pattern_per_years`
--

INSERT INTO `load_pattern_per_years` (`id`, `lteq_0_pt_6`, `gt_0_pt_6_and_lteq_1`, `gt_1_and_lteq_1_pt_2`, `gt_1_pt_2_and_lteq_1_pt_5`, `gt_1_pt_5`, `created_at`, `updated_at`, `transformer_information_id`, `load_pattern_factor_id`) VALUES
(1, 0, 0, 0, 0, 0, '2010-09-06 09:24:59', '2010-09-06 09:24:59', 1, 7),
(2, 0, 0, 0, 0, 0, '2010-09-09 10:45:06', '2010-09-09 10:45:06', 2, 49),
(3, 2, 7, 6, 0, 0, '2010-09-09 17:06:37', '2010-09-09 17:06:37', 3, 51),
(4, 0, 0, 0, 0, 0, '2010-09-09 18:16:24', '2010-09-09 18:16:24', 4, 49),
(5, 0, 0, 0, 0, 0, '2010-09-10 20:26:11', '2010-09-10 20:26:11', 5, 61),
(6, 0, 0, 0, 0, 0, '2010-09-10 20:26:45', '2010-09-10 20:26:45', 6, 61),
(7, 0, 0, 0, 0, 0, '2010-09-10 20:27:02', '2010-09-10 20:27:02', 7, 61),
(8, 0, 0, 0, 0, 0, '2010-09-10 20:27:09', '2010-09-10 20:27:09', 8, 61),
(9, 0, 0, 0, 0, 0, '2010-09-10 20:29:13', '2010-09-10 20:29:13', 9, 61),
(10, 4, 6, 0, 0, 5, '2010-09-11 07:35:52', '2010-09-11 07:35:52', 10, 63),
(11, 3, 0, 2, 0, 0, '2010-09-11 13:07:06', '2010-10-18 20:00:44', 11, 62),
(12, 3, 8, 12, 0, 11, '2010-09-11 20:11:09', '2010-09-11 20:11:09', 12, 63),
(13, 1, 0, 2, 7, 12, '2010-09-12 21:39:56', '2010-09-12 21:39:56', 13, 65),
(14, 0, 12, 0, 0, 0, '2010-09-13 03:30:23', '2010-09-30 15:50:11', 14, 62),
(15, 2, 0, 6, 4, 0, '2010-09-13 09:22:04', '2010-09-13 09:22:04', 15, 63),
(16, 12, 0, 0, 0, 0, '2010-09-13 13:01:08', '2010-09-13 13:01:08', 16, 61),
(17, 0, 12, 0, 0, 0, '2010-09-14 05:00:19', '2010-09-14 05:00:19', 17, 62),
(18, 12, 0, 0, 0, 0, '2010-09-28 03:18:06', '2010-09-28 03:18:06', 18, 61),
(19, 12, 0, 0, 0, 0, '2010-09-28 03:21:03', '2010-09-28 03:21:03', 19, 61),
(20, 12, 0, 0, 0, 0, '2010-09-28 03:27:30', '2010-09-28 03:27:30', 20, 61),
(21, 9, 3, 0, 0, 0, '2010-09-30 15:46:55', '2010-09-30 15:46:55', 21, 62),
(22, 0, 12, 0, 0, 0, '2010-09-30 15:53:57', '2010-09-30 15:53:57', 22, 62),
(23, 0, 12, 0, 0, 0, '2010-09-30 15:56:42', '2010-09-30 15:56:42', 23, 62),
(24, 9, 3, 0, 0, 0, '2010-09-30 15:59:25', '2010-09-30 15:59:25', 24, 62),
(25, 0, 5, 7, 0, 0, '2010-10-03 10:34:08', '2010-10-03 10:34:08', 25, 63),
(26, 0, 12, 0, 0, 0, '2010-10-03 10:49:42', '2010-10-03 10:49:42', 26, 62),
(27, 5, 0, 0, 0, 0, '2010-10-14 16:02:31', '2010-10-14 16:02:31', 27, 61),
(28, 8, 0, 0, 0, 0, '2010-10-14 17:50:25', '2010-10-14 17:50:25', 28, 61),
(29, 5, 0, 0, 0, 0, '2010-10-16 12:33:22', '2010-10-16 12:33:22', 29, 61),
(30, 5, 0, 0, 0, 0, '2010-10-16 12:33:44', '2010-10-16 12:33:44', 30, 61),
(31, 5, 0, 0, 0, 0, '2010-10-16 12:37:25', '2010-10-16 12:37:25', 31, 61);

-- --------------------------------------------------------

--
-- Table structure for table `maintank`
--

CREATE TABLE IF NOT EXISTS `maintank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `corrosion` decimal(10,0) DEFAULT NULL,
  `oil_fail` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `maintank`
--

INSERT INTO `maintank` (`id`, `version`, `test_by`, `test_date`, `work_order`, `corrosion`, `oil_fail`, `perform_type`, `transformer`) VALUES
(1, NULL, 'Test', '2010-06-01 00:00:00', '11111222', '29', '117', '1', '343');

-- --------------------------------------------------------

--
-- Table structure for table `main_tanks`
--

CREATE TABLE IF NOT EXISTS `main_tanks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `corrosion` decimal(10,0) DEFAULT NULL,
  `oil_fail` decimal(10,0) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `main_tanks`
--

INSERT INTO `main_tanks` (`id`, `corrosion`, `oil_fail`, `visual_inspection_id`) VALUES
(2, '124', '126', 2),
(3, '124', '129', 4);

-- --------------------------------------------------------

--
-- Table structure for table `main_tank_factors`
--

CREATE TABLE IF NOT EXISTS `main_tank_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `main_tank_factors`
--

INSERT INTO `main_tank_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 35, '0,255,0', '2011-02-11 18:34:45', '2011-02-11 18:34:45'),
(2, 3, 'Acceptable', 36, 39, '0,0,255', '2011-02-11 18:34:45', '2011-02-11 18:34:45'),
(3, 2, 'Need Caution', 40, 43, '0,255,255', '2011-02-11 18:34:45', '2011-02-11 18:34:45'),
(4, 1, 'Poor', 44, 49, '255,146,0', '2011-02-11 18:34:45', '2011-02-11 18:34:45'),
(5, 0, 'Very Poor', 50, NULL, '255,0,0', '2011-02-11 18:34:45', '2011-02-11 18:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE IF NOT EXISTS `manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `address`, `version`, `name`, `tel_no`) VALUES
(1, NULL, NULL, 'ABB', NULL),
(2, NULL, NULL, 'DAIHEN', NULL),
(3, NULL, NULL, 'MR', NULL),
(4, NULL, NULL, 'ASEA PERKURE', NULL),
(5, NULL, NULL, 'ASEA', NULL),
(6, NULL, NULL, 'TOSHIBA', NULL),
(7, NULL, NULL, 'MITSUBISHI', NULL),
(8, NULL, NULL, 'EBG', NULL),
(9, NULL, NULL, 'TRAFO-UNION', NULL),
(10, NULL, NULL, 'MEIDEN', NULL),
(11, NULL, NULL, 'MEIDENSHA', NULL),
(12, NULL, NULL, 'OSAKA', NULL),
(13, NULL, NULL, 'FUJI', NULL),
(14, NULL, NULL, 'MASCHINENFABRIK', NULL),
(15, NULL, NULL, 'VOLTA-WERKE', NULL),
(16, NULL, NULL, 'SIRIWIWAT', NULL),
(17, NULL, NULL, 'ELIN', NULL),
(18, NULL, NULL, 'TRAFO UNION', NULL),
(19, NULL, NULL, 'VOLTA WERKE', NULL),
(20, NULL, NULL, 'TRAFO UNI', NULL),
(21, NULL, NULL, 'ELEKTRO BAUAG', NULL),
(22, NULL, NULL, 'RADE KONCAR', NULL),
(23, NULL, NULL, 'JEUMONT SCHNEIDER', NULL),
(24, NULL, NULL, 'TAKAOKA', NULL),
(25, NULL, NULL, 'TMT&D', NULL),
(26, NULL, NULL, 'SIEMENS', NULL),
(27, NULL, NULL, 'MASCNINE OF ABRIK', NULL),
(28, NULL, NULL, 'NATIONAL', NULL),
(29, NULL, NULL, '-', NULL),
(30, NULL, NULL, 'HYUNDAI', NULL),
(31, NULL, NULL, 'DAIHEN(OSAKA)', NULL),
(32, NULL, NULL, 'FERRANTI', NULL),
(33, NULL, NULL, 'MEIDENSH', NULL),
(34, NULL, NULL, 'JEUMONT', NULL),
(35, NULL, NULL, 'ABB.UZFRT 650/300', NULL),
(36, NULL, NULL, 'EKARAT DAIHEN', NULL),
(37, NULL, NULL, 'FUJI ELECTRIC', NULL),
(38, NULL, NULL, 'HUAMING', NULL),
(39, NULL, NULL, 'CHENYANG', NULL),
(40, NULL, NULL, 'GEC ALSTHOM', NULL),
(41, NULL, NULL, 'ALSTOM', NULL),
(42, NULL, NULL, 'ALSTHOM', NULL),
(43, NULL, NULL, 'MITSUBICHI', NULL),
(44, NULL, NULL, 'SCHORCH', NULL),
(45, NULL, NULL, 'BORSDL', NULL),
(46, NULL, NULL, 'TIRA THAI', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `n1_criterias`
--

CREATE TABLE IF NOT EXISTS `n1_criterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `n1_criterias`
--

INSERT INTO `n1_criterias` (`id`, `value`, `score`, `score_message`, `created_at`, `updated_at`) VALUES
(61, 'Yes', 1, 'Very Low', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(62, NULL, 2, 'Low', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(63, NULL, 3, 'Moderate', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(64, NULL, 4, 'High', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(65, 'No', 5, 'Very High', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(66, NULL, 6, 'Extremely High', '2010-09-09 22:45:34', '2010-09-25 07:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `ngr`
--

CREATE TABLE IF NOT EXISTS `ngr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `base_status` decimal(10,0) DEFAULT NULL,
  `ground_connector` decimal(10,0) DEFAULT NULL,
  `ngr_status` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `pocelain_clean` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ngr`
--

INSERT INTO `ngr` (`id`, `version`, `test_by`, `test_date`, `work_order`, `base_status`, `ground_connector`, `ngr_status`, `perform_type`, `pocelain_clean`, `transformer`) VALUES
(1, NULL, 'Test', '2010-06-01 00:00:00', '1111111111', '58', '49', '62', '1', '77', '343');

-- --------------------------------------------------------

--
-- Table structure for table `ngrs`
--

CREATE TABLE IF NOT EXISTS `ngrs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `base_status` decimal(10,0) DEFAULT NULL,
  `ground_connector` decimal(10,0) DEFAULT NULL,
  `ngr_status` decimal(10,0) DEFAULT NULL,
  `pocelain_clean` decimal(10,0) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ngrs`
--

INSERT INTO `ngrs` (`id`, `base_status`, `ground_connector`, `ngr_status`, `pocelain_clean`, `visual_inspection_id`) VALUES
(2, '177', '186', '173', '181', 2),
(3, '178', '183', '174', '182', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ngr_factors`
--

CREATE TABLE IF NOT EXISTS `ngr_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ngr_factors`
--

INSERT INTO `ngr_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 35, '0,255,0', '2011-02-11 19:06:46', '2011-02-11 19:06:46'),
(2, 3, 'Acceptable', 36, 39, '0,0,255', '2011-02-11 19:06:46', '2011-02-11 19:06:46'),
(3, 2, 'Need Caution', 40, 43, '0,255,255', '2011-02-11 19:06:46', '2011-02-11 19:06:46'),
(4, 1, 'Poor', 44, 49, '255,146,0', '2011-02-11 19:06:46', '2011-02-11 19:06:46'),
(5, 0, 'Very Poor', 50, NULL, '255,0,0', '2011-02-11 19:06:46', '2011-02-11 19:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `oil_aging`
--

CREATE TABLE IF NOT EXISTS `oil_aging` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `ift` double DEFAULT NULL,
  `nn` double DEFAULT NULL,
  `pf100` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oil_aging`
--

INSERT INTO `oil_aging` (`id`, `version`, `ift`, `nn`, `pf100`, `test_by`, `test_date`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 35.2299995422363, 0.034000001847744, 0.586499989032745, '???-?,???-?', '2010-10-04 00:00:00', 'Test', '3', '343'),
(2, NULL, 36.7599983215332, 0.00800000037997961, 0.116499997675419, '???-?,???-?', '2010-08-04 00:00:00', 'Test', '3', '344'),
(3, NULL, 36.1199989318848, 0.0160000007599592, 0.396499991416931, '???-?,???-?', '2010-07-05 00:00:00', 'Test', '3', '173'),
(4, NULL, 38.4199981689453, 0.0179999992251396, 0.634500026702881, '???-?,???-?', '2010-07-05 00:00:00', 'Test', '3', '215'),
(5, NULL, 38.4599990844727, 0.00800000037997961, 1.98249995708466, '???-?,???-?', '2009-12-03 00:00:00', 'Test', '3', '96'),
(6, NULL, 37.939998626709, 0.0299999993294477, 1.34200000762939, '???-?,???-?', '2010-08-03 00:00:00', 'Test', '3', '51'),
(7, NULL, 39.4300003051758, 0.0970000028610229, 0.642499983310699, '???-?,???-?', '2010-08-03 00:00:00', 'Test', '3', '248'),
(8, NULL, 34.0099983215332, 0.00300000002607703, 0.382499992847443, '???-?,???-?', '2011-07-03 00:00:00', 'Test', '3', '232'),
(9, NULL, 46.0999984741211, 0.0649999976158142, 0.718500018119812, '???-?,???-?', '2011-07-03 00:00:00', 'Test', '3', '109'),
(10, NULL, 43.3600006103516, 0.0560000017285347, 0.163000002503395, '???-?,???-?', '2009-12-03 00:00:00', 'Test', '3', '167');

-- --------------------------------------------------------

--
-- Table structure for table `oil_contaminations`
--

CREATE TABLE IF NOT EXISTS `oil_contaminations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `color` double DEFAULT NULL,
  `ift` double DEFAULT NULL,
  `nn` double DEFAULT NULL,
  `pf100` double DEFAULT NULL,
  `pf20` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `water_content` int(11) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `transformer_id` int(11) DEFAULT NULL,
  `test_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `oil_contaminations`
--

INSERT INTO `oil_contaminations` (`id`, `version`, `color`, `ift`, `nn`, `pf100`, `pf20`, `test_by`, `test_date`, `water_content`, `work_order`, `transformer_id`, `test_type`) VALUES
(1, NULL, 1.5, 35.2299995422363, 0.034000001847744, 0.586499989032745, 0.0179999992251396, '???-?,???-?', '2010-10-04 00:00:00', 12, 'Test', NULL, NULL),
(2, NULL, 0.5, 36.7599983215332, 0.00800000037997961, 0.116499997675419, 0.0140000004321337, '???-?,???-?', '2010-08-04 00:00:00', 13, 'Test', NULL, NULL),
(3, NULL, 1, 36.1199989318848, 0.0160000007599592, 0.396499991416931, 0.0425000004470348, '???-?,???-?', '2010-07-05 00:00:00', 13, 'Test', NULL, NULL),
(4, NULL, 1, 38.4199981689453, 0.0179999992251396, 0.634500026702881, 0.0264999996870756, '???-?,???-?', '2010-07-05 00:00:00', 8, 'Test', NULL, NULL),
(5, NULL, 2, 38.4599990844727, 0.00800000037997961, 1.98249995708466, 0.0785000026226044, '???-?,???-?', '2009-12-03 00:00:00', 16, 'Test', NULL, NULL),
(6, NULL, 1.5, 37.939998626709, 0.0299999993294477, 1.34200000762939, 0.0410000011324883, '???-?,???-?', '2010-08-03 00:00:00', 10, 'Test', NULL, NULL),
(7, NULL, 1, 39.4300003051758, 0.0970000028610229, 0.642499983310699, 0.0109999999403954, '???-?,???-?', '2010-08-03 00:00:00', 8, 'Test', NULL, NULL),
(8, NULL, 1, 34.0099983215332, 0.00300000002607703, 0.382499992847443, 0.0305000003427267, '???-?,???-?', '2011-07-03 00:00:00', 7, 'Test', NULL, NULL),
(9, NULL, 1, 46.0999984741211, 0.0649999976158142, 0.718500018119812, 0.0280000008642673, '???-?,???-?', '2011-07-03 00:00:00', 4, 'Test', NULL, NULL),
(10, NULL, 1, 43.3600006103516, 0.0560000017285347, 0.163000002503395, 0.00400000018998981, '???-?,???-?', '2009-12-03 00:00:00', 6, 'Test', NULL, NULL),
(11, NULL, 2.3, 10, 12, 5.34, 2.36, NULL, '2011-02-22 00:00:00', 45, '1111', 1, 0),
(12, NULL, 1.8, 25, 0.1, 6, 0.8, NULL, '2011-03-01 00:00:00', 38, '002', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oil_dga`
--

CREATE TABLE IF NOT EXISTS `oil_dga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `c2h2` double DEFAULT NULL,
  `c2h4` double DEFAULT NULL,
  `c2h6` double DEFAULT NULL,
  `c3h6` double DEFAULT NULL,
  `c3h8` double DEFAULT NULL,
  `ch4` double DEFAULT NULL,
  `co` double DEFAULT NULL,
  `co2` double DEFAULT NULL,
  `h2` double DEFAULT NULL,
  `n2` double DEFAULT NULL,
  `o2` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oil_dga`
--

INSERT INTO `oil_dga` (`id`, `version`, `c2h2`, `c2h4`, `c2h6`, `c3h6`, `c3h8`, `ch4`, `co`, `co2`, `h2`, `n2`, `o2`, `test_by`, `test_date`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 0, 0, 9, 9, 3, 18, 238, 2016, 13, 40353, 8663, '???-?,???-?', '2009-12-03 00:00:00', 'Test', '3', '343'),
(2, NULL, 0, 1, 2, 2, 1, 4, 897, 2033, 14, 45571, 6789, '???-?,???-?', '2009-12-03 00:00:00', 'Test', '3', '344'),
(3, NULL, 0, 2, 1, 5, 1, 8, 930, 2890, 2, 63426, 12225, '???-?,???-?', '2010-07-05 00:00:00', 'Test', '3', '173'),
(4, NULL, 0, 2, 1, 4, 0, 3, 563, 1831, 3, 64042, 20871, '???-?,???-?', '2010-07-05 00:00:00', 'Test', '3', '215'),
(5, NULL, 0, 6, 306, 306, 189, 112, 180, 4706, 77, 49665, 3236, '???-?,???-?', '2009-12-03 00:00:00', 'Test', '3', '96'),
(6, NULL, 0, 15, 132, 132, 43, 60, 155, 2561, 91, 32241, 4649, '???-?,???-?', '2010-08-03 00:00:00', 'Test', '3', '51'),
(7, NULL, 0, 0, 50, 50, 17, 25, 110, 2987, 34, 17990, 2433, '???-?,???-?', '2010-08-03 00:00:00', 'Test', '3', '248'),
(8, NULL, 0, 4, 216, 216, 163, 74, 111, 3429, 51, 68762, 2894, '???-?,???-?', '2011-07-03 00:00:00', 'Test', '3', '232'),
(9, NULL, 0, 0, 3, 3, 15, 6, 385, 4761, 15, 31596, 3275, '???-?,???-?', '2011-07-03 00:00:00', 'Test', '3', '109'),
(10, NULL, 0, 0, 5, 5, 10, 8, 602, 5908, 25, 33490, 2910, '???-?,???-?', '2009-12-03 00:00:00', 'Test', '3', '167');

-- --------------------------------------------------------

--
-- Table structure for table `oil_dgas`
--

CREATE TABLE IF NOT EXISTS `oil_dgas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_type` varchar(255) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `co2` int(11) DEFAULT NULL,
  `co2_score` int(11) DEFAULT NULL,
  `co` int(11) DEFAULT NULL,
  `co_score` int(11) DEFAULT NULL,
  `h2` int(11) DEFAULT NULL,
  `h2_score` int(11) DEFAULT NULL,
  `ch4` int(11) DEFAULT NULL,
  `ch4_score` int(11) DEFAULT NULL,
  `c2h2` int(11) DEFAULT NULL,
  `c2h2_score` int(11) DEFAULT NULL,
  `c2h4` int(11) DEFAULT NULL,
  `c2h4_score` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `c2h6` int(11) DEFAULT NULL,
  `c2h6_score` int(11) DEFAULT NULL,
  `transformer_id` int(11) DEFAULT NULL,
  `c3h6` int(11) DEFAULT NULL,
  `c3h8` int(11) DEFAULT NULL,
  `o2` int(11) DEFAULT NULL,
  `n2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `oil_dgas`
--

INSERT INTO `oil_dgas` (`id`, `test_type`, `test_date`, `work_order`, `co2`, `co2_score`, `co`, `co_score`, `h2`, `h2_score`, `ch4`, `ch4_score`, `c2h2`, `c2h2_score`, `c2h4`, `c2h4_score`, `created_at`, `updated_at`, `c2h6`, `c2h6_score`, `transformer_id`, `c3h6`, `c3h8`, `o2`, `n2`) VALUES
(5, 'Commissioning', '2011-01-02', 'XXX', 345, 1, 345, 1, 23, 1, 425, 5, 35, 3, 345, 5, '2011-01-09 23:26:41', '2011-01-09 23:26:41', 45, 1, 1, 55, 99, 12, 100),
(8, '6 months', '2011-01-10', '003', 5110, 6, 589, 1, 22, 1, 29, 1, 0, 1, 1, 1, '2011-01-10 15:35:27', '2011-01-10 15:35:27', 9, 1, NULL, 18, 18, 5700, 26720),
(9, '6 months', '2011-02-15', '005', 0, 1, 67, 1, 0, 1, 66, 1, 0, 1, 0, 1, '2011-02-15 13:53:48', '2011-02-15 13:53:48', 0, 1, 1, NULL, NULL, 16, 56),
(10, '6 months', '2011-02-23', '100', 453, 1, 756, 2, 42, 1, 785, 6, 42, 3, 13, 1, '2011-02-23 12:28:20', '2011-02-28 14:20:34', 46, 1, 1, 85, 53, 152, 132),
(11, '6 months', '2011-01-10', '006', 788, 1, 442, 1, 256, 3, 73, 1, 46, 3, 43, 1, '2011-02-23 12:37:59', '2011-02-23 12:37:59', 75, 2, 1, 48, 43, 26, 46),
(12, '6 months', '2010-12-14', '004', 34, 1, 76, 1, 28, 1, 46, 1, 38, 3, 76, 2, '2011-02-23 12:38:36', '2011-02-23 12:38:36', 38, 1, 1, 79, 49, 69, 86),
(13, '6 months', '2010-09-08', '002', 79, 1, 450, 1, 499, 4, 72, 1, 722, 6, 200, 4, '2011-02-23 12:40:54', '2011-02-23 12:40:54', 123, 3, 1, 425, 253, 73, 28),
(14, '6 months', '2010-08-03', '001', 3635, 3, 694, 1, 47, 1, 12, 1, 0, 1, 0, 1, '2011-02-28 13:56:19', '2011-02-28 13:56:52', 11, 1, 11, 0, 0, 0, 0),
(15, '6 months', '2011-02-28', '013', 3635, 3, 694, 1, 47, 1, 12, 1, 0, 1, 0, 1, '2011-02-28 14:03:30', '2011-02-28 14:03:30', 11, 1, 1, 0, 0, 0, 0),
(16, '1 year', '2011-03-04', '005', 3635, 3, 694, 1, 47, 1, 12, 1, 0, 1, 0, 1, '2011-03-04 13:45:12', '2011-03-04 13:45:12', 11, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oil_qualities`
--

CREATE TABLE IF NOT EXISTS `oil_qualities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `u_start` int(11) DEFAULT NULL,
  `u_end` int(11) DEFAULT NULL,
  `start` float DEFAULT NULL,
  `end` float DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `oil_qualities`
--

INSERT INTO `oil_qualities` (`id`, `name`, `u_start`, `u_end`, `start`, `end`, `score`, `weight`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 'xbar', NULL, 69, 25, NULL, 1, 3, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(2, 'xbar', NULL, 69, 23, 24, 2, 3, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(3, 'xbar', NULL, 69, 20, 22, 3, 3, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(4, 'xbar', NULL, 69, NULL, 19, 4, 3, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(5, 'xbar', 70, 229, 30, NULL, 1, 3, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(6, 'xbar', 70, 229, 28, 29, 2, 3, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(7, 'xbar', 70, 229, 20, 27, 3, 3, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(8, 'xbar', 70, 229, NULL, 19, 4, 3, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(9, 'xbar', 230, NULL, 32, NULL, 1, 3, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(10, 'xbar', 230, NULL, 30, 31, 2, 3, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(11, 'xbar', 230, NULL, 25, 69, 3, 3, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(12, 'xbar', 230, NULL, NULL, 24, 4, 3, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(13, 'ift', NULL, 69, 38, NULL, 1, 2, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(14, 'ift', NULL, 69, 25, 37, 2, 2, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(15, 'ift', NULL, 69, 22, 24, 3, 2, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(16, 'ift', NULL, 69, NULL, 21, 4, 2, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(17, 'ift', 70, 229, 38, NULL, 1, 2, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(18, 'ift', 70, 229, 30, 37, 2, 2, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(19, 'ift', 70, 229, 25, 29, 3, 2, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(20, 'ift', 70, 229, NULL, 24, 4, 2, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(21, 'ift', 230, NULL, 38, NULL, 1, 2, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(22, 'ift', 230, NULL, 32, 37, 2, 2, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(23, 'ift', 230, NULL, 25, 31, 3, 2, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(24, 'ift', 230, NULL, NULL, 24, 4, 2, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(25, 'nn', NULL, 69, NULL, 0.015, 1, 1, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(26, 'nn', NULL, 69, 0.016, 0.2, 2, 1, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(27, 'nn', NULL, 69, 0.21, 0.49, 3, 1, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(28, 'nn', NULL, 69, 0.5, NULL, 4, 1, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(29, 'nn', 70, 229, NULL, 0.015, 1, 1, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(30, 'nn', 70, 229, 0.016, 0.1, 2, 1, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(31, 'nn', 70, 229, 0.11, 0.49, 3, 1, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(32, 'nn', 70, 229, 0.5, NULL, 4, 1, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(33, 'nn', 230, NULL, NULL, 0.015, 1, 1, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(34, 'nn', 230, NULL, 0.016, 0.1, 2, 1, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(35, 'nn', 230, NULL, 0.11, 0.49, 3, 1, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(36, 'nn', 230, NULL, 0.5, NULL, 4, 1, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(37, 'water_content', NULL, 69, NULL, 20, 1, 4, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(38, 'water_content', NULL, 69, 21, 35, 2, 4, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(39, 'water_content', NULL, 69, 36, 40, 3, 4, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(40, 'water_content', NULL, 69, 41, NULL, 4, 4, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(41, 'water_content', 70, 229, NULL, 10, 1, 4, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(42, 'water_content', 70, 229, 11, 25, 2, 4, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(43, 'water_content', 70, 229, 26, 30, 3, 4, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(44, 'water_content', 70, 229, 31, NULL, 4, 4, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(45, 'water_content', 230, NULL, NULL, 10, 1, 4, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(46, 'water_content', 230, NULL, 11, 20, 2, 4, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(47, 'water_content', 230, NULL, 21, 25, 3, 4, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(48, 'water_content', 230, NULL, 26, NULL, 4, 4, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(49, 'color', NULL, NULL, NULL, 1, 1, 2, 1, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(50, 'color', NULL, NULL, 1.1, 2.5, 2, 2, 2, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(51, 'color', NULL, NULL, 2.6, 4, 3, 2, 3, '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(52, 'color', NULL, NULL, 4.1, NULL, 4, 2, 5, '2011-02-27 17:03:48', '2011-02-27 17:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `oil_quality_factors`
--

CREATE TABLE IF NOT EXISTS `oil_quality_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oil_quality_factors`
--

INSERT INTO `oil_quality_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', NULL, 20, '1', '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(2, 3, 'Acceptable', 21, 30, '2', '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(3, 2, 'Need Caution', 31, 40, '3', '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(4, 1, 'Poor', 41, 50, '4', '2011-02-27 17:03:48', '2011-02-27 17:03:48'),
(5, 0, 'Very Poor', 51, NULL, '5', '2011-02-27 17:03:48', '2011-02-27 17:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `oltc_compartment`
--

CREATE TABLE IF NOT EXISTS `oltc_compartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `corrosion` decimal(10,0) DEFAULT NULL,
  `oil_fail` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oltc_compartment`
--

INSERT INTO `oltc_compartment` (`id`, `version`, `test_by`, `test_date`, `work_order`, `corrosion`, `oil_fail`, `perform_type`, `transformer`) VALUES
(1, NULL, 'Test', '2010-06-01 00:00:00', '1111112', '32', '120', '1', '343');

-- --------------------------------------------------------

--
-- Table structure for table `oltc_compartments`
--

CREATE TABLE IF NOT EXISTS `oltc_compartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `corrosion` decimal(10,0) DEFAULT NULL,
  `oil_fail` decimal(10,0) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oltc_compartments`
--

INSERT INTO `oltc_compartments` (`id`, `corrosion`, `oil_fail`, `visual_inspection_id`) VALUES
(2, '200', '206', 2),
(3, '201', '202', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oltc_compartment_factors`
--

CREATE TABLE IF NOT EXISTS `oltc_compartment_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oltc_compartment_factors`
--

INSERT INTO `oltc_compartment_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 35, '0,255,0', '2011-02-11 19:22:56', '2011-02-11 19:22:56'),
(2, 3, 'Acceptable', 36, 39, '0,0,255', '2011-02-11 19:22:56', '2011-02-11 19:22:56'),
(3, 2, 'Need Caution', 40, 43, '0,255,255', '2011-02-11 19:22:56', '2011-02-11 19:22:56'),
(4, 1, 'Poor', 44, 49, '255,146,0', '2011-02-11 19:22:56', '2011-02-11 19:22:56'),
(5, 0, 'Very Poor', 50, NULL, '255,0,0', '2011-02-11 19:22:56', '2011-02-11 19:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `oltc_contact`
--

CREATE TABLE IF NOT EXISTS `oltc_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `moving_a` double DEFAULT NULL,
  `moving_b` double DEFAULT NULL,
  `moving_c` double DEFAULT NULL,
  `r1_a` double DEFAULT NULL,
  `r1_b` double DEFAULT NULL,
  `r1_c` double DEFAULT NULL,
  `r2_a` double DEFAULT NULL,
  `r2_b` double DEFAULT NULL,
  `r2_c` double DEFAULT NULL,
  `station_a` double DEFAULT NULL,
  `station_b` double DEFAULT NULL,
  `station_c` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `oltc_type` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `oltc_contact`
--

INSERT INTO `oltc_contact` (`id`, `version`, `moving_a`, `moving_b`, `moving_c`, `r1_a`, `r1_b`, `r1_c`, `r2_a`, `r2_b`, `r2_c`, `station_a`, `station_b`, `station_c`, `test_by`, `test_date`, `work_order`, `oltc_type`, `perform_type`, `transformer`) VALUES
(1, NULL, 0.5, 0.490000009536743, 0.419999986886978, 9.55000019073486, 8.22000026702881, 10, 10, 10, 10, 0.5, 0.699999988079071, 0.600000023841858, '???-?,???-?', '2002-06-02 00:00:00', 'Test', NULL, '1', '343'),
(2, NULL, 0.5, 0.490000009536743, 0.419999986886978, 9.42000007629395, 7.96999979019165, 9.80000019073486, 9.60000038146973, 9.69999980926514, 9.85999965667725, 0.5, 0.699999988079071, 0.600000023841858, '???-?,???-?', '2010-10-04 00:00:00', 'Test', NULL, '3', '343'),
(3, NULL, 0.660000026226044, 0.490000009536743, 0.569999992847443, 9.55000019073486, 8.22000026702881, 10, 10, 10, 10, 0.5, 0.699999988079071, 0.620000004768372, '???-?,???-?', '2002-06-02 00:00:00', 'Test', NULL, '1', '344'),
(4, NULL, 0.660000026226044, 0.490000009536743, 0.569999992847443, 9.42000007629395, 7.96999979019165, 9.80000019073486, 9.60000038146973, 9.69999980926514, 9.85999965667725, 0.5, 0.699999988079071, 0.620000004768372, '???-?,???-?', '2010-10-04 00:00:00', 'Test', NULL, '3', '344'),
(5, NULL, 0.5, 0.490000009536743, 0.419999986886978, 9.55000019073486, 8.22000026702881, 10, 10, 10, 10, 0.5, 0.699999988079071, 0.600000023841858, '???-?,???-?', '2002-06-02 00:00:00', 'Test', NULL, '1', '173'),
(6, NULL, 0.5, 0.490000009536743, 0.419999986886978, 9.42000007629395, 7.96999979019165, 9.80000019073486, 9.60000038146973, 9.69999980926514, 9.85999965667725, 0.5, 0.699999988079071, 0.600000023841858, '???-?,???-?', '2010-10-04 00:00:00', 'Test', NULL, '3', '173'),
(7, NULL, 0.5, 0.490000009536743, 0.419999986886978, 9.55000019073486, 8.22000026702881, 10, 10, 10, 10, 0.5, 0.699999988079071, 0.600000023841858, '???-?,???-?', '2002-06-02 00:00:00', 'Test', NULL, '1', '215'),
(8, NULL, 0.5, 0.490000009536743, 0.419999986886978, 9.42000007629395, 7.96999979019165, 9.80000019073486, 9.60000038146973, 9.69999980926514, 9.85999965667725, 0.5, 0.699999988079071, 0.600000023841858, '???-?,???-?', '2010-10-04 00:00:00', 'Test', NULL, '3', '215'),
(9, NULL, 0.490000009536743, 0.439999997615814, 0.529999971389771, 9.55000019073486, 8.22000026702881, 10, 10, 10, 10, 0.5, 0.699999988079071, 0.5, '???-?,???-?', '2002-06-02 00:00:00', 'Test', NULL, '1', '96'),
(10, NULL, 0.490000009536743, 0.439999997615814, 0.529999971389771, 9.42000007629395, 7.96999979019165, 9.80000019073486, 9.60000038146973, 9.69999980926514, 9.85999965667725, 0.5, 0.699999988079071, 0.5, '???-?,???-?', '2010-10-04 00:00:00', 'Test', NULL, '3', '96'),
(11, NULL, 0.5, 0.490000009536743, 0.5, 9.55000019073486, 8.22000026702881, 10, 10, 10, 10, 0.5, 0.699999988079071, 0.600000023841858, '???-?,???-?', '2002-06-02 00:00:00', 'Test', NULL, '1', '51'),
(12, NULL, 0.5, 0.490000009536743, 0.5, 9.42000007629395, 7.96999979019165, 9.80000019073486, 9.60000038146973, 9.69999980926514, 9.85999965667725, 0.5, 0.699999988079071, 0.600000023841858, '???-?,???-?', '2010-10-04 00:00:00', 'Test', NULL, '3', '51'),
(13, NULL, 0.579999983310699, 0.490000009536743, 0.479999989271164, 9.55000019073486, 8.22000026702881, 10, 10, 10, 10, 0.5, 0.699999988079071, 0.620000004768372, '???-?,???-?', '2002-06-02 00:00:00', 'Test', NULL, '1', '248'),
(14, NULL, 0.579999983310699, 0.490000009536743, 0.479999989271164, 9.42000007629395, 7.96999979019165, 9.80000019073486, 9.60000038146973, 9.69999980926514, 9.85999965667725, 0.5, 0.699999988079071, 0.620000004768372, '???-?,???-?', '2010-10-04 00:00:00', 'Test', NULL, '3', '248'),
(15, NULL, 0.5, 0.469999998807907, 0.600000023841858, 9.55000019073486, 8.22000026702881, 10, 10, 10, 10, 0.5, 0.699999988079071, 0.680000007152557, '???-?,???-?', '2002-06-02 00:00:00', 'Test', NULL, '1', '232'),
(16, NULL, 0.5, 0.469999998807907, 0.600000023841858, 9.42000007629395, 7.96999979019165, 9.80000019073486, 9.60000038146973, 9.69999980926514, 9.85999965667725, 0.5, 0.699999988079071, 0.680000007152557, '???-?,???-?', '2010-10-04 00:00:00', 'Test', NULL, '3', '232'),
(17, NULL, 0.5, 0.449999988079071, 0.5, 9.55000019073486, 8.22000026702881, 10, 10, 10, 10, 0.5, 0.699999988079071, 0.670000016689301, '???-?,???-?', '2002-06-02 00:00:00', 'Test', NULL, '1', '109'),
(18, NULL, 0.5, 0.449999988079071, 0.5, 9.42000007629395, 7.96999979019165, 9.80000019073486, 9.60000038146973, 9.69999980926514, 9.85999965667725, 0.5, 0.699999988079071, 0.670000016689301, '???-?,???-?', '2010-10-04 00:00:00', 'Test', NULL, '3', '109'),
(19, NULL, 0.589999973773956, 0.5, 0.550000011920929, 9.55000019073486, 8.22000026702881, 10, 10, 10, 10, 0.5, 0.699999988079071, 0.610000014305115, '???-?,???-?', '2002-06-02 00:00:00', 'Test', NULL, '1', '167'),
(20, NULL, 0.589999973773956, 0.5, 0.550000011920929, 9.42000007629395, 7.96999979019165, 9.80000019073486, 9.60000038146973, 9.69999980926514, 9.85999965667725, 0.5, 0.699999988079071, 0.610000014305115, '???-?,???-?', '2010-10-04 00:00:00', 'Test', NULL, '3', '167'),
(21, NULL, 0.5, 0.490000009536743, 0.419999986886978, 9.55000019073486, 8.22000026702881, 10, 10, 10, 10, 0.5, 0.699999988079071, 0.600000023841858, '???-?,???-?', '2002-06-02 00:00:00', 'Test', NULL, '1', '343'),
(22, NULL, 0.5, 0.490000009536743, 0.419999986886978, 9.55000019073486, 8.22000026702881, 10, 10, 10, 10, 0.5, 0.699999988079071, 0.600000023841858, '???-?,???-?', '2002-06-02 00:00:00', 'Test', NULL, '1', '343');

-- --------------------------------------------------------

--
-- Table structure for table `oltc_control_cab`
--

CREATE TABLE IF NOT EXISTS `oltc_control_cab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `animal` decimal(10,0) DEFAULT NULL,
  `control_humidity` decimal(10,0) DEFAULT NULL,
  `corrosion` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `pragen` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  `wiring_control` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oltc_control_cab`
--

INSERT INTO `oltc_control_cab` (`id`, `version`, `test_by`, `test_date`, `work_order`, `animal`, `control_humidity`, `corrosion`, `perform_type`, `pragen`, `transformer`, `wiring_control`) VALUES
(1, NULL, 'Test', '2010-06-01 00:00:00', '111112', '4', '19', '33', '1', '95', '343', '136');

-- --------------------------------------------------------

--
-- Table structure for table `oltc_control_cabinets`
--

CREATE TABLE IF NOT EXISTS `oltc_control_cabinets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `animal` decimal(10,0) DEFAULT NULL,
  `control_humidity` decimal(10,0) DEFAULT NULL,
  `corrosion` decimal(10,0) DEFAULT NULL,
  `pragen` decimal(10,0) DEFAULT NULL,
  `wiring_control` decimal(10,0) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oltc_control_cabinets`
--

INSERT INTO `oltc_control_cabinets` (`id`, `animal`, `control_humidity`, `corrosion`, `pragen`, `wiring_control`, `visual_inspection_id`) VALUES
(2, '211', '212', '207', '217', '218', 2),
(3, '209', '212', '207', '217', '218', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oltc_control_cabinet_factors`
--

CREATE TABLE IF NOT EXISTS `oltc_control_cabinet_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oltc_control_cabinet_factors`
--

INSERT INTO `oltc_control_cabinet_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 39, '0,255,0', '2011-02-11 19:48:41', '2011-02-11 19:48:41'),
(2, 3, 'Acceptable', 40, 43, '0,0,255', '2011-02-11 19:48:41', '2011-02-11 19:48:41'),
(3, 2, 'Need Caution', 44, 46, '0,255,255', '2011-02-11 19:48:41', '2011-02-11 19:48:41'),
(4, 1, 'Poor', 47, 49, '255,146,0', '2011-02-11 19:48:41', '2011-02-11 19:48:41'),
(5, 0, 'Very Poor', 50, NULL, '255,0,0', '2011-02-11 19:48:41', '2011-02-11 19:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `oltc_dgas`
--

CREATE TABLE IF NOT EXISTS `oltc_dgas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c2h2` double DEFAULT NULL,
  `c2h4` double DEFAULT NULL,
  `c2h6` double DEFAULT NULL,
  `ch4` double DEFAULT NULL,
  `h2` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `oltc_type` decimal(10,0) DEFAULT NULL,
  `transformer_id` decimal(10,0) DEFAULT NULL,
  `c3h6` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `test_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oltc_dgas`
--

INSERT INTO `oltc_dgas` (`id`, `c2h2`, `c2h4`, `c2h6`, `ch4`, `h2`, `test_by`, `test_date`, `work_order`, `oltc_type`, `transformer_id`, `c3h6`, `status`, `test_type`) VALUES
(13, 25, 63, 755, 420, 230, NULL, '2011-03-03 00:00:00', '002', NULL, '1', 422, 'normal', '6 months'),
(12, 36, 57, 48, 45, 120, NULL, '2011-02-23 00:00:00', '001', NULL, '1', 26, 'normal', 'Commissioning');

-- --------------------------------------------------------

--
-- Table structure for table `oltc_dga_factors`
--

CREATE TABLE IF NOT EXISTS `oltc_dga_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oltc_dga_factors`
--

INSERT INTO `oltc_dga_factors` (`id`, `hi_factor`, `condition`, `status`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 'normal', '0,255,0', '2011-02-23 10:16:31', '2011-02-23 10:16:31'),
(2, 0, 'Very Poor', 'not_normal', '255,0,0', '2011-02-23 10:16:31', '2011-02-23 10:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `oltc_model`
--

CREATE TABLE IF NOT EXISTS `oltc_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=235 ;

--
-- Dumping data for table `oltc_model`
--

INSERT INTO `oltc_model` (`id`, `version`, `description`) VALUES
(1, NULL, 'UZFRN330/300'),
(2, NULL, 'VIII500Y-40'),
(3, NULL, 'UCB'),
(4, NULL, '3xTI2002/150/C'),
(5, NULL, 'UZFRT550/300'),
(6, NULL, 'DRI-DRII'),
(7, NULL, 'MIII350-110/C-10193G'),
(8, NULL, 'UCGRT650/600IS'),
(9, NULL, 'MI1800-110/C'),
(10, NULL, '3xMI'),
(11, NULL, 'ARSD150/1521/15-18'),
(12, NULL, '3XARSD3252/15212-12'),
(13, NULL, 'MII200-150/C'),
(14, NULL, 'UZFRT650/300'),
(15, NULL, 'MRDII400-80R/60-10193W'),
(16, NULL, 'LJDDS 115/1000-17'),
(17, NULL, 'LT-6C17'),
(18, NULL, 'UZFRN 200/300'),
(19, NULL, '3xMI600Y-150'),
(20, NULL, '3xMI-800'),
(21, NULL, 'UCGRT'),
(22, NULL, 'MI600-150/C'),
(23, NULL, 'UCGRT650/600 IS'),
(24, NULL, 'UCGRT650/1050C'),
(25, NULL, 'MRDIII400'),
(26, NULL, 'CRND110/211/5-18'),
(27, NULL, 'MIII300'),
(28, NULL, '-'),
(29, NULL, 'MI1200-150/C'),
(30, NULL, 'UCBRT550/1200'),
(31, NULL, 'ARSD2302/621-621/50-22'),
(32, NULL, 'ARSD2302/621-621/56-18(18)/051'),
(33, NULL, 'UZFRN200/300'),
(34, NULL, 'RER'),
(35, NULL, 'CRND'),
(36, NULL, 'M'),
(37, NULL, '3XARSD3252/S621-S621/50-22(20)'),
(38, NULL, 'M160'),
(39, NULL, 'MIII500Y'),
(40, NULL, '3xARSD2302/1021-1021/50-1816'),
(41, NULL, '3xMI1200-150/C-18170'),
(42, NULL, 'MRFI1600P-80L/150T'),
(43, NULL, 'ARSD150/1521/5-1'),
(44, NULL, 'ARSD2303/2432-2431/50-18(16)/0'),
(45, NULL, 'TI2000/110C-10171'),
(46, NULL, 'MI1200-150/B'),
(47, NULL, 'MI601-150/B'),
(48, NULL, 'MIIIY500'),
(49, NULL, 'UZFRN550/300'),
(50, NULL, 'UCGRT 650/600 IS'),
(51, NULL, 'MRM 800-110F/C-10171W-MA7A'),
(52, NULL, 'UCDRE 1050/1800'),
(53, NULL, '3xMI600-150/C'),
(54, NULL, '3xMI600-170/C'),
(55, NULL, 'DRI300-120/TH-10181G-DM2, DRII300-120/TI-10181G'),
(56, NULL, 'MI1200-123/B-12233W'),
(57, NULL, '3xMI1200-123/B-12233W'),
(58, NULL, 'XRSD2301/211/50-18'),
(59, NULL, 'XRSD3251/211-211/50-18(17)/050'),
(60, NULL, '3xMI600-150/C/12233W'),
(61, NULL, '3XMI 600-150/C-12233 W'),
(62, NULL, 'MI-800'),
(63, NULL, 'UZFRT 650/300'),
(64, NULL, 'UZFRT 600/300'),
(65, NULL, '3xMI601'),
(66, NULL, 'MI 600-110/C'),
(67, NULL, 'M1600'),
(68, NULL, '3xUCGRT650'),
(69, NULL, 'VLN/B3*800WF9-3*800/30'),
(70, NULL, 'CRND30/1002/5-18+3*ARSD30/1021'),
(71, NULL, 'VIIIY350-030-10181W'),
(72, NULL, 'UZFRN380/300'),
(73, NULL, '3xMI600-110/C'),
(74, NULL, 'V2xVIIIY500'),
(75, NULL, 'VIII 500Y'),
(76, NULL, '3XMI 501 150/C 12233'),
(77, NULL, 'MI 1200-150/C'),
(78, NULL, 'CRND140/211/50-18'),
(79, NULL, 'DS-5-500A'),
(80, NULL, '3XMI 800'),
(81, NULL, 'LJND22/1000-17'),
(82, NULL, 'UZFRT'),
(83, NULL, 'URS-LD7'),
(84, NULL, '3XMI802110/D'),
(85, NULL, 'VIII350Y-030-10181W'),
(86, NULL, '3xMI600-110/C/D-12233W'),
(87, NULL, '3xADSD3252/1021-1201/50-22'),
(88, NULL, '3xARSD3252/621S-621S/50-22(20)/0611'),
(89, NULL, 'VIII Y=500-060'),
(90, NULL, '3X0TMRMI 3-150/C'),
(91, NULL, 'RZFRN 200/300'),
(92, NULL, '3XFK-M 1040G/C'),
(93, NULL, 'RMII 602-72.5 /C12231 W'),
(94, NULL, 'MRD1400'),
(95, NULL, 'DIII400-80N/60-10181G'),
(96, NULL, 'CRND701/211-211/50-18(17)/0507'),
(97, NULL, 'BUF3'),
(98, NULL, 'HIIII400D'),
(99, NULL, 'CRND701/211-211/50'),
(100, NULL, 'VLN/B3X800/WFG-3X800/30'),
(101, NULL, 'CMIII–600Y/150C–10191W'),
(102, NULL, 'MRMIII800-11OF/C-10171W-MA7A'),
(103, NULL, 'VNL/B3X800/WF9-3X800/30'),
(104, NULL, 'RER-2-70-17'),
(105, NULL, 'MRFI1600P-80L/150T-10193W'),
(106, NULL, 'ARSD110/2400/5-18'),
(107, NULL, 'RFR-4-20-15'),
(108, NULL, 'MIII 500-100/C 11239WS'),
(109, NULL, 'UCFRT650/500'),
(110, NULL, 'MRMIII800-110F/C-18331W-MA7-B'),
(111, NULL, 'MRMIII800-110F/C-10171W-MA7A'),
(112, NULL, '3XMI501'),
(113, NULL, 'UZFRT 550/300'),
(114, NULL, 'MI 600-150/C'),
(115, NULL, '3XMI 600'),
(116, NULL, 'CRND110/2111/5-17'),
(117, NULL, 'DAIHEN'),
(118, NULL, 'M II,I 300301-4-110/C 10192G 1'),
(119, NULL, 'HIII-400D-123-10181W'),
(120, NULL, 'UCDRE1050/1800/III'),
(121, NULL, 'MR3XMI 600 150/D 12211W'),
(122, NULL, 'RER 2-70-17'),
(123, NULL, 'HIII      400'),
(124, NULL, 'HIII 400 D-123'),
(125, NULL, 'VLN/B3X800/WF9-3X800/30'),
(126, NULL, 'ARSD2302/S621-S621/50-22(20)06'),
(127, NULL, 'URS-LB6'),
(128, NULL, 'MRMIII'),
(129, NULL, 'TI1001-220/C-10193'),
(130, NULL, 'TI1002-220/C-10171'),
(131, NULL, 'MI800-170/B'),
(132, NULL, 'MI601-150/C'),
(133, NULL, 'CRND701'),
(134, NULL, '3xMI800'),
(135, NULL, '3xMI1200-150/C'),
(136, NULL, 'MI1230-170/C'),
(137, NULL, '3xMI600-110/C-12211W'),
(138, NULL, '3X MI600'),
(139, NULL, '3XMI 600 110/B12233W'),
(140, NULL, '3xMI802-170/C'),
(141, NULL, 'CRND 701/211-211/50-18(17)/05'),
(142, NULL, 'HIII400D-123-10181W'),
(143, NULL, 'MI1200-170/C-12211W'),
(144, NULL, 'HIII-400D-123'),
(145, NULL, '3xUCGRT650/600'),
(146, NULL, 'MRM'),
(147, NULL, 'MAC27'),
(148, NULL, 'MRMIII-800-110F/C-10171W-MA7A'),
(149, NULL, 'UZFRN500/300'),
(150, NULL, '3xMI600'),
(151, NULL, 'VIII500Y-30'),
(152, NULL, 'UZFRN 380/300'),
(153, NULL, 'VIII 500Y-60'),
(154, NULL, 'CRND701/211-211/50-18(17)0507'),
(155, NULL, 'MIII 600-110B/C'),
(156, NULL, 'UZFRN380/300…BUF3'),
(157, NULL, 'MII500Y1'),
(158, NULL, 'DRI 300-120/T2-1018G-DM2'),
(159, NULL, '3XARSD3252/321-321/50-22(20)/0'),
(160, NULL, '3XARSD 3252/321-321/50-22(20)/'),
(161, NULL, 'M1 600-150/C'),
(162, NULL, 'M1-800'),
(163, NULL, 'CRND701/211-211/50-18(17)/050'),
(164, NULL, 'MRMIII600-110B/C-10181G-MA7-A'),
(165, NULL, '3xMI802'),
(166, NULL, 'MRMIII 600-110B/C-10181G'),
(167, NULL, 'VIII 500Y-30'),
(168, NULL, '3xRER-2-70-17'),
(169, NULL, 'VCN/B 3X800/WWF5-3X800/30'),
(170, NULL, 'MI1203-170/C'),
(171, NULL, 'RMI 1502 300/C'),
(172, NULL, 'MI802'),
(173, NULL, 'VIIIY350'),
(174, NULL, 'MIII500Y-10191G'),
(175, NULL, 'RI2003-300/D-10 193'),
(176, NULL, 'CRND110/211/5-1'),
(177, NULL, 'MI1200-72.5/B-12233W'),
(178, NULL, 'ARSD1021'),
(179, NULL, 'MI1200-170/C-12233W'),
(180, NULL, 'MI1200-170/D-12233W'),
(181, NULL, '3xARSD3252/621-621/50-22(20)/0611'),
(182, NULL, '3xARSD3252/S621-S621/50-22(20)/0611'),
(183, NULL, '3xMI600-150/D'),
(184, NULL, 'UCGRT 650/1050/C'),
(185, NULL, '3xMI600-110/B'),
(186, NULL, 'BORSDL'),
(187, NULL, 'H111D 400'),
(188, NULL, 'LJND'),
(189, NULL, '3xVIII500Y-40'),
(190, NULL, 'SF3&WF'),
(191, NULL, 'CUB-URS'),
(192, NULL, 'VIII350Y-030-10181WR'),
(193, NULL, 'UCLRN 380/900'),
(194, NULL, 'MRMIII 800-110F/C-10171W  MA7A'),
(195, NULL, 'UCLRN380/900'),
(196, NULL, '2XVIIIY500 030 10171W'),
(197, NULL, 'VLN/83X800/WF9-3X800/30'),
(198, NULL, 'VLN/B3X800/WF9-3X800/300'),
(199, NULL, 'M1600-170/C'),
(200, NULL, 'UCLRE1050/1800 III'),
(201, NULL, 'RMI1502-300/C-10193W'),
(202, NULL, 'DRI-300-120,DRII-300-120'),
(203, NULL, '3XMI1203-170/C-12211W'),
(204, NULL, '3XARS 321'),
(205, NULL, '3XMSI 301'),
(206, NULL, 'VIIIY350-030-10181WR'),
(207, NULL, 'MI 601'),
(208, NULL, 'UCFRT 650/500'),
(209, NULL, 'VI11350'),
(210, NULL, '3XMI600-150/D-12211W'),
(211, NULL, '3XMI600-150/C-12211W'),
(212, NULL, '3XMI600-170/D-12211W'),
(213, NULL, '2XFK-M140G/C'),
(214, NULL, 'MA-E'),
(215, NULL, 'LJNDG 115/400-18P'),
(216, NULL, 'MI1500-123/C-12211W'),
(217, NULL, 'UCGRT 650/700 C SPECIAL'),
(218, NULL, 'TI 1002 200/C 10171W'),
(219, NULL, 'TI 1001 220/C 11093W'),
(220, NULL, '3X MI600 110/C 12211W'),
(221, NULL, 'UCGRT-650/600 IS'),
(222, NULL, '2XVIIIY500 0301 10171W'),
(223, NULL, '3XMI802-170/C-12233W'),
(224, NULL, 'VIII350Y'),
(225, NULL, 'VIIIY350-030/10/8/WR'),
(226, NULL, '3xMI600-170/D/12211W'),
(227, NULL, 'UZFRN'),
(228, NULL, 'CRND 110/1002/5-18'),
(229, NULL, 'RMI1502-300/C'),
(230, NULL, 'MRMIII800-110F/C-10171W'),
(231, NULL, 'CRND 701/211-211/50-18(17)/050'),
(232, NULL, 'CRND 110/211/5-18'),
(233, NULL, '3XMI 800 (MA7)'),
(234, NULL, '3xUCGRT650/1050/C');

-- --------------------------------------------------------

--
-- Table structure for table `oltc_oil_contaminations`
--

CREATE TABLE IF NOT EXISTS `oltc_oil_contaminations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `color` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `water_content` int(11) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `oltc_type` decimal(10,0) DEFAULT NULL,
  `transformer_id` int(11) DEFAULT NULL,
  `test_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oltc_oil_contaminations`
--

INSERT INTO `oltc_oil_contaminations` (`id`, `version`, `color`, `test_by`, `test_date`, `water_content`, `work_order`, `oltc_type`, `transformer_id`, `test_type`) VALUES
(1, NULL, 1.5, '???-?,???-?', '2010-10-04 00:00:00', 12, 'Test', NULL, NULL, NULL),
(2, NULL, 0.5, '???-?,???-?', '2010-08-04 00:00:00', 13, 'Test', NULL, NULL, NULL),
(3, NULL, 1, '???-?,???-?', '2010-07-05 00:00:00', 29, 'Test', NULL, NULL, NULL),
(4, NULL, 1, '???-?,???-?', '2010-07-05 00:00:00', 27, 'Test', NULL, NULL, NULL),
(5, NULL, 2, '???-?,???-?', '2009-12-03 00:00:00', 16, 'Test', NULL, NULL, NULL),
(6, NULL, 1.5, '???-?,???-?', '2010-08-03 00:00:00', 10, 'Test', NULL, NULL, NULL),
(7, NULL, 1, '???-?,???-?', '2010-08-03 00:00:00', 8, 'Test', NULL, NULL, NULL),
(8, NULL, 1, '???-?,???-?', '2011-07-03 00:00:00', 7, 'Test', NULL, NULL, NULL),
(9, NULL, 1, '???-?,???-?', '2011-07-03 00:00:00', 4, 'Test', NULL, NULL, NULL),
(10, NULL, 1, '???-?,???-?', '2009-12-03 00:00:00', 6, 'Test', NULL, NULL, NULL),
(11, NULL, 1, '???-?,???-?', '2010-07-05 00:00:00', 29, 'Test', NULL, NULL, NULL),
(12, NULL, 100, NULL, '2011-02-23 00:00:00', 12, '', NULL, 1, 0),
(13, NULL, 5, NULL, '2011-03-03 00:00:00', 23, '002', NULL, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `oltc_oil_qualities`
--

CREATE TABLE IF NOT EXISTS `oltc_oil_qualities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `u_start` int(11) DEFAULT NULL,
  `u_end` int(11) DEFAULT NULL,
  `start` float DEFAULT NULL,
  `end` float DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `oltc_oil_qualities`
--

INSERT INTO `oltc_oil_qualities` (`id`, `name`, `u_start`, `u_end`, `start`, `end`, `score`, `weight`, `created_at`, `updated_at`, `color_id`) VALUES
(1, 'xbar', 0, 69, 0, 30, 4, 3, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 4),
(2, 'xbar', 0, 69, 31, 35, 3, 3, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 3),
(3, 'xbar', 0, 69, 36, 45, 2, 3, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 2),
(4, 'xbar', 0, 69, 46, NULL, 1, 3, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 1),
(5, 'xbar', 69, 230, 0, 30, 4, 3, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 4),
(6, 'xbar', 69, 230, 31, 35, 3, 3, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 3),
(7, 'xbar', 69, 230, 36, 45, 2, 3, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 2),
(8, 'xbar', 69, 230, 46, NULL, 1, 3, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 1),
(9, 'xbar', 230, NULL, 0, 30, 4, 3, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 4),
(10, 'xbar', 230, NULL, 31, 35, 3, 3, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 3),
(11, 'xbar', 230, NULL, 36, 45, 2, 3, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 2),
(12, 'xbar', 230, NULL, 46, NULL, 1, 3, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 1),
(13, 'water_content', NULL, NULL, 0, 20, 1, 4, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 1),
(14, 'water_content', NULL, NULL, 20, 30, 2, 4, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 2),
(15, 'water_content', NULL, NULL, 31, 40, 3, 4, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 3),
(16, 'water_content', NULL, NULL, 41, 44, 4, 4, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 4),
(17, 'water_content', NULL, NULL, 45, NULL, 5, 4, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 5),
(18, 'color', NULL, NULL, NULL, 1, 1, 2, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 1),
(19, 'color', NULL, NULL, 1, 2.5, 2, 2, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 2),
(20, 'color', NULL, NULL, 2.6, 3.9, 3, 2, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 3),
(21, 'color', NULL, NULL, 4, 5.4, 4, 2, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 4),
(22, 'color', NULL, NULL, 5.5, NULL, 5, 2, '2011-02-26 17:35:23', '2011-02-26 17:35:23', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oltc_oil_quality_factors`
--

CREATE TABLE IF NOT EXISTS `oltc_oil_quality_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oltc_oil_quality_factors`
--

INSERT INTO `oltc_oil_quality_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', NULL, 20, '0,255,0', '2011-02-26 17:35:23', '2011-02-26 17:35:23'),
(2, 3, 'Acceptable', 21, 30, '0,0,255', '2011-02-26 17:35:23', '2011-02-26 17:35:23'),
(3, 2, 'Need Caution', 31, 40, '0,255,255', '2011-02-26 17:35:23', '2011-02-26 17:35:23'),
(4, 1, 'Poor', 41, 50, '255,146,0', '2011-02-26 17:35:23', '2011-02-26 17:35:23'),
(5, 0, 'Very Poor', 51, NULL, '255,0,0', '2011-02-26 17:35:23', '2011-02-26 17:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `oltc_type`
--

CREATE TABLE IF NOT EXISTS `oltc_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oltc_type`
--

INSERT INTO `oltc_type` (`id`, `version`, `description`) VALUES
(1, NULL, 'Vacuum LTC'),
(2, NULL, 'Resistive LTC');

-- --------------------------------------------------------

--
-- Table structure for table `performance_group`
--

CREATE TABLE IF NOT EXISTS `performance_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `lower_bound` double DEFAULT NULL,
  `meaning` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `upper_bound` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `performance_group`
--

INSERT INTO `performance_group` (`id`, `version`, `color`, `description`, `lower_bound`, `meaning`, `name`, `upper_bound`) VALUES
(1, NULL, 'yellow', 'Increase Diagnostic Testing', 51, 'Fair', 'Active Part', 70),
(2, NULL, 'blue', 'Normal Maintenance', 71, 'Good', 'Active Part', 85),
(3, NULL, 'orange', 'Start Planing Process to Replact/Rebuild the Risk', 31, 'Poor', 'Active Part', 50),
(4, NULL, 'green', 'Normal Maintenance', 86, 'Very Good', 'Active Part', 100),
(5, NULL, 'red', 'Immediately Assess Risk', 0, 'Very Poor', 'Active Part', 30),
(6, NULL, 'yellow', 'Increase Diagnostic Testing', 51, 'Fair', 'Arrester', 70),
(7, NULL, 'blue', 'Normal Maintenance', 71, 'Good', 'Arrester', 85),
(8, NULL, 'orange', 'Start Planing Process to Replact/Rebuild the Risk', 31, 'Poor', 'Arrester', 50),
(9, NULL, 'green', 'Normal Maintenance', 86, 'Very Good', 'Arrester', 100),
(10, NULL, 'red', 'Immediately Assess Risk', 0, 'Very Poor', 'Arrester', 30),
(11, NULL, 'yellow', 'Increase Diagnostic Testing', 51, 'Fair', 'Bushing', 70),
(12, NULL, 'blue', 'Normal Maintenance', 71, 'Good', 'Bushing', 85),
(13, NULL, 'orange', 'Start Planing Process to Replact/Rebuild the Risk', 31, 'Poor', 'Bushing', 50),
(14, NULL, 'green', 'Normal Maintenance', 86, 'Very Good', 'Bushing', 100),
(15, NULL, 'red', 'Immediately Assess Risk', 0, 'Very Poor', 'Bushing', 30),
(16, NULL, 'yellow', 'Increase Diagnostic Testing', 51, 'Fair', 'Insulating Oil', 70),
(17, NULL, 'blue', 'Normal Maintenance', 71, 'Good', 'Insulating Oil', 85),
(18, NULL, 'orange', 'Start Planing Process to Replact/Rebuild the Risk', 31, 'Poor', 'Insulating Oil', 50),
(19, NULL, 'green', 'Normal Maintenance', 86, 'Very Good', 'Insulating Oil', 100),
(20, NULL, 'red', 'Immediately Assess Risk', 0, 'Very Poor', 'Insulating Oil', 30),
(21, NULL, 'yellow', 'Increase Diagnostic Testing', 51, 'Fair', 'OLTC', 70),
(22, NULL, 'blue', 'Normal Maintenance', 71, 'Good', 'OLTC', 85),
(23, NULL, 'orange', 'Start Planing Process to Replact/Rebuild the Risk', 31, 'Poor', 'OLTC', 50),
(24, NULL, 'green', 'Normal Maintenance', 86, 'Very Good', 'OLTC', 100),
(25, NULL, 'red', 'Immediately Assess Risk', 0, 'Very Poor', 'OLTC', 30),
(26, NULL, 'yellow', 'Increase Diagnostic Testing', 51, 'Fair', 'Overall Condition', 70),
(27, NULL, 'blue', 'Normal Maintenance', 71, 'Good', 'Overall Condition', 85),
(28, NULL, 'orange', 'Start Planing Process to Replact/Rebuild the Risk', 31, 'Poor', 'Overall Condition', 50),
(29, NULL, 'green', 'Normal Maintenance', 86, 'Very Good', 'Overall Condition', 100),
(30, NULL, 'red', 'Immediately Assess Risk', 0, 'Very Poor', 'Overall Condition', 30),
(31, NULL, 'yellow', 'Increase Diagnostic Testing', 51, 'Fair', 'Lightning Arrester', 70),
(32, NULL, 'blue', 'Normal Maintenance', 71, 'Good', 'Lightning Arrester', 85),
(33, NULL, 'orange', 'Start Planing Process to Replact/Rebuild the Risk', 31, 'Poor', 'Lightning Arrester', 50),
(34, NULL, 'green', 'Normal Maintenance', 86, 'Very Good', 'Lightning Arrester', 100),
(35, NULL, 'red', 'Immediately Assess Risk', 0, 'Very Poor', 'Lightning Arrester', 30),
(36, NULL, 'yellow', 'Increase Diagnostic Testing', 51, 'Fair', 'Visual Bushing', 70),
(37, NULL, 'blue', 'Normal Maintenance', 71, 'Good', 'Visual Bushing', 85),
(38, NULL, 'orange', 'Start Planing Process to Replact/Rebuild the Risk', 31, 'Poor', 'Visual Bushing', 50),
(39, NULL, 'green', 'Normal Maintenance', 86, 'Very Good', 'Visual Bushing', 100),
(40, NULL, 'red', 'Immediately Assess Risk', 0, 'Very Poor', 'Visual Bushing', 30),
(41, NULL, 'yellow', 'Increase Diagnostic Testing', 51, 'Fair', 'Visual Inspection', 70),
(42, NULL, 'blue', 'Normal Maintenance', 71, 'Good', 'Visual Inspection', 85),
(43, NULL, 'orange', 'Start Planing Process to Replact/Rebuild the Risk', 31, 'Poor', 'Visual Inspection', 50),
(44, NULL, 'green', 'Normal Maintenance', 86, 'Very Good', 'Visual Inspection', 100),
(45, NULL, 'red', 'Immediately Assess Risk', 0, 'Very Poor', 'Visual Inspection', 30),
(46, NULL, 'yellow', 'Increase Diagnostic Testing', 51, 'Fair', 'Overall Conditions', 70),
(47, NULL, 'blue', 'Normal Maintenance', 71, 'Good', 'Overall Conditions', 85),
(48, NULL, 'orange', 'Start Planing Process to Replact/Rebuild the Risk', 31, 'Poor', 'Overall Conditions', 50),
(49, NULL, 'green', 'Normal Maintenance', 86, 'Very Good', 'Overall Conditions', 100),
(50, NULL, 'red', 'Immediately Assess Risk', 0, 'Very Poor', 'Overall Conditions', 30);

-- --------------------------------------------------------

--
-- Table structure for table `perform_draft_result`
--

CREATE TABLE IF NOT EXISTS `perform_draft_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activehv` double DEFAULT NULL,
  `activehvcolor` varchar(255) DEFAULT NULL,
  `activelv` double DEFAULT NULL,
  `activelvcolor` varchar(255) DEFAULT NULL,
  `activetv` double DEFAULT NULL,
  `activetvcolor` varchar(255) DEFAULT NULL,
  `activepart` double DEFAULT NULL,
  `activepart_color` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `arresterhv` double DEFAULT NULL,
  `arresterhvcolor` varchar(255) DEFAULT NULL,
  `arresterlv` double DEFAULT NULL,
  `arresterlvcolor` varchar(255) DEFAULT NULL,
  `arrestertv` double DEFAULT NULL,
  `arrestertvcolor` varchar(255) DEFAULT NULL,
  `bushinghv` double DEFAULT NULL,
  `bushinghvcolor` varchar(255) DEFAULT NULL,
  `bushinglv` double DEFAULT NULL,
  `bushinglvcolor` varchar(255) DEFAULT NULL,
  `bushingtv` double DEFAULT NULL,
  `bushingtvcolor` varchar(255) DEFAULT NULL,
  `eleccor` double DEFAULT NULL,
  `eleccor_color` varchar(255) DEFAULT NULL,
  `elecdcrhv1` double DEFAULT NULL,
  `elecdcrhv1color` varchar(255) DEFAULT NULL,
  `elecdcrhv2` double DEFAULT NULL,
  `elecdcrhv2color` varchar(255) DEFAULT NULL,
  `elecdcrlv1` double DEFAULT NULL,
  `elecdcrlv1color` varchar(255) DEFAULT NULL,
  `elecdcrlv2` double DEFAULT NULL,
  `elecdcrlv2color` varchar(255) DEFAULT NULL,
  `elecdcrtv1` double DEFAULT NULL,
  `elecdcrtv1color` varchar(255) DEFAULT NULL,
  `elecdcrtv2` double DEFAULT NULL,
  `elecdcrtv2color` varchar(255) DEFAULT NULL,
  `elecexchv1` double DEFAULT NULL,
  `elecexchv1color` varchar(255) DEFAULT NULL,
  `elecexchv2` double DEFAULT NULL,
  `elecexchv2color` varchar(255) DEFAULT NULL,
  `elecexclv1` double DEFAULT NULL,
  `elecexclv1color` varchar(255) DEFAULT NULL,
  `elecexclv2` double DEFAULT NULL,
  `elecexclv2color` varchar(255) DEFAULT NULL,
  `elecexctv` double DEFAULT NULL,
  `elecexctvcolor` varchar(255) DEFAULT NULL,
  `elecimpsinglehl` double DEFAULT NULL,
  `elecimpsinglehlcolor` varchar(255) DEFAULT NULL,
  `elecimpsingleht` double DEFAULT NULL,
  `elecimpsinglehtcolor` varchar(255) DEFAULT NULL,
  `elecimpsinglelt` double DEFAULT NULL,
  `elecimpsingleltcolor` varchar(255) DEFAULT NULL,
  `elecimpthreehl` double DEFAULT NULL,
  `elecimpthreehlcolor` varchar(255) DEFAULT NULL,
  `elecimpthreeht` double DEFAULT NULL,
  `elecimpthreehtcolor` varchar(255) DEFAULT NULL,
  `elecimpthreelt` double DEFAULT NULL,
  `elecimpthreeltcolor` varchar(255) DEFAULT NULL,
  `elecinsautohv` double DEFAULT NULL,
  `elecinsautohvcolor` varchar(255) DEFAULT NULL,
  `elecinsautotv` double DEFAULT NULL,
  `elecinsautotvcolor` varchar(255) DEFAULT NULL,
  `elecinsthreehv` double DEFAULT NULL,
  `elecinsthreehvcolor` varchar(255) DEFAULT NULL,
  `elecinsthreelv` double DEFAULT NULL,
  `elecinsthreelvcolor` varchar(255) DEFAULT NULL,
  `elecinsthreetv` double DEFAULT NULL,
  `elecinsthreetvcolor` varchar(255) DEFAULT NULL,
  `elecinstwohv` double DEFAULT NULL,
  `elecinstwohvcolor` varchar(255) DEFAULT NULL,
  `elecinstwolv` double DEFAULT NULL,
  `elecinstwolvcolor` varchar(255) DEFAULT NULL,
  `elecrathl` double DEFAULT NULL,
  `elecrathlcolor` varchar(255) DEFAULT NULL,
  `elecratht` double DEFAULT NULL,
  `elecrathtcolor` varchar(255) DEFAULT NULL,
  `elecratlt` double DEFAULT NULL,
  `elecratltcolor` varchar(255) DEFAULT NULL,
  `oilaging` double DEFAULT NULL,
  `oilaging_color` varchar(255) DEFAULT NULL,
  `oilcontamination` double DEFAULT NULL,
  `oilcontamination_color` varchar(255) DEFAULT NULL,
  `oildga` double DEFAULT NULL,
  `oildga_color` varchar(255) DEFAULT NULL,
  `oilfuran` double DEFAULT NULL,
  `oilfuran_color` varchar(255) DEFAULT NULL,
  `oilpart` double DEFAULT NULL,
  `oilpart_color` varchar(255) DEFAULT NULL,
  `oltccontact` double DEFAULT NULL,
  `oltccontact_color` varchar(255) DEFAULT NULL,
  `oltcdga` double DEFAULT NULL,
  `oltcdga_color` varchar(255) DEFAULT NULL,
  `oltcdielectric` double DEFAULT NULL,
  `oltcdielectric_color` varchar(255) DEFAULT NULL,
  `oltcoilcontamination` double DEFAULT NULL,
  `oltcoilcontamination_color` varchar(255) DEFAULT NULL,
  `oltcpart` double DEFAULT NULL,
  `oltcpart_color` varchar(255) DEFAULT NULL,
  `overall` double DEFAULT NULL,
  `overall_color` varchar(255) DEFAULT NULL,
  `quater` int(11) DEFAULT NULL,
  `recordyear` varchar(255) DEFAULT NULL,
  `vbushing` double DEFAULT NULL,
  `vbushing_color` varchar(255) DEFAULT NULL,
  `vconservator` double DEFAULT NULL,
  `vconservator_color` varchar(255) DEFAULT NULL,
  `vgeneral` double DEFAULT NULL,
  `vgeneral_color` varchar(255) DEFAULT NULL,
  `vhotline` double DEFAULT NULL,
  `vhotline_color` varchar(255) DEFAULT NULL,
  `vlightning` double DEFAULT NULL,
  `vlightning_color` varchar(255) DEFAULT NULL,
  `vloadhistory` double DEFAULT NULL,
  `vloadhistory_color` varchar(255) DEFAULT NULL,
  `vmaintank` double DEFAULT NULL,
  `vmaintank_color` varchar(255) DEFAULT NULL,
  `vngr` double DEFAULT NULL,
  `vngr_color` varchar(255) DEFAULT NULL,
  `voilquality` double DEFAULT NULL,
  `voilquality_color` varchar(255) DEFAULT NULL,
  `voltccompartment` double DEFAULT NULL,
  `voltccompartment_color` varchar(255) DEFAULT NULL,
  `voltccontrolcab` double DEFAULT NULL,
  `voltccontrolcab_color` varchar(255) DEFAULT NULL,
  `voltcdga` double DEFAULT NULL,
  `voltcdga_color` varchar(255) DEFAULT NULL,
  `voltcoilquality` double DEFAULT NULL,
  `voltcoilquality_color` varchar(255) DEFAULT NULL,
  `vpowerfactor` double DEFAULT NULL,
  `vpowerfactor_color` varchar(255) DEFAULT NULL,
  `vradiatorcooling` double DEFAULT NULL,
  `vradiatorcooling_color` varchar(255) DEFAULT NULL,
  `vregulatingpt` double DEFAULT NULL,
  `vregulatingpt_color` varchar(255) DEFAULT NULL,
  `vthermoscan` double DEFAULT NULL,
  `vthermoscan_color` varchar(255) DEFAULT NULL,
  `vtranscontrolcab` double DEFAULT NULL,
  `vtranscontrolcab_color` varchar(255) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `perform_draft_result`
--

INSERT INTO `perform_draft_result` (`id`, `activehv`, `activehvcolor`, `activelv`, `activelvcolor`, `activetv`, `activetvcolor`, `activepart`, `activepart_color`, `version`, `arresterhv`, `arresterhvcolor`, `arresterlv`, `arresterlvcolor`, `arrestertv`, `arrestertvcolor`, `bushinghv`, `bushinghvcolor`, `bushinglv`, `bushinglvcolor`, `bushingtv`, `bushingtvcolor`, `eleccor`, `eleccor_color`, `elecdcrhv1`, `elecdcrhv1color`, `elecdcrhv2`, `elecdcrhv2color`, `elecdcrlv1`, `elecdcrlv1color`, `elecdcrlv2`, `elecdcrlv2color`, `elecdcrtv1`, `elecdcrtv1color`, `elecdcrtv2`, `elecdcrtv2color`, `elecexchv1`, `elecexchv1color`, `elecexchv2`, `elecexchv2color`, `elecexclv1`, `elecexclv1color`, `elecexclv2`, `elecexclv2color`, `elecexctv`, `elecexctvcolor`, `elecimpsinglehl`, `elecimpsinglehlcolor`, `elecimpsingleht`, `elecimpsinglehtcolor`, `elecimpsinglelt`, `elecimpsingleltcolor`, `elecimpthreehl`, `elecimpthreehlcolor`, `elecimpthreeht`, `elecimpthreehtcolor`, `elecimpthreelt`, `elecimpthreeltcolor`, `elecinsautohv`, `elecinsautohvcolor`, `elecinsautotv`, `elecinsautotvcolor`, `elecinsthreehv`, `elecinsthreehvcolor`, `elecinsthreelv`, `elecinsthreelvcolor`, `elecinsthreetv`, `elecinsthreetvcolor`, `elecinstwohv`, `elecinstwohvcolor`, `elecinstwolv`, `elecinstwolvcolor`, `elecrathl`, `elecrathlcolor`, `elecratht`, `elecrathtcolor`, `elecratlt`, `elecratltcolor`, `oilaging`, `oilaging_color`, `oilcontamination`, `oilcontamination_color`, `oildga`, `oildga_color`, `oilfuran`, `oilfuran_color`, `oilpart`, `oilpart_color`, `oltccontact`, `oltccontact_color`, `oltcdga`, `oltcdga_color`, `oltcdielectric`, `oltcdielectric_color`, `oltcoilcontamination`, `oltcoilcontamination_color`, `oltcpart`, `oltcpart_color`, `overall`, `overall_color`, `quater`, `recordyear`, `vbushing`, `vbushing_color`, `vconservator`, `vconservator_color`, `vgeneral`, `vgeneral_color`, `vhotline`, `vhotline_color`, `vlightning`, `vlightning_color`, `vloadhistory`, `vloadhistory_color`, `vmaintank`, `vmaintank_color`, `vngr`, `vngr_color`, `voilquality`, `voilquality_color`, `voltccompartment`, `voltccompartment_color`, `voltccontrolcab`, `voltccontrolcab_color`, `voltcdga`, `voltcdga_color`, `voltcoilquality`, `voltcoilquality_color`, `vpowerfactor`, `vpowerfactor_color`, `vradiatorcooling`, `vradiatorcooling_color`, `vregulatingpt`, `vregulatingpt_color`, `vthermoscan`, `vthermoscan_color`, `vtranscontrolcab`, `vtranscontrolcab_color`, `transformer`) VALUES
(1, 77.1399993896484, 'red', 60.5400009155273, 'red', 61.8199996948242, 'red', 65.8499984741211, 'yellow', NULL, 3, 'green', 3, 'green', 3, 'green', 0, 'green', 0, 'green', 0, 'green', 60, 'yellow', 5, 'red', 5, 'red', 2, 'green', 1, 'green', 5, 'red', 5, 'red', 5, 'red', 5, 'red', 5, 'red', 5, 'red', 3, 'yellow', 5, 'red', 1, 'green', 1, 'green', 4, 'red', 5, 'red', 5, 'red', 0, 'black', 0, 'black', 5, 'red', 5, 'red', 5, 'red', 0, 'black', 0, 'black', 5, 'red', 5, 'red', 5, 'red', 3, 'green', 2, 'green', 4, 'green', 4, 'green', 100, 'green', 4, 'green', 4, 'green', 0, 'green', 3, 'green', 65, 'yellow', 65.3167724609375, 'yellow', 2, '2010', 4, 'green', 1, 'orange', 1, 'orange', 0, 'red', 4, 'green', 2, 'yellow', 1, 'orange', 1, 'orange', 1, 'orange', 0, 'red', 2, 'yellow', 4, 'green', 0, 'black', 0, 'red', 1, 'orange', 1, 'orange', 3, 'green', 1, 'orange', '343'),
(2, 67.3499984741211, 'red', 56.7599983215332, 'red', 46.6699981689453, 'orange', 57.234001159668, 'yellow', 0, 3, 'green', 3, 'green', 3, 'green', 0, 'green', 0, 'green', 0, 'green', 60, 'yellow', 5, 'red', 1, 'green', 5, 'red', 1, 'green', 5, 'red', 1, 'green', 2, 'green', 5, 'red', 1, 'green', 1, 'green', 1, 'green', 2, 'green', 1, 'green', 5, 'red', 5, 'red', 5, 'red', 5, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 5, 'red', 5, 'red', 5, 'red', 2, 'green', 2, 'green', 3, 'green', 2, 'green', 3, 'blue', 0, 'red', 100, 'green', 4, 'green', 4, 'green', 0, 'green', 3, 'green', 65, 'yellow', 67.8571472167969, 'yellow', 2, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 1, 'orange', 0, 'black', 0, 'black', 4, 'green', 0, 'black', 4, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '96'),
(3, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 40, 'orange', 3, '2010', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 4, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '1'),
(4, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'red', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '2'),
(5, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'red', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '3'),
(6, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'red', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '4'),
(7, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'red', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '5'),
(8, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'red', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '6'),
(9, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'red', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '7'),
(10, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'red', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '8'),
(11, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'red', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '9'),
(12, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'red', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '10'),
(13, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'red', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '11'),
(14, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'red', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '12'),
(15, 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'red', 0, 'red', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '13'),
(16, 62.4500007629395, 'red', 64.1699981689453, 'red', 54.5499992370605, 'red', 60.351001739502, 'yellow', 0, 3, 'green', 3, 'green', 3, 'green', 0, 'green', 0, 'green', 0, 'green', 60, 'yellow', 3, 'yellow', 1, 'green', 2, 'green', 3, 'yellow', 3, 'yellow', 1, 'green', 5, 'red', 3, 'yellow', 5, 'red', 5, 'red', 5, 'red', 2, 'green', 2, 'green', 2, 'green', 5, 'red', 5, 'red', 5, 'red', 5, 'red', 5, 'red', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 5, 'red', 1, 'green', 1, 'green', 3, 'green', 3, 'green', 3, 'blue', 4, 'green', 150, 'green', 4, 'green', 4, 'green', 3, 'green', 3, 'green', 80, 'blue', 70, 'yellow', 3, '2010', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 0, 'black', 1, 'orange', 0, 'black', 0, 'black', 4, 'green', 0, 'black', 4, 'green', 0, 'black', 0, 'black', 0, 'black', 0, 'black', '167');

-- --------------------------------------------------------

--
-- Table structure for table `perform_part`
--

CREATE TABLE IF NOT EXISTS `perform_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `wf` double DEFAULT NULL,
  `perform_group` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `perform_part`
--

INSERT INTO `perform_part` (`id`, `version`, `name`, `wf`, `perform_group`) VALUES
(1, NULL, 'Core', 10, '1'),
(2, NULL, 'HV Winding', 30, '1'),
(3, NULL, 'LV Winding', 30, '1'),
(4, NULL, 'TV Winding', 30, '1'),
(5, NULL, 'H1', 11.1000003814697, '6'),
(6, NULL, 'H2', 11.1000003814697, '6'),
(7, NULL, 'H3', 11.1000003814697, '6'),
(8, NULL, 'X1', 11.1000003814697, '6'),
(9, NULL, 'X2', 11.1000003814697, '6'),
(10, NULL, 'X3', 11.1000003814697, '6'),
(11, NULL, 'Y1', 11.1000003814697, '6'),
(12, NULL, 'Y2', 11.1000003814697, '6'),
(13, NULL, 'Y3', 11.1000003814697, '6'),
(14, NULL, 'H0', 9.09000015258789, '11'),
(15, NULL, 'H1', 9.09000015258789, '11'),
(16, NULL, 'H2', 9.09000015258789, '11'),
(17, NULL, 'H3', 9.09000015258789, '11'),
(18, NULL, 'X0', 9.09000015258789, '11'),
(19, NULL, 'X1', 9.09000015258789, '11'),
(20, NULL, 'X2', 9.09000015258789, '11'),
(21, NULL, 'X3', 9.09000015258789, '11'),
(22, NULL, 'Y1', 9.09000015258789, '11'),
(23, NULL, 'Y2', 9.09000015258789, '11'),
(24, NULL, 'Y3', 9.09000015258789, '11'),
(25, NULL, 'Aging Product', 0, '16'),
(26, NULL, 'Contamination', 100, '16'),
(27, NULL, 'HV', 33.3300018310547, '31'),
(28, NULL, 'LV', 33.3300018310547, '31'),
(29, NULL, 'TV', 33.3300018310547, '31'),
(30, NULL, 'Contact', 10, '21'),
(31, NULL, 'Contamination', 60, '21'),
(32, NULL, 'Dga', 10, '21'),
(33, NULL, 'Dielectric Property', 20, '21'),
(34, NULL, '1', 10, '26'),
(35, NULL, '10', 1, '26'),
(36, NULL, '11', 1, '26'),
(37, NULL, '12', 1, '26'),
(38, NULL, '13', 2, '26'),
(39, NULL, '14', 1, '26'),
(40, NULL, '15', 1, '26'),
(41, NULL, '16', 1, '26'),
(42, NULL, '17', 1, '26'),
(43, NULL, '18', 1, '26'),
(44, NULL, '19', 6, '26'),
(45, NULL, '2', 10, '26'),
(46, NULL, '20', 3, '26'),
(47, NULL, '3', 10, '26'),
(48, NULL, '4', 10, '26'),
(49, NULL, '5', 8, '26'),
(50, NULL, '6', 6, '26'),
(51, NULL, '7', 1, '26'),
(52, NULL, '8', 5, '26'),
(53, NULL, '9', 3, '26'),
(54, NULL, 'OLTC', 40, '46'),
(55, NULL, 'Others', 60, '46'),
(56, NULL, 'HV', 33.3300018310547, '36'),
(57, NULL, 'LV', 33.3300018310547, '36'),
(58, NULL, 'TV', 33.3300018310547, '36');

-- --------------------------------------------------------

--
-- Table structure for table `perform_score`
--

CREATE TABLE IF NOT EXISTS `perform_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `evaluation` varchar(255) DEFAULT NULL,
  `more_perform` varchar(255) DEFAULT NULL,
  `score1max` double DEFAULT NULL,
  `score1meaning` varchar(255) DEFAULT NULL,
  `score1min` double DEFAULT NULL,
  `score2max` double DEFAULT NULL,
  `score2meaning` varchar(255) DEFAULT NULL,
  `score2min` double DEFAULT NULL,
  `score3max` double DEFAULT NULL,
  `score3meaning` varchar(255) DEFAULT NULL,
  `score3min` double DEFAULT NULL,
  `score4max` double DEFAULT NULL,
  `score4meaning` varchar(255) DEFAULT NULL,
  `score4min` double DEFAULT NULL,
  `score5max` double DEFAULT NULL,
  `score5meaning` varchar(255) DEFAULT NULL,
  `score5min` double DEFAULT NULL,
  `score6max` double DEFAULT NULL,
  `score6meaning` varchar(255) DEFAULT NULL,
  `score6min` double DEFAULT NULL,
  `variable` varchar(255) DEFAULT NULL,
  `variable_max` double DEFAULT NULL,
  `variable_min` double DEFAULT NULL,
  `wi` int(11) DEFAULT NULL,
  `perform_group` decimal(10,0) DEFAULT NULL,
  `sub_group` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `perform_score`
--

INSERT INTO `perform_score` (`id`, `version`, `evaluation`, `more_perform`, `score1max`, `score1meaning`, `score1min`, `score2max`, `score2meaning`, `score2min`, `score3max`, `score3meaning`, `score3min`, `score4max`, `score4meaning`, `score4min`, `score5max`, `score5meaning`, `score5min`, `score6max`, `score6meaning`, `score6min`, `variable`, `variable_max`, `variable_min`, `wi`, `perform_group`, `sub_group`) VALUES
(1, NULL, NULL, 'Core Insulation Resistance', 10000, 'Very Good', 100.01000213623, 0, NULL, 0, 100, 'Acceptable', 10, 0, NULL, 0, 9.98999977111816, 'Very Poor', 0, 0, NULL, 0, NULL, 0, 0, 5, '1', '1'),
(2, NULL, '%Max. Idiff : 200V', 'Exciting Current', 1.99000000953674, 'Very Good', 0, 4.98999977111816, 'Good', 2, 7.98999977111816, 'Acceptable', 5, 10, 'Poor', 8, 100, 'Very Poor', 10.0100002288818, 0, NULL, 0, 'I rated', 50, 0, 3, '1', '6'),
(3, NULL, '%Max. Idiff : 200V', 'Exciting Current', 1.0900000333786, 'Very Good', 0, 2.58999991416931, 'Good', 1.10000002384186, 3.58999991416931, 'Acceptable', 2.59999990463257, 5, 'Poor', 3.59999990463257, 100, 'Very Poor', 5.01000022888184, 0, NULL, 0, 'I rated', 10000, 50.0099983215332, 3, '1', '6'),
(4, NULL, '%Max. Idiff : 10kV', 'Exciting Current', 1.99000000953674, 'Very Good', 0, 4.98999977111816, 'Good', 2, 7.98999977111816, 'Acceptable', 5, 10, 'Poor', 8, 100, 'Very Poor', 10.0100002288818, 0, NULL, 0, 'I rated', 50, 0, 3, '1', '6'),
(5, NULL, '%Max. Idiff : 10kV', 'Exciting Current', 1.0900000333786, 'Very Good', 0, 2.58999991416931, 'Good', 1.10000002384186, 3.58999991416931, 'Acceptable', 2.59999990463257, 5, 'Poor', 3.59999990463257, 100, 'Very Poor', 5.01000022888184, 0, NULL, 0, 'I rated', 10000, 50.0099983215332, 3, '1', '6'),
(6, NULL, '%Max. Deviation : HV to LV', '1 Phase Leakage Impedance', 0.400000005960464, 'Very Good', 0, 1.5, 'Good', 0.5, 2, 'Acceptable', 1.60000002384186, 3, 'Poor', 2.09999990463257, 100, 'Very Poor', 3.09999990463257, 0, NULL, 0, NULL, 0, 0, 4, '1', '6'),
(7, NULL, '%Max. Deviation : HV to TV', '1 Phase Leakage Impedance', 0.400000005960464, 'Very Good', 0, 1.5, 'Good', 0.5, 2, 'Acceptable', 1.60000002384186, 3, 'Poor', 2.09999990463257, 100, 'Very Poor', 3.09999990463257, 0, NULL, 0, NULL, 0, 0, 4, '1', '6'),
(8, NULL, '%Max. Deviation : HV to LV', '3 Phase Equivalent Leakage', 0.400000005960464, 'Very Good', 0, 1.5, 'Good', 0.5, 2, 'Acceptable', 1.60000002384186, 3, 'Poor', 2.09999990463257, 100, 'Very Poor', 3.09999990463257, 0, NULL, 0, NULL, 0, 0, 4, '1', '6'),
(9, NULL, '%Max. Deviation : HV to TV', '3 Phase Equivalent Leakage', 0.400000005960464, 'Very Good', 0, 1.5, 'Good', 0.5, 2, 'Acceptable', 1.60000002384186, 3, 'Poor', 2.09999990463257, 100, 'Very Poor', 3.09999990463257, 0, NULL, 0, NULL, 0, 0, 4, '1', '6'),
(10, NULL, '%Max. Error : HV to LV', 'Ratio', 0.0900000035762787, 'Very Good', 0, 0.200000002980232, 'Good', 0.100000001490116, 0.400000005960464, 'Acceptable', 0.300000011920929, 0.5, 'Poor', 0.409999996423721, 100, 'Very Poor', 0.600000023841858, 0, NULL, 0, NULL, 0, 0, 4, '1', '6'),
(11, NULL, '%Max. Error : HV to TV', 'Ratio', 0.0900000035762787, 'Very Good', 0, 0.200000002980232, 'Good', 0.100000001490116, 0.400000005960464, 'Acceptable', 0.300000011920929, 0.5, 'Poor', 0.409999996423721, 100, 'Very Poor', 0.600000023841858, 0, NULL, 0, NULL, 0, 0, 4, '1', '6'),
(12, NULL, '%Max. Error Between Phase', 'DC Winding Resistance', 1.0900000333786, 'Very Good', 0, 2.58999991416931, 'Good', 1.10000002384186, 3.58999991416931, 'Acceptable', 2.5, 5, 'Poor', 3.59999990463257, 100, 'Very Poor', 5.01000022888184, 0, NULL, 0, NULL, 0, 0, 3, '1', '6'),
(13, NULL, '%Max. Error Between Commissioning&Phase', 'DC Winding Resistance', 1.0900000333786, 'Very Good', 0, 2.58999991416931, 'Good', 1.10000002384186, 3.58999991416931, 'Acceptable', 2.59999990463257, 5, 'Poor', 3.59999990463257, 100, 'Very Poor', 5.01000022888184, 0, NULL, 0, NULL, 0, 0, 3, '1', '6'),
(14, NULL, '%Max. PF', 'Winding Insulation', 0.400000005960464, 'Very Good', 0, 1, 'Good', 0.5, 1.5, 'Acceptable', 1.10000002384186, 2, 'Poor', 1.60000002384186, 100, 'Very Poor', 2.09999990463257, 0, NULL, 0, NULL, 0, 0, 5, '1', '6'),
(15, NULL, '%Max. Cap.', 'Winding Insulation', 19.9899997711182, 'Very Good', 0, 0, NULL, 0, 0, NULL, 0, 0, NULL, 0, 10000, 'Very Poor', 20, 0, NULL, 0, NULL, 0, 0, 4, '1', '6'),
(16, NULL, 'PI', 'Winding Insulation', 10000, 'Very Good', 2.09999990463257, 2, 'Good', 1.50999999046326, 1.5, 'Acceptable', 1.25999999046326, 1.25, 'Poor', 1, 0.899999976158142, 'Very Poor', 0, 0, NULL, 0, NULL, 0, 0, 4, '1', '6'),
(17, NULL, '%Max. Idiff : 200V', 'Exciting Current', 1.99000000953674, 'Very Good', 0, 4.98999977111816, 'Good', 2, 7.98999977111816, 'Acceptable', 5, 10, 'Poor', 8, 100, 'Very Poor', 10.0100002288818, 0, NULL, 0, 'I rated', 50, 0, 3, '1', '11'),
(18, NULL, '%Max. Idiff : 200V', 'Exciting Current', 1.0900000333786, 'Very Good', 0, 2.58999991416931, 'Good', 1.10000002384186, 3.58999991416931, 'Acceptable', 2.59999990463257, 5, 'Poor', 3.59999990463257, 100, 'Very Poor', 5.01000022888184, 0, NULL, 0, 'I rated', 10000, 50.0099983215332, 3, '1', '11'),
(19, NULL, '%Max. Idiff : 10kV', 'Exciting Current', 1.99000000953674, 'Very Good', 0, 4.98999977111816, 'Good', 2, 7.98999977111816, 'Acceptable', 5, 10, 'Poor', 8, 100, 'Very Poor', 10.0100002288818, 0, NULL, 0, 'I rated', 50, 0, 3, '1', '11'),
(20, NULL, '%Max. Idiff : 10kV', 'Exciting Current', 1.0900000333786, 'Very Good', 0, 2.58999991416931, 'Good', 1.10000002384186, 3.58999991416931, 'Acceptable', 2.59999990463257, 5, 'Poor', 3.59999990463257, 100, 'Very Poor', 5.01000022888184, 0, NULL, 0, 'I rated', 10000, 50.0099983215332, 3, '1', '11'),
(21, NULL, '%Max. Deviation : LV to TV', '1 Phase Leakage Impedance', 0.400000005960464, 'Very Good', 0, 1.5, 'Good', 0.5, 2, 'Acceptable', 1.60000002384186, 3, 'Poor', 2.09999990463257, 100, 'Very Poor', 3.09999990463257, 0, NULL, 0, NULL, 0, 0, 4, '1', '11'),
(22, NULL, '%Max. Deviation : LV to TV', '3 Phase Equivalent Leakage', 0.400000005960464, 'Very Good', 0, 1.5, 'Good', 0.5, 2, 'Acceptable', 1.60000002384186, 3, 'Poor', 2.09999990463257, 100, 'Very Poor', 3.09999990463257, 0, NULL, 0, NULL, 0, 0, 4, '1', '11'),
(23, NULL, '%Max. Error : LV to TV', 'Ratio', 0.0900000035762787, 'Very Good', 0, 0.200000002980232, 'Good', 0.100000001490116, 0.400000005960464, 'Acceptable', 0.300000011920929, 0.5, 'Poor', 0.409999996423721, 100, 'Very Poor', 0.600000023841858, 0, NULL, 0, NULL, 0, 0, 4, '1', '11'),
(24, NULL, '%Max. Error Between Phase', 'DC Winding Resistance', 1.0900000333786, 'Very Good', 0, 2.58999991416931, 'Good', 1.10000002384186, 3.58999991416931, 'Acceptable', 2.59999990463257, 5, 'Poor', 3.59999990463257, 100, 'Very Poor', 5.09999990463257, 0, NULL, 0, NULL, 0, 0, 3, '1', '11'),
(25, NULL, '%Max. Error Between Commissioning&Phase', 'DC Winding Resistance', 1.0900000333786, 'Very Good', 0, 2.58999991416931, 'Good', 1.10000002384186, 3.58999991416931, 'Acceptable', 2.59999990463257, 5, 'Poor', 3.59999990463257, 100, 'Very Poor', 5.09999990463257, 0, NULL, 0, NULL, 0, 0, 3, '1', '11'),
(26, NULL, '%Max. PF', 'Winding Insulation', 0.400000005960464, 'Very Good', 0, 1, 'Good', 0.5, 1.5, 'Acceptable', 1.10000002384186, 2, 'Poor', 1.60000002384186, 100, 'Very Poor', 2.09999990463257, 0, NULL, 0, NULL, 0, 0, 5, '1', '11'),
(27, NULL, '%Max. Cap.', 'Winding Insulation', 19.9899997711182, 'Very Good', 0, 0, NULL, 0, 0, NULL, 0, 0, NULL, 0, 10000, 'Very Poor', 20, 0, NULL, 0, NULL, 0, 0, 4, '1', '11'),
(28, NULL, 'PI', 'Winding Insulation', 10000, 'Very Good', 2.09999990463257, 2, 'Good', 1.50999999046326, 1.5, 'Acceptable', 1.25999999046326, 1.25, 'Poor', 1, 0.899999976158142, 'Very Poor', 0, 0, NULL, 0, NULL, 0, 0, 4, '1', '11'),
(29, NULL, '%Max. Idiff : 200V', 'Exciting Current', 1.99000000953674, 'Very Good', 0, 4.98999977111816, 'Good', 2, 7.98999977111816, 'Acceptable', 5, 10, 'Poor', 8, 100, 'Very Poor', 10.0100002288818, 0, NULL, 0, 'I rated', 50, 0, 3, '1', '16'),
(30, NULL, '%Max. Idiff : 200V', 'Exciting Current', 1.0900000333786, 'Very Good', 0, 2.58999991416931, 'Good', 1.10000002384186, 3.58999991416931, 'Acceptable', 2.59999990463257, 5, 'Poor', 3.59999990463257, 100, 'Very Poor', 5.01000022888184, 0, NULL, 0, 'I rated', 10000, 50.0099983215332, 3, '1', '16'),
(31, NULL, '%Max. Error Between Phase', 'DC Winding Resistance', 1.0900000333786, 'Very Good', 0, 2.58999991416931, 'Good', 1.10000002384186, 3.58999991416931, 'Acceptable', 2.59999990463257, 5, 'Poor', 3.59999990463257, 100, 'Very Poor', 5.01000022888184, 0, NULL, 0, NULL, 0, 0, 3, '1', '16'),
(32, NULL, '%Max. Error Between Commissioning&Phase', 'DC Winding Resistance', 1.0900000333786, 'Very Good', 0, 2.58999991416931, 'Good', 1.10000002384186, 3.58999991416931, 'Acceptable', 2.59999990463257, 5, 'Poor', 3.59999990463257, 100, 'Very Poor', 5.01000022888184, 0, NULL, 0, NULL, 0, 0, 3, '1', '16'),
(33, NULL, '%Max. PF', 'Winding Insulation', 0.400000005960464, 'Very Good', 0, 1, 'Good', 0.5, 1.5, 'Acceptable', 1.10000002384186, 2, 'Poor', 1.60000002384186, 100, 'Very Poor', 2.09999990463257, 0, NULL, 0, NULL, 0, 0, 5, '1', '16'),
(34, NULL, '%Max. Cap.', 'Winding Insulation', 19.9899997711182, 'Very Good', 0, 0, NULL, 0, 0, NULL, 0, 0, NULL, 0, 10000, 'Very Poor', 20, 0, NULL, 0, NULL, 0, 0, 4, '1', '16'),
(35, NULL, 'PI', 'Winding Insulation', 10000, 'Very Good', 2.09999990463257, 2, 'Good', 1.50999999046326, 1.5, 'Acceptable', 1.25999999046326, 1.25, 'Poor', 1, 0.899999976158142, 'Very Poor', 0, 0, NULL, 0, NULL, 0, 0, 4, '1', '16'),
(36, NULL, 'I Leakage', NULL, 150, 'Very Good', 0, 0, NULL, 0, 0, NULL, 0, 0, NULL, 0, 10000, 'Very Poor', 150.009994506836, 0, NULL, 0, NULL, 0, 0, 40, '6', '21'),
(37, NULL, 'Watt Loss', NULL, 50, 'Very Good', 0, 0, NULL, 0, 0, NULL, 0, 0, NULL, 0, 10000, 'Very Poor', 50.0099983215332, 0, NULL, 0, NULL, 0, 0, 50, '6', '21'),
(38, NULL, 'Insulation Resistance', NULL, 10000, 'Very Good', 50.0099983215332, 0, NULL, 0, 0, NULL, 0, 0, NULL, 0, 50, 'Very Poor', 0, 0, NULL, 0, NULL, 0, 0, 10, '6', '21'),
(39, NULL, 'IFT', NULL, 1000, 'Very Good', 38, 37, 'Good', 25, 24, 'Acceptable', 22, 21, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 69, 0, 2, '16', '36'),
(40, NULL, 'IFT', NULL, 1000, 'Very Good', 38, 37, 'Good', 30, 29, 'Acceptable', 25, 24, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 229, 70, 2, '16', '36'),
(41, NULL, 'IFT', NULL, 1000, 'Very Good', 38, 37, 'Good', 32, 31, 'Acceptable', 25, 24, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 10000, 230, 2, '16', '36'),
(42, NULL, 'NN(Acidity)', NULL, 0.0149999996647239, 'Very Good', 0, 0.200000002980232, 'Good', 0.0160000007599592, 0.490000009536743, 'Acceptable', 0.209999993443489, 1000, 'Poor', 0.5, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 69, 0, 4, '16', '36'),
(43, NULL, 'NN(Acidity)', NULL, 0.0149999996647239, 'Very Good', 0, 0.150000005960464, 'Good', 0.0160000007599592, 0.490000009536743, 'Acceptable', 0.159999996423721, 1000, 'Poor', 0.5, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 229, 70, 4, '16', '36'),
(44, NULL, 'NN(Acidity)', NULL, 0.0149999996647239, 'Very Good', 0, 0.100000001490116, 'Good', 0.0160000007599592, 0.490000009536743, 'Acceptable', 0.109999999403954, 1000, 'Poor', 0.5, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 10000, 230, 4, '16', '36'),
(45, NULL, 'Color', NULL, 1, 'Very Good', 0, 2.5, 'Good', 1.10000002384186, 4, 'Acceptable', 2.59999990463257, 100, 'Poor', 4.09999990463257, 0, NULL, 0, 0, NULL, 0, NULL, 0, 0, 2, '16', '36'),
(46, NULL, '%PF@20c', NULL, 0.100000001490116, 'Very Good', 0, 0.5, 'Good', 0.200000002980232, 1, 'Acceptable', 0.600000023841858, 100, 'Poor', 1.10000002384186, 0, NULL, 0, 0, NULL, 0, NULL, 0, 0, 5, '16', '36'),
(47, NULL, '%PF@100c', NULL, 1, 'Very Good', 0, 5, 'Good', 1.10000002384186, 7, 'Acceptable', 5.09999990463257, 100, 'Poor', 7.09999990463257, 0, NULL, 0, 0, NULL, 0, NULL, 0, 0, 5, '16', '36'),
(48, NULL, 'Water Content', NULL, 20, 'Very Good', 0, 35, 'Good', 21, 40, 'Acceptable', 36, 1000, 'Poor', 41, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 69, 0, 4, '16', '36'),
(49, NULL, 'Water Content', NULL, 10, 'Very Good', 0, 25, 'Good', 11, 30, 'Acceptable', 26, 1000, 'Poor', 31, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 229, 70, 4, '16', '36'),
(50, NULL, 'Water Content', NULL, 10, 'Very Good', 0, 20, 'Good', 11, 25, 'Acceptable', 21, 1000, 'Poor', 26, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 1000, 230, 4, '16', '36'),
(51, NULL, 'Dielectric Strength', NULL, 200, 'Very Good', 25, 24, 'Good', 23, 22, 'Acceptable', 20, 19, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 69, 0, 3, '16', '36'),
(52, NULL, 'Dielectric Strength', NULL, 200, 'Very Good', 30, 29, 'Good', 28, 27, 'Acceptable', 20, 19, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 229, 70, 3, '16', '36'),
(53, NULL, 'Dielectric Strength', NULL, 200, 'Very Good', 32, 31, 'Good', 30, 29, 'Acceptable', 25, 24, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 1000, 230, 3, '16', '36'),
(54, NULL, 'IFT/NN(Acidity)', NULL, 1500, 'Very Good', 319, 318, 'Good', 160, 159, 'Acceptable', 45, 44, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 69, 0, 5, '16', '31'),
(55, NULL, 'IFT/NN(Acidity)', NULL, 1500, 'Very Good', 319, 318, 'Good', 160, 159, 'Acceptable', 45, 44, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 229, 70, 5, '16', '31'),
(56, NULL, 'IFT/NN(Acidity)', NULL, 1500, 'Very Good', 319, 318, 'Good', 160, 159, 'Acceptable', 45, 44, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 1000, 230, 5, '16', '31'),
(57, NULL, '%PF@20c', NULL, 0.5, 'Very Good', 0, 0.600000023841858, NULL, 0.509999990463257, 0.800000011920929, NULL, 0.610000014305115, 1, NULL, 0.810000002384186, 100, 'Very Poor', 1, 0, NULL, 0, NULL, 0, 0, 40, '11', '26'),
(58, NULL, '%PF', NULL, 0.5, 'Very Good', 0, 0.600000023841858, NULL, 0.509999990463257, 0.800000011920929, NULL, 0.610000014305115, 1, NULL, 0.810000002384186, 100, 'Very Poor', 1, 0, NULL, 0, NULL, 0, 0, 10, '11', '26'),
(59, NULL, 'Capacitance(C1)', NULL, 5, 'Very Good', 0, 0, NULL, 0, 0, NULL, 0, 0, NULL, 0, 1000, 'Very Poor', 5, 0, NULL, 0, NULL, 0, 0, 40, '11', '26'),
(60, NULL, 'Capacitance(C2)', NULL, 1, 'Very Good', 0, 0, NULL, 0, 0, NULL, 0, 0, NULL, 0, 1000, 'Very Poor', 1, 0, NULL, 0, NULL, 0, 0, 10, '11', '26'),
(61, NULL, 'Transition Resistance', NULL, 5, 'Very Good', 0, 0, NULL, 0, 0, NULL, 0, 0, NULL, 0, 100, 'Very Poor', 5.01000022888184, 0, NULL, 0, NULL, 0, 0, 5, '21', '41'),
(62, NULL, 'Contact Thickness', NULL, 1, 'Very Good', 0, 0, NULL, 0, 0, NULL, 0, 0, NULL, 0, 100, 'Very Poor', 1.00999999046326, 0, NULL, 0, NULL, 0, 0, 4, '21', '41'),
(63, NULL, '1st Ratio', NULL, 0.490000009536743, 'Very Good', 0, 0, NULL, 0, 0, NULL, 0, 200, 'Poor', 0.5, 0, NULL, 0, 0, NULL, 0, NULL, 0, 0, 4, '21', '51'),
(64, NULL, '2nd Ratio', NULL, 1.99000000953674, 'Very Good', 0, 0, NULL, 0, 0, NULL, 0, 200, 'Poor', 2, 0, NULL, 0, 0, NULL, 0, NULL, 0, 0, 4, '21', '51'),
(65, NULL, '3rd Ratio', NULL, 0.990000009536743, 'Very Good', 0, 0, NULL, 0, 0, NULL, 0, 200, 'Poor', 1, 0, NULL, 0, 0, NULL, 0, NULL, 0, 0, 4, '21', '51'),
(66, NULL, 'Color', NULL, 0.990000009536743, 'Very Good', 0, 2.5, 'Good', 1, 3.90000009536743, 'Acceptable', 2.59999990463257, 5.40000009536743, 'Poor', 4, 100, 'Very Poor', 5.5, 0, NULL, 0, NULL, 0, 0, 2, '21', '36'),
(67, NULL, 'Water Content', NULL, 19, 'Very Good', 0, 30, 'Good', 20, 40, 'Acceptable', 31, 44, 'Poor', 41, 1000, 'Very Poor', 45, 0, NULL, 0, NULL, 0, 0, 4, '21', '36'),
(68, NULL, 'Dielectric Strength', NULL, 500, 'Very Good', 46, 45, 'Good', 36, 35, 'Acceptable', 31, 30, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 69, 0, 3, '21', '56'),
(69, NULL, 'Dielectric Strength', NULL, 500, 'Very Good', 46, 45, 'Good', 36, 35, 'Acceptable', 31, 30, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 229, 70, 3, '21', '56'),
(70, NULL, 'Dielectric Strength', NULL, 500, 'Very Good', 46, 45, 'Good', 36, 35, 'Acceptable', 31, 30, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 1000, 230, 3, '21', '56'),
(71, NULL, '%PF@20c', NULL, 0.0500000007450581, 'Very Good', 0, 0.5, 'Good', 0.0599999986588955, 0.990000009536743, 'Acceptable', 0.509999990463257, 100, 'Poor', 1, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 69, 0, 2, '21', '56'),
(72, NULL, '%PF@20c', NULL, 0.0500000007450581, 'Very Good', 0, 0.5, 'Good', 0.0599999986588955, 0.990000009536743, 'Acceptable', 0.509999990463257, 100, 'Poor', 1, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 229, 70, 2, '21', '56'),
(73, NULL, '%PF@20c', NULL, 0.0500000007450581, 'Very Good', 0, 0.5, 'Good', 0.0599999986588955, 0.990000009536743, 'Acceptable', 0.509999990463257, 100, 'Poor', 1, 0, NULL, 0, 0, NULL, 0, 'Rated Voltage', 1000, 230, 2, '21', '56'),
(74, NULL, 'H2', NULL, 100, 'Very Good', 0, 200, 'Good', 101, 300, 'Acceptable', 201, 500, 'Acceptable', 301, 700, 'Poor', 501, 10000, 'Very Poor', 701, NULL, 0, 0, 2, '26', '51'),
(75, NULL, 'CH4', NULL, 120, 'Very Good', 0, 150, 'Good', 121, 200, 'Acceptable', 151, 400, 'Acceptable', 201, 600, 'Poor', 401, 10000, 'Very Poor', 601, NULL, 0, 0, 3, '26', '51'),
(76, NULL, 'C2H6', NULL, 65, 'Very Good', 0, 100, 'Good', 66, 150, 'Acceptable', 101, 250, 'Acceptable', 151, 500, 'Poor', 251, 10000, 'Very Poor', 501, NULL, 0, 0, 1, '26', '51'),
(77, NULL, 'C2H4', NULL, 50, 'Very Good', 0, 100, 'Good', 51, 150, 'Acceptable', 101, 250, 'Acceptable', 151, 500, 'Poor', 251, 10000, 'Very Poor', 501, NULL, 0, 0, 3, '26', '51'),
(78, NULL, 'C2H2', NULL, 3, 'Very Good', 0, 10, 'Good', 4, 50, 'Acceptable', 11, 100, 'Acceptable', 51, 200, 'Poor', 101, 10000, 'Very Poor', 201, NULL, 0, 0, 5, '26', '51'),
(79, NULL, 'CO', NULL, 700, 'Very Good', 0, 800, 'Good', 701, 900, 'Acceptable', 801, 1100, 'Acceptable', 901, 1300, 'Poor', 1101, 10000, 'Very Poor', 1301, NULL, 0, 0, 1, '26', '51'),
(80, NULL, 'CO2', NULL, 3000, 'Very Good', 0, 3500, 'Good', 3001, 4000, 'Acceptable', 3501, 4500, 'Acceptable', 4001, 5000, 'Poor', 4501, 10000, 'Very Poor', 5001, NULL, 0, 0, 1, '26', '51'),
(81, NULL, 'Temp. Rise', NULL, 9, 'Good', 0, 35, 'Acceptable', 10, 75, 'Need Caution', 36, 100, 'Poor', 76, 0, NULL, 0, 0, NULL, 0, 'Load', 100, 70, 0, '26', '161'),
(82, NULL, 'Temp. Rise', NULL, 5, 'Good', 0, 20, 'Acceptable', 6, 45, 'Need Caution', 21, 100, 'Poor', 46, 0, NULL, 0, 0, NULL, 0, 'Load', 69, 40, 0, '26', '161'),
(83, NULL, 'Temp. Rise', NULL, 3, 'Good', 0, 15, 'Acceptable', 4, 30, 'Need Caution', 16, 100, 'Poor', 31, 0, NULL, 0, 0, NULL, 0, 'Load', 39, 0, 0, '26', '161'),
(84, NULL, 'Dielectric strength', NULL, 500, 'Very Good', 25, 24, 'Good', 23, 22, 'Acceptable', 20, 19, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 69, 0, 3, '26', '111'),
(85, NULL, 'Dielectric strength', NULL, 500, 'Very Good', 30, 29, 'Good', 28, 27, 'Acceptable', 20, 19, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 229, 70, 3, '26', '111'),
(86, NULL, 'Dielectric strength', NULL, 500, 'Very Good', 32, 31, 'Good', 30, 29, 'Acceptable', 25, 24, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 1000, 230, 3, '26', '111'),
(87, NULL, 'IFT', NULL, 500, 'Very Good', 38, 37, 'Good', 25, 24, 'Acceptable', 22, 21, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 69, 0, 2, '26', '111'),
(88, NULL, 'IFT', NULL, 500, 'Very Good', 38, 37, 'Good', 30, 29, 'Acceptable', 25, 24, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 229, 70, 2, '26', '111'),
(89, NULL, 'IFT', NULL, 500, 'Very Good', 38, 37, 'Good', 32, 31, 'Acceptable', 25, 24, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 1000, 230, 2, '26', '111'),
(90, NULL, 'NN(Acid Number)', NULL, 0.0149999996647239, 'Very Good', 0, 0.200000002980232, 'Good', 0.0160000007599592, 0.490000009536743, 'Acceptable', 0.209999993443489, 100, 'Poor', 0.5, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 69, 0, 1, '26', '111'),
(91, NULL, 'NN(Acid Number)', NULL, 0.0149999996647239, 'Very Good', 0, 0.150000005960464, 'Good', 0.0160000007599592, 0.490000009536743, 'Acceptable', 0.159999996423721, 100, 'Poor', 0.5, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 229, 70, 1, '26', '111'),
(92, NULL, 'NN(Acid Number)', NULL, 0.0149999996647239, 'Very Good', 0, 0.100000001490116, 'Good', 0.0160000007599592, 0.490000009536743, 'Acceptable', 0.109999999403954, 100, 'Poor', 0.5, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 1000, 230, 1, '26', '111'),
(93, NULL, 'Moisture', NULL, 20, 'Very Good', 0, 35, 'Good', 21, 40, 'Acceptable', 36, 1000, 'Poor', 41, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 69, 0, 4, '26', '111'),
(94, NULL, 'Moisture', NULL, 10, 'Very Good', 0, 25, 'Good', 11, 30, 'Acceptable', 26, 1000, 'Poor', 31, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 229, 70, 4, '26', '111'),
(95, NULL, 'Moisture', NULL, 10, 'Very Good', 0, 20, 'Good', 11, 25, 'Acceptable', 21, 1000, 'Poor', 26, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 1000, 230, 4, '26', '111'),
(96, NULL, 'Color', NULL, 1, 'Very Good', 0, 2.5, 'Good', 1.10000002384186, 4, 'Acceptable', 2.59999990463257, 200, 'Poor', 4.09999990463257, 0, NULL, 0, 0, NULL, 0, NULL, 0, 0, 2, '26', '111'),
(97, NULL, 'Color', NULL, 0.899999976158142, 'Very Good', 0, 2.5, 'Good', 1, 3.90000009536743, 'Acceptable', 2.59999990463257, 5.40000009536743, 'Poor', 4, 100, 'Very Poor', 5.40000009536743, 0, NULL, 0, NULL, 0, 0, 2, '26', '131'),
(98, NULL, 'Water Content', NULL, 19, 'Very Good', 0, 30, 'Good', 20, 40, 'Acceptable', 31, 44, 'Poor', 41, 1000, 'Very Poor', 45, 0, NULL, 0, NULL, 0, 0, 4, '26', '131'),
(99, NULL, 'Dielectric Strength', NULL, 500, 'Very Good', 46, 45, 'Good', 36, 35, 'Acceptable', 31, 30, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 69, 0, 3, '26', '131'),
(100, NULL, 'Dielectric Strength', NULL, 500, 'Very Good', 46, 45, 'Good', 36, 35, 'Acceptable', 31, 30, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 229, 70, 3, '26', '131'),
(101, NULL, 'Dielectric Strength', NULL, 500, 'Very Good', 46, 45, 'Good', 36, 35, 'Acceptable', 31, 30, 'Poor', 0, 0, NULL, 0, 0, NULL, 0, 'Dielectric Strength', 1000, 230, 3, '26', '131');

-- --------------------------------------------------------

--
-- Table structure for table `perform_sub_group`
--

CREATE TABLE IF NOT EXISTS `perform_sub_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `hi_factor` int(11) DEFAULT NULL,
  `lower_bound` double DEFAULT NULL,
  `meaning` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `upper_bound` double DEFAULT NULL,
  `perform_group` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=176 ;

--
-- Dumping data for table `perform_sub_group`
--

INSERT INTO `perform_sub_group` (`id`, `version`, `color`, `hi_factor`, `lower_bound`, `meaning`, `name`, `upper_bound`, `perform_group`) VALUES
(1, NULL, 'red', 0, 81, 'Very Poor', 'Core', 100, '1'),
(2, NULL, 'orange', 1, 61, 'Poor', 'Core', 80, '1'),
(3, NULL, 'yellow', 2, 41, 'Need Caution', 'Core', 60, '1'),
(4, NULL, 'blue', 3, 21, 'Acceptable', 'Core', 40, '1'),
(5, NULL, 'green', 4, 0, 'Good', 'Core', 20, '1'),
(6, NULL, 'red', 0, 51, 'Very Poor', 'HV Winding', 100, '1'),
(7, NULL, 'orange', 1, 41, 'Poor', 'HV Winding', 50, '1'),
(8, NULL, 'yellow', 2, 31, 'Need Caution', 'HV Winding', 40, '1'),
(9, NULL, 'blue', 3, 21, 'Acceptable', 'HV Winding', 30, '1'),
(10, NULL, 'green', 4, 0, 'Good', 'HV Winding', 20, '1'),
(11, NULL, 'red', 0, 51, 'Very Poor', 'LV Winding', 100, '1'),
(12, NULL, 'orange', 1, 41, 'Poor', 'LV Winding', 50, '1'),
(13, NULL, 'yellow', 2, 31, 'Need Caution', 'LV Winding', 40, '1'),
(14, NULL, 'blue', 3, 21, 'Acceptable', 'LV Winding', 30, '1'),
(15, NULL, 'green', 4, 0, 'Good', 'LV Winding', 20, '1'),
(16, NULL, 'red', 0, 51, 'Very Poor', 'TV Winding', 100, '1'),
(17, NULL, 'orange', 1, 41, 'Poor', 'TV Winding', 50, '1'),
(18, NULL, 'yellow', 2, 31, 'Need Caution', 'TV Winding', 40, '1'),
(19, NULL, 'blue', 3, 21, 'Acceptable', 'TV Winding', 30, '1'),
(20, NULL, 'green', 4, 0, 'Good', 'TV Winding', 20, '1'),
(21, NULL, 'red', 0, 51, 'Very Poor', 'Arrester', 100, '6'),
(22, NULL, 'orange', 1, 41, 'Poor', 'Arrester', 50, '6'),
(23, NULL, 'yellow', 2, 31, 'Need Caution', 'Arrester', 40, '6'),
(24, NULL, 'blue', 3, 21, 'Acceptable', 'Arrester', 30, '6'),
(25, NULL, 'green', 4, 0, 'Good', 'Arrester', 20, '6'),
(26, NULL, 'red', 0, 51, 'Very Poor', 'Bushing', 100, '11'),
(27, NULL, 'orange', 1, 41, 'Poor', 'Bushing', 50, '11'),
(28, NULL, 'yellow', 2, 31, 'Need Caution', 'Bushing', 40, '11'),
(29, NULL, 'blue', 3, 21, 'Acceptable', 'Bushing', 30, '11'),
(30, NULL, 'green', 4, 0, 'Good', 'Bushing', 20, '11'),
(31, NULL, 'red', 0, 51, 'Very Poor', 'Aging Product', 100, '16'),
(32, NULL, 'orange', 1, 41, 'Poor', 'Aging Product', 50, '16'),
(33, NULL, 'yellow', 2, 31, 'Need Caution', 'Aging Product', 40, '16'),
(34, NULL, 'blue', 3, 21, 'Acceptable', 'Aging Product', 30, '16'),
(35, NULL, 'green', 4, 0, 'Good', 'Aging Product', 20, '16'),
(36, NULL, 'red', 0, 51, 'Very Poor', 'Contamination', 100, '16'),
(37, NULL, 'orange', 1, 41, 'Poor', 'Contamination', 50, '16'),
(38, NULL, 'yellow', 2, 31, 'Need Caution', 'Contamination', 40, '16'),
(39, NULL, 'blue', 3, 21, 'Acceptable', 'Contamination', 30, '16'),
(40, NULL, 'green', 4, 0, 'Good', 'Contamination', 20, '16'),
(41, NULL, 'red', 0, 51, 'Very Poor', 'Contact', 100, '21'),
(42, NULL, 'orange', 1, 41, 'Poor', 'Contact', 50, '21'),
(43, NULL, 'yellow', 2, 31, 'Need Caution', 'Contact', 40, '21'),
(44, NULL, 'blue', 3, 21, 'Acceptable', 'Contact', 30, '21'),
(45, NULL, 'green', 4, 0, 'Good', 'Contact', 20, '21'),
(46, NULL, 'red', 0, 51, 'Very Poor', 'Contamination', 100, '21'),
(47, NULL, 'orange', 1, 41, 'Poor', 'Contamination', 50, '21'),
(48, NULL, 'yellow', 2, 31, 'Need Caution', 'Contamination', 40, '21'),
(49, NULL, 'blue', 3, 21, 'Acceptable', 'Contamination', 30, '21'),
(50, NULL, 'green', 4, 0, 'Good', 'Contamination', 20, '21'),
(51, NULL, 'red', 0, 51, 'Very Poor', 'Dga', 100, '21'),
(52, NULL, 'orange', 1, 41, 'Poor', 'Dga', 50, '21'),
(53, NULL, 'yellow', 2, 31, 'Need Caution', 'Dga', 40, '21'),
(54, NULL, 'blue', 3, 21, 'Acceptable', 'Dga', 30, '21'),
(55, NULL, 'green', 4, 0, 'Good', 'Dga', 20, '21'),
(56, NULL, 'red', 0, 51, 'Very Poor', 'Dielectric Property', 100, '21'),
(57, NULL, 'orange', 1, 41, 'Poor', 'Dielectric Property', 50, '21'),
(58, NULL, 'yellow', 2, 31, 'Need Caution', 'Dielectric Property', 40, '21'),
(59, NULL, 'blue', 3, 21, 'Acceptable', 'Dielectric Property', 30, '21'),
(60, NULL, 'green', 4, 0, 'Good', 'Dielectric Property', 20, '21'),
(61, NULL, 'red', 0, 51, 'Very Poor', 'Bushing', 100, '41'),
(62, NULL, 'orange', 1, 36, 'Poor', 'Bushing', 50, '41'),
(63, NULL, 'yellow', 2, 26, 'Need Caution', 'Bushing', 35, '41'),
(64, NULL, 'blue', 3, 21, 'Acceptable', 'Bushing', 25, '41'),
(65, NULL, 'green', 4, 0, 'Good', 'Bushing', 20, '41'),
(66, NULL, 'red', 0, 51, 'Very Poor', 'Conservator Tank', 100, '41'),
(67, NULL, 'orange', 1, 36, 'Poor', 'Conservator Tank', 50, '41'),
(68, NULL, 'yellow', 2, 26, 'Need Caution', 'Conservator Tank', 35, '41'),
(69, NULL, 'blue', 3, 21, 'Acceptable', 'Conservator Tank', 25, '41'),
(70, NULL, 'green', 4, 0, 'Good', 'Conservator Tank', 20, '41'),
(71, NULL, 'red', 0, 51, 'Very Poor', 'Dga', 100, '41'),
(72, NULL, 'orange', 1, 41, 'Poor', 'Dga', 50, '41'),
(73, NULL, 'yellow', 2, 31, 'Need Caution', 'Dga', 40, '41'),
(74, NULL, 'blue', 3, 21, 'Acceptable', 'Dga', 30, '41'),
(75, NULL, 'green', 4, 0, 'Good', 'Dga', 20, '41'),
(76, NULL, 'red', 0, 2, 'Very Poor', 'Furan', 200, '41'),
(77, NULL, 'orange', 1, 1.60000002384186, 'Poor', 'Furan', 1.89999997615814, '41'),
(78, NULL, 'yellow', 2, 1.10000002384186, 'Need Caution', 'Furan', 1.5, '41'),
(79, NULL, 'blue', 3, 0.5, 'Acceptable', 'Furan', 1, '41'),
(80, NULL, 'green', 4, 0, 'Good', 'Furan', 0.400000005960464, '41'),
(81, NULL, 'red', 0, 51, 'Very Poor', 'General Condition', 100, '41'),
(82, NULL, 'orange', 1, 36, 'Poor', 'General Condition', 50, '41'),
(83, NULL, 'yellow', 2, 26, 'Need Caution', 'General Condition', 35, '41'),
(84, NULL, 'blue', 3, 21, 'Acceptable', 'General Condition', 25, '41'),
(85, NULL, 'green', 4, 0, 'Good', 'General Condition', 20, '41'),
(86, NULL, 'red', 0, 51, 'Very Poor', 'Hot Line Oil Filter', 100, '41'),
(87, NULL, 'orange', 1, 36, 'Poor', 'Hot Line Oil Filter', 50, '41'),
(88, NULL, 'yellow', 2, 26, 'Need Caution', 'Hot Line Oil Filter', 35, '41'),
(89, NULL, 'blue', 3, 21, 'Acceptable', 'Hot Line Oil Filter', 25, '41'),
(90, NULL, 'green', 4, 0, 'Good', 'Hot Line Oil Filter', 20, '41'),
(91, NULL, 'red', 0, 51, 'Very Poor', 'Lightning Arrester', 100, '41'),
(92, NULL, 'orange', 1, 36, 'Poor', 'Lightning Arrester', 50, '41'),
(93, NULL, 'yellow', 2, 26, 'Need Caution', 'Lightning Arrester', 35, '41'),
(94, NULL, 'blue', 3, 21, 'Acceptable', 'Lightning Arrester', 25, '41'),
(95, NULL, 'green', 4, 0, 'Good', 'Lightning Arrester', 20, '41'),
(96, NULL, 'red', 0, 0, 'Very Poor', 'Load History', 20, '41'),
(97, NULL, 'orange', 1, 21, 'Poor', 'Load History', 40, '41'),
(98, NULL, 'yellow', 2, 41, 'Need Caution', 'Load History', 65, '41'),
(99, NULL, 'blue', 3, 66, 'Acceptable', 'Load History', 85, '41'),
(100, NULL, 'green', 4, 86, 'Good', 'Load History', 100, '41'),
(101, NULL, 'red', 0, 51, 'Very Poor', 'Main Tank', 100, '41'),
(102, NULL, 'orange', 1, 36, 'Poor', 'Main Tank', 50, '41'),
(103, NULL, 'yellow', 2, 26, 'Need Caution', 'Main Tank', 35, '41'),
(104, NULL, 'blue', 3, 21, 'Acceptable', 'Main Tank', 25, '41'),
(105, NULL, 'green', 4, 0, 'Good', 'Main Tank', 20, '41'),
(106, NULL, 'red', 0, 51, 'Very Poor', 'NGR', 100, '41'),
(107, NULL, 'orange', 1, 36, 'Poor', 'NGR', 50, '41'),
(108, NULL, 'yellow', 2, 26, 'Need Caution', 'NGR', 35, '41'),
(109, NULL, 'blue', 3, 21, 'Acceptable', 'NGR', 25, '41'),
(110, NULL, 'green', 4, 0, 'Good', 'NGR', 20, '41'),
(111, NULL, 'red', 0, 51, 'Very Poor', 'Oil Quality', 100, '41'),
(112, NULL, 'orange', 1, 36, 'Poor', 'Oil Quality', 50, '41'),
(113, NULL, 'yellow', 2, 31, 'Need Caution', 'Oil Quality', 40, '41'),
(114, NULL, 'blue', 3, 21, 'Acceptable', 'Oil Quality', 30, '41'),
(115, NULL, 'green', 4, 0, 'Good', 'Oil Quality', 20, '41'),
(116, NULL, 'red', 0, 51, 'Very Poor', 'OLTC Compartment', 100, '41'),
(117, NULL, 'orange', 1, 36, 'Poor', 'OLTC Compartment', 50, '41'),
(118, NULL, 'yellow', 2, 26, 'Need Caution', 'OLTC Compartment', 35, '41'),
(119, NULL, 'blue', 3, 21, 'Acceptable', 'OLTC Compartment', 25, '41'),
(120, NULL, 'green', 4, 0, 'Good', 'OLTC Compartment', 20, '41'),
(121, NULL, 'red', 0, 51, 'Very Poor', 'OLTC Control Cabinet', 100, '41'),
(122, NULL, 'orange', 1, 36, 'Poor', 'OLTC Control Cabinet', 50, '41'),
(123, NULL, 'yellow', 2, 26, 'Need Caution', 'OLTC Control Cabinet', 35, '41'),
(124, NULL, 'blue', 3, 21, 'Acceptable', 'OLTC Control Cabinet', 25, '41'),
(125, NULL, 'green', 4, 0, 'Good', 'OLTC Control Cabinet', 20, '41'),
(126, NULL, 'red', 0, 51, 'Very Poor', 'OLTC Dga', 100, '41'),
(127, NULL, 'orange', 1, 36, 'Poor', 'OLTC Dga', 50, '41'),
(128, NULL, 'yellow', 2, 26, 'Need Caution', 'OLTC Dga', 35, '41'),
(129, NULL, 'blue', 3, 21, 'Acceptable', 'OLTC Dga', 25, '41'),
(130, NULL, 'green', 4, 0, 'Good', 'OLTC Dga', 20, '41'),
(131, NULL, 'red', 0, 51, 'Very Poor', 'OLTC Oil Quality', 100, '41'),
(132, NULL, 'orange', 1, 36, 'Poor', 'OLTC Oil Quality', 50, '41'),
(133, NULL, 'yellow', 2, 26, 'Need Caution', 'OLTC Oil Quality', 35, '41'),
(134, NULL, 'blue', 3, 21, 'Acceptable', 'OLTC Oil Quality', 25, '41'),
(135, NULL, 'green', 4, 0, 'Good', 'OLTC Oil Quality', 20, '41'),
(136, NULL, 'red', 0, 2.09999990463257, 'Very Poor', 'Power Factor', 100, '41'),
(137, NULL, 'orange', 1, 1.60000002384186, 'Poor', 'Power Factor', 2, '41'),
(138, NULL, 'yellow', 2, 1.10000002384186, 'Need Caution', 'Power Factor', 1.5, '41'),
(139, NULL, 'blue', 3, 0.5, 'Acceptable', 'Power Factor', 1, '41'),
(140, NULL, 'green', 4, 0, 'Good', 'Power Factor', 0.400000005960464, '41'),
(141, NULL, 'red', 0, 51, 'Very Poor', 'Protection Equipment', 100, '41'),
(142, NULL, 'orange', 1, 36, 'Poor', 'Protection Equipment', 50, '41'),
(143, NULL, 'yellow', 2, 26, 'Need Caution', 'Protection Equipment', 35, '41'),
(144, NULL, 'blue', 3, 21, 'Acceptable', 'Protection Equipment', 25, '41'),
(145, NULL, 'green', 4, 0, 'Good', 'Protection Equipment', 20, '41'),
(146, NULL, 'red', 0, 51, 'Very Poor', 'Radiator and Cooling System', 100, '41'),
(147, NULL, 'orange', 1, 36, 'Poor', 'Radiator and Cooling System', 50, '41'),
(148, NULL, 'yellow', 2, 26, 'Need Caution', 'Radiator and Cooling System', 35, '41'),
(149, NULL, 'blue', 3, 21, 'Acceptable', 'Radiator and Cooling System', 25, '41'),
(150, NULL, 'green', 4, 0, 'Good', 'Radiator and Cooling System', 20, '41'),
(151, NULL, 'red', 0, 51, 'Very Poor', 'Regulating PT', 100, '41'),
(152, NULL, 'orange', 1, 36, 'Poor', 'Regulating PT', 50, '41'),
(153, NULL, 'yellow', 2, 26, 'Need Caution', 'Regulating PT', 35, '41'),
(154, NULL, 'blue', 3, 21, 'Acceptable', 'Regulating PT', 25, '41'),
(155, NULL, 'green', 4, 0, 'Good', 'Regulating PT', 20, '41'),
(156, NULL, 'red', 0, 51, 'Very Poor', 'Transformer Control Cabinet', 100, '41'),
(157, NULL, 'orange', 1, 36, 'Poor', 'Transformer Control Cabinet', 50, '41'),
(158, NULL, 'yellow', 2, 26, 'Need Caution', 'Transformer Control Cabinet', 35, '41'),
(159, NULL, 'blue', 3, 21, 'Acceptable', 'Transformer Control Cabinet', 25, '41'),
(160, NULL, 'green', 4, 0, 'Good', 'Transformer Control Cabinet', 20, '41'),
(161, NULL, 'red', 0, 51, 'Very Poor', 'Thermo Scan', 100, '26'),
(162, NULL, 'orange', 1, 36, 'Poor', 'Thermo Scan', 50, '26'),
(163, NULL, 'yellow', 2, 26, 'Need Caution', 'Thermo Scan', 35, '26'),
(164, NULL, 'blue', 3, 21, 'Acceptable', 'Thermo Scan', 25, '26'),
(165, NULL, 'green', 4, 0, 'Good', 'Thermo Scan', 20, '26'),
(166, NULL, 'red', 0, 51, 'Very Poor', 'Oil Quality', 100, '26'),
(167, NULL, 'orange', 1, 36, 'Poor', 'Oil Quality', 50, '26'),
(168, NULL, 'yellow', 2, 26, 'Need Caution', 'Oil Quality', 35, '26'),
(169, NULL, 'blue', 3, 21, 'Acceptable', 'Oil Quality', 25, '26'),
(170, NULL, 'green', 4, 0, 'Good', 'Oil Quality', 20, '26'),
(171, NULL, 'red', 0, 51, 'Very Poor', 'OLTC Oil Quality', 100, '26'),
(172, NULL, 'orange', 1, 36, 'Poor', 'OLTC Oil Quality', 50, '26'),
(173, NULL, 'yellow', 2, 26, 'Need Caution', 'OLTC Oil Quality', 35, '26'),
(174, NULL, 'blue', 3, 21, 'Acceptable', 'OLTC Oil Quality', 25, '26'),
(175, NULL, 'green', 4, 0, 'Good', 'OLTC Oil Quality', 20, '26');

-- --------------------------------------------------------

--
-- Table structure for table `perform_type`
--

CREATE TABLE IF NOT EXISTS `perform_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `perform_type`
--

INSERT INTO `perform_type` (`id`, `version`, `description`) VALUES
(1, NULL, 'Commissioning'),
(2, NULL, '1 year Test'),
(3, NULL, '6 year Test');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authority_enum` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `authority_enum`, `version`, `department`, `description`, `name`, `password`, `username`) VALUES
(1, 'ADMINISTRATOR', NULL, 'ptu', 'ptu testing', 'ptu', 'ptu', 'ptu');

-- --------------------------------------------------------

--
-- Table structure for table `pollutions`
--

CREATE TABLE IF NOT EXISTS `pollutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `pollutions`
--

INSERT INTO `pollutions` (`id`, `value`, `created_at`, `updated_at`, `score`, `score_message`) VALUES
(61, 'Light	(16 mm/kV), ESDD: <0.01 mg/cm2', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 1, 'Very Low'),
(62, 'Medium (20 mm/kV), ESDD: 0.01-0.04 mg/cm2  ', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 2, 'Low'),
(63, 'High	(25 mm/kV), ESDD: 0.04-0.15 mg/cm2', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 3, 'Moderate'),
(64, 'Very high(31 mm/kV), ESDD: 0.15-0.40 mg/cm2', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 4, 'High'),
(65, 'Silicon Grazed & RG, ESDD>0.40 mg/cm2', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 5, 'Very High'),
(66, NULL, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 6, 'Extremely High');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `power_factors`
--

CREATE TABLE IF NOT EXISTS `power_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` float DEFAULT NULL,
  `end` float DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `power_factors`
--

INSERT INTO `power_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 0.5, '0,255,0', '2011-02-23 10:16:31', '2011-02-23 10:16:31'),
(2, 3, 'Acceptable', 0.5, 1, '0,0,255', '2011-02-23 10:16:31', '2011-02-23 10:16:31'),
(3, 2, 'Need Caution', 1.1, 1.5, '0,255,255', '2011-02-23 10:16:31', '2011-02-23 10:16:31'),
(4, 1, 'Poor', 1.6, 2, '255,146,0', '2011-02-23 10:16:31', '2011-02-23 10:16:31'),
(5, 0, 'Very Poor', 2, NULL, '255,0,0', '2011-02-23 10:16:31', '2011-02-23 10:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `probability_of_force_outages`
--

CREATE TABLE IF NOT EXISTS `probability_of_force_outages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `probability_of_force_outages`
--

INSERT INTO `probability_of_force_outages` (`id`, `created_at`, `updated_at`, `score`, `score_message`, `start`, `end`) VALUES
(61, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 1, 'Very Low', 0, 0),
(63, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 3, 'Moderate', 1, 2),
(65, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 5, 'Very High', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `public_images`
--

CREATE TABLE IF NOT EXISTS `public_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `public_images`
--

INSERT INTO `public_images` (`id`, `value`, `score`, `score_message`, `created_at`, `updated_at`) VALUES
(61, 'No', 1, 'Very Low', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(62, NULL, 2, 'Low', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(63, NULL, 3, 'Moderate', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(64, NULL, 4, 'High', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(65, NULL, 5, 'Very High', '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(66, 'Yes', 5, 'Very High', '2010-09-09 22:45:34', '2010-09-09 22:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `radiator_cooling`
--

CREATE TABLE IF NOT EXISTS `radiator_cooling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `animal` decimal(10,0) DEFAULT NULL,
  `corrosion` decimal(10,0) DEFAULT NULL,
  `noise_level` decimal(10,0) DEFAULT NULL,
  `oil_fail` decimal(10,0) DEFAULT NULL,
  `oil_pump` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `radiator_cooling`
--

INSERT INTO `radiator_cooling` (`id`, `version`, `test_by`, `test_date`, `work_order`, `animal`, `corrosion`, `noise_level`, `oil_fail`, `oil_pump`, `perform_type`, `transformer`) VALUES
(1, NULL, 'Test', '2010-06-01 00:00:00', '1111122', '7', '35', '65', '123', '2', '1', '343');

-- --------------------------------------------------------

--
-- Table structure for table `radiator_cooling_systems`
--

CREATE TABLE IF NOT EXISTS `radiator_cooling_systems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `animal` decimal(10,0) DEFAULT NULL,
  `corrosion` decimal(10,0) DEFAULT NULL,
  `noise_level` decimal(10,0) DEFAULT NULL,
  `oil_fail` decimal(10,0) DEFAULT NULL,
  `oil_pump` decimal(10,0) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `radiator_cooling_systems`
--

INSERT INTO `radiator_cooling_systems` (`id`, `animal`, `corrosion`, `noise_level`, `oil_fail`, `oil_pump`, `visual_inspection_id`) VALUES
(2, '156', '143', '151', '148', '154', 2),
(3, '156', '144', '150', '145', '153', 4);

-- --------------------------------------------------------

--
-- Table structure for table `radiator_cooling_system_factors`
--

CREATE TABLE IF NOT EXISTS `radiator_cooling_system_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `radiator_cooling_system_factors`
--

INSERT INTO `radiator_cooling_system_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 35, '0,255,0', '2011-02-10 19:01:08', '2011-02-10 19:01:08'),
(2, 3, 'Acceptable', 36, 39, '0,0,255', '2011-02-10 19:01:08', '2011-02-10 19:01:08'),
(3, 2, 'Need Caution', 40, 43, '0,255,255', '2011-02-10 19:01:08', '2011-02-10 19:01:08'),
(4, 1, 'Poor', 44, 49, '255,146,0', '2011-02-10 19:01:08', '2011-02-10 19:01:08'),
(5, 0, 'Very Poor', 50, NULL, '255,0,0', '2011-02-10 19:01:08', '2011-02-10 19:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `regulatingpt`
--

CREATE TABLE IF NOT EXISTS `regulatingpt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `oil_color` decimal(10,0) DEFAULT NULL,
  `oil_fail` decimal(10,0) DEFAULT NULL,
  `oil_level` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `pocelain_clean` decimal(10,0) DEFAULT NULL,
  `pocelain_status` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `regulatingpt`
--

INSERT INTO `regulatingpt` (`id`, `version`, `test_by`, `test_date`, `work_order`, `oil_color`, `oil_fail`, `oil_level`, `perform_type`, `pocelain_clean`, `pocelain_status`, `transformer`) VALUES
(1, NULL, 'Test', '2010-06-01 00:00:00', '1111111', '72', '106', '128', '1', '83', '92', '343');

-- --------------------------------------------------------

--
-- Table structure for table `regulating_pts`
--

CREATE TABLE IF NOT EXISTS `regulating_pts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oil_color` decimal(10,0) DEFAULT NULL,
  `oil_fail` decimal(10,0) DEFAULT NULL,
  `oil_level` decimal(10,0) DEFAULT NULL,
  `pocelain_clean` decimal(10,0) DEFAULT NULL,
  `pocelain_status` decimal(10,0) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `regulating_pts`
--

INSERT INTO `regulating_pts` (`id`, `oil_color`, `oil_fail`, `oil_level`, `pocelain_clean`, `pocelain_status`, `visual_inspection_id`) VALUES
(2, '199', '195', '196', '191', '187', 2),
(3, '199', '194', '197', '192', '189', 4);

-- --------------------------------------------------------

--
-- Table structure for table `regulating_pt_factors`
--

CREATE TABLE IF NOT EXISTS `regulating_pt_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `regulating_pt_factors`
--

INSERT INTO `regulating_pt_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 39, '0,255,0', '2011-02-11 19:14:07', '2011-02-11 19:14:07'),
(2, 3, 'Acceptable', 40, 43, '0,0,255', '2011-02-11 19:14:07', '2011-02-11 19:14:07'),
(3, 2, 'Need Caution', 44, 46, '0,255,255', '2011-02-11 19:14:07', '2011-02-11 19:14:07'),
(4, 1, 'Poor', 47, 49, '255,146,0', '2011-02-11 19:14:07', '2011-02-11 19:14:07'),
(5, 0, 'Very Poor', 50, NULL, '255,0,0', '2011-02-11 19:14:07', '2011-02-11 19:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `down_date` datetime DEFAULT NULL,
  `down_time` varchar(255) DEFAULT NULL,
  `incident_date` datetime DEFAULT NULL,
  `oltc_count` int(11) DEFAULT NULL,
  `reporter` varchar(255) DEFAULT NULL,
  `up_date` datetime DEFAULT NULL,
  `up_time` varchar(255) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `ab_environment` decimal(10,0) DEFAULT NULL,
  `damage_data` decimal(10,0) DEFAULT NULL,
  `environment` decimal(10,0) DEFAULT NULL,
  `equipment` decimal(10,0) DEFAULT NULL,
  `failure_mode` decimal(10,0) DEFAULT NULL,
  `maintenance` decimal(10,0) DEFAULT NULL,
  `real_cause` decimal(10,0) DEFAULT NULL,
  `station` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=498 ;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `version`, `down_date`, `down_time`, `incident_date`, `oltc_count`, `reporter`, `up_date`, `up_time`, `work_order`, `ab_environment`, `damage_data`, `environment`, `equipment`, `failure_mode`, `maintenance`, `real_cause`, `station`, `transformer`) VALUES
(1, NULL, '1996-06-12 00:00:00', '08:00', '1996-06-04 00:00:00', 111111, NULL, '1996-06-12 00:00:00', '16:00', '33390127', '54', '23', '53', '35', '40', '41', '33', '162', '383'),
(2, NULL, '1996-10-27 00:00:00', '08:00', '1996-10-16 00:00:00', 111111, NULL, '1996-10-27 00:00:00', '16:00', '33400043', '54', '25', '53', '2', '40', '41', '33', '71', '144'),
(3, NULL, '1996-12-18 00:00:00', '08:00', '1996-12-17 00:00:00', 111111, NULL, '1996-12-18 00:00:00', '16:00', '33400091', '54', '15', '53', '35', '40', '41', '33', '179', '454'),
(4, NULL, '1998-03-03 00:00:00', '08:00', '1998-03-04 00:00:00', 111111, NULL, '1998-03-03 00:00:00', '16:00', '33410117', '54', '25', '53', '4', '40', '41', '33', '71', '145'),
(5, NULL, '1998-03-10 00:00:00', '08:00', '1998-03-16 00:00:00', 111111, NULL, '1998-03-10 00:00:00', '16:00', '31410180', '54', '25', '53', '5', '40', '41', '33', '145', '342'),
(6, NULL, '1998-05-04 00:00:00', '08:00', '1998-04-29 00:00:00', 111111, NULL, '1998-05-04 00:00:00', '16:00', '33410149', '54', '14', '53', '6', '39', '56', '55', '71', '143'),
(7, NULL, '1998-05-04 00:00:00', '08:00', '1998-04-29 00:00:00', 111111, NULL, '1998-05-04 00:00:00', '16:00', '33410150', '54', '14', '53', '6', '39', '56', '55', '71', '142'),
(8, NULL, '1998-05-26 00:00:00', '08:00', '1998-05-26 00:00:00', 111111, NULL, '1998-05-26 00:00:00', '16:00', '33410160', '54', '14', '53', '7', '39', '56', '55', '201', '531'),
(9, NULL, '1998-05-27 00:00:00', '08:00', '1998-05-27 00:00:00', 111111, NULL, '1998-05-27 00:00:00', '16:00', '33410161', '54', '14', '53', '35', '39', '56', '55', '201', '531'),
(10, NULL, '1998-05-22 00:00:00', '08:00', '1998-05-25 00:00:00', 111111, NULL, '1998-05-22 00:00:00', '16:00', '31410256', '54', '15', '53', '35', '40', '41', '33', '159', '376'),
(11, NULL, '1998-06-19 00:00:00', '08:00', '1998-05-27 00:00:00', 111111, NULL, '1998-06-19 00:00:00', '16:00', '33410176', '54', '14', '53', '35', '39', '56', '55', '71', '145'),
(12, NULL, '1998-07-13 00:00:00', '08:00', '1998-06-30 00:00:00', 111111, NULL, '1998-07-13 00:00:00', '16:00', '31410307', '54', '15', '53', '35', '40', '41', '33', '159', '376'),
(13, NULL, '1998-08-25 00:00:00', '08:00', '1998-08-25 00:00:00', 111111, NULL, '1998-08-25 00:00:00', '16:00', '31410336', '54', '15', '53', '35', '40', '41', '33', '151', '356'),
(14, NULL, '1998-08-26 00:00:00', '08:00', '1998-08-26 00:00:00', 111111, NULL, '1998-08-26 00:00:00', '16:00', '31410337', '54', '16', '53', '35', '40', '42', '33', '151', '356'),
(15, NULL, '1998-08-05 00:00:00', '08:00', '1998-09-03 00:00:00', 111111, NULL, '1998-08-05 00:00:00', '16:00', '33410227', '54', '25', '53', '11', '40', '41', '33', '71', '144'),
(16, NULL, '1998-08-26 00:00:00', '08:00', '1998-09-03 00:00:00', 111111, NULL, '1998-08-26 00:00:00', '16:00', '33410229', '54', '14', '53', '35', '39', '56', '55', '158', '371'),
(17, NULL, '1998-10-08 00:00:00', '08:00', '1998-09-14 00:00:00', 111111, NULL, '1998-10-08 00:00:00', '16:00', '31420012', '54', '18', '53', '12', '40', '41', '33', '151', '356'),
(18, NULL, '1998-10-26 00:00:00', '08:00', '1998-10-01 00:00:00', 111111, NULL, '1998-10-26 00:00:00', '16:00', '33420002', '54', '14', '53', '35', '39', '56', '55', '158', '371'),
(19, NULL, '1998-10-27 00:00:00', '08:00', '1998-10-01 00:00:00', 111111, NULL, '1998-10-27 00:00:00', '16:00', '33420003', '54', '14', '53', '35', '39', '56', '55', '158', '372'),
(20, NULL, '1998-12-15 00:00:00', '08:00', '1998-12-08 00:00:00', 111111, NULL, '1998-12-15 00:00:00', '16:00', '31420174', '54', '14', '53', '13', '39', '42', '55', '144', '338'),
(21, NULL, '1999-02-03 00:00:00', '08:00', '1999-01-11 00:00:00', 111111, NULL, '1999-02-03 00:00:00', '16:00', '31420260', '54', '25', '53', '35', '40', '41', '33', '216', '559'),
(22, NULL, '1999-02-09 00:00:00', '08:00', '1999-01-28 00:00:00', 111111, NULL, '1999-02-09 00:00:00', '16:00', '33420098', '54', '14', '53', '15', '39', '56', '55', '162', '383'),
(23, NULL, '1999-02-02 00:00:00', '08:00', '1999-01-28 00:00:00', 111111, NULL, '1999-02-02 00:00:00', '16:00', '33420090', '54', '14', '53', '16', '39', '56', '55', '71', '143'),
(24, NULL, '1999-02-02 00:00:00', '08:00', '1999-01-28 00:00:00', 111111, NULL, '1999-02-02 00:00:00', '16:00', '33420091', '54', '14', '53', '16', '39', '56', '55', '71', '142'),
(25, NULL, '1999-02-17 00:00:00', '08:00', '1999-01-28 00:00:00', 111111, NULL, '1999-02-17 00:00:00', '16:00', '33420101', '54', '14', '53', '16', '39', '56', '55', '201', '531'),
(26, NULL, '1999-03-30 00:00:00', '08:00', '1999-03-05 00:00:00', 111111, NULL, '1999-03-30 00:00:00', '16:00', '33420156', '54', '14', '53', '35', '39', '56', '55', '132', '307'),
(27, NULL, '1999-03-24 00:00:00', '08:00', '1999-03-05 00:00:00', 111111, NULL, '1999-03-24 00:00:00', '16:00', '33420130', '54', '14', '53', '35', '39', '56', '55', '158', '373'),
(28, NULL, '1999-03-25 00:00:00', '08:00', '1999-03-05 00:00:00', 111111, NULL, '1999-03-25 00:00:00', '16:00', '33420145', '54', '14', '53', '35', '39', '56', '55', NULL, '597'),
(29, NULL, '1999-04-23 00:00:00', '08:00', '1999-04-12 00:00:00', 111111, NULL, '1999-04-23 00:00:00', '16:00', '31420378', '54', '18', '53', '35', '40', '41', '33', '145', '340'),
(30, NULL, '1999-05-26 00:00:00', '08:00', '1999-05-07 00:00:00', 111111, NULL, '1999-05-26 00:00:00', '16:00', '33420191', '54', '15', '53', '35', '40', '41', '33', '158', '371'),
(31, NULL, '1999-06-30 00:00:00', '08:00', '1999-06-23 00:00:00', 111111, NULL, '1999-06-30 00:00:00', '16:00', '31420514', '54', '14', '53', '19', '39', '46', '55', '144', '338'),
(32, NULL, '1999-07-13 00:00:00', '08:00', '1999-06-29 00:00:00', 111111, NULL, '1999-07-13 00:00:00', '16:00', '33420244', '54', '15', '53', '35', '40', '41', '33', '71', '142'),
(33, NULL, '1999-06-11 00:00:00', '08:00', '1999-06-29 00:00:00', 111111, NULL, '1999-06-11 00:00:00', '16:00', '33420242', '54', '14', '53', '35', '39', '56', '55', '179', '451'),
(34, NULL, '1999-07-29 00:00:00', '08:00', '1999-07-26 00:00:00', 111111, NULL, '1999-07-29 00:00:00', '16:00', '31420538', '54', '14', '53', '13', '39', '42', '55', '144', '338'),
(35, NULL, '1999-08-25 00:00:00', '08:00', '1999-09-02 00:00:00', 111111, NULL, '1999-08-25 00:00:00', '16:00', '33420279', '54', '14', '53', '35', '39', '56', '55', '201', '531'),
(36, NULL, '1999-09-14 00:00:00', '08:00', '1999-09-27 00:00:00', 111111, NULL, '1999-09-14 00:00:00', '16:00', '33420289', '54', '14', '53', '20', '39', '56', '55', '162', '383'),
(37, NULL, '1999-11-26 00:00:00', '08:00', '1999-11-25 00:00:00', 111111, NULL, '1999-11-22 00:00:00', '16:00', '33430116', '54', '14', '53', '16', '39', '56', '55', '71', '145'),
(38, NULL, '1999-12-23 00:00:00', '08:00', '1999-12-23 00:00:00', 111111, NULL, '1999-12-23 00:00:00', '16:00', '31430271', '54', '15', '53', '35', '40', '41', '33', '144', '338'),
(39, NULL, '2000-01-19 00:00:00', '08:00', '2000-01-04 00:00:00', 111111, NULL, '2000-01-19 00:00:00', '16:00', '31430304', '54', '15', '53', '35', '40', '41', '33', '151', '356'),
(40, NULL, '1999-12-16 00:00:00', '08:00', '2000-01-04 00:00:00', 111111, NULL, '1999-12-16 00:00:00', '16:00', '33430157', '54', '14', '53', '35', '39', '56', '55', '71', '143'),
(41, NULL, '2000-01-04 00:00:00', '08:00', '2000-02-07 00:00:00', 111111, NULL, '2000-01-04 00:00:00', '16:00', '33430195', '54', '14', '53', '35', '39', '56', '55', '71', '143'),
(42, NULL, '2000-01-04 00:00:00', '08:00', '2000-02-07 00:00:00', 111111, NULL, '2000-01-04 00:00:00', '16:00', '33430198', '54', '14', '53', '22', '39', '56', '55', '71', '145'),
(43, NULL, '2000-02-29 00:00:00', '08:00', '2000-03-01 00:00:00', 111111, NULL, '2000-02-29 00:00:00', '16:00', '33430234', '54', '14', '53', '35', '39', '56', '55', '71', '143'),
(44, NULL, '2000-03-07 00:00:00', '08:00', '2000-03-01 00:00:00', 111111, NULL, '2000-03-07 00:00:00', '16:00', '33430275', '54', '15', '53', '35', '40', '41', '33', '201', '531'),
(45, NULL, '2000-04-04 00:00:00', '08:00', '2000-03-21 00:00:00', 111111, NULL, '2000-04-04 00:00:00', '16:00', '31430374', '54', '15', '53', '35', '40', '41', '33', '151', '356'),
(46, NULL, '2000-03-31 00:00:00', '08:00', '2000-03-28 00:00:00', 111111, NULL, '2000-03-29 00:00:00', '16:00', '31430376', '54', '25', '53', '35', '40', '42', '33', '216', '559'),
(47, NULL, '2000-03-31 00:00:00', '08:00', '2000-03-28 00:00:00', 111111, NULL, '2000-03-29 00:00:00', '16:00', '31430377', '54', '25', '53', '35', '40', '42', '33', '216', '560'),
(48, NULL, '2000-08-07 00:00:00', '08:00', '2000-07-25 00:00:00', 111111, NULL, '2000-08-07 00:00:00', '16:00', '33430439', '54', '15', '53', '35', '40', '41', '33', '201', '531'),
(49, NULL, '2000-08-29 00:00:00', '08:00', '2000-09-08 00:00:00', 111111, NULL, '2000-08-29 00:00:00', '16:00', '32430322', '54', '25', '53', '25', '40', '41', '33', '214', '549'),
(50, NULL, '2000-09-27 00:00:00', '08:00', '2000-10-03 00:00:00', 111111, NULL, '2000-09-27 00:00:00', '16:00', '33430459', '54', '25', '53', '35', '40', '41', '33', '71', '144'),
(51, NULL, '2000-10-27 00:00:00', '08:00', '2000-10-25 00:00:00', 111111, NULL, '2000-10-27 00:00:00', '16:00', '31440048', '54', '25', '53', '27', '40', '41', '33', '216', '560'),
(52, NULL, '2001-02-28 00:00:00', '08:00', '2001-01-04 00:00:00', 111111, NULL, '2001-02-19 00:00:00', '16:00', '33440162', '54', '15', '53', '35', '40', '41', '33', '33', '42'),
(53, NULL, '2001-06-14 00:00:00', '08:00', '2001-06-14 00:00:00', 111111, NULL, '2001-06-14 00:00:00', '16:00', '31440598', '54', '14', '53', '13', '39', '42', '55', '144', '338'),
(54, NULL, '2001-11-12 00:00:00', '08:00', '2001-11-12 00:00:00', 111111, NULL, '2001-11-12 00:00:00', '16:00', '32450079', '54', '25', '53', '35', '40', '41', '33', '144', '338'),
(55, NULL, '2002-01-23 00:00:00', '08:00', '2002-03-06 00:00:00', 111111, NULL, '2002-01-23 00:00:00', '16:00', '33450035', '54', '14', '53', '29', '39', '56', '55', '201', '531'),
(56, NULL, '2002-04-10 00:00:00', '08:00', '2002-07-15 00:00:00', 111111, NULL, '2002-04-10 00:00:00', '16:00', '33450341', '54', '14', '53', '35', '39', '56', '55', '199', '527'),
(57, NULL, '2002-04-09 00:00:00', '08:00', '2002-07-15 00:00:00', 111111, NULL, '2002-04-09 00:00:00', '16:00', '33450340', '54', '14', '53', '35', '39', '47', '55', '199', '526'),
(58, NULL, '2002-07-31 00:00:00', '08:00', '2002-10-14 00:00:00', 111111, NULL, '2002-07-31 00:00:00', '16:00', '33450441', '54', '14', '53', '35', '39', '56', '55', '201', '532'),
(59, NULL, '2002-08-06 00:00:00', '08:00', '2002-10-28 00:00:00', 111111, NULL, '2002-08-06 00:00:00', '16:00', '33450493', '54', '19', '53', '35', '40', '41', '33', '229', '600'),
(60, NULL, '2002-08-07 00:00:00', '08:00', '2002-10-28 00:00:00', 111111, NULL, '2002-08-07 00:00:00', '16:00', '33450494', '54', '19', '53', '35', '40', '41', '33', '229', '601'),
(61, NULL, '2002-10-28 00:00:00', '08:00', '2002-10-28 00:00:00', 111111, NULL, '2002-10-28 00:00:00', '16:00', '32460054', '54', '14', '53', '32', '39', '42', '55', '144', '338'),
(62, NULL, '2003-01-02 00:00:00', '08:00', '2003-01-02 00:00:00', 111111, NULL, '2003-01-02 00:00:00', '16:00', '31460045', '54', '25', '53', '35', '40', '41', '33', '214', '549'),
(63, NULL, '2003-02-20 00:00:00', '08:00', '2003-02-20 00:00:00', 111111, NULL, '2003-02-20 00:00:00', '16:00', '32460192', '54', '14', '53', '34', '39', '42', '55', '144', '338'),
(64, NULL, '2003-10-22 00:00:00', '08:00', '2003-10-24 00:00:00', 111111, NULL, '2003-10-22 00:00:00', '16:00', '32470050', '54', '14', '53', '35', '39', '42', '55', '144', '338'),
(65, NULL, '2003-10-22 00:00:00', '08:00', '2003-10-25 00:00:00', 111111, NULL, '2003-10-22 00:00:00', '16:00', '32470051', '54', '25', '53', '35', '40', '41', '33', '144', '338'),
(66, NULL, '2004-03-04 00:00:00', '08:00', '2004-03-03 00:00:00', 111111, NULL, '2004-03-04 00:00:00', '16:00', '33470030', '54', '14', '53', '35', '39', '56', '55', '71', '143'),
(67, NULL, '2004-03-05 00:00:00', '08:00', '2004-03-03 00:00:00', 111111, NULL, '2004-03-05 00:00:00', '16:00', '33470031', '54', '14', '53', '35', '39', '56', '55', '71', '142'),
(68, NULL, '2004-03-30 00:00:00', '08:00', '2004-03-29 00:00:00', 111111, NULL, '2004-03-30 00:00:00', '16:00', '33470098', '54', '14', '53', '35', '39', '47', '55', '199', '526'),
(69, NULL, '2004-04-08 00:00:00', '08:00', '2004-04-09 00:00:00', 111111, NULL, '2004-04-08 00:00:00', '16:00', '33470188', '54', '14', '53', '35', '39', '56', '55', '179', '454'),
(70, NULL, '2004-04-24 00:00:00', '08:00', '2004-04-27 00:00:00', 111111, NULL, '2004-04-24 00:00:00', '16:00', '32470322', '54', '25', '53', '37', '40', '41', '33', '145', '339'),
(71, NULL, '2004-05-11 00:00:00', '08:00', '2004-05-04 00:00:00', 111111, NULL, '2004-05-11 00:00:00', '16:00', '33470237', '54', '14', '53', '35', '39', '56', '55', '201', '531'),
(72, NULL, '2004-08-05 00:00:00', '08:00', '2004-07-23 00:00:00', 111111, NULL, '2004-08-05 00:00:00', '16:00', '33470363', '54', '14', '53', '35', '39', '56', '55', '71', '145'),
(73, NULL, '2004-08-09 00:00:00', '08:00', '2004-08-06 00:00:00', 111111, NULL, '2004-08-09 00:00:00', '16:00', '33470380', '54', '15', '53', '35', '40', '41', '33', '179', '454'),
(74, NULL, '2004-08-24 00:00:00', '08:00', '2004-08-19 00:00:00', 111111, NULL, '2004-08-24 00:00:00', '16:00', '32470439', '54', '14', '53', '13', '39', '42', '55', '144', '338'),
(75, NULL, '2004-08-09 00:00:00', '08:00', '2004-08-30 00:00:00', 111111, NULL, '2004-08-09 00:00:00', '16:00', '33470431', '54', '15', '53', '35', '40', '41', '33', '179', '454'),
(76, NULL, '2004-09-06 00:00:00', '08:00', '2004-09-03 00:00:00', 111111, NULL, '2004-09-06 00:00:00', '16:00', '32470444', '54', '25', '53', '39', '40', '42', '33', '145', '342'),
(77, NULL, '2004-09-07 00:00:00', '08:00', '2004-09-10 00:00:00', 111111, NULL, '2004-09-07 00:00:00', '16:00', '32470446', '54', '14', '53', '13', '39', '56', '55', '145', '339'),
(78, NULL, '2004-09-07 00:00:00', '08:00', '2004-09-10 00:00:00', 111111, NULL, '2004-09-07 00:00:00', '16:00', '32470447', '54', '14', '53', '13', '39', '56', '55', '145', '340'),
(79, NULL, '2004-09-07 00:00:00', '08:00', '2004-09-10 00:00:00', 111111, NULL, '2004-09-07 00:00:00', '16:00', '32470448', '54', '14', '53', '13', '39', '56', '55', '145', '341'),
(80, NULL, '2004-09-07 00:00:00', '08:00', '2004-09-10 00:00:00', 111111, NULL, '2004-09-07 00:00:00', '16:00', '32470449', '54', '14', '53', '13', '39', '56', '55', '145', '342'),
(81, NULL, '2004-11-24 00:00:00', '08:00', '2004-11-22 00:00:00', 111111, NULL, '2004-11-24 00:00:00', '16:00', '33480126', '54', '14', '53', '40', '39', '56', '55', '201', '531'),
(82, NULL, '2005-02-22 00:00:00', '08:00', '2005-01-06 00:00:00', 111111, NULL, '2005-02-22 00:00:00', '16:00', '33480183', '54', '14', '53', '35', '39', '56', '55', '158', '371'),
(83, NULL, '2005-02-16 00:00:00', '08:00', '2005-01-06 00:00:00', 111111, NULL, '2005-02-16 00:00:00', '16:00', '33480184', '54', '14', '53', '35', '39', '56', '55', '158', '372'),
(84, NULL, '2005-02-16 00:00:00', '08:00', '2005-01-06 00:00:00', 111111, NULL, '2005-02-16 00:00:00', '16:00', '33480185', '54', '14', '53', '35', '39', '56', '55', '158', '373'),
(85, NULL, '2005-09-01 00:00:00', '08:00', '2005-01-06 00:00:00', 111111, NULL, '2005-09-01 00:00:00', '16:00', '33480211', '54', '14', '53', '35', '39', '56', '55', NULL, '597'),
(86, NULL, '2005-01-09 00:00:00', '08:00', '2005-01-10 00:00:00', 111111, NULL, '2005-01-09 00:00:00', '16:00', '33480222', '54', '28', '53', '35', '40', '41', '33', '71', '145'),
(87, NULL, '2005-02-22 00:00:00', '08:00', '2005-01-10 00:00:00', 111111, NULL, '2005-02-22 00:00:00', '16:00', '33480224', '54', '28', '53', '42', '40', '41', '33', NULL, '597'),
(88, NULL, '2005-01-24 00:00:00', '08:00', '2005-01-25 00:00:00', 111111, NULL, '2005-01-23 00:00:00', '16:00', '32480179', '54', '18', '53', '43', '40', '41', '33', '145', '341'),
(89, NULL, '2005-02-16 00:00:00', '08:00', '2005-02-04 00:00:00', 111111, NULL, '2005-02-16 00:00:00', '16:00', '31480103', '54', '15', '53', '35', '40', '41', '33', '214', '549'),
(90, NULL, '2005-02-16 00:00:00', '08:00', '2005-02-16 00:00:00', 111111, NULL, '2005-02-16 00:00:00', '16:00', '32480133', '54', '28', '53', '44', '40', '41', '33', '144', '338'),
(91, NULL, '2005-03-14 00:00:00', '08:00', '2005-03-15 00:00:00', 111111, NULL, '2005-03-14 00:00:00', '16:00', '33480279', '54', '16', '53', '35', '40', '42', '33', '179', '454'),
(92, NULL, '2005-03-29 00:00:00', '08:00', '2005-03-29 00:00:00', 111111, NULL, '2005-03-29 00:00:00', '16:00', '33480291', '54', '15', '53', '35', '40', '41', '33', '179', '454'),
(93, NULL, '2005-06-10 00:00:00', '08:00', '2005-06-10 00:00:00', 111111, NULL, '2005-06-10 00:00:00', '16:00', '32480425', '54', '14', '53', '13', '39', '42', '55', '144', '338'),
(94, NULL, '2005-07-20 00:00:00', '08:00', '2005-07-04 00:00:00', 111111, NULL, '2005-07-20 00:00:00', '16:00', '33480480', '54', '14', '53', '35', '39', '56', '55', '158', '372'),
(95, NULL, '2005-09-08 00:00:00', '08:00', '2005-09-08 00:00:00', 111111, NULL, '2005-09-08 00:00:00', '16:00', '33480554', '54', '28', '53', '45', '40', '41', '33', NULL, '597'),
(96, NULL, '1997-05-25 00:00:00', '08:00', '1997-05-22 00:00:00', 111111, NULL, '1997-05-25 00:00:00', '16:00', '31400110', '54', '14', '53', '46', '39', '56', '55', '159', '146'),
(97, NULL, '2001-10-18 00:00:00', '08:00', '2002-01-16 00:00:00', 111111, NULL, '2001-10-18 00:00:00', '16:00', '33450042', '54', '14', '53', '35', '39', '56', '55', '159', '146'),
(98, NULL, '2005-11-16 00:00:00', '08:00', '2005-11-08 00:00:00', 111111, NULL, '2005-11-16 00:00:00', '16:00', '32480575', '54', '14', '53', '13', '39', '42', '55', '144', '338'),
(99, NULL, '2005-11-22 00:00:00', '08:00', '2005-11-16 00:00:00', 111111, NULL, '2005-11-11 00:00:00', '16:00', '33480628', '54', '28', '53', '35', '40', '41', '33', '71', '145'),
(100, NULL, '2005-12-15 00:00:00', '08:00', '2005-12-05 00:00:00', 111111, NULL, '2005-12-15 00:00:00', '16:00', '33480660', '54', '14', '53', '48', '39', '56', '55', '71', '145'),
(101, NULL, '2006-01-12 00:00:00', '08:00', '2006-01-09 00:00:00', 111111, NULL, '2006-01-11 00:00:00', '16:00', '33490012', '54', '14', '53', '35', '39', '56', '55', '71', '144'),
(102, NULL, '2002-10-23 00:00:00', '08:00', '2002-11-07 00:00:00', 111111, NULL, '2002-10-23 00:00:00', '16:00', '33460031', '54', '14', '53', '35', '39', '56', '55', '159', '146'),
(103, NULL, '2006-01-30 00:00:00', '08:00', '2006-01-09 00:00:00', 111111, NULL, '2006-01-24 00:00:00', '16:00', '33490014', '54', '14', '53', '35', '39', '56', '55', '132', '307'),
(104, NULL, '2006-02-16 00:00:00', '08:00', '2006-01-31 00:00:00', 111111, NULL, '2006-02-16 00:00:00', '16:00', '33490050', '54', '14', '53', '35', '39', '56', '55', '159', '374'),
(105, NULL, '2006-02-17 00:00:00', '08:00', '2006-01-31 00:00:00', 111111, NULL, '2006-02-17 00:00:00', '16:00', '33490051', '54', '14', '53', '35', '39', '56', '55', '159', '376'),
(106, NULL, '2006-03-07 00:00:00', '08:00', '2006-03-03 00:00:00', 111111, NULL, '2006-03-07 00:00:00', '16:00', '33490085', '54', '19', '53', '35', '40', '41', '33', '70', '140'),
(107, NULL, '2006-03-28 00:00:00', '08:00', '2006-03-03 00:00:00', 111111, NULL, '2006-03-28 00:00:00', '16:00', '33490087', '54', '14', '53', '35', '39', '56', '55', '71', '145'),
(108, NULL, '2006-03-02 00:00:00', '08:00', '2006-03-03 00:00:00', 111111, NULL, '2006-03-02 00:00:00', '16:00', '33490088', '54', '19', '53', '35', '40', '41', '33', '179', '451'),
(109, NULL, '2006-03-08 00:00:00', '08:00', '2006-03-03 00:00:00', 111111, NULL, '2006-03-08 00:00:00', '16:00', '33490086', '54', '14', '53', '35', '39', '47', '55', '70', '141'),
(110, NULL, '2006-03-11 00:00:00', '08:00', '2006-03-07 00:00:00', 111111, NULL, '2006-03-11 00:00:00', '16:00', '33490091', '54', '15', '53', '35', '40', '41', '33', '201', '532'),
(111, NULL, '2006-04-27 00:00:00', '08:00', '2006-04-18 00:00:00', 111111, NULL, '2006-04-27 00:00:00', '16:00', '33490149', '54', '14', '53', '51', '39', '56', '55', '199', '527'),
(112, NULL, '2006-04-26 00:00:00', '08:00', '2006-04-18 00:00:00', 111111, NULL, '2006-04-26 00:00:00', '16:00', '33490148', '54', '28', '53', '51', '40', '42', '55', '199', '526'),
(113, NULL, '2006-08-01 00:00:00', '08:00', '2006-05-17 00:00:00', 111111, NULL, '2006-08-01 00:00:00', '16:00', '33490290', '54', '15', '53', '35', '40', '41', '33', '158', '373'),
(114, NULL, '2006-06-15 00:00:00', '08:00', '2006-06-15 00:00:00', 111111, NULL, '2006-06-15 00:00:00', '16:00', '32490324', '54', '14', '53', '13', '39', '56', '55', '144', '337'),
(115, NULL, '2006-06-15 00:00:00', '08:00', '2006-06-15 00:00:00', 111111, NULL, '2006-06-15 00:00:00', '16:00', '32490335', '54', '14', '53', '13', '39', '42', '55', '144', '338'),
(116, NULL, '2006-07-04 00:00:00', '08:00', '2006-07-03 00:00:00', 111111, NULL, '2006-07-04 00:00:00', '16:00', '33490236', '54', '14', '53', '52', '39', '56', '55', '159', '374'),
(117, NULL, '2006-07-17 00:00:00', '08:00', '2006-07-03 00:00:00', 111111, NULL, '2006-07-17 00:00:00', '16:00', '33490244', '54', '14', '53', '52', '39', '42', '55', '70', '141'),
(118, NULL, '2006-08-19 00:00:00', '08:00', '2006-07-31 00:00:00', 111111, NULL, '2006-08-11 00:00:00', '16:00', '33490303', '54', '28', '53', '35', '40', '41', '33', '33', '42'),
(119, NULL, '2006-08-04 00:00:00', '08:00', '2006-08-02 00:00:00', 111111, NULL, '2006-08-03 00:00:00', '16:00', '32490396', '54', '19', '53', '35', '40', '41', '33', '145', '340'),
(120, NULL, '2006-08-08 00:00:00', '08:00', '2006-08-09 00:00:00', 111111, NULL, '2006-08-08 00:00:00', '16:00', '33490358', '54', '14', '53', '35', '39', '56', '55', '201', '531'),
(121, NULL, '2006-10-18 00:00:00', '08:00', '2006-08-15 00:00:00', 111111, NULL, '2006-10-18 00:00:00', '16:00', '33490363', '54', '14', '53', '35', '39', '47', '55', '70', '141'),
(122, NULL, '2006-08-24 00:00:00', '08:00', '2006-08-23 00:00:00', 111111, NULL, '2006-08-24 00:00:00', '16:00', '32490418', '54', '19', '53', '35', '40', '41', '33', '145', '340'),
(123, NULL, '2006-09-14 00:00:00', '08:00', '2006-09-06 00:00:00', 111111, NULL, '2006-09-11 00:00:00', '16:00', '33490387', '54', '15', '53', '35', '40', '41', '33', '158', '373'),
(124, NULL, '2006-09-10 00:00:00', '08:00', '2006-09-14 00:00:00', 111111, NULL, '2006-09-10 00:00:00', '16:00', '33490394', '54', '19', '53', '56', '40', '41', '33', NULL, '597'),
(125, NULL, '2006-11-08 00:00:00', '08:00', '2006-11-03 00:00:00', 111111, NULL, '2006-11-08 00:00:00', '16:00', '32490465', '54', '28', '53', '35', '40', '41', '33', '145', '342'),
(126, NULL, '2005-11-04 00:00:00', '08:00', '2005-11-04 00:00:00', 111111, NULL, '2005-11-04 00:00:00', '16:00', '33480626', '54', '15', '53', '35', '40', '41', '33', '159', '146'),
(127, NULL, '2007-02-20 00:00:00', '08:00', '2007-01-28 00:00:00', 111111, NULL, '2007-02-20 00:00:00', '16:00', '33500027', '54', '14', '53', '35', '39', '56', '55', '159', '377'),
(128, NULL, '2007-02-23 00:00:00', '08:00', '2007-01-28 00:00:00', 111111, NULL, '2007-02-23 00:00:00', '16:00', '33500029', '54', '19', '53', '35', '40', '41', '33', '199', '527'),
(129, NULL, '2007-02-22 00:00:00', '08:00', '2007-01-28 00:00:00', 111111, NULL, '2007-02-22 00:00:00', '16:00', '33500028', '54', '14', '53', '35', '39', '47', '55', '199', '526'),
(130, NULL, '2007-02-28 00:00:00', '08:00', '2007-02-06 00:00:00', 111111, NULL, '2007-02-28 00:00:00', '16:00', '33500082', '54', '15', '53', '35', '40', '41', '33', '184', '467'),
(131, NULL, '2007-02-28 00:00:00', '08:00', '2007-02-06 00:00:00', 111111, NULL, '2007-02-28 00:00:00', '16:00', '33500084', '54', '15', '53', '35', '40', '41', '33', '181', '469'),
(132, NULL, '2007-03-08 00:00:00', '08:00', '2007-02-22 00:00:00', 111111, NULL, '2007-03-08 00:00:00', '16:00', '34500166', '54', '14', '53', '35', '39', '56', '55', '229', '601'),
(133, NULL, '2007-03-07 00:00:00', '08:00', '2007-02-28 00:00:00', 111111, NULL, '2007-03-07 00:00:00', '16:00', '33500115', '54', '14', '53', '35', '39', '56', '55', '229', '600'),
(134, NULL, '2007-03-08 00:00:00', '08:00', '2007-02-28 00:00:00', 111111, NULL, '2007-03-08 00:00:00', '16:00', '33500116', '54', '14', '53', '35', '39', '56', '55', '229', '601'),
(135, NULL, '2007-06-06 00:00:00', '08:00', '2007-06-06 00:00:00', 111111, NULL, '2007-06-06 00:00:00', '16:00', '33500327', '54', '25', '53', '35', '40', '41', '33', '184', '467'),
(136, NULL, '2007-06-19 00:00:00', '08:00', '2007-06-08 00:00:00', 111111, NULL, '2007-06-19 00:00:00', '16:00', '33500332', '54', '15', '53', '35', '40', '41', '33', '159', '146'),
(137, NULL, '2007-10-26 00:00:00', '08:00', '2007-06-19 00:00:00', 111111, NULL, '2007-10-26 00:00:00', '16:00', '33500348', '54', '28', '53', '60', '40', '41', '33', '181', '469'),
(138, NULL, '2007-09-06 00:00:00', '08:00', '2007-08-09 00:00:00', 111111, NULL, '2007-09-06 00:00:00', '16:00', '33500407', '54', '19', '53', '35', '40', '41', '33', '179', '451'),
(139, NULL, '2008-03-01 00:00:00', '08:00', '2007-08-27 00:00:00', 111111, NULL, '2008-03-01 00:00:00', '16:00', '33500457', '54', '19', '53', '35', '40', '41', '33', '70', '140'),
(140, NULL, '2007-10-03 00:00:00', '08:00', '2007-09-17 00:00:00', 111111, NULL, '2007-10-03 00:00:00', '16:00', '33500485', '54', '28', '53', '35', '40', '41', '33', '71', '145'),
(141, NULL, '2007-10-17 00:00:00', '08:00', '2007-09-25 00:00:00', 111111, NULL, '2007-10-17 00:00:00', '16:00', '32500393', '54', '14', '53', '63', '39', '56', '55', '145', '339'),
(142, NULL, '2007-10-02 00:00:00', '08:00', '2007-09-25 00:00:00', 111111, NULL, '2007-10-02 00:00:00', '16:00', '32500399', '54', '14', '53', '64', '39', '46', '55', '214', '549'),
(143, NULL, '2007-10-15 00:00:00', '08:00', '2007-10-15 00:00:00', 111111, NULL, '2007-10-15 00:00:00', '16:00', '33500512', '54', '28', '53', '35', '40', '41', '33', '71', '145'),
(144, NULL, '2007-10-30 00:00:00', '08:00', '2007-10-29 00:00:00', 111111, NULL, '2007-10-30 00:00:00', '16:00', '33500522', '54', '28', '53', '66', '40', '41', '33', '201', '531'),
(145, NULL, '2007-11-11 00:00:00', '08:00', '2007-11-01 00:00:00', 111111, NULL, '2007-11-10 00:00:00', '16:00', '33500528', '54', '15', '53', '35', '40', '41', '33', '179', '452'),
(146, NULL, '2007-12-20 00:00:00', '08:00', '2007-12-13 00:00:00', 111111, NULL, '2007-12-20 00:00:00', '16:00', '33500617', '54', '25', '53', '35', '40', '41', '33', '184', '467'),
(147, NULL, '2008-02-26 00:00:00', '08:00', '2008-01-28 00:00:00', 111111, NULL, '2008-02-26 00:00:00', '16:00', '34510107', '54', '14', '53', '35', '39', '47', '55', '132', '308'),
(148, NULL, '2008-04-29 00:00:00', '08:00', '2008-02-15 00:00:00', 111111, NULL, '2008-04-29 00:00:00', '16:00', '33510060', '54', '18', '53', '35', '40', '41', '33', '201', '531'),
(149, NULL, '2008-02-22 00:00:00', '08:00', '2008-02-22 00:00:00', 111111, NULL, '2008-02-22 00:00:00', '16:00', '33510065', '54', '57', '53', '35', '40', '41', '33', '71', '144'),
(150, NULL, '2008-03-24 00:00:00', '08:00', '2008-03-22 00:00:00', 111111, NULL, '2008-03-24 00:00:00', '16:00', '33510142', '54', '28', '53', '35', '40', '41', '33', '71', '145'),
(151, NULL, '2008-05-25 00:00:00', '08:00', '2008-05-05 00:00:00', 111111, NULL, '2008-05-25 00:00:00', '16:00', '33510240', '54', '57', '53', '35', '40', '41', '33', '71', '144'),
(152, NULL, '2008-05-18 00:00:00', '08:00', '2008-05-05 00:00:00', 111111, NULL, '2008-05-18 00:00:00', '16:00', '33510239', '54', '28', '53', '35', '40', '41', '33', '71', '145'),
(153, NULL, '2008-05-12 00:00:00', '08:00', '2008-05-05 00:00:00', 111111, NULL, '2008-05-11 00:00:00', '16:00', '33510236', '54', '15', '53', '35', '40', '41', '33', '179', '453'),
(154, NULL, '2008-05-22 00:00:00', '08:00', '2008-05-05 00:00:00', 111111, NULL, '2008-05-22 00:00:00', '16:00', '33510241', '54', '15', '53', '35', '40', '41', '33', '184', '467'),
(155, NULL, '2008-05-14 00:00:00', '08:00', '2008-05-12 00:00:00', 111111, NULL, '2008-05-13 00:00:00', '16:00', '32510216', '54', '28', '53', '35', '40', '41', '33', '145', '339'),
(156, NULL, '2008-06-02 00:00:00', '08:00', '2008-05-30 00:00:00', 111111, NULL, '2008-06-02 00:00:00', '16:00', '32510266', '54', '15', '53', '35', '40', '41', '33', '145', '339'),
(157, NULL, '2008-06-03 00:00:00', '08:00', '2008-06-02 00:00:00', 111111, NULL, '2008-06-03 00:00:00', '16:00', '32510269', '54', '15', '53', '73', '40', '41', '33', '214', '549'),
(158, NULL, '2003-01-10 00:00:00', '08:00', '2003-01-10 00:00:00', 111111, NULL, '2003-01-10 00:00:00', '16:00', '11111111', '9', '19', '1', '35', '40', '47', '33', '116', '254'),
(159, NULL, '2004-02-10 00:00:00', '08:00', '2004-02-10 00:00:00', 111111, NULL, '2004-02-10 00:00:00', '16:00', '21470255', '10', '14', '1', '35', '39', '47', '55', '161', '380'),
(160, NULL, '2001-04-10 00:00:00', '08:00', '2001-04-10 00:00:00', 111111, NULL, '2001-04-10 00:00:00', '16:00', '11111111', '9', '23', '1', '35', '40', '47', '55', '120', '276'),
(161, NULL, '2008-04-10 00:00:00', '08:00', '2008-04-10 00:00:00', 111111, NULL, '2008-04-10 00:00:00', '16:00', '21510111', '9', '15', '1', '35', '40', '41', '33', '127', '286'),
(162, NULL, '2001-05-10 00:00:00', '08:00', '2001-05-10 00:00:00', 111111, NULL, '2001-05-10 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '47', '33', '91', '193'),
(163, NULL, '2000-08-17 00:00:00', '08:00', '2005-05-10 00:00:00', 244172, NULL, '2000-08-17 00:00:00', '16:00', '11111111', '9', '28', '1', '35', '40', '42', '33', '205', '538'),
(164, NULL, '2005-06-10 00:00:00', '08:00', '2005-06-10 00:00:00', 111111, NULL, '2005-06-10 00:00:00', '16:00', '32480424', '54', '14', '53', '13', '39', '56', '55', '144', '337'),
(165, NULL, '2001-07-13 00:00:00', '08:00', '2001-07-10 00:00:00', 111111, NULL, '2001-07-13 00:00:00', '16:00', '35440031', '54', '28', '53', '35', '40', '56', '55', '24', '26'),
(166, NULL, '2007-07-10 00:00:00', '08:00', '2007-07-10 00:00:00', 111111, NULL, '2007-07-10 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '41', '33', '221', '582'),
(167, NULL, '1996-10-10 00:00:00', '08:00', '1996-10-10 00:00:00', 111111, NULL, '1996-10-10 00:00:00', '16:00', '21390476', '9', '15', '1', '35', '40', '42', '33', '166', '401'),
(168, NULL, '2006-12-10 00:00:00', '08:00', '2006-12-10 00:00:00', 1319, NULL, '2006-12-10 00:00:00', '16:00', '11111111', '58', '14', '1', '35', '39', '56', '55', '109', '234'),
(169, NULL, '2005-01-11 00:00:00', '08:00', '2005-01-11 00:00:00', 111111, NULL, '2005-01-11 00:00:00', '16:00', '21480115', '10', '14', '1', '35', '39', '47', '55', '74', '159'),
(170, NULL, '2004-03-11 00:00:00', '08:00', '2004-03-11 00:00:00', 111111, NULL, '2004-03-11 00:00:00', '16:00', '21470289', '10', '14', '1', '35', '39', '47', '55', '178', '450'),
(171, NULL, '2007-06-11 00:00:00', '08:00', '2007-06-11 00:00:00', 111111, NULL, '2007-06-11 00:00:00', '16:00', '11111111', '54', '59', '1', '35', '40', '47', '33', '73', '151'),
(172, NULL, '2007-12-11 00:00:00', '08:00', '2007-12-11 00:00:00', 101341, NULL, '2007-12-11 00:00:00', '16:00', '11111111', '8', '15', '1', '79', '40', '42', '33', '204', '536'),
(173, NULL, '2003-02-12 00:00:00', '08:00', '2003-02-12 00:00:00', 111111, NULL, '2003-02-12 00:00:00', '16:00', '31460069', '54', '19', '53', '80', '40', '41', '33', '167', '411'),
(174, NULL, '2004-02-12 00:00:00', '08:00', '2004-02-12 00:00:00', 111111, NULL, '2004-02-12 00:00:00', '16:00', '21470256', '10', '14', '1', '35', '39', '47', '55', '79', '224'),
(175, NULL, '2004-02-12 00:00:00', '08:00', '2004-02-12 00:00:00', 111111, NULL, '2004-02-12 00:00:00', '16:00', '21470264', '10', '14', '1', '35', '39', '47', '55', '166', '401'),
(176, NULL, '2006-02-12 00:00:00', '08:00', '2006-02-12 00:00:00', 111111, NULL, '2006-02-13 00:00:00', '16:00', '11111111', '9', '16', '1', '35', '40', '47', '55', '27', '87'),
(177, NULL, '2008-02-12 00:00:00', '08:00', '2008-02-12 00:00:00', 111111, NULL, '2008-02-12 00:00:00', '16:00', '21510013', '10', '14', '1', '35', '39', '47', '55', '166', '401'),
(178, NULL, '2008-02-12 00:00:00', '08:00', '2008-02-12 00:00:00', 111111, NULL, '2008-02-12 00:00:00', '16:00', '21510015', '10', '14', '1', '35', '39', '47', '55', '166', '404'),
(179, NULL, '2006-03-12 00:00:00', '08:00', '2006-03-12 00:00:00', 111111, NULL, '2006-03-12 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '118', '268'),
(180, NULL, '2006-03-12 00:00:00', '08:00', '2006-03-12 00:00:00', 111111, NULL, '2006-03-12 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '118', '269'),
(181, NULL, '2007-04-12 00:00:00', '08:00', '2007-04-12 00:00:00', 111111, NULL, '2007-04-12 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '45', '33', '91', '194'),
(182, NULL, '2007-05-12 00:00:00', '08:00', '2007-05-12 00:00:00', 111111, NULL, '2007-05-12 00:00:00', '16:00', '11111111', '9', '25', '1', '35', '40', '41', '33', '116', '254'),
(183, NULL, '2007-06-12 00:00:00', '08:00', '2007-06-12 00:00:00', 111111, NULL, '2007-06-12 00:00:00', '16:00', '11111111', '54', '59', '1', '35', '40', '47', '33', '73', '151'),
(184, NULL, '2007-07-12 00:00:00', '08:00', '2007-07-12 00:00:00', 111111, NULL, '2007-07-12 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '41', '33', '120', '276'),
(185, NULL, '2002-11-12 00:00:00', '08:00', '2002-11-12 00:00:00', 27343, NULL, '2002-11-12 00:00:00', '16:00', '11111111', '9', '28', '1', '83', '40', '46', '29', '119', '275'),
(186, NULL, '2003-12-12 00:00:00', '08:00', '2003-12-12 00:00:00', 111111, NULL, '2003-12-12 00:00:00', '16:00', '11111111', '9', '24', '1', '35', '40', '42', '33', '120', '277'),
(187, NULL, '2005-12-15 00:00:00', '08:00', '2005-12-12 00:00:00', 111111, NULL, '2005-12-15 00:00:00', '16:00', '21480420', '10', '14', '1', '35', '39', '47', '55', '39', '64'),
(188, NULL, '2005-01-13 00:00:00', '08:00', '2005-01-13 00:00:00', 111111, NULL, '2005-01-13 00:00:00', '16:00', '21480116', '10', '14', '1', '35', '39', '47', '55', '152', '358'),
(189, NULL, '2007-02-13 00:00:00', '08:00', '2007-02-13 00:00:00', 111111, NULL, '2007-02-13 00:00:00', '16:00', '32500095', '54', '28', '53', '35', '40', '41', '33', '72', '148'),
(190, NULL, '2008-02-13 00:00:00', '08:00', '2008-02-13 00:00:00', 111111, NULL, '2008-02-13 00:00:00', '16:00', '21510014', '10', '14', '1', '35', '39', '47', '55', '166', '403'),
(191, NULL, '1998-03-03 00:00:00', '08:00', '1998-03-13 00:00:00', 111111, NULL, '1998-03-03 00:00:00', '16:00', '31410163', '54', '25', '53', '35', '40', '41', '33', '144', '337'),
(192, NULL, '2005-05-13 00:00:00', '08:00', '2005-05-13 00:00:00', 51957, NULL, '2005-05-13 00:00:00', '16:00', '24480658', '10', '14', '1', '35', '39', '47', '55', '119', '275'),
(193, NULL, '2001-09-13 00:00:00', '08:00', '2001-09-13 00:00:00', 111111, NULL, '2001-09-14 00:00:00', '16:00', '11111111', '9', '21', '1', '35', '40', '47', '34', '116', '254'),
(194, NULL, '2007-09-13 00:00:00', '08:00', '2007-09-13 00:00:00', 231021, NULL, '2007-09-13 00:00:00', '16:00', '24500592', '9', '28', '1', '87', '40', '42', '33', '205', '537'),
(195, NULL, '2005-10-13 00:00:00', '08:00', '2005-10-13 00:00:00', 111111, NULL, '2005-10-14 00:00:00', '16:00', '24480913', '9', '15', '1', '35', '40', '45', '33', '91', '194'),
(196, NULL, '2004-12-13 00:00:00', '08:00', '2004-12-13 00:00:00', 111111, NULL, '2004-12-13 00:00:00', '16:00', '21480067', '10', '14', '1', '35', '39', '47', '55', '127', '285'),
(197, NULL, '2003-01-14 00:00:00', '08:00', '2003-01-14 00:00:00', 111111, NULL, '2003-01-14 00:00:00', '16:00', '21460283', '9', '15', '1', '35', '40', '41', '33', '106', '223'),
(198, NULL, '2007-01-14 00:00:00', '08:00', '2007-01-14 00:00:00', 111111, NULL, '2007-01-14 00:00:00', '16:00', '11111111', '60', '14', '1', '35', '39', '47', '55', '73', '151'),
(199, NULL, '2001-06-15 00:00:00', '08:00', '2001-06-14 00:00:00', 111111, NULL, '2001-06-15 00:00:00', '16:00', '31440597', '54', '14', '53', '13', '39', '56', '55', '144', '337'),
(200, NULL, '2001-04-20 00:00:00', '08:00', '2002-08-14 00:00:00', 111111, NULL, '2001-04-20 00:00:00', '16:00', '32440288', '54', '15', '53', '35', '40', '41', '33', '24', '26'),
(201, NULL, '2007-11-09 00:00:00', '08:00', '2007-11-14 00:00:00', 111111, NULL, '2007-11-09 00:00:00', '16:00', '32500450', '54', '15', '53', '35', '40', '41', '33', '72', '147'),
(202, NULL, '2001-01-15 00:00:00', '08:00', '2001-01-15 00:00:00', 111111, NULL, '2001-01-16 00:00:00', '16:00', '11111111', '7', '15', '1', '35', '40', '47', '33', '116', '254'),
(203, NULL, '2003-02-15 00:00:00', '08:00', '2003-02-15 00:00:00', 111111, NULL, '2003-02-15 00:00:00', '16:00', '21490014', '10', '14', '1', '35', '39', '47', '55', '161', '381'),
(204, NULL, '2004-03-15 00:00:00', '08:00', '2004-03-15 00:00:00', 171188, NULL, '2004-03-17 00:00:00', '16:00', '11111111', '9', '23', '1', '35', '40', '41', '33', '116', '254'),
(205, NULL, '2006-03-15 00:00:00', '08:00', '2006-03-15 00:00:00', 422519, NULL, '2006-03-15 00:00:00', '16:00', '11111111', '10', '14', '1', '35', '39', '47', '55', '91', '193'),
(206, NULL, '2004-06-15 00:00:00', '08:00', '2004-06-15 00:00:00', 10153, NULL, '2004-06-15 00:00:00', '16:00', '11111111', '9', '23', '1', '35', '40', '41', '33', '116', '253'),
(207, NULL, '2007-07-15 00:00:00', '08:00', '2007-07-15 00:00:00', 111111, NULL, '2007-07-15 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '16', '12'),
(208, NULL, '1998-03-22 00:00:00', '08:00', '1998-03-22 00:00:00', 23444, NULL, '1998-03-25 00:00:00', '16:00', '73410019', '9', '15', '1', '35', '40', '41', '33', '61', '119'),
(209, NULL, '2007-02-16 00:00:00', '08:00', '2007-02-16 00:00:00', 111111, NULL, '2007-02-16 00:00:00', '16:00', '21500024', '10', '14', '1', '35', '39', '47', '55', '153', '359'),
(210, NULL, '2004-06-15 00:00:00', '08:00', '2004-06-16 00:00:00', 174895, NULL, '2004-06-15 00:00:00', '16:00', '11111111', '9', '23', '1', '35', '40', '41', '33', '116', '254'),
(211, NULL, '2007-06-15 00:00:00', '08:00', '2007-06-16 00:00:00', 111111, NULL, '2007-06-16 00:00:00', '16:00', '11111111', '9', '15', '1', '88', '40', '42', '33', NULL, '440'),
(212, NULL, '2007-10-16 00:00:00', '08:00', '2007-10-16 00:00:00', 2138, NULL, '2007-10-16 00:00:00', '16:00', '11111111', '61', '19', '1', '35', '40', '63', '62', '114', '244'),
(213, NULL, '2006-02-17 00:00:00', '08:00', '2006-02-17 00:00:00', 111111, NULL, '2006-02-17 00:00:00', '16:00', '21490015', '10', '14', '1', '35', '39', '47', '55', '106', '223'),
(214, NULL, '2004-03-17 00:00:00', '08:00', '2004-03-17 00:00:00', 111111, NULL, '2004-03-17 00:00:00', '16:00', '21470302', '9', '15', '1', '35', '40', '41', '64', '39', '63'),
(215, NULL, '2004-05-17 00:00:00', '08:00', '2004-05-17 00:00:00', 111111, NULL, '2004-05-17 00:00:00', '16:00', '21470384', '9', '15', '1', '89', '40', '42', '33', '79', '164'),
(216, NULL, '2006-05-17 00:00:00', '08:00', '2006-05-17 00:00:00', 111111, NULL, '2006-05-17 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '41', '33', '221', '582'),
(217, NULL, '2007-07-17 00:00:00', '08:00', '2007-07-17 00:00:00', 111111, NULL, '2007-07-17 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '41', '33', '91', '193'),
(218, NULL, '2007-07-17 00:00:00', '08:00', '2007-07-17 00:00:00', 111111, NULL, '2007-07-17 00:00:00', '16:00', '11111111', '9', '27', '1', '35', '40', '45', '33', '91', '194'),
(219, NULL, '2007-10-17 00:00:00', '08:00', '2007-10-17 00:00:00', 2304, NULL, '2007-10-17 00:00:00', '16:00', '11111111', '61', '19', '1', '35', '40', '63', '55', '114', '216'),
(220, NULL, '2004-12-17 00:00:00', '08:00', '2004-12-17 00:00:00', 111111, NULL, '2004-12-17 00:00:00', '16:00', '21480068', '10', '14', '1', '35', '39', '47', '55', '127', '286'),
(221, NULL, '2001-01-18 00:00:00', '08:00', '2001-01-18 00:00:00', 111111, NULL, '2001-01-18 00:00:00', '16:00', '11111111', '10', '14', '1', '35', '39', '47', '55', '91', '193'),
(222, NULL, '2004-01-18 00:00:00', '08:00', '2004-01-18 00:00:00', 111111, NULL, '2004-01-18 00:00:00', '16:00', '21470167', '10', '28', '1', '35', '40', '42', '33', '152', '358'),
(223, NULL, '2006-02-18 00:00:00', '08:00', '2007-02-18 00:00:00', 111111, NULL, '2006-02-18 00:00:00', '16:00', '43490130', '10', '27', '1', '35', '40', '42', '65', '96', '203'),
(224, NULL, '2001-05-18 00:00:00', '08:00', '2001-05-18 00:00:00', 111111, NULL, '2001-05-18 00:00:00', '16:00', '2144.231', '9', '15', '1', '35', '40', '41', '33', '153', '359'),
(225, NULL, '2006-05-18 00:00:00', '08:00', '2006-05-18 00:00:00', 111111, NULL, '2006-05-18 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '41', '33', '221', '583'),
(226, NULL, '2007-12-18 00:00:00', '08:00', '2007-12-18 00:00:00', 1186, NULL, '2007-12-18 00:00:00', '16:00', '11111111', '8', '27', '1', '35', '40', '41', '33', '155', '364'),
(227, NULL, '2006-02-19 00:00:00', '08:00', '1990-01-19 00:00:00', 111111, NULL, '2006-02-19 00:00:00', '16:00', '11111111', '9', '14', '66', '88', '39', '47', '34', NULL, '439'),
(228, NULL, '2006-02-19 00:00:00', '08:00', '2000-01-19 00:00:00', 111111, NULL, '2006-02-19 00:00:00', '16:00', '11111111', '9', '14', '66', '88', '39', '42', '34', NULL, '440'),
(229, NULL, '2002-02-19 00:00:00', '08:00', '2002-02-19 00:00:00', 111111, NULL, '2002-02-19 00:00:00', '16:00', '21450191', '9', '15', '1', '94', '40', '41', '33', '153', '359'),
(230, NULL, '2008-02-19 00:00:00', '08:00', '2008-02-19 00:00:00', 111111, NULL, '2008-02-19 00:00:00', '16:00', '21510017', '10', '14', '1', '35', '39', '47', '55', '74', '157'),
(231, NULL, '2007-11-19 00:00:00', '08:00', '2007-11-19 00:00:00', 111111, NULL, '2007-11-19 00:00:00', '16:00', '21500379', '10', '28', '1', '95', '40', '41', '33', '126', '283'),
(232, NULL, '2003-02-20 00:00:00', '08:00', '2003-02-20 00:00:00', 111111, NULL, '2003-02-20 00:00:00', '16:00', '32460191', '54', '14', '53', '34', '39', '56', '55', '144', '337'),
(233, NULL, '2007-02-20 00:00:00', '08:00', '2007-02-20 00:00:00', 249500, NULL, '2007-02-20 00:00:00', '16:00', '24500074', '9', '28', '1', '96', '40', '41', '34', '143', '334'),
(234, NULL, '2008-05-20 00:00:00', '08:00', '2008-05-20 00:00:00', 111111, NULL, '2008-05-20 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '41', '33', '221', '582'),
(235, NULL, '2007-06-20 00:00:00', '08:00', '2007-06-20 00:00:00', 111111, NULL, '2007-06-20 00:00:00', '16:00', '21500115', '10', '14', '1', '35', '39', '47', '55', '153', '358'),
(236, NULL, '2007-07-20 00:00:00', '08:00', '2007-07-20 00:00:00', 111111, NULL, '2007-07-21 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '41', '33', '116', '254'),
(237, NULL, '2008-01-21 00:00:00', '08:00', '2008-01-21 00:00:00', 80323, NULL, '2008-01-21 00:00:00', '16:00', '24510005', '9', '14', '1', '35', '39', '47', '55', '143', '336'),
(238, NULL, '2008-01-21 00:00:00', '08:00', '2008-01-21 00:00:00', 111111, NULL, '2008-01-21 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '45', '33', '91', '193'),
(239, NULL, '2006-02-21 00:00:00', '08:00', '2006-02-21 00:00:00', 111111, NULL, '2006-02-21 00:00:00', '16:00', '21490016', '10', '14', '1', '35', '39', '47', '55', '166', '605'),
(240, NULL, '2006-04-21 00:00:00', '08:00', '2006-04-21 00:00:00', 200052, NULL, '2006-04-21 00:00:00', '16:00', '11111111', '9', '23', '1', '35', '40', '42', '33', '116', '254'),
(241, NULL, '2007-05-21 00:00:00', '08:00', '2007-05-21 00:00:00', 1862, NULL, '2007-05-21 00:00:00', '16:00', '11111111', '10', '25', '1', '35', '40', '46', '67', '109', '236'),
(242, NULL, '2008-05-21 00:00:00', '08:00', '2008-05-21 00:00:00', 111111, NULL, '2008-05-21 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '41', '33', '221', '583'),
(243, NULL, '2003-08-21 00:00:00', '08:00', '2003-08-21 00:00:00', 111111, NULL, '2003-08-21 00:00:00', '16:00', '11111111', '9', '24', '1', '35', '40', '41', '33', '222', '584'),
(244, NULL, '2003-10-21 00:00:00', '08:00', '2003-10-21 00:00:00', 111111, NULL, '2003-10-21 00:00:00', '16:00', '21470288', '10', '14', '1', '35', '39', '47', '55', '178', '449'),
(245, NULL, '2002-11-21 00:00:00', '08:00', '2002-11-21 00:00:00', 101744, NULL, '2002-11-21 00:00:00', '16:00', '11111111', '10', '14', '1', '35', '39', '47', '55', '221', '582'),
(246, NULL, '2007-02-22 00:00:00', '08:00', '2007-02-22 00:00:00', 111111, NULL, '2007-02-22 00:00:00', '16:00', '11111111', '8', '15', '1', '35', '40', '42', '33', '109', '235'),
(247, NULL, '2004-03-22 00:00:00', '08:00', '2004-03-22 00:00:00', 111111, NULL, '2004-03-22 00:00:00', '16:00', '31470084', '54', '28', '53', '35', '40', '56', '55', '24', '26'),
(248, NULL, '1997-05-04 00:00:00', '08:00', '1997-05-22 00:00:00', 111111, NULL, '1997-05-04 00:00:00', '16:00', '31400104', '54', '14', '53', '122', '39', '56', '55', '144', '337'),
(249, NULL, '1999-05-22 00:00:00', '08:00', '1999-05-22 00:00:00', 111111, NULL, '1999-05-22 00:00:00', '16:00', '21430043', '10', '14', '1', '35', '39', '47', '55', '166', '403'),
(250, NULL, '2008-05-22 00:00:00', '08:00', '2008-05-22 00:00:00', 111111, NULL, '2008-05-22 00:00:00', '16:00', '11111111', '9', '18', '1', '35', '40', '42', '33', '120', '276'),
(251, NULL, '2005-08-22 00:00:00', '08:00', '2005-08-22 00:00:00', 111111, NULL, '2005-08-22 00:00:00', '16:00', '43480390', '10', '15', '1', '123', '40', '42', '33', '96', '203'),
(252, NULL, '2006-08-24 00:00:00', '08:00', '2006-08-22 00:00:00', 111111, NULL, '2006-08-24 00:00:00', '16:00', '31490254', '54', '28', '53', '124', '40', '42', '33', '195', '515'),
(253, NULL, '2006-08-25 00:00:00', '08:00', '2006-08-22 00:00:00', 111111, NULL, '2006-08-25 00:00:00', '16:00', '31490255', '54', '14', '53', '124', '39', '42', '55', '195', '516'),
(254, NULL, '2005-09-22 00:00:00', '08:00', '2005-09-22 00:00:00', 51957, NULL, '2005-09-22 00:00:00', '16:00', '24480909', '9', '25', '1', '35', '40', '51', '29', '119', '275'),
(255, NULL, '2002-11-22 00:00:00', '08:00', '2002-11-22 00:00:00', 90495, NULL, '2002-11-22 00:00:00', '16:00', '11111111', '10', '14', '1', '35', '39', '47', '55', '221', '583'),
(256, NULL, '2006-12-22 00:00:00', '08:00', '2006-12-22 00:00:00', 111111, NULL, '2006-12-22 00:00:00', '16:00', '11111111', '10', '15', '1', '125', '40', '42', '33', '96', '202'),
(257, NULL, '2006-12-22 00:00:00', '08:00', '2006-12-23 00:00:00', 111111, NULL, '2006-12-22 00:00:00', '16:00', '11111111', '10', '15', '1', '35', '40', '42', '33', '96', '202'),
(258, NULL, '2003-01-23 00:00:00', '08:00', '2003-01-23 00:00:00', 111111, NULL, '2003-01-23 00:00:00', '16:00', '21460348', '10', '28', '1', '35', '40', '41', '33', '152', '357'),
(259, NULL, '2007-07-05 00:00:00', '08:00', '2007-01-23 00:00:00', 184204, NULL, '2007-07-05 00:00:00', '16:00', '24500616', '9', '24', '1', '87', '40', '42', '33', '122', '278'),
(260, NULL, '2000-02-23 00:00:00', '08:00', '2000-02-23 00:00:00', 111111, NULL, '2000-02-23 00:00:00', '16:00', '21430134', '10', '14', '1', '35', '39', '47', '55', '166', '402'),
(261, NULL, '1999-03-23 00:00:00', '08:00', '1999-03-23 00:00:00', 111111, NULL, '1999-03-23 00:00:00', '16:00', '21420062', '10', '14', '1', '35', '39', '47', '55', '74', '155'),
(262, NULL, '2006-03-23 00:00:00', '08:00', '2006-03-23 00:00:00', 324379, NULL, '2006-03-23 00:00:00', '16:00', '24490162', '9', '14', '1', '35', '39', '47', '55', '122', '279'),
(263, NULL, '2007-03-23 00:00:00', '08:00', '2007-03-23 00:00:00', 111111, NULL, '2007-03-22 00:00:00', '16:00', '31500028', '54', '28', '53', '35', '40', '56', '55', '24', '26'),
(264, NULL, '1999-05-23 00:00:00', '08:00', '1999-05-23 00:00:00', 111111, NULL, '1999-05-23 00:00:00', '16:00', '21430044', '10', '14', '1', '35', '39', '47', '55', '166', '404'),
(265, NULL, '2007-05-23 00:00:00', '08:00', '2007-05-23 00:00:00', 101341, NULL, '2007-05-23 00:00:00', '16:00', '43500391', '8', '15', '1', '79', '40', '42', '33', '204', '536'),
(266, NULL, '2004-12-14 00:00:00', '08:00', '2004-11-23 00:00:00', 111111, NULL, '2004-12-14 00:00:00', '16:00', '31480026', '54', '14', '53', '35', '39', '56', '55', '82', '171'),
(267, NULL, '2005-11-23 00:00:00', '08:00', '2005-11-23 00:00:00', 46876, NULL, '2005-11-23 00:00:00', '16:00', '24480873', '9', '15', '1', '35', '40', '41', '33', '120', '277'),
(268, NULL, '2007-11-23 00:00:00', '08:00', '2007-11-23 00:00:00', 111111, NULL, '2007-11-23 00:00:00', '16:00', '11111111', '8', '15', '1', '35', '40', '42', '33', '112', '240'),
(269, NULL, '1999-12-22 00:00:00', '08:00', '1999-12-23 00:00:00', 111111, NULL, '1999-12-22 00:00:00', '16:00', '31430270', '54', '25', '53', '35', '40', '41', '33', '144', '337'),
(270, NULL, '2008-01-24 00:00:00', '08:00', '2008-01-24 00:00:00', 4557, NULL, '2008-01-24 00:00:00', '16:00', '24510007', '9', '14', '1', '35', '39', '47', '55', '122', '280'),
(271, NULL, '2004-02-24 00:00:00', '08:00', '2004-02-24 00:00:00', 111111, NULL, '2004-02-24 00:00:00', '16:00', '11111111', '9', '24', '1', '35', '40', '47', '33', '116', '254'),
(272, NULL, '2005-04-01 00:00:00', '08:00', '2007-03-24 00:00:00', 111111, NULL, '2005-04-01 00:00:00', '16:00', '31480141', '54', '28', '53', '35', '40', '56', '55', '24', '556'),
(273, NULL, '2003-05-24 00:00:00', '08:00', '2003-05-24 00:00:00', 181929, NULL, '2003-05-24 00:00:00', '16:00', '24470068', '9', '15', '1', '35', '40', '41', '33', '31', '38'),
(274, NULL, '1997-08-14 00:00:00', '08:00', '1997-07-24 00:00:00', 111111, NULL, '1997-08-14 00:00:00', '16:00', '32400265', '54', '25', '53', '128', '40', '42', '33', '167', '411'),
(275, NULL, '2004-07-24 00:00:00', '08:00', '2004-07-24 00:00:00', 174895, NULL, '2004-07-26 00:00:00', '16:00', '11111111', '9', '23', '1', '35', '40', '42', '33', '116', '254'),
(276, NULL, '1994-12-24 00:00:00', '08:00', '1994-12-24 00:00:00', 111111, NULL, '1994-12-24 00:00:00', '16:00', '11111111', '10', '25', '1', '35', '40', '46', '67', '108', '228'),
(277, NULL, '2000-01-25 00:00:00', '08:00', '2000-01-25 00:00:00', 111111, NULL, '2000-01-25 00:00:00', '16:00', '11111111', '9', '25', '1', '35', '40', '47', '68', '119', '275'),
(278, NULL, '1999-02-25 00:00:00', '08:00', '1999-02-25 00:00:00', 111111, NULL, '1999-02-25 00:00:00', '16:00', '21420035', '10', '14', '1', '35', '39', '47', '55', '74', '159');
INSERT INTO `report` (`id`, `version`, `down_date`, `down_time`, `incident_date`, `oltc_count`, `reporter`, `up_date`, `up_time`, `work_order`, `ab_environment`, `damage_data`, `environment`, `equipment`, `failure_mode`, `maintenance`, `real_cause`, `station`, `transformer`) VALUES
(279, NULL, '2001-05-25 00:00:00', '08:00', '2001-02-25 00:00:00', 111111, NULL, '2001-05-25 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '47', '33', '116', '253'),
(280, NULL, '1998-03-25 00:00:00', '08:00', '1998-03-25 00:00:00', 111111, NULL, '1998-03-25 00:00:00', '16:00', '21410315', '10', '14', '1', '35', '39', '47', '55', '74', '158'),
(281, NULL, '2007-03-25 00:00:00', '08:00', '2007-03-25 00:00:00', 111111, NULL, '2007-03-25 00:00:00', '16:00', '11111111', '10', '25', '1', '35', '40', '46', '67', '109', '229'),
(282, NULL, '1994-12-25 00:00:00', '08:00', '1994-12-25 00:00:00', 6394, NULL, '1994-12-25 00:00:00', '16:00', '11111111', '10', '25', '1', '35', '40', '46', '67', '108', '226'),
(283, NULL, '1994-12-25 00:00:00', '08:00', '1994-12-25 00:00:00', 5070, NULL, '1994-12-25 00:00:00', '16:00', '11111111', '10', '25', '1', '35', '40', '46', '67', '108', '227'),
(284, NULL, '2006-02-26 00:00:00', '08:00', '2006-02-26 00:00:00', 111111, NULL, '2006-02-26 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '37', '56'),
(285, NULL, '2008-02-07 00:00:00', '08:00', '2008-03-26 00:00:00', 111111, NULL, '2008-02-07 00:00:00', '16:00', '31510092', '54', '28', '53', '35', '40', '56', '55', '24', '556'),
(286, NULL, '1999-08-18 00:00:00', '08:00', '1999-08-18 00:00:00', 111111, NULL, '1999-08-18 00:00:00', '16:00', '31420536', '54', '14', '53', '129', '39', '56', '55', '144', '337'),
(287, NULL, '1999-07-29 00:00:00', '08:00', '1999-07-26 00:00:00', 111111, NULL, '1999-07-29 00:00:00', '16:00', '31420537', '54', '14', '53', '13', '39', '56', '55', '144', '337'),
(288, NULL, '1998-12-03 00:00:00', '08:00', '1998-11-26 00:00:00', 111111, NULL, '1998-12-03 00:00:00', '16:00', '31420161', '54', '18', '53', '130', '40', '41', '33', '144', '337'),
(289, NULL, '2006-11-26 00:00:00', '08:00', '2006-11-26 00:00:00', 111111, NULL, '2006-11-26 00:00:00', '16:00', '11111111', '58', '14', '1', '35', '39', '56', '62', '109', '233'),
(290, NULL, '2007-01-28 00:00:00', '08:00', '2007-11-26 00:00:00', 111111, NULL, '2007-01-28 00:00:00', '16:00', '11111111', '58', '14', '1', '35', '39', '56', '62', '109', '233'),
(291, NULL, '2006-01-27 00:00:00', '08:00', '2006-01-27 00:00:00', 196470, NULL, '2006-01-28 00:00:00', '16:00', '11111111', '9', '23', '1', '35', '40', '42', '33', '116', '254'),
(292, NULL, '2008-02-27 00:00:00', '08:00', '2008-02-27 00:00:00', 111111, NULL, '2008-02-27 00:00:00', '16:00', '11111111', '69', '28', '1', '35', '40', '42', '70', '96', '202'),
(293, NULL, '2002-03-27 00:00:00', '08:00', '2002-03-27 00:00:00', 27343, NULL, '2002-03-27 00:00:00', '16:00', '11111111', '10', '14', '1', '35', '39', '47', '55', '119', '275'),
(294, NULL, '2006-04-27 00:00:00', '08:00', '2006-04-27 00:00:00', 114856, NULL, '2006-04-27 00:00:00', '16:00', '11111111', '10', '14', '1', '35', '39', '47', '55', '222', '422'),
(295, NULL, '2004-09-27 00:00:00', '08:00', '2004-09-27 00:00:00', 111111, NULL, '2004-09-27 00:00:00', '16:00', '31470230', '54', '28', '53', '35', '40', '56', '55', '24', '26'),
(296, NULL, '2006-10-27 00:00:00', '08:00', '2006-10-27 00:00:00', 111111, NULL, '2006-10-27 00:00:00', '16:00', '11111111', '54', '14', '1', '35', '39', '47', '55', '165', '392'),
(297, NULL, '1995-01-28 00:00:00', '08:00', '1995-01-28 00:00:00', 111111, NULL, '1995-01-28 00:00:00', '16:00', '11111111', '8', '23', '5', '35', '40', '42', '35', '96', '202'),
(298, NULL, '2000-02-28 00:00:00', '08:00', '2000-02-28 00:00:00', 111111, NULL, '2000-02-28 00:00:00', '16:00', '21430136', '10', '14', '1', '35', '39', '47', '55', '127', '285'),
(299, NULL, '2006-02-28 00:00:00', '08:00', '2006-02-28 00:00:00', 111111, NULL, '2006-02-28 00:00:00', '16:00', '21490053', '10', '14', '1', '35', '39', '47', '55', '126', '284'),
(300, NULL, '2006-03-28 00:00:00', '08:00', '2006-03-28 00:00:00', 249500, NULL, '2006-04-01 00:00:00', '16:00', '24490163', '9', '14', '1', '35', '39', '47', '55', '143', '334'),
(301, NULL, '2006-04-28 00:00:00', '08:00', '2006-04-28 00:00:00', 99877, NULL, '2006-04-28 00:00:00', '16:00', '11111111', '10', '14', '1', '35', '39', '47', '55', '222', '584'),
(302, NULL, '2007-04-28 00:00:00', '08:00', '2007-04-28 00:00:00', 111111, NULL, '2007-04-28 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '37', '55'),
(303, NULL, '2004-05-28 00:00:00', '08:00', '2004-05-28 00:00:00', 111111, NULL, '2004-05-28 00:00:00', '16:00', '21470385', '9', '23', '1', '89', '40', '42', '33', '178', '449'),
(304, NULL, '2004-05-28 00:00:00', '08:00', '2004-05-28 00:00:00', 111111, NULL, '2004-05-28 00:00:00', '16:00', '21470386', '9', '23', '1', '89', '40', '42', '33', '178', '450'),
(305, NULL, '2000-06-28 00:00:00', '08:00', '2000-06-28 00:00:00', 111111, NULL, '2000-06-28 00:00:00', '16:00', '11111111', '9', '16', '1', '35', '40', '41', '71', '222', '422'),
(306, NULL, '2001-08-28 00:00:00', '08:00', '2001-08-28 00:00:00', 111111, NULL, '2001-08-28 00:00:00', '16:00', '11111111', '12', '14', '1', '83', '39', '47', '55', '116', '255'),
(307, NULL, '2002-10-25 00:00:00', '08:00', '2002-10-28 00:00:00', 111111, NULL, '2002-10-25 00:00:00', '16:00', '32460053', '54', '14', '53', '32', '39', '56', '55', '144', '337'),
(308, NULL, '2003-12-21 00:00:00', '08:00', '2003-10-28 00:00:00', 111111, NULL, '2003-12-21 00:00:00', '16:00', '32470089', '54', '14', '53', '35', '39', '56', '55', '144', '337'),
(309, NULL, '2006-11-28 00:00:00', '08:00', '2006-11-28 00:00:00', 111111, NULL, '2006-11-28 00:00:00', '16:00', '11111111', '9', '23', '1', '35', '40', '47', '33', '91', '194'),
(310, NULL, '1999-12-28 00:00:00', '08:00', '1999-12-28 00:00:00', 111111, NULL, '1999-12-28 00:00:00', '16:00', '11111111', '9', '25', '1', '35', '40', '47', '68', '91', '193'),
(311, NULL, '2008-01-29 00:00:00', '08:00', '2008-01-29 00:00:00', 111111, NULL, '2008-01-29 00:00:00', '16:00', '21510007', '10', '14', '1', '35', '39', '47', '55', '152', '357'),
(312, NULL, '2000-02-29 00:00:00', '08:00', '2000-02-29 00:00:00', 111111, NULL, '2000-02-29 00:00:00', '16:00', '21430137', '10', '14', '1', '35', '39', '47', '55', '127', '286'),
(313, NULL, '2002-04-29 00:00:00', '08:00', '2002-04-29 00:00:00', 111111, NULL, '2002-04-29 00:00:00', '16:00', '11111111', '8', '72', '1', '35', '40', '42', '33', '112', '240'),
(314, NULL, '2007-04-29 00:00:00', '08:00', '2007-04-29 00:00:00', 111111, NULL, '2007-04-29 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '37', '54'),
(315, NULL, '2001-05-29 00:00:00', '08:00', '2001-05-29 00:00:00', 111111, NULL, '2001-05-29 00:00:00', '16:00', '21440228', '9', '15', '1', '35', '40', '41', '33', '166', '402'),
(316, NULL, '2002-05-29 00:00:00', '08:00', '2003-05-29 00:00:00', 111111, NULL, '2002-05-30 00:00:00', '16:00', '11111111', '9', '21', '73', '132', '40', '41', '34', '141', '332'),
(317, NULL, '2004-12-29 00:00:00', '08:00', '2004-12-29 00:00:00', 111111, NULL, '2004-12-30 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '47', '33', '91', '194'),
(318, NULL, '2006-02-21 00:00:00', '08:00', '2006-01-30 00:00:00', 111111, NULL, '2006-02-21 00:00:00', '16:00', '31490035', '54', '14', '53', '35', '39', '56', '55', '100', '215'),
(319, NULL, '2006-02-23 00:00:00', '08:00', '2006-01-30 00:00:00', 111111, NULL, '2006-02-23 00:00:00', '16:00', '31490036', '54', '14', '53', '35', '39', '56', '55', '100', '216'),
(320, NULL, '2008-01-31 00:00:00', '08:00', '2008-01-31 00:00:00', 111111, NULL, '2008-01-31 00:00:00', '16:00', '21510008', '10', '14', '1', '35', '39', '47', '55', '74', '156'),
(321, NULL, '2001-02-01 00:00:00', '08:00', '2001-02-01 00:00:00', 111111, NULL, '2001-02-01 00:00:00', '16:00', '21440099', '10', '14', '1', '35', '39', '47', '55', '126', '284'),
(322, NULL, '2006-02-01 00:00:00', '08:00', '2006-02-01 00:00:00', 111111, NULL, '2006-02-01 00:00:00', '16:00', '21490011', '10', '14', '1', '35', '39', '47', '55', '60', '117'),
(323, NULL, '2005-03-01 00:00:00', '08:00', '2005-03-01 00:00:00', 111111, NULL, '2005-03-01 00:00:00', '16:00', '21480180', '10', '14', '1', '35', '39', '47', '55', '79', '163'),
(324, NULL, '2006-03-30 00:00:00', '08:00', '2006-03-01 00:00:00', 111111, NULL, '2006-03-29 00:00:00', '16:00', '31490079', '54', '14', '53', '35', '39', '56', '55', '154', '362'),
(325, NULL, '2006-04-01 00:00:00', '08:00', '2006-04-01 00:00:00', 249500, NULL, '2006-04-01 00:00:00', '16:00', '24490164', '9', '21', '1', '35', '40', '46', '33', '143', '334'),
(326, NULL, '2006-05-01 00:00:00', '08:00', '2006-05-01 00:00:00', 111111, NULL, '2006-05-01 00:00:00', '16:00', '11111111', '54', '14', '74', '88', '39', '47', '55', '192', '505'),
(327, NULL, '2006-08-01 00:00:00', '08:00', '2006-08-01 00:00:00', 111111, NULL, '2006-08-01 00:00:00', '16:00', '11111111', '9', '14', '2', '88', '39', '47', '34', '174', '436'),
(328, NULL, '1999-11-16 00:00:00', '08:00', '1999-12-01 00:00:00', 111111, NULL, '1999-11-16 00:00:00', '16:00', '32430210', '54', '15', '53', '35', '40', '41', '33', '167', '412'),
(329, NULL, '2006-12-01 00:00:00', '08:00', '2006-12-01 00:00:00', 111111, NULL, '2006-12-01 00:00:00', '16:00', '11111111', '9', '20', '2', '35', '40', '46', '35', '222', '422'),
(330, NULL, '2001-02-05 00:00:00', '08:00', '2001-02-02 00:00:00', 111111, NULL, '2001-02-05 00:00:00', '16:00', '25440176', '10', '14', '1', '35', '39', '47', '55', '106', '223'),
(331, NULL, '2001-02-02 00:00:00', '08:00', '2001-02-02 00:00:00', 111111, NULL, '2001-02-02 00:00:00', '16:00', '21440101', '10', '14', '1', '35', '39', '47', '55', '126', '283'),
(332, NULL, '2006-02-02 00:00:00', '08:00', '2006-02-02 00:00:00', 111111, NULL, '2006-02-02 00:00:00', '16:00', '21490012', '10', '14', '1', '35', '39', '47', '55', '60', '118'),
(333, NULL, '2004-03-02 00:00:00', '08:00', '2004-03-02 00:00:00', 111111, NULL, '2004-03-02 00:00:00', '16:00', '21470286', '10', '14', '1', '35', '39', '47', '55', '166', '403'),
(334, NULL, '2006-03-02 00:00:00', '08:00', '2006-03-02 00:00:00', 111111, NULL, '2006-03-02 00:00:00', '16:00', '21490054', '10', '14', '1', '35', '39', '47', '55', '126', '283'),
(335, NULL, '2008-06-02 00:00:00', '08:00', '2008-06-02 00:00:00', 111111, NULL, '2008-06-02 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '34', '66', '135'),
(336, NULL, '1997-06-09 00:00:00', '08:00', '1997-07-02 00:00:00', 111111, NULL, '1997-06-09 00:00:00', '16:00', '31400137', '54', '14', '53', '133', '39', '56', '55', '144', '337'),
(337, NULL, '2000-08-02 00:00:00', '08:00', '2000-08-02 00:00:00', 111111, NULL, '2000-08-31 00:00:00', '16:00', '724300', '54', '14', '1', '134', '39', '46', '62', '117', '256'),
(338, NULL, '2005-11-02 00:00:00', '08:00', '2005-11-02 00:00:00', 7690, NULL, '2005-11-02 00:00:00', '16:00', '11111111', '8', '15', '1', '35', '40', '41', '33', '109', '233'),
(339, NULL, '1994-12-02 00:00:00', '08:00', '1994-12-02 00:00:00', 76808, NULL, '1994-12-02 00:00:00', '16:00', '11111111', '12', '25', '1', '35', '40', '41', '75', '96', '203'),
(340, NULL, '2003-12-02 00:00:00', '08:00', '2003-12-02 00:00:00', 111111, NULL, '2003-12-02 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '55', '116', '254'),
(341, NULL, '2005-03-03 00:00:00', '08:00', '2005-03-03 00:00:00', 111111, NULL, '2005-03-03 00:00:00', '16:00', '21480181', '10', '14', '1', '35', '39', '47', '55', '79', '164'),
(342, NULL, '2007-06-03 00:00:00', '08:00', '2007-06-03 00:00:00', 111111, NULL, '2007-06-03 00:00:00', '16:00', '11111111', '54', '59', '1', '35', '40', '47', '33', '73', '151'),
(343, NULL, '2007-06-03 00:00:00', '08:00', '2007-06-03 00:00:00', 111111, NULL, '2007-06-04 00:00:00', '16:00', '11111111', '54', '59', '1', '35', '40', '47', '33', '73', '153'),
(344, NULL, '2007-07-24 00:00:00', '08:00', '2006-07-03 00:00:00', 111111, NULL, '2007-07-24 00:00:00', '16:00', '31500214', '54', '14', '53', '35', '39', '47', '55', '167', '412'),
(345, NULL, '2000-08-03 00:00:00', '08:00', '2000-08-03 00:00:00', 111111, NULL, '2000-08-30 00:00:00', '16:00', '724301', '54', '14', '1', '134', '39', '46', '62', '117', '259'),
(346, NULL, '1997-11-03 00:00:00', '08:00', '1997-11-03 00:00:00', 111111, NULL, '1997-11-03 00:00:00', '16:00', '21410018', '9', '15', '1', '35', '40', '42', '33', '74', '159'),
(347, NULL, '1999-12-03 00:00:00', '08:00', '1999-12-03 00:00:00', 111111, NULL, '1999-12-03 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '47', '33', '222', '422'),
(348, NULL, '2003-12-03 00:00:00', '08:00', '2003-12-03 00:00:00', 111111, NULL, '2003-12-03 00:00:00', '16:00', '11111111', '9', '25', '1', '35', '40', '41', '29', '116', '253'),
(349, NULL, '2007-01-04 00:00:00', '08:00', '2007-01-04 00:00:00', 111111, NULL, '2007-01-04 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '55', '27', '32'),
(350, NULL, '1998-02-04 00:00:00', '08:00', '1998-02-04 00:00:00', 111111, NULL, '1998-02-04 00:00:00', '16:00', '21410314', '10', '14', '1', '35', '39', '47', '55', '74', '157'),
(351, NULL, '2004-02-04 00:00:00', '08:00', '2004-02-04 00:00:00', 111111, NULL, '2004-02-04 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '42', '33', '116', '254'),
(352, NULL, '2003-03-04 00:00:00', '08:00', '2003-03-04 00:00:00', 111111, NULL, '2003-03-04 00:00:00', '16:00', '21460349', '10', '14', '1', '35', '39', '47', '55', '74', '157'),
(353, NULL, '2004-03-04 00:00:00', '08:00', '2004-03-04 00:00:00', 111111, NULL, '2004-03-04 00:00:00', '16:00', '21470287', '10', '14', '1', '35', '39', '47', '55', '166', '404'),
(354, NULL, '2007-04-04 00:00:00', '08:00', '2007-04-04 00:00:00', 111111, NULL, '2007-04-04 00:00:00', '16:00', '11111111', '9', '23', '1', '35', '40', '41', '33', '91', '194'),
(355, NULL, '2005-05-04 00:00:00', '08:00', '2005-05-04 00:00:00', 111111, NULL, '2005-05-04 00:00:00', '16:00', '21480230', '10', '14', '1', '35', '39', '47', '55', '39', '63'),
(356, NULL, '2006-06-04 00:00:00', '08:00', '2006-06-04 00:00:00', 111111, NULL, '2006-06-04 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '55', '174', '433'),
(357, NULL, '2008-05-09 00:00:00', '08:00', '2006-08-04 00:00:00', 111111, NULL, '2008-05-09 00:00:00', '16:00', '31490248', '54', '15', '53', '35', '40', '41', '33', '195', '516'),
(358, NULL, '2007-08-04 00:00:00', '08:00', '2007-08-04 00:00:00', 111111, NULL, '2007-08-04 00:00:00', '16:00', '11111111', '76', '23', '1', '135', '40', '47', '33', '19', '15'),
(359, NULL, '2007-09-04 00:00:00', '08:00', '2007-09-04 00:00:00', 111111, NULL, '2007-09-04 00:00:00', '16:00', '11111111', '9', '14', '1', '134', '39', '47', '55', '147', '346'),
(360, NULL, '2007-10-04 00:00:00', '08:00', '2007-10-04 00:00:00', 111111, NULL, '2007-10-04 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '47', '33', '163', '385'),
(361, NULL, '2000-11-04 00:00:00', '08:00', '2000-11-04 00:00:00', 111111, NULL, '2000-11-04 00:00:00', '16:00', '11111111', '54', '15', '1', '35', '40', '41', '33', '97', '205'),
(362, NULL, '1999-10-05 00:00:00', '08:00', '1999-01-05 00:00:00', 111111, NULL, '1999-10-05 00:00:00', '16:00', '21430041', '10', '14', '1', '35', '39', '47', '55', '166', '401'),
(363, NULL, '2004-04-18 00:00:00', '08:00', '2004-02-05 00:00:00', 111111, NULL, '2004-04-18 00:00:00', '16:00', '21470229', '10', '14', '1', '35', '39', '47', '55', '74', '155'),
(364, NULL, '2003-03-05 00:00:00', '08:00', '2003-03-05 00:00:00', 111111, NULL, '2003-03-05 00:00:00', '16:00', '21460350', '10', '14', '1', '35', '39', '47', '55', '74', '158'),
(365, NULL, '2000-04-05 00:00:00', '08:00', '2000-04-05 00:00:00', 111111, NULL, '2000-04-05 00:00:00', '16:00', '11111111', '9', '23', '1', '35', '40', '42', '33', '222', '584'),
(366, NULL, '2004-04-05 00:00:00', '08:00', '2004-04-05 00:00:00', 111111, NULL, '2004-04-05 00:00:00', '16:00', '11111111', '9', '23', '1', '35', '40', '42', '33', '116', '254'),
(367, NULL, '2003-07-05 00:00:00', '08:00', '2004-07-05 00:00:00', 90495, NULL, '2003-07-05 00:00:00', '16:00', '11111111', '9', '23', '1', '35', '40', '41', '33', '221', '583'),
(368, NULL, '2003-02-06 00:00:00', '08:00', '2003-02-06 00:00:00', 19931, NULL, '2003-02-06 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '55', '191', '281'),
(369, NULL, '2007-02-06 00:00:00', '08:00', '2007-02-06 00:00:00', 139534, NULL, '2007-02-06 00:00:00', '16:00', '11111111', '10', '14', '1', '35', '39', '47', '55', '221', '582'),
(370, NULL, '2008-05-19 00:00:00', '08:00', '2008-05-06 00:00:00', 111111, NULL, '2008-05-19 00:00:00', '16:00', '31510157', '54', '15', '53', '35', '40', '41', '33', '82', '174'),
(371, NULL, '2007-06-06 00:00:00', '08:00', '2007-06-06 00:00:00', 111111, NULL, '2007-06-06 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '47', '33', '212', '547'),
(372, NULL, '2006-07-03 00:00:00', '08:00', '2000-07-06 00:00:00', 111111, NULL, '2006-07-03 00:00:00', '16:00', '31490233', '54', '15', '53', '35', '40', '41', '33', '167', '412'),
(373, NULL, '2007-08-06 00:00:00', '08:00', '2007-08-06 00:00:00', 111111, NULL, '2007-08-06 00:00:00', '16:00', '11111111', '77', '21', '1', '88', '40', '47', '34', '163', '385'),
(374, NULL, '2007-09-06 00:00:00', '08:00', '2007-09-06 00:00:00', 111111, NULL, '2007-09-06 00:00:00', '16:00', '11111111', '9', '14', '1', '134', '39', '47', '55', '147', '347'),
(375, NULL, '2002-02-07 00:00:00', '08:00', '2002-02-07 00:00:00', 111111, NULL, '2002-02-07 00:00:00', '16:00', '11111111', '10', '14', '1', '35', '39', '47', '55', '120', '277'),
(376, NULL, '2007-02-07 00:00:00', '08:00', '2007-02-07 00:00:00', 127423, NULL, '2007-02-07 00:00:00', '16:00', '11111111', '10', '14', '1', '35', '39', '47', '55', '221', '583'),
(377, NULL, '2007-02-07 00:00:00', '08:00', '2007-02-07 00:00:00', 111111, NULL, '2007-02-07 00:00:00', '16:00', '11111111', '9', '25', '1', '137', '40', '47', '33', '27', '87'),
(378, NULL, '2008-02-07 00:00:00', '08:00', '2008-02-07 00:00:00', 111111, NULL, '2008-02-07 00:00:00', '16:00', '21510016', '10', '14', '1', '35', '39', '47', '55', '74', '158'),
(379, NULL, '2008-02-07 00:00:00', '08:00', '2008-02-07 00:00:00', 111111, NULL, '2008-02-07 00:00:00', '16:00', '31510091', '54', '28', '53', '35', '40', '56', '55', '24', '556'),
(380, NULL, '2008-02-07 00:00:00', '08:00', '2008-02-07 00:00:00', 111111, NULL, '2008-02-07 00:00:00', '16:00', '31510090', '54', '15', '53', '35', '40', '41', '33', '24', '26'),
(381, NULL, '2008-02-28 00:00:00', '08:00', '2008-02-07 00:00:00', 111111, NULL, '2008-02-28 00:00:00', '16:00', '31510094', '54', '15', '53', '35', '40', '41', '33', '167', '411'),
(382, NULL, '2003-03-07 00:00:00', '08:00', '2003-03-07 00:00:00', 111111, NULL, '2003-03-07 00:00:00', '16:00', '21460347', '10', '14', '1', '35', '39', '47', '55', '152', '357'),
(383, NULL, '2000-04-07 00:00:00', '08:00', '2000-04-07 00:00:00', 111111, NULL, '2000-04-07 00:00:00', '16:00', '11111111', '12', '78', '1', '35', '40', '80', '79', '120', '277'),
(384, NULL, '1998-05-13 00:00:00', '08:00', '1998-05-07 00:00:00', 111111, NULL, '1998-05-13 00:00:00', '16:00', '32410333', '54', '24', '53', '139', '40', '42', '33', '167', '411'),
(385, NULL, '2007-06-07 00:00:00', '08:00', '2007-06-07 00:00:00', 111111, NULL, '2007-06-07 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '47', '33', '212', '548'),
(386, NULL, '2006-07-07 00:00:00', '08:00', '2006-07-07 00:00:00', 111111, NULL, '2006-07-07 00:00:00', '16:00', '11111111', '9', '17', '1', '35', '40', '41', '33', '120', '277'),
(387, NULL, '2007-07-07 00:00:00', '08:00', '2007-07-07 00:00:00', 111111, NULL, '2007-07-07 00:00:00', '16:00', '11111111', '9', '28', '1', '35', '40', '47', '33', '91', '194'),
(388, NULL, '2006-11-07 00:00:00', '08:00', '2006-11-07 00:00:00', 428403, NULL, '2006-11-07 00:00:00', '16:00', '24490650', '10', '14', '1', '35', '39', '47', '55', NULL, '282'),
(389, NULL, '2002-10-08 00:00:00', '08:00', '2002-10-08 00:00:00', 27343, NULL, '2002-10-08 00:00:00', '16:00', '11111111', '10', '28', '1', '35', '40', '46', '29', '119', '275'),
(390, NULL, '1995-10-09 00:00:00', '08:00', '1995-11-08 00:00:00', 111111, NULL, '1995-10-09 00:00:00', '16:00', '32390001', '54', '14', '53', '35', '39', '47', '55', '82', '172'),
(391, NULL, '2005-11-16 00:00:00', '08:00', '2005-11-08 00:00:00', 111111, NULL, '2005-11-16 00:00:00', '16:00', '32480574', '54', '14', '53', '13', '39', '56', '55', '144', '337'),
(392, NULL, '2006-11-08 00:00:00', '08:00', '2006-11-08 00:00:00', 34724, NULL, '2006-11-08 00:00:00', '16:00', '24490651', '9', '14', '1', '35', '39', '47', '55', '190', '500'),
(393, NULL, '1998-12-15 00:00:00', '08:00', '1998-12-08 00:00:00', 111111, NULL, '1998-12-15 00:00:00', '16:00', '31420173', '54', '14', '53', '13', '39', '56', '55', '144', '337'),
(394, NULL, '2001-12-08 00:00:00', '08:00', '2001-12-08 00:00:00', 111111, NULL, '2001-12-09 00:00:00', '16:00', '73450023', '54', '15', '1', '35', '40', '42', '33', '188', '491'),
(395, NULL, '2003-12-08 00:00:00', '08:00', '2003-12-08 00:00:00', 111111, NULL, '2003-12-08 00:00:00', '16:00', '11111111', '10', '24', '1', '35', '40', '47', '29', '116', '253'),
(396, NULL, '2003-12-08 00:00:00', '08:00', '2003-12-08 00:00:00', 111111, NULL, '2003-12-08 00:00:00', '16:00', '11111111', '9', '25', '1', '35', '40', '47', '33', '116', '254'),
(397, NULL, '2005-12-16 00:00:00', '08:00', '2005-12-08 00:00:00', 111111, NULL, '2005-12-16 00:00:00', '16:00', '32480582', '54', '14', '53', '140', '39', '41', '33', '72', '148'),
(398, NULL, '2008-01-09 00:00:00', '08:00', '2008-01-09 00:00:00', 181929, NULL, '2008-01-09 00:00:00', '16:00', '24510010', '9', '28', '1', '35', '40', '47', '33', '31', '38'),
(399, NULL, '2006-03-09 00:00:00', '08:00', '2006-03-09 00:00:00', 111111, NULL, '2006-03-09 00:00:00', '16:00', '25490137', '10', '28', '1', '35', '40', '47', '81', '74', '158'),
(400, NULL, '2006-04-09 00:00:00', '08:00', '2006-04-09 00:00:00', 111111, NULL, '2006-04-09 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '118', '271'),
(401, NULL, '2008-04-09 00:00:00', '08:00', '2008-04-09 00:00:00', 111111, NULL, '2008-04-09 00:00:00', '16:00', '21510110', '9', '15', '1', '35', '40', '41', '33', '127', '285'),
(402, NULL, '2006-06-07 00:00:00', '08:00', '2004-05-09 00:00:00', 111111, NULL, '2006-06-07 00:00:00', '16:00', '31490156', '54', '15', '53', '35', '40', '41', '33', '82', '172'),
(403, NULL, '2005-06-09 00:00:00', '08:00', '2005-06-09 00:00:00', 36436, NULL, '2005-06-09 00:00:00', '16:00', '24480672', '10', '14', '1', '35', '39', '47', '55', '120', '276'),
(404, NULL, '2001-09-09 00:00:00', '08:00', '2001-09-09 00:00:00', 111111, NULL, '2001-09-09 00:00:00', '16:00', '73440140', '54', '15', '1', '35', '40', '41', '33', '115', '249'),
(405, NULL, '2002-10-09 00:00:00', '08:00', '2002-10-09 00:00:00', 111111, NULL, '2002-10-09 00:00:00', '16:00', '11111111', '10', '28', '1', '35', '40', '46', '29', '116', '255'),
(406, NULL, '2006-11-09 00:00:00', '08:00', '2006-11-09 00:00:00', 22166, NULL, '2006-11-09 00:00:00', '16:00', '24490652', '9', '14', '1', '35', '39', '47', '55', '190', '501'),
(407, NULL, '2005-01-10 00:00:00', '08:00', '2005-01-10 00:00:00', 111111, NULL, '2005-01-10 00:00:00', '16:00', '11111111', '82', '16', '1', '35', '40', '42', '33', '34', '45'),
(408, NULL, '2003-02-10 00:00:00', '08:00', '2003-02-10 00:00:00', 19931, NULL, '2003-02-10 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '55', '191', '281'),
(409, NULL, '2004-06-15 00:00:00', '08:00', '2004-05-10 00:00:00', 111111, NULL, '2004-06-15 00:00:00', '16:00', '31470132', '54', '15', '53', '35', '40', '41', '33', '82', '172'),
(410, NULL, '2007-06-10 00:00:00', '08:00', '2007-06-10 00:00:00', 111111, NULL, '2007-06-10 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '41', '33', '174', '436'),
(411, NULL, '2007-06-10 00:00:00', '08:00', '2007-06-10 00:00:00', 111111, NULL, '2007-06-10 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '38', '57'),
(412, NULL, '2001-07-10 00:00:00', '08:00', '2001-07-10 00:00:00', 111111, NULL, '2001-07-10 00:00:00', '16:00', '73440000', '54', '15', '1', '35', '40', '41', '33', '35', '46'),
(413, NULL, '2001-07-10 00:00:00', '08:00', '2001-07-10 00:00:00', 111111, NULL, '2001-07-10 00:00:00', '16:00', '73440028', '54', '15', '1', '35', '40', '41', '33', '35', '47'),
(414, NULL, '2007-10-10 00:00:00', '08:00', '2007-10-10 00:00:00', 111111, NULL, '2007-10-10 00:00:00', '16:00', '11111111', '60', '14', '1', '35', '39', '47', '33', '48', '90'),
(415, NULL, '2001-12-10 00:00:00', '08:00', '2001-12-10 00:00:00', 111111, NULL, '2001-12-12 00:00:00', '16:00', '73450027', '54', '15', '1', '35', '40', '41', '33', '170', '417'),
(416, NULL, '2006-06-11 00:00:00', '08:00', '2006-06-11 00:00:00', 111111, NULL, '2006-06-11 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '55', '174', '435'),
(417, NULL, '2007-06-11 00:00:00', '08:00', '2007-06-11 00:00:00', 111111, NULL, '2007-06-11 00:00:00', '16:00', '11111111', '54', '59', '1', '35', '40', '47', '33', '73', '153'),
(418, NULL, '2007-10-11 00:00:00', '08:00', '2007-10-11 00:00:00', 111111, NULL, '2007-10-11 00:00:00', '16:00', '11111111', '60', '14', '1', '35', '39', '47', '33', '48', '90'),
(419, NULL, '2006-03-12 00:00:00', '08:00', '2006-03-12 00:00:00', 111111, NULL, '2006-03-12 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '174', '432'),
(420, NULL, '2004-08-11 00:00:00', '08:00', '2004-05-12 00:00:00', 111111, NULL, '2004-08-11 00:00:00', '16:00', '31470137', '54', '25', '53', '35', '40', '41', '33', '82', '172'),
(421, NULL, '2006-07-12 00:00:00', '08:00', '2006-07-12 00:00:00', 111111, NULL, '2006-07-12 00:00:00', '16:00', '11111111', '83', '28', '1', '35', '40', '47', '33', '165', '391'),
(422, NULL, '2006-07-12 00:00:00', '08:00', '2006-07-12 00:00:00', 111111, NULL, '2006-07-12 00:00:00', '16:00', '11111111', '54', '14', '1', '35', '39', '47', '33', '212', '547'),
(423, NULL, '2002-11-12 00:00:00', '08:00', '2002-11-12 00:00:00', 27343, NULL, '2002-11-12 00:00:00', '16:00', '11111111', '9', '25', '1', '88', '40', '46', '29', '119', '156'),
(424, NULL, '2002-01-13 00:00:00', '08:00', '2002-01-13 00:00:00', 111111, NULL, '2002-01-14 00:00:00', '16:00', '73450033', '54', '15', '1', '35', '40', '41', '33', '35', '50'),
(425, NULL, '2007-02-13 00:00:00', '08:00', '2007-02-13 00:00:00', 111111, NULL, '2007-02-13 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '180', '459'),
(426, NULL, '2005-04-13 00:00:00', '08:00', '2005-04-13 00:00:00', 111111, NULL, '2005-04-13 00:00:00', '16:00', '24480653', '9', '19', '1', '35', '40', '41', '33', '119', '361'),
(427, NULL, '2007-09-17 00:00:00', '08:00', '2007-09-13 00:00:00', 111111, NULL, '2007-09-17 00:00:00', '16:00', '31500303', '54', '15', '53', '35', '40', '41', '33', '167', '412'),
(428, NULL, '2007-01-14 00:00:00', '08:00', '2007-01-14 00:00:00', 111111, NULL, '2007-01-14 00:00:00', '16:00', '11111111', '60', '14', '1', '35', '39', '47', '84', '73', '153'),
(429, NULL, '2006-08-14 00:00:00', '08:00', '2006-08-14 00:00:00', 111111, NULL, '2006-08-14 00:00:00', '16:00', '11111111', '9', '28', '1', '35', '40', '47', '33', '192', '504'),
(430, NULL, '2007-09-01 00:00:00', '08:00', '2007-09-14 00:00:00', 111111, NULL, '2007-09-01 00:00:00', '16:00', '31500307', '54', '14', '53', '35', '39', '47', '55', '167', '411'),
(431, NULL, '2006-12-14 00:00:00', '08:00', '2006-12-14 00:00:00', 111111, NULL, '2006-12-14 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '85', '165', '393'),
(432, NULL, '2007-06-15 00:00:00', '08:00', '2007-06-15 00:00:00', 111111, NULL, '2007-06-15 00:00:00', '16:00', '11111111', '9', '15', '1', '88', '40', '47', '33', '26', '29'),
(433, NULL, '2008-06-15 00:00:00', '08:00', '2008-06-15 00:00:00', 111111, NULL, '2008-06-15 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '47', '33', '27', '30'),
(434, NULL, '2007-02-16 00:00:00', '08:00', '2007-02-16 00:00:00', 111111, NULL, '2007-02-16 00:00:00', '16:00', '11111111', '9', '21', '1', '141', '40', '47', '34', '174', '437'),
(435, NULL, '2007-02-16 00:00:00', '08:00', '2007-02-16 00:00:00', 111111, NULL, '2007-02-16 00:00:00', '16:00', '11111111', '9', '21', '1', '141', '40', '47', '34', '174', '438'),
(436, NULL, '2006-07-16 00:00:00', '08:00', '2006-07-16 00:00:00', 111111, NULL, '2006-07-16 00:00:00', '16:00', '11111111', '54', '14', '1', '35', '39', '47', '33', '38', '59'),
(437, NULL, '2001-02-17 00:00:00', '08:00', '2001-02-17 00:00:00', 111111, NULL, '2001-02-18 00:00:00', '16:00', '11111111', '54', '15', '1', '35', '40', '41', '33', '176', '441'),
(438, NULL, '2007-02-17 00:00:00', '08:00', '2007-02-17 00:00:00', 111111, NULL, '2007-02-17 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '55', '66', '136'),
(439, NULL, '2007-02-17 00:00:00', '08:00', '2007-02-17 00:00:00', 111111, NULL, '2007-02-17 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '66', '137'),
(440, NULL, '2008-06-17 00:00:00', '08:00', '2008-06-17 00:00:00', 111111, NULL, '2008-06-17 00:00:00', '16:00', '11111111', '9', '28', '1', '35', '40', '47', '33', '212', '548'),
(441, NULL, '2000-08-17 00:00:00', '08:00', '2000-08-17 00:00:00', 111111, NULL, '2000-08-17 00:00:00', '16:00', '724300', '54', '16', '1', '35', '40', '47', '62', '35', '48'),
(442, NULL, '1999-12-17 00:00:00', '08:00', '1999-12-17 00:00:00', 111111, NULL, '1999-12-17 00:00:00', '16:00', '724300', '54', '14', '1', '134', '39', '46', '86', '169', '414'),
(443, NULL, '2006-12-17 00:00:00', '08:00', '2006-12-17 00:00:00', 111111, NULL, '2006-12-17 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '55', '27', '33'),
(444, NULL, '2003-03-18 00:00:00', '08:00', '2003-03-18 00:00:00', 111111, NULL, '2003-03-18 00:00:00', '16:00', '11111111', '87', '14', '1', '35', '39', '88', '55', '141', '333'),
(445, NULL, '2004-06-14 00:00:00', '08:00', '2004-05-18 00:00:00', 111111, NULL, '2004-06-14 00:00:00', '16:00', '31470150', '54', '15', '53', '35', '40', '41', '33', '82', '174'),
(446, NULL, '2006-09-18 00:00:00', '08:00', '2006-09-18 00:00:00', 111111, NULL, '2006-09-19 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '55', '15', '9'),
(447, NULL, '2007-11-18 00:00:00', '08:00', '2007-11-18 00:00:00', 111111, NULL, '2007-11-18 00:00:00', '16:00', '11111111', '9', '22', '1', '35', '40', '47', '33', NULL, '485'),
(448, NULL, '2006-09-19 00:00:00', '08:00', '2006-09-19 00:00:00', 111111, NULL, '2006-09-19 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '47', '33', '26', '29'),
(449, NULL, '1999-11-19 00:00:00', '08:00', '1999-11-19 00:00:00', 111111, NULL, '1999-11-19 00:00:00', '16:00', '7243009', '54', '15', '3', '35', '40', '41', '33', '176', '442'),
(450, NULL, '2000-12-19 00:00:00', '08:00', '2000-12-19 00:00:00', 111111, NULL, '2000-12-19 00:00:00', '16:00', '11111111', '54', '14', '1', '143', '39', '47', '89', '28', '36'),
(451, NULL, '2006-01-20 00:00:00', '08:00', '2006-01-20 00:00:00', 111111, NULL, '2006-01-20 00:00:00', '16:00', '11111111', '9', '14', '1', '134', '39', '47', '55', '147', '347'),
(452, NULL, '2004-04-20 00:00:00', '08:00', '2004-04-20 00:00:00', 111111, NULL, '2004-04-20 00:00:00', '16:00', '42490265', '8', '90', '1', '144', '40', '42', '33', '112', '239'),
(453, NULL, '1998-10-25 00:00:00', '08:00', '1998-10-25 00:00:00', 48881, NULL, '1998-10-25 00:00:00', '16:00', '73410071', '10', '14', '1', '35', '39', '47', '55', '58', '109'),
(454, NULL, '2000-06-22 00:00:00', '08:00', '2000-06-20 00:00:00', 111111, NULL, '2000-06-22 00:00:00', '16:00', '32430281', '54', '15', '53', '35', '40', '41', '33', '82', '174'),
(455, NULL, '2001-01-21 00:00:00', '08:00', '2001-01-21 00:00:00', 111111, NULL, '2001-01-21 00:00:00', '16:00', '11111111', '54', '15', '1', '35', '40', '41', '33', '28', '37'),
(456, NULL, '2007-01-21 00:00:00', '08:00', '2007-01-21 00:00:00', 111111, NULL, '2007-01-21 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '16', '13'),
(457, NULL, '2006-02-22 00:00:00', '08:00', '2007-01-22 00:00:00', 111111, NULL, '2006-02-22 00:00:00', '16:00', '11111111', '9', '14', '1', '88', '39', '47', '33', '16', '14'),
(458, NULL, '2007-01-27 00:00:00', '08:00', '2008-01-22 00:00:00', 111111, NULL, '2007-01-27 00:00:00', '16:00', '11111111', '8', '15', '1', '35', '40', '91', '33', '109', '232'),
(459, NULL, '2006-09-22 00:00:00', '08:00', '2006-09-22 00:00:00', 111111, NULL, '2006-09-22 00:00:00', '16:00', '11111111', '9', '15', '1', '35', '40', '47', '33', '192', '504'),
(460, NULL, '2008-05-12 00:00:00', '08:00', '2008-01-23 00:00:00', 111111, NULL, '2008-05-12 00:00:00', '16:00', '31510049', '54', '15', '53', '35', '40', '41', '33', '195', '515'),
(461, NULL, '2006-08-01 00:00:00', '08:00', '2006-05-23 00:00:00', 111111, NULL, '2006-08-01 00:00:00', '16:00', '11111111', '54', '14', '1', '88', '39', '47', '33', '192', '505'),
(462, NULL, '2006-07-23 00:00:00', '08:00', '2006-07-23 00:00:00', 111111, NULL, '2006-07-23 00:00:00', '16:00', '11111111', '54', '14', '1', '35', '39', '47', '33', '38', '61'),
(463, NULL, '1999-10-23 00:00:00', '08:00', '1999-10-23 00:00:00', 111111, NULL, '1999-10-26 00:00:00', '16:00', '7243000', '10', '14', '1', '134', '39', '47', '35', '176', '445'),
(464, NULL, '2004-12-15 00:00:00', '08:00', '2004-11-23 00:00:00', 111111, NULL, '2004-12-15 00:00:00', '16:00', '31480027', '54', '14', '53', '35', '39', '47', '55', '82', '172'),
(465, NULL, '2005-01-05 00:00:00', '08:00', '2004-11-23 00:00:00', 111111, NULL, '2005-01-05 00:00:00', '16:00', '31480028', '54', '14', '53', '35', '39', '47', '55', '82', '174'),
(466, NULL, '1999-03-24 00:00:00', '08:00', '1999-03-24 00:00:00', 111111, NULL, '1999-03-24 00:00:00', '16:00', '21420063', '10', '14', '1', '35', '39', '47', '55', '74', '156'),
(467, NULL, '1999-05-11 00:00:00', '08:00', '1999-05-24 00:00:00', 111111, NULL, '1999-05-11 00:00:00', '16:00', '32420305', '54', '25', '53', '35', '40', '41', '33', '82', '172'),
(468, NULL, '2007-06-24 00:00:00', '08:00', '2007-06-24 00:00:00', 111111, NULL, '2007-06-24 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '33', '38', '58'),
(469, NULL, '2001-04-25 00:00:00', '08:00', '2001-04-25 00:00:00', 15356, NULL, '2001-04-25 00:00:00', '16:00', '11111111', '92', '14', '1', '145', '39', '94', '93', '34', '45'),
(470, NULL, '2002-04-25 00:00:00', '08:00', '2002-04-25 00:00:00', 27343, NULL, '2002-04-25 00:00:00', '16:00', '11111111', '9', '18', '1', '35', '40', '47', '33', '119', '156'),
(471, NULL, '2006-05-25 00:00:00', '08:00', '2006-05-25 00:00:00', 111111, NULL, '2006-05-26 00:00:00', '16:00', '11111111', '8', '15', '1', '35', '40', '42', '33', '141', '333'),
(472, NULL, '2006-06-25 00:00:00', '08:00', '2006-06-25 00:00:00', 111111, NULL, '2006-06-25 00:00:00', '16:00', '11111111', '54', '14', '95', '88', '39', '47', '55', '192', '505'),
(473, NULL, '2006-10-25 00:00:00', '08:00', '2006-10-25 00:00:00', 111111, NULL, '2006-10-25 00:00:00', '16:00', '11111111', '54', '14', '1', '35', '39', '47', '84', '165', '391'),
(474, NULL, '2002-03-26 00:00:00', '08:00', '2002-03-26 00:00:00', 27343, NULL, '2002-03-26 00:00:00', '16:00', '11111111', '10', '14', '1', '35', '39', '47', '55', '119', '156'),
(475, NULL, '2002-04-26 00:00:00', '08:00', '2002-04-26 00:00:00', 111111, NULL, '2002-04-26 00:00:00', '16:00', '11111111', '96', '25', '1', '35', '40', '42', '33', '34', '45'),
(476, NULL, '2006-09-26 00:00:00', '08:00', '2006-09-26 00:00:00', 111111, NULL, '2006-09-26 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '97', '174', '435'),
(477, NULL, '2007-09-26 00:00:00', '08:00', '2007-09-26 00:00:00', 111111, NULL, '2007-09-26 00:00:00', '16:00', '11111111', '9', '27', '1', '35', '40', '41', '33', '174', '433'),
(478, NULL, '1999-10-26 00:00:00', '08:00', '1999-10-26 00:00:00', 111111, NULL, '1999-10-29 00:00:00', '16:00', '7243000', '54', '14', '1', '134', '39', '47', '62', '117', '256'),
(479, NULL, '2007-10-26 00:00:00', '08:00', '2007-10-26 00:00:00', 111111, NULL, '2007-10-26 00:00:00', '16:00', '11111111', '9', '25', '1', '88', '40', '47', '33', '66', '136'),
(480, NULL, '2004-11-26 00:00:00', '08:00', '2004-11-26 00:00:00', 111111, NULL, '2004-11-26 00:00:00', '16:00', '21480048', '10', '14', '1', '35', '39', '47', '55', '166', '402'),
(481, NULL, '2006-11-26 00:00:00', '08:00', '2006-11-26 00:00:00', 111111, NULL, '2006-11-26 00:00:00', '16:00', '11111111', '9', '14', '1', '148', '39', '47', '34', '174', '436'),
(482, NULL, '1994-12-26 00:00:00', '08:00', '1994-12-26 00:00:00', 111111, NULL, '1994-12-26 00:00:00', '16:00', '11111111', '8', '15', '1', '35', '40', '42', '33', '141', '333'),
(483, NULL, '2007-01-27 00:00:00', '08:00', '2007-01-27 00:00:00', 111111, NULL, '2007-01-27 00:00:00', '16:00', '11111111', '8', '15', '1', '35', '40', '91', '33', '109', '232'),
(484, NULL, '2003-05-27 00:00:00', '08:00', '2003-05-27 00:00:00', 111111, NULL, '2003-05-27 00:00:00', '16:00', '11111111', '8', '27', '1', '35', '40', '42', '33', '217', '573'),
(485, NULL, '2006-06-28 00:00:00', '08:00', '2006-06-27 00:00:00', 111111, NULL, '2006-06-28 00:00:00', '16:00', '31490228', '54', '28', '53', '124', '40', '42', '33', '167', '411'),
(486, NULL, '2006-06-28 00:00:00', '08:00', '2006-06-27 00:00:00', 111111, NULL, '2006-06-28 00:00:00', '16:00', '31490229', '54', '28', '53', '124', '40', '42', '33', '167', '412'),
(487, NULL, '2007-09-27 00:00:00', '08:00', '2007-09-27 00:00:00', 111111, NULL, '2007-09-27 00:00:00', '16:00', '11111111', '9', '27', '1', '35', '40', '41', '33', '174', '434'),
(488, NULL, '2006-09-27 00:00:00', '08:00', '2007-09-27 00:00:00', 111111, NULL, '2006-09-27 00:00:00', '16:00', '11111111', '9', '28', '1', '35', '40', '47', '34', '87', '185'),
(489, NULL, '2007-01-28 00:00:00', '08:00', '2007-01-28 00:00:00', 111111, NULL, '2007-01-28 00:00:00', '16:00', '11111111', '9', '14', '1', '35', '39', '47', '98', '174', '433'),
(490, NULL, '2006-08-01 00:00:00', '08:00', '2006-05-28 00:00:00', 111111, NULL, '2006-08-01 00:00:00', '16:00', '31490163', '54', '15', '53', '35', '40', '41', '33', '82', '174'),
(491, NULL, '2007-09-28 00:00:00', '08:00', '2007-09-28 00:00:00', 111111, NULL, '2007-09-28 00:00:00', '16:00', '11111111', '9', '27', '1', '35', '40', '41', '33', '174', '435'),
(492, NULL, '2000-10-28 00:00:00', '08:00', '2000-10-28 00:00:00', 111111, NULL, '2000-10-28 00:00:00', '16:00', '724300', '54', '15', '1', '35', '40', '41', '33', '97', '207'),
(493, NULL, '2006-10-28 00:00:00', '08:00', '2006-10-28 00:00:00', 111111, NULL, '2006-10-28 00:00:00', '16:00', '11111111', '54', '14', '1', '35', '39', '47', '55', '165', '393'),
(494, NULL, '2002-04-23 00:00:00', '08:00', '2002-04-29 00:00:00', 128875, NULL, '2002-04-23 00:00:00', '16:00', '11111111', '99', '14', '1', '35', '39', '49', '33', '208', '540'),
(495, NULL, '2006-08-30 00:00:00', '08:00', '2006-08-30 00:00:00', 111111, NULL, '2006-08-31 00:00:00', '16:00', '11111111', '9', '14', '2', '88', '39', '47', '35', NULL, '479'),
(496, NULL, '2007-10-30 00:00:00', '08:00', '2007-10-30 00:00:00', 111111, NULL, '2007-10-31 00:00:00', '16:00', '11111111', '9', '23', '1', '88', '40', '47', '100', NULL, '479'),
(497, NULL, '2000-07-31 00:00:00', '08:00', '2000-07-31 00:00:00', 111111, NULL, '2000-08-02 00:00:00', '16:00', '724300', '54', '28', '1', '35', '40', '41', '33', '117', '256');

-- --------------------------------------------------------

--
-- Table structure for table `risks`
--

CREATE TABLE IF NOT EXISTS `risks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `risk` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `risks`
--

INSERT INTO `risks` (`id`, `start`, `end`, `risk`, `action`) VALUES
(1, 0, 28, 'Very Low', 'Normal Maintenance'),
(2, 29, 56, 'Low', 'Normal Maintenance'),
(3, 57, 84, 'Moderate', 'Repair'),
(4, 85, 112, 'High', 'Rebuild'),
(5, 113, 142, 'Very High', 'Replace');

-- --------------------------------------------------------

--
-- Table structure for table `risk_probabilities`
--

CREATE TABLE IF NOT EXISTS `risk_probabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `probability_of_failure` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `risk_probabilities`
--

INSERT INTO `risk_probabilities` (`id`, `start`, `end`, `probability_of_failure`, `action`, `created_at`, `updated_at`) VALUES
(1, 0, 40, 'Low', 'Normal Maintanence', '2010-11-30 14:17:51', '2010-11-30 14:17:51'),
(2, 41, 60, 'Moderate', 'Need Careful Attention', '2010-11-30 14:18:45', '2010-11-30 14:18:45'),
(3, 61, 100, 'High', 'Immediately Assess Risk', '2010-11-30 14:19:15', '2010-11-30 14:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20100813213406'),
('20100827140054'),
('20100827152154'),
('20100828054937'),
('20100828060100'),
('20100828155154'),
('20100828160541'),
('20100828160933'),
('20100828161537'),
('20100828162736'),
('20100828163622'),
('20100828163643'),
('20100828164731'),
('20100831130325'),
('20100831132834'),
('20100831140020'),
('20100831143654'),
('20100831173429'),
('20100831173442'),
('20100831173509'),
('20100831173520'),
('20100831173535'),
('20100831173553'),
('20100831173603'),
('20100831173618'),
('20100831173649'),
('20100831173713'),
('20100831193845'),
('20100831201147'),
('20100831201524'),
('20100831205019'),
('20100831205257'),
('20100831223352'),
('20100831224048'),
('20100831224358'),
('20100831224548'),
('20100831224803'),
('20100901111458'),
('20100901163019'),
('20100901165237'),
('20100902080421'),
('20100902201552'),
('20100902201813'),
('20100902224458'),
('20100903202308'),
('20100903210640'),
('20100903224227'),
('20100903230922'),
('20100903232338'),
('20100903235143'),
('20100904002000'),
('20100904101108'),
('20100905084846'),
('20100905092458'),
('20100905103339'),
('20100905235113'),
('20100906074213'),
('20100906080424'),
('20100906162356'),
('20101007230918'),
('20100927022622'),
('20101002070654'),
('20101007233545'),
('20101008170222'),
('20101008201724'),
('20101014132838'),
('20101015135904'),
('20101016202402'),
('20101130071547'),
('20101130202501'),
('20101130202921'),
('20101204185538'),
('20101204193348'),
('20101205161941'),
('20101205163803'),
('20101205200640'),
('20101205204531'),
('20110107134219'),
('20110107205151'),
('20110107215035'),
('20110111073920'),
('20110111074156'),
('20110111075042'),
('20110111075255'),
('20110111123924'),
('20110111125437'),
('20110111130021'),
('20110112044305'),
('20110112044344'),
('20110114140036'),
('20110115140727'),
('20110115143546'),
('20110115144540'),
('20110117043331'),
('20110117054000'),
('20110118023735'),
('20110118024006'),
('20110119061815'),
('20110119071810'),
('20110119072106'),
('20110119072342'),
('20110119072810'),
('20110120182357'),
('20110122130101'),
('20110124062425'),
('20110124063025'),
('20110124063443'),
('20110124063555'),
('20110124101918'),
('20110131174040'),
('20110203164836'),
('20110203165120'),
('20110206151227'),
('20110206151332'),
('20110206161454'),
('20110206161535'),
('20110206174009'),
('20110206174635'),
('20110206174956'),
('20110206175133'),
('20110206175445'),
('20110206175519'),
('20110207140544'),
('20110207140628'),
('20110207141038'),
('20110207141123'),
('20110208042845'),
('20110208042941'),
('20110208051113'),
('20110208051447'),
('20110209073301'),
('20110209122039'),
('20110210053907'),
('20110210104537'),
('20110210110610'),
('20110210184802'),
('20110210185233'),
('20110210185735'),
('20110211183202'),
('20110211185538'),
('20110211190558'),
('20110211191245'),
('20110211192121'),
('20110211193312'),
('20110212060319'),
('20110213184420'),
('20110213185559'),
('20110215204448'),
('20110222152444'),
('20110223043335'),
('20110223043904'),
('20110223070446'),
('20110223091823'),
('20110223110044'),
('20110223110201'),
('20110223123132'),
('20110223125749'),
('20110223152429'),
('20110223153034'),
('20110223184159'),
('20110224184138'),
('20110225182030'),
('20110225205026'),
('20110226080008'),
('20110226084821'),
('20110226091559'),
('20110226180859'),
('20110227094818');

-- --------------------------------------------------------

--
-- Table structure for table `social_aspects`
--

CREATE TABLE IF NOT EXISTS `social_aspects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `social_aspects`
--

INSERT INTO `social_aspects` (`id`, `value`, `created_at`, `updated_at`, `score`, `score_message`) VALUES
(61, 'นอกเมือง', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 1, 'Very Low'),
(62, 'เมือง', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 3, 'Low'),
(63, 'อุตสาหกรรม', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 5, 'Very High'),
(64, NULL, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 4, 'High'),
(65, NULL, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 5, 'Very High'),
(66, NULL, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 6, 'Extremely High');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE IF NOT EXISTS `station` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `kv` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=232 ;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `version`, `full_name`, `kv`, `name`, `region`) VALUES
(1, NULL, 'SATTHAHIP 1', 115, ' SH1', '???.'),
(2, NULL, 'SATTHAHIP 2', 115, ' SH2', '???.'),
(3, NULL, 'SAMUT SONGKHRAM', 115, ' SM', '???.'),
(4, NULL, 'SAMUT  SAKHON 1', 115, ' SN1', '???.'),
(5, NULL, 'SAMUT  SAKHON 2', 115, ' SN2', '???.'),
(6, NULL, 'SAMUT  SAKHON 3', 115, ' SN3', '???.'),
(7, NULL, 'SAMUT  SAKHON 4', 230, ' SN4', '???.'),
(8, NULL, 'SARABURI 1', 115, ' SR1', '???.'),
(9, NULL, 'SARABURI 2', 230, ' SR2', '???.'),
(10, NULL, 'SARABURI 3', 230, ' SR3', '???.'),
(11, NULL, 'SARABURI 4', 230, ' SR4', '???.'),
(12, NULL, 'TRAT', 115, ' TR', '???.'),
(13, NULL, 'AMNAT  CHAROEN', 115, 'AN', '???.'),
(14, NULL, 'AO  PHAI', 230, 'AP', '???.'),
(15, NULL, 'ANG  THONG 1', 230, 'AT1', '???.'),
(16, NULL, 'ANG  THONG 2', 230, 'AT2', '???.'),
(17, NULL, 'AO  UDOM 1', 115, 'AU1', '???.'),
(18, NULL, 'AO  UDOM 2', 230, 'AU2', '???.'),
(19, NULL, 'AYUTTHAYA 1', 115, 'AY1', '???.'),
(20, NULL, 'AYUTTHAYA 2', 69, 'AY2', '???.'),
(21, NULL, 'BHUMIBOL', 230, 'BB', '???.'),
(22, NULL, 'BANBUNG', 115, 'BBG', '???.'),
(23, NULL, 'BAN  DUNG', 115, 'BDG', '???.'),
(24, NULL, 'BAN  DON', 115, 'BDN', '???.'),
(25, NULL, 'BUNG  SAM  PHAN', 115, 'BGS', '???.'),
(26, NULL, 'BANG  PA-IN 1', 115, 'BI1', '???.'),
(27, NULL, 'BANG  PA-IN 2', 230, 'BI2', '???.'),
(28, NULL, 'BANG  KAPI', 230, 'BK', '???.'),
(29, NULL, 'BAN  KHUN  KLANG', 22, 'BKG', '???.'),
(30, NULL, 'BANKHAI', 230, 'BKI', '???.'),
(31, NULL, 'BUNG  KAN', 115, 'BKN', '???.'),
(32, NULL, 'BANG  LAMUNG', 115, 'BL', '???.'),
(33, NULL, 'BANGLANG  SUB.', 115, 'BLG', '???.'),
(34, NULL, 'BANG  MUN  NAK', 115, 'BMN', '???.'),
(35, NULL, 'BANGKOK  NOI', 230, 'BN', '???.'),
(36, NULL, 'BAMNET  NARONG', 115, 'BNN', '???.'),
(37, NULL, 'BANPONG 1', 115, 'BP1', '???.'),
(38, NULL, 'BANPONG 2', 230, 'BP2', '???.'),
(39, NULL, 'BAN  PHAI', 115, 'BPI', '???.'),
(40, NULL, 'BANG  PAKONG  SUB.', 230, 'BPK', '???.'),
(41, NULL, 'BANG  PHLI', 230, 'BPL', '???.'),
(42, NULL, 'BURI  RAM', 115, 'BR', '???.'),
(43, NULL, 'BANG  SAPHAN 1', 230, 'BSP1', '???.'),
(44, NULL, 'BANG  SAPHAN 2', 525, 'BSP2', '???.'),
(45, NULL, 'BAN  SANTI', 33, 'BST', '???.'),
(46, NULL, 'BOWIN', 230, 'BWN', '???.'),
(47, NULL, 'BAN  YANG', 22, 'BY', '???.'),
(48, NULL, 'CHA-AM', 115, 'CA', '???.'),
(49, NULL, 'CHON  BURI', 115, 'CB', '???.'),
(50, NULL, 'CHAI  BADAN', 115, 'CBD', '???.'),
(51, NULL, 'CHOMBUNG', 525, 'CBG', '???.'),
(52, NULL, 'CHACHOENGSAO', 115, 'CC', '???.'),
(53, NULL, 'CHONG  KLAM', 22, 'CHK', '???.'),
(54, NULL, 'CHAENG  WATTANA', 230, 'CHW', '???.'),
(55, NULL, 'CHULABHORN', 115, 'CLB', '???.'),
(56, NULL, 'CHIANG  MAI 1', 115, 'CM1', '???.'),
(57, NULL, 'CHIANG  MAI 2', 115, 'CM2', '???.'),
(58, NULL, 'CHIANG  MAI 3', 230, 'CM3', '???.'),
(59, NULL, 'CHUMPHON', 115, 'CP', '???.'),
(60, NULL, 'CHUM  PHAE', 115, 'CPA', '???.'),
(61, NULL, 'CHIANG  RAI', 230, 'CR', '???.'),
(62, NULL, 'CHANTHABURI', 230, 'CT', '???.'),
(63, NULL, 'CHOM  THONG', 115, 'CTG', '???.'),
(64, NULL, 'CHOMTHIEN', 115, 'CTN', '???.'),
(65, NULL, 'CHAIYAPHUM', 230, 'CYP', '???.'),
(66, NULL, 'DUEMBANG  NANGBUAT', 115, 'DBN', '???.'),
(67, NULL, 'FANG', 22, 'FA', '???.'),
(68, NULL, 'HUAHIN', 230, 'HH', '???.'),
(69, NULL, 'HUAI  KUM', 115, 'HK', '???.'),
(70, NULL, 'HAT  YAI 1', 115, 'HY1', '???.'),
(71, NULL, 'HAT  YAI 2', 230, 'HY2', '???.'),
(72, NULL, 'KRABI', 230, 'KA', '???.'),
(73, NULL, 'KANCHANABURI', 115, 'KB', '???.'),
(74, NULL, 'KHON  KAEN 1', 230, 'KK1', '???.'),
(75, NULL, 'KHON  KAEN 2', 115, 'KK2', '???.'),
(76, NULL, 'KHON  KAEN 3', 230, 'KK3', '???.'),
(77, NULL, 'KAENG  KRACHAN', 115, 'KKC', '???.'),
(78, NULL, 'KHON  KAEN  UNIVERSITY', 115, 'KKU', '???.'),
(79, NULL, 'KALASIN', 115, 'KL', '???.'),
(80, NULL, 'KLAENG', 115, 'KLA', '???.'),
(81, NULL, 'KHLONG  MAI', 230, 'KLM', '???.'),
(82, NULL, 'KHANOM', 230, 'KN', '???.'),
(83, NULL, 'KHLONG  NGAE', 300, 'KNE', '???.'),
(84, NULL, 'KHONG', 115, 'KNG', '???.'),
(85, NULL, 'KAMPHAENG  PHET', 115, 'KP', '???.'),
(86, NULL, 'KIRIDHARN', 115, 'KRD', '???.'),
(87, NULL, 'KAMPHAENG  SAEN', 115, 'KS', '???.'),
(88, NULL, 'KAN  TARALAK', 115, 'KTL', '???.'),
(89, NULL, 'LOP  BURI 1', 115, 'LB1', '???.'),
(90, NULL, 'LOP  BURI 2', 115, 'LB2', '???.'),
(91, NULL, 'LOEI', 115, 'LE', '???.'),
(92, NULL, 'LAN  KRABU', 115, 'LKB', '???.'),
(93, NULL, 'LUMPHUN 1', 115, 'LN1', '???.'),
(94, NULL, 'LUMPHUN 2', 115, 'LN2', '???.'),
(95, NULL, 'LAMPANG 1', 115, 'LP1', '???.'),
(96, NULL, 'LAMPANG 2', 115, 'LP2', '???.'),
(97, NULL, 'LAT  PHRAO', 230, 'LPR', '???.'),
(98, NULL, 'LAM  POO  RA', 115, 'LR', '???.'),
(99, NULL, 'LOM  SAK', 115, 'LS', '???.'),
(100, NULL, 'LANG  SUAN', 230, 'LSN', '???.'),
(101, NULL, 'LAMTAKONG', 230, 'LTK', '???.'),
(102, NULL, 'MAE  CHAN', 115, 'MCN', '???.'),
(103, NULL, 'MUKDAHAN 1', 115, 'MD1', '???.'),
(104, NULL, 'MUKDAHAN 2', 115, 'MD2', '???.'),
(105, NULL, 'MAE  HONG  SON', 22, 'MH', '???.'),
(106, NULL, 'MAHA  SARAKHAM', 115, 'MK', '???.'),
(107, NULL, 'MAE  MOH 1', 115, 'MM1', '???.'),
(108, NULL, 'MAE  MOH 2', 230, 'MM2', '???.'),
(109, NULL, 'MAE  MOH 3', 525, 'MM3', '???.'),
(110, NULL, 'MAE  MOH  MINE', 115, 'MMM', '???.'),
(111, NULL, 'MAE  NGAT', 22, 'MNG', '???.'),
(112, NULL, 'MANOROM', 115, 'MR', '???.'),
(113, NULL, 'MAE  SOT', 115, 'MS', '???.'),
(114, NULL, 'NAN', 115, 'NA', '???.'),
(115, NULL, 'NORTH  BANGKOK', 230, 'NB', '???.'),
(116, NULL, 'NONG  BUA  LAM  PHU', 115, 'NBL', '???.'),
(117, NULL, 'NONG  CHOK', 525, 'NCO', '???.'),
(118, NULL, 'NAKHON  CHAISI', 115, 'NCS', '???.'),
(119, NULL, 'NONG  HAN', 115, 'NH', '???.'),
(120, NULL, 'NONG  KHAI', 115, 'NK', '???.'),
(121, NULL, 'NI  KHOM  MAPTAPHUT', 230, 'NKM', '???.'),
(122, NULL, 'NAKHON  PANOM', 230, 'NN', '???.'),
(123, NULL, 'NAM  NGUM', 115, 'NNG', '???.'),
(124, NULL, 'NAM  PUNG 115', 115, 'NP115', '???.'),
(125, NULL, 'NAM  PUNG 69', 69, 'NP69', '???.'),
(126, NULL, 'NAM  PHONG 1', 115, 'NPO1', '???.'),
(127, NULL, 'NAM  PHONG 2', 230, 'NPO2', '???.'),
(128, NULL, 'NAKHON  RATCHASIMA 1', 115, 'NR1', '???.'),
(129, NULL, 'NAKHON  RATCHASIMA 2', 230, 'NR2', '???.'),
(130, NULL, 'NAKHON  SAWAN', 230, 'NS', '???.'),
(131, NULL, 'NAKHON  SI  THAMMARAT', 230, 'NT', '???.'),
(132, NULL, 'NARATHIWAT', 115, 'NW', '???.'),
(133, NULL, 'NAKHON  NAYOK', 115, 'NY', '???.'),
(134, NULL, 'ON  NUCH', 230, 'ON', '???.'),
(135, NULL, 'PRACHIN  BURI 1', 115, 'PA1', '???.'),
(136, NULL, 'PRACHIN  BURI 2', 230, 'PA2', '???.'),
(137, NULL, 'PHETCHABURI', 115, 'PB', '???.'),
(138, NULL, 'PHICHIT', 115, 'PC', '???.'),
(139, NULL, 'PAK  CHONG', 230, 'PCH', '???.'),
(140, NULL, 'PLUAK DAENG', 525, 'PDG', '???.'),
(141, NULL, 'PHETCHABUN', 115, 'PE', '???.'),
(142, NULL, 'PHA  CHI', 115, 'PH', '???.'),
(143, NULL, 'PHANG  KHON', 115, 'PHK', '???.'),
(144, NULL, 'PHUKET 1', 115, 'PK1', '???.'),
(145, NULL, 'PHUKET 2', 115, 'PK2', '???.'),
(146, NULL, 'PRA  KHON  CHAI', 115, 'PKC', '???.'),
(147, NULL, 'PRACHUAP KHIRI KHAN', 230, 'PKK', '???.'),
(148, NULL, 'PHITSANULOK 1', 115, 'PL1', '???.'),
(149, NULL, 'PHITSANULOK 2', 230, 'PL2', '???.'),
(150, NULL, 'PAK  MUN', 115, 'PMN', '???.'),
(151, NULL, 'PHANGNGA', 115, 'PN', '???.'),
(152, NULL, 'PHON', 115, 'PO', '???.'),
(153, NULL, 'PHON  THONG', 115, 'POT', '???.'),
(154, NULL, 'PHUNPHIN', 115, 'PP', '???.'),
(155, NULL, 'PHRAE', 115, 'PR', '???.'),
(156, NULL, 'PRANBURI', 115, 'PRB', '???.'),
(157, NULL, 'PHRA  PHUTTABAT', 115, 'PTB', '???.'),
(158, NULL, 'PATTANI', 115, 'PTN', '???.'),
(159, NULL, 'PHATTHALUNG', 230, 'PU', '???.'),
(160, NULL, 'PHAYAO', 115, 'PY', '???.'),
(161, NULL, 'PHAYAKKAPHUM  PHISAI', 115, 'PYK', '???.'),
(162, NULL, 'RANOT', 115, 'RA', '???.'),
(163, NULL, 'RATCHABURI 1', 115, 'RB1', '???.'),
(164, NULL, 'RATCHABURI 2', 230, 'RB2', '???.'),
(165, NULL, 'RATCHABURI-3', 525, 'RB3', '???.'),
(166, NULL, 'ROI  ET', 230, 'RE', '???.'),
(167, NULL, 'RANONG', 115, 'RN', '???.'),
(168, NULL, 'RAJJAPRABHA', 230, 'RPB', '???.'),
(169, NULL, 'RATCHADAPHISEK', 230, 'RPS', '???.'),
(170, NULL, 'RANGSIT', 230, 'RS', '???.'),
(171, NULL, 'RAYONG 1', 115, 'RY1', '???.'),
(172, NULL, 'RAYONG 2', 230, 'RY2', '???.'),
(173, NULL, 'RAYONG 3', 115, 'RY3', '???.'),
(174, NULL, 'SAM  PHRAN 1', 230, 'SA1', '???.'),
(175, NULL, 'SAM  PHRAN 2', 115, 'SA2 ', '???.'),
(176, NULL, 'SOUTH  BANGKOK', 230, 'SB', '???.'),
(177, NULL, 'SI  RACHA', 230, 'SC', '???.'),
(178, NULL, 'SOMDET', 115, 'SD', '???.'),
(179, NULL, 'SADAO', 115, 'SDO', '???.'),
(180, NULL, 'SINGBURI', 115, 'SI', '???.'),
(181, NULL, 'SIRIKIT', 230, 'SK', '???.'),
(182, NULL, 'SANG   KA', 115, 'SKA', '???.'),
(183, NULL, 'SIKHUI', 230, 'SKI', '???.'),
(184, NULL, 'SONGKHLA', 115, 'SKL', '???.'),
(185, NULL, 'SAWANKHALOK', 115, 'SL', '???.'),
(186, NULL, 'SALOKBAT', 115, 'SLB', '???.'),
(187, NULL, 'SI  MAHAPHOT', 115, 'SMP ', '???.'),
(188, NULL, 'SAI  NOI', 525, 'SNO', '???.'),
(189, NULL, 'SRINAGARIND 1', 230, 'SNR1', '???.'),
(190, NULL, 'SAKON  NAKHON 1', 115, 'SO1', '???.'),
(191, NULL, 'SAKON  NAKHON 2', 230, 'SO2', '???.'),
(192, NULL, 'SUPHAN  BURI', 115, 'SP', '???.'),
(193, NULL, 'SOP  PRAP', 115, 'SPP', '???.'),
(194, NULL, 'SIRINDHORN', 115, 'SRD', '???.'),
(195, NULL, 'SURAT  THANI', 230, 'SRT', '???.'),
(196, NULL, 'SI  SA  KET', 115, 'SS', '???.'),
(197, NULL, 'SUKHOTHAI', 115, 'ST', '???.'),
(198, NULL, 'SOUTH  THONBURI', 230, 'STB', '???.'),
(199, NULL, 'SATUN', 115, 'STU', '???.'),
(200, NULL, 'SURIN', 115, 'SU', '???.'),
(201, NULL, 'SUNGAI  KOLOK', 115, 'SUK', '???.'),
(202, NULL, 'TAK 1', 115, 'TA1', '???.'),
(203, NULL, 'TAK 2', 230, 'TA2', '???.'),
(204, NULL, 'THOEN', 525, 'TE', '???.'),
(205, NULL, 'THAT  PHANOM', 115, 'TH', '???.'),
(206, NULL, 'THEONG', 230, 'THG', '???.'),
(207, NULL, 'TAKHLI 1', 115, 'TK1', '???.'),
(208, NULL, 'TAKHLI 2', 230, 'TK2', '???.'),
(209, NULL, 'THALAN 1', 115, 'TL1', '???.'),
(210, NULL, 'THALAN 2', 115, 'TL2', '???.'),
(211, NULL, 'THALAN 3', 230, 'TL3', '???.'),
(212, NULL, 'THA  MUANG', 115, 'TM', '???.'),
(213, NULL, 'THA  THUNG  NA', 115, 'TN', '???.'),
(214, NULL, 'TAKUA  PA', 115, 'TP', '???.'),
(215, NULL, 'THEPHARAK', 230, 'TPR', '???.'),
(216, NULL, 'THUNG  SONG', 230, 'TS', '???.'),
(217, NULL, 'THA  TAKO', 525, 'TTK', '???.'),
(218, NULL, 'THAWUNG', 230, 'TW', '???.'),
(219, NULL, 'UBOL  RATCHATHANI 1', 115, 'UB1', '???.'),
(220, NULL, 'UBOL  RATCHATHANI 2', 230, 'UB2', '???.'),
(221, NULL, 'UDON  THANI 1', 115, 'UD1', '???.'),
(222, NULL, 'UDON  THANI 2', 115, 'UD2', '???.'),
(223, NULL, 'UBOLRATANA', 115, 'UR', '???.'),
(224, NULL, 'UTTARADIT', 115, 'UT', '???.'),
(225, NULL, 'VAJIRALONGKORN', 230, 'VRK', '???.'),
(226, NULL, 'WANG  NOI', 525, 'WN', '???.'),
(227, NULL, 'WATTHANA  NAKHON', 115, 'WNK', '???.'),
(228, NULL, 'YALA 1', 115, 'YL1', '???.'),
(229, NULL, 'YALA 2', 115, 'YL2', '???.'),
(230, NULL, 'YASOTHON', 230, 'YT', '???.'),
(231, NULL, 'Spare_KNE', 115, 'Spare_KNE', '???.');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE IF NOT EXISTS `stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `kv` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=461 ;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `version`, `full_name`, `kv`, `name`, `region`, `created_at`, `updated_at`) VALUES
(1, 0, 'SATTHAHIP 1', 115, ' SH1', 'อปก.', NULL, NULL),
(2, 0, 'SATTHAHIP 2', 115, ' SH2', 'อปก.', NULL, NULL),
(3, 0, 'SAMUT SONGKHRAM', 115, ' SM', 'อปก.', NULL, NULL),
(4, 0, 'SAMUT  SAKHON 1', 115, ' SN1', 'อปก.', NULL, NULL),
(5, 0, 'SAMUT  SAKHON 2', 115, ' SN2', 'อปก.', NULL, NULL),
(6, 0, 'SAMUT  SAKHON 3', 115, ' SN3', 'อปก.', NULL, NULL),
(7, 0, 'SAMUT  SAKHON 4', 230, ' SN4', 'อปก.', NULL, NULL),
(8, 0, 'SARABURI 1', 115, ' SR1', 'อปก.', NULL, NULL),
(9, 0, 'SARABURI 2', 230, ' SR2', 'อปก.', NULL, NULL),
(10, 0, 'SARABURI 3', 230, ' SR3', 'อปก.', NULL, NULL),
(11, 0, 'SARABURI 4', 230, ' SR4', 'อปก.', NULL, NULL),
(12, 0, 'TRAT', 115, ' TR', 'อปก.', NULL, NULL),
(13, 0, 'AMNAT  CHAROEN', 115, 'AN', 'อปอ.', NULL, NULL),
(14, 0, 'AO  PHAI', 230, 'AP', 'อปก.', NULL, NULL),
(15, 0, 'ANG  THONG 1', 230, 'AT1', 'อปก.', NULL, NULL),
(16, 0, 'ANG  THONG 2', 230, 'AT2', 'อปก.', NULL, NULL),
(17, 0, 'AO  UDOM 1', 115, 'AU1', 'อปก.', NULL, NULL),
(18, 0, 'AO  UDOM 2', 230, 'AU2', 'อปก.', NULL, NULL),
(19, 0, 'AYUTTHAYA 1', 115, 'AY1', 'อปก.', NULL, NULL),
(20, 0, 'AYUTTHAYA 2', 69, 'AY2', 'อปก.', NULL, NULL),
(21, 0, 'BHUMIBOL', 230, 'BB', 'อปน.', NULL, NULL),
(22, 0, 'BANBUNG', 115, 'BBG', 'อปก.', NULL, NULL),
(23, 0, 'BAN  DUNG', 115, 'BDG', 'อปอ.', NULL, NULL),
(24, 0, 'BAN  DON', 115, 'BDN', 'อปต.', NULL, NULL),
(25, 0, 'BUNG  SAM  PHAN', 115, 'BGS', 'อปน.', NULL, NULL),
(26, 0, 'BANG  PA-IN 1', 115, 'BI1', 'อปก.', NULL, NULL),
(27, 0, 'BANG  PA-IN 2', 230, 'BI2', 'อปก.', NULL, NULL),
(28, 0, 'BANG  KAPI', 230, 'BK', 'อปล.', NULL, NULL),
(29, 0, 'BAN  KHUN  KLANG', 22, 'BKG', 'อปน.', NULL, NULL),
(30, 0, 'BANKHAI', 230, 'BKI', 'อปก.', NULL, NULL),
(31, 0, 'BUNG  KAN', 115, 'BKN', 'อปอ.', NULL, NULL),
(32, 0, 'BANG  LAMUNG', 115, 'BL', 'อปก.', NULL, NULL),
(33, 0, 'BANGLANG  SUB.', 115, 'BLG', 'อปต.', NULL, NULL),
(34, 0, 'BANG  MUN  NAK', 115, 'BMN', 'อปน.', NULL, NULL),
(35, 0, 'BANGKOK  NOI', 230, 'BN', 'อปล.', NULL, NULL),
(36, 0, 'BAMNET  NARONG', 115, 'BNN', 'อปอ.', NULL, NULL),
(37, 0, 'BANPONG 1', 115, 'BP1', 'อปก.', NULL, NULL),
(38, 0, 'BANPONG 2', 230, 'BP2', 'อปก.', NULL, NULL),
(39, 0, 'BAN  PHAI', 115, 'BPI', 'อปอ.', NULL, NULL),
(40, 0, 'BANG  PAKONG  SUB.', 230, 'BPK', 'อปก.', NULL, NULL),
(41, 0, 'BANG  PHLI', 230, 'BPL', 'อปล.', NULL, NULL),
(42, 0, 'BURI  RAM', 115, 'BR', 'อปอ.', NULL, NULL),
(43, 0, 'BANG  SAPHAN 1', 230, 'BSP1', 'อปก.', NULL, NULL),
(44, 0, 'BANG  SAPHAN 2', 525, 'BSP2', 'อปก.', NULL, NULL),
(45, 0, 'BAN  SANTI', 33, 'BST', 'อปต.', NULL, NULL),
(46, 0, 'BOWIN', 230, 'BWN', 'อปก.', NULL, NULL),
(47, 0, 'BAN  YANG', 22, 'BY', 'อปน.', NULL, NULL),
(48, 0, 'CHA-AM', 115, 'CA', 'อปก.', NULL, NULL),
(49, 0, 'CHON  BURI', 115, 'CB', 'อปก.', NULL, NULL),
(50, 0, 'CHAI  BADAN', 115, 'CBD', 'อปก.', NULL, NULL),
(51, 0, 'CHOMBUNG', 525, 'CBG', 'อปก.', NULL, NULL),
(52, 0, 'CHACHOENGSAO', 115, 'CC', 'อปก.', NULL, NULL),
(53, 0, 'CHONG  KLAM', 22, 'CHK', 'อปก.', NULL, NULL),
(54, 0, 'CHAENG  WATTANA', 230, 'CHW', 'อปล.', NULL, NULL),
(55, 0, 'CHULABHORN', 115, 'CLB', 'อปอ.', NULL, NULL),
(56, 0, 'CHIANG  MAI 1', 115, 'CM1', 'อปน.', NULL, NULL),
(57, 0, 'CHIANG  MAI 2', 115, 'CM2', 'อปน.', NULL, NULL),
(58, 0, 'CHIANG  MAI 3', 230, 'CM3', 'อปน.', NULL, NULL),
(59, 0, 'CHUMPHON', 115, 'CP', 'อปต.', NULL, NULL),
(60, 0, 'CHUM  PHAE', 115, 'CPA', 'อปอ.', NULL, NULL),
(61, 0, 'CHIANG  RAI', 230, 'CR', 'อปน.', NULL, NULL),
(62, 0, 'CHANTHABURI', 230, 'CT', 'อปก.', NULL, NULL),
(63, 0, 'CHOM  THONG', 115, 'CTG', 'อปน.', NULL, NULL),
(64, 0, 'CHOMTHIEN', 115, 'CTN', 'อปก.', NULL, NULL),
(65, 0, 'CHAIYAPHUM', 230, 'CYP', 'อปอ.', NULL, NULL),
(66, 0, 'DUEMBANG  NANGBUAT', 115, 'DBN', 'อปก.', NULL, NULL),
(67, 0, 'FANG', 22, 'FA', 'อปน.', NULL, NULL),
(68, 0, 'HUAHIN', 230, 'HH', 'อปก.', NULL, NULL),
(69, 0, 'HUAI  KUM', 115, 'HK', 'อปอ.', NULL, NULL),
(70, 0, 'HAT  YAI 1', 115, 'HY1', 'อปต.', NULL, NULL),
(71, 0, 'HAT  YAI 2', 230, 'HY2', 'อปต.', NULL, NULL),
(72, 0, 'KRABI', 230, 'KA', 'อปต.', NULL, NULL),
(73, 0, 'KANCHANABURI', 115, 'KB', 'อปก.', NULL, NULL),
(74, 0, 'KHON  KAEN 1', 230, 'KK1', 'อปอ.', NULL, NULL),
(75, 0, 'KHON  KAEN 2', 115, 'KK2', 'อปอ.', NULL, NULL),
(76, 0, 'KHON  KAEN 3', 230, 'KK3', 'อปอ.', NULL, NULL),
(77, 0, 'KAENG  KRACHAN', 115, 'KKC', 'อปก.', NULL, NULL),
(78, 0, 'KHON  KAEN  UNIVERSITY', 115, 'KKU', 'อปอ.', NULL, NULL),
(79, 0, 'KALASIN', 115, 'KL', 'อปอ.', NULL, NULL),
(80, 0, 'KLAENG', 115, 'KLA', 'อปก.', NULL, NULL),
(81, 0, 'KHLONG  MAI', 230, 'KLM', 'อปก.', NULL, NULL),
(82, 0, 'KHANOM', 230, 'KN', 'อปต.', NULL, NULL),
(83, 0, 'KHLONG  NGAE', 300, 'KNE', 'อปต.', NULL, NULL),
(84, 0, 'KHONG', 115, 'KNG', 'อปอ.', NULL, NULL),
(85, 0, 'KAMPHAENG  PHET', 115, 'KP', 'อปน.', NULL, NULL),
(86, 0, 'KIRIDHARN', 115, 'KRD', 'อปก.', NULL, NULL),
(87, 0, 'KAMPHAENG  SAEN', 115, 'KS', 'อปก.', NULL, NULL),
(88, 0, 'KAN  TARALAK', 115, 'KTL', 'อปอ.', NULL, NULL),
(89, 0, 'LOP  BURI 1', 115, 'LB1', 'อปก.', NULL, NULL),
(90, 0, 'LOP  BURI 2', 115, 'LB2', 'อปก.', NULL, NULL),
(91, 0, 'LOEI', 115, 'LE', 'อปอ.', NULL, NULL),
(92, 0, 'LAN  KRABU', 115, 'LKB', 'อปน.', NULL, NULL),
(93, 0, 'LUMPHUN 1', 115, 'LN1', 'อปน.', NULL, NULL),
(94, 0, 'LUMPHUN 2', 115, 'LN2', 'อปน.', NULL, NULL),
(95, 0, 'LAMPANG 1', 115, 'LP1', 'อปน.', NULL, NULL),
(96, 0, 'LAMPANG 2', 115, 'LP2', 'อปน.', NULL, NULL),
(97, 0, 'LAT  PHRAO', 230, 'LPR', 'อปล.', NULL, NULL),
(98, 0, 'LAM  POO  RA', 115, 'LR', 'อปต.', NULL, NULL),
(99, 0, 'LOM  SAK', 115, 'LS', 'อปน.', NULL, NULL),
(100, 0, 'LANG  SUAN', 230, 'LSN', 'อปต.', NULL, NULL),
(101, 0, 'LAMTAKONG', 230, 'LTK', 'อปอ.', NULL, NULL),
(102, 0, 'MAE  CHAN', 115, 'MCN', 'อปน.', NULL, NULL),
(103, 0, 'MUKDAHAN 1', 115, 'MD1', 'อปอ.', NULL, NULL),
(104, 0, 'MUKDAHAN 2', 115, 'MD2', 'อปอ.', NULL, NULL),
(105, 0, 'MAE  HONG  SON', 22, 'MH', 'อปน.', NULL, NULL),
(106, 0, 'MAHA  SARAKHAM', 115, 'MK', 'อปอ.', NULL, NULL),
(107, 0, 'MAE  MOH 1', 115, 'MM1', 'อปน.', NULL, NULL),
(108, 0, 'MAE  MOH 2', 230, 'MM2', 'อปน.', NULL, NULL),
(109, 0, 'MAE  MOH 3', 525, 'MM3', 'อปน.', NULL, NULL),
(110, 0, 'MAE  MOH  MINE', 115, 'MMM', 'อปน.', NULL, NULL),
(111, 0, 'MAE  NGAT', 22, 'MNG', 'อปน.', NULL, NULL),
(112, 0, 'MANOROM', 115, 'MR', 'อปน.', NULL, NULL),
(113, 0, 'MAE  SOT', 115, 'MS', 'อปน.', NULL, NULL),
(114, 0, 'NAN', 115, 'NA', 'อปน.', NULL, NULL),
(115, 0, 'NORTH  BANGKOK', 230, 'NB', 'อปล.', NULL, NULL),
(116, 0, 'NONG  BUA  LAM  PHU', 115, 'NBL', 'อปอ.', NULL, NULL),
(117, 0, 'NONG  CHOK', 525, 'NCO', 'อปล.', NULL, NULL),
(118, 0, 'NAKHON  CHAISI', 115, 'NCS', 'อปก.', NULL, NULL),
(119, 0, 'NONG  HAN', 115, 'NH', 'อปอ.', NULL, NULL),
(120, 0, 'NONG  KHAI', 115, 'NK', 'อปอ.', NULL, NULL),
(121, 0, 'NI  KHOM  MAPTAPHUT', 230, 'NKM', 'อปก.', NULL, NULL),
(122, 0, 'NAKHON  PANOM', 230, 'NN', 'อปอ.', NULL, NULL),
(123, 0, 'NAM  NGUM', 115, 'NNG', 'อปอ.', NULL, NULL),
(124, 0, 'NAM  PUNG 115', 115, 'NP115', 'อปอ.', NULL, NULL),
(125, 0, 'NAM  PUNG 69', 69, 'NP69', 'อปอ.', NULL, NULL),
(126, 0, 'NAM  PHONG 1', 115, 'NPO1', 'อปอ.', NULL, NULL),
(127, 0, 'NAM  PHONG 2', 230, 'NPO2', 'อปอ.', NULL, NULL),
(128, 0, 'NAKHON  RATCHASIMA 1', 115, 'NR1', 'อปอ.', NULL, NULL),
(129, 0, 'NAKHON  RATCHASIMA 2', 230, 'NR2', 'อปอ.', NULL, NULL),
(130, 0, 'NAKHON  SAWAN', 230, 'NS', 'อปน.', NULL, NULL),
(131, 0, 'NAKHON  SI  THAMMARAT', 230, 'NT', 'อปต.', NULL, NULL),
(132, 0, 'NARATHIWAT', 115, 'NW', 'อปต.', NULL, NULL),
(133, 0, 'NAKHON  NAYOK', 115, 'NY', 'อปก.', NULL, NULL),
(134, 0, 'ON  NUCH', 230, 'ON', 'อปล.', NULL, NULL),
(135, 0, 'PRACHIN  BURI 1', 115, 'PA1', 'อปก.', NULL, NULL),
(136, 0, 'PRACHIN  BURI 2', 230, 'PA2', 'อปก.', NULL, NULL),
(137, 0, 'PHETCHABURI', 115, 'PB', 'อปก.', NULL, NULL),
(138, 0, 'PHICHIT', 115, 'PC', 'อปน.', NULL, NULL),
(139, 0, 'PAK  CHONG', 230, 'PCH', 'อปอ.', NULL, NULL),
(140, 0, 'PLUAK DAENG', 525, 'PDG', 'อปก.', NULL, NULL),
(141, 0, 'PHETCHABUN', 115, 'PE', 'อปน.', NULL, NULL),
(142, 0, 'PHA  CHI', 115, 'PH', 'อปก.', NULL, NULL),
(143, 0, 'PHANG  KHON', 115, 'PHK', 'อปอ.', NULL, NULL),
(144, 0, 'PHUKET 1', 115, 'PK1', 'อปต.', NULL, NULL),
(145, 0, 'PHUKET 2', 115, 'PK2', 'อปต.', NULL, NULL),
(146, 0, 'PRA  KHON  CHAI', 115, 'PKC', 'อปอ.', NULL, NULL),
(147, 0, 'PRACHUAP KHIRI KHAN', 230, 'PKK', 'อปก.', NULL, NULL),
(148, 0, 'PHITSANULOK 1', 115, 'PL1', 'อปน.', NULL, NULL),
(149, 0, 'PHITSANULOK 2', 230, 'PL2', 'อปน.', NULL, NULL),
(150, 0, 'PAK  MUN', 115, 'PMN', 'อปอ.', NULL, NULL),
(151, 0, 'PHANGNGA', 115, 'PN', 'อปต.', NULL, NULL),
(152, 0, 'PHON', 115, 'PO', 'อปอ.', NULL, NULL),
(153, 0, 'PHON  THONG', 115, 'POT', 'อปอ.', NULL, NULL),
(154, 0, 'PHUNPHIN', 115, 'PP', 'อปต.', NULL, NULL),
(155, 0, 'PHRAE', 115, 'PR', 'อปน.', NULL, NULL),
(156, 0, 'PRANBURI', 115, 'PRB', 'อปก.', NULL, NULL),
(157, 0, 'PHRA  PHUTTABAT', 115, 'PTB', 'อปก.', NULL, NULL),
(158, 0, 'PATTANI', 115, 'PTN', 'อปต.', NULL, NULL),
(159, 0, 'PHATTHALUNG', 230, 'PU', 'อปต.', NULL, NULL),
(160, 0, 'PHAYAO', 115, 'PY', 'อปน.', NULL, NULL),
(161, 0, 'PHAYAKKAPHUM  PHISAI', 115, 'PYK', 'อปอ.', NULL, NULL),
(162, 0, 'RANOT', 115, 'RA', 'อปต.', NULL, NULL),
(163, 0, 'RATCHABURI 1', 115, 'RB1', 'อปก.', NULL, NULL),
(164, 0, 'RATCHABURI 2', 230, 'RB2', 'อปก.', NULL, NULL),
(165, 0, 'RATCHABURI-3', 525, 'RB3', 'อปก.', NULL, NULL),
(166, 0, 'ROI  ET', 230, 'RE', 'อปอ.', NULL, NULL),
(167, 0, 'RANONG', 115, 'RN', 'อปต.', NULL, NULL),
(168, 0, 'RAJJAPRABHA', 230, 'RPB', 'อปต.', NULL, NULL),
(169, 0, 'RATCHADAPHISEK', 230, 'RPS', 'อปล.', NULL, NULL),
(170, 0, 'RANGSIT', 230, 'RS', 'อปล.', NULL, NULL),
(171, 0, 'RAYONG 1', 115, 'RY1', 'อปก.', NULL, NULL),
(172, 0, 'RAYONG 2', 230, 'RY2', 'อปก.', NULL, NULL),
(173, 0, 'RAYONG 3', 115, 'RY3', 'อปก.', NULL, NULL),
(174, 0, 'SAM  PHRAN 1', 230, 'SA1', 'อปก.', NULL, NULL),
(175, 0, 'SAM  PHRAN 2', 115, 'SA2 ', 'อปก.', NULL, NULL),
(176, 0, 'SOUTH  BANGKOK', 230, 'SB', 'อปล.', NULL, NULL),
(177, 0, 'SI  RACHA', 230, 'SC', 'อปก.', NULL, NULL),
(178, 0, 'SOMDET', 115, 'SD', 'อปอ.', NULL, NULL),
(179, 0, 'SADAO', 115, 'SDO', 'อปต.', NULL, NULL),
(180, 0, 'SINGBURI', 115, 'SI', 'อปก.', NULL, NULL),
(181, 0, 'SIRIKIT', 230, 'SK', 'อปน.', NULL, NULL),
(182, 0, 'SANG   KA', 115, 'SKA', 'อปอ.', NULL, NULL),
(183, 0, 'SIKHUI', 230, 'SKI', 'อปอ.', NULL, NULL),
(184, 0, 'SONGKHLA', 115, 'SKL', 'อปต.', NULL, NULL),
(185, 0, 'SAWANKHALOK', 115, 'SL', 'อปน.', NULL, NULL),
(186, 0, 'SALOKBAT', 115, 'SLB', 'อปน.', NULL, NULL),
(187, 0, 'SI  MAHAPHOT', 115, 'SMP ', 'อปก.', NULL, NULL),
(188, 0, 'SAI  NOI', 525, 'SNO', 'อปล.', NULL, NULL),
(189, 0, 'SRINAGARIND 1', 230, 'SNR1', 'อปก.', NULL, NULL),
(190, 0, 'SAKON  NAKHON 1', 115, 'SO1', 'อปอ.', NULL, NULL),
(191, 0, 'SAKON  NAKHON 2', 230, 'SO2', 'อปอ.', NULL, NULL),
(192, 0, 'SUPHAN  BURI', 115, 'SP', 'อปก.', NULL, NULL),
(193, 0, 'SOP  PRAP', 115, 'SPP', 'อปน.', NULL, NULL),
(194, 0, 'SIRINDHORN', 115, 'SRD', 'อปอ.', NULL, NULL),
(195, 0, 'SURAT  THANI', 230, 'SRT', 'อปต.', NULL, NULL),
(196, 0, 'SI  SA  KET', 115, 'SS', 'อปอ.', NULL, NULL),
(197, 0, 'SUKHOTHAI', 115, 'ST', 'อปน.', NULL, NULL),
(198, 0, 'SOUTH  THONBURI', 230, 'STB', 'อปล.', NULL, NULL),
(199, 0, 'SATUN', 115, 'STU', 'อปต.', NULL, NULL),
(200, 0, 'SURIN', 115, 'SU', 'อปอ.', NULL, NULL),
(201, 0, 'SUNGAI  KOLOK', 115, 'SUK', 'อปต.', NULL, NULL),
(202, 0, 'TAK 1', 115, 'TA1', 'อปน.', NULL, NULL),
(203, 0, 'TAK 2', 230, 'TA2', 'อปน.', NULL, NULL),
(204, 0, 'THOEN', 525, 'TE', 'อปน.', NULL, NULL),
(205, 0, 'THAT  PHANOM', 115, 'TH', 'อปอ.', NULL, NULL),
(206, 0, 'THEONG', 230, 'THG', 'อปน.', NULL, NULL),
(207, 0, 'TAKHLI 1', 115, 'TK1', 'อปน.', NULL, NULL),
(208, 0, 'TAKHLI 2', 230, 'TK2', 'อปน.', NULL, NULL),
(209, 0, 'THALAN 1', 115, 'TL1', 'อปก.', NULL, NULL),
(210, 0, 'THALAN 2', 115, 'TL2', 'อปก.', NULL, NULL),
(211, 0, 'THALAN 3', 230, 'TL3', 'อปก.', NULL, NULL),
(212, 0, 'THA  MUANG', 115, 'TM', 'อปก.', NULL, NULL),
(213, 0, 'THA  THUNG  NA', 115, 'TN', 'อปก.', NULL, NULL),
(214, 0, 'TAKUA  PA', 115, 'TP', 'อปต.', NULL, NULL),
(215, 0, 'THEPHARAK', 230, 'TPR', 'อปล.', NULL, NULL),
(216, 0, 'THUNG  SONG', 230, 'TS', 'อปต.', NULL, NULL),
(217, 0, 'THA  TAKO', 525, 'TTK', 'อปน.', NULL, NULL),
(218, 0, 'THAWUNG', 230, 'TW', 'อปก.', NULL, NULL),
(219, 0, 'UBOL  RATCHATHANI 1', 115, 'UB1', 'อปอ.', NULL, NULL),
(220, 0, 'UBOL  RATCHATHANI 2', 230, 'UB2', 'อปอ.', NULL, NULL),
(221, 0, 'UDON  THANI 1', 115, 'UD1', 'อปอ.', NULL, NULL),
(222, 0, 'UDON  THANI 2', 115, 'UD2', 'อปอ.', NULL, NULL),
(223, 0, 'UBOLRATANA', 115, 'UR', 'อปอ.', NULL, NULL),
(224, 0, 'UTTARADIT', 115, 'UT', 'อปน.', NULL, NULL),
(225, 0, 'VAJIRALONGKORN', 230, 'VRK', 'อปก.', NULL, NULL),
(226, 0, 'WANG  NOI', 525, 'WN', 'อปก.', NULL, NULL),
(227, 0, 'WATTHANA  NAKHON', 115, 'WNK', 'อปก.', NULL, NULL),
(228, 0, 'YALA 1', 115, 'YL1', 'อปต.', NULL, NULL),
(229, 0, 'YALA 2', 115, 'YL2', 'อปต.', NULL, NULL),
(230, 0, 'YASOTHON', 230, 'YT', 'อปอ.', NULL, NULL),
(231, 0, 'SATTHAHIP 1', 115, ' SH1', 'อปก.', NULL, NULL),
(232, 0, 'SATTHAHIP 2', 115, ' SH2', 'อปก.', NULL, NULL),
(233, 0, 'SAMUT SONGKHRAM', 115, ' SM', 'อปก.', NULL, NULL),
(234, 0, 'SAMUT  SAKHON 1', 115, ' SN1', 'อปก.', NULL, NULL),
(235, 0, 'SAMUT  SAKHON 2', 115, ' SN2', 'อปก.', NULL, NULL),
(236, 0, 'SAMUT  SAKHON 3', 115, ' SN3', 'อปก.', NULL, NULL),
(237, 0, 'SAMUT  SAKHON 4', 230, ' SN4', 'อปก.', NULL, NULL),
(238, 0, 'SARABURI 1', 115, ' SR1', 'อปก.', NULL, NULL),
(239, 0, 'SARABURI 2', 230, ' SR2', 'อปก.', NULL, NULL),
(240, 0, 'SARABURI 3', 230, ' SR3', 'อปก.', NULL, NULL),
(241, 0, 'SARABURI 4', 230, ' SR4', 'อปก.', NULL, NULL),
(242, 0, 'TRAT', 115, ' TR', 'อปก.', NULL, NULL),
(243, 0, 'AMNAT  CHAROEN', 115, 'AN', 'อปอ.', NULL, NULL),
(244, 0, 'AO  PHAI', 230, 'AP', 'อปก.', NULL, NULL),
(245, 0, 'ANG  THONG 1', 230, 'AT1', 'อปก.', NULL, NULL),
(246, 0, 'ANG  THONG 2', 230, 'AT2', 'อปก.', NULL, NULL),
(247, 0, 'AO  UDOM 1', 115, 'AU1', 'อปก.', NULL, NULL),
(248, 0, 'AO  UDOM 2', 230, 'AU2', 'อปก.', NULL, NULL),
(249, 0, 'AYUTTHAYA 1', 115, 'AY1', 'อปก.', NULL, NULL),
(250, 0, 'AYUTTHAYA 2', 69, 'AY2', 'อปก.', NULL, NULL),
(251, 0, 'BHUMIBOL', 230, 'BB', 'อปน.', NULL, NULL),
(252, 0, 'BANBUNG', 115, 'BBG', 'อปก.', NULL, NULL),
(253, 0, 'BAN  DUNG', 115, 'BDG', 'อปอ.', NULL, NULL),
(254, 0, 'BAN  DON', 115, 'BDN', 'อปต.', NULL, NULL),
(255, 0, 'BUNG  SAM  PHAN', 115, 'BGS', 'อปน.', NULL, NULL),
(256, 0, 'BANG  PA-IN 1', 115, 'BI1', 'อปก.', NULL, NULL),
(257, 0, 'BANG  PA-IN 2', 230, 'BI2', 'อปก.', NULL, NULL),
(258, 0, 'BANG  KAPI', 230, 'BK', 'อปล.', NULL, NULL),
(259, 0, 'BAN  KHUN  KLANG', 22, 'BKG', 'อปน.', NULL, NULL),
(260, 0, 'BANKHAI', 230, 'BKI', 'อปก.', NULL, NULL),
(261, 0, 'BUNG  KAN', 115, 'BKN', 'อปอ.', NULL, NULL),
(262, 0, 'BANG  LAMUNG', 115, 'BL', 'อปก.', NULL, NULL),
(263, 0, 'BANGLANG  SUB.', 115, 'BLG', 'อปต.', NULL, NULL),
(264, 0, 'BANG  MUN  NAK', 115, 'BMN', 'อปน.', NULL, NULL),
(265, 0, 'BANGKOK  NOI', 230, 'BN', 'อปล.', NULL, NULL),
(266, 0, 'BAMNET  NARONG', 115, 'BNN', 'อปอ.', NULL, NULL),
(267, 0, 'BANPONG 1', 115, 'BP1', 'อปก.', NULL, NULL),
(268, 0, 'BANPONG 2', 230, 'BP2', 'อปก.', NULL, NULL),
(269, 0, 'BAN  PHAI', 115, 'BPI', 'อปอ.', NULL, NULL),
(270, 0, 'BANG  PAKONG  SUB.', 230, 'BPK', 'อปก.', NULL, NULL),
(271, 0, 'BANG  PHLI', 230, 'BPL', 'อปล.', NULL, NULL),
(272, 0, 'BURI  RAM', 115, 'BR', 'อปอ.', NULL, NULL),
(273, 0, 'BANG  SAPHAN 1', 230, 'BSP1', 'อปก.', NULL, NULL),
(274, 0, 'BANG  SAPHAN 2', 525, 'BSP2', 'อปก.', NULL, NULL),
(275, 0, 'BAN  SANTI', 33, 'BST', 'อปต.', NULL, NULL),
(276, 0, 'BOWIN', 230, 'BWN', 'อปก.', NULL, NULL),
(277, 0, 'BAN  YANG', 22, 'BY', 'อปน.', NULL, NULL),
(278, 0, 'CHA-AM', 115, 'CA', 'อปก.', NULL, NULL),
(279, 0, 'CHON  BURI', 115, 'CB', 'อปก.', NULL, NULL),
(280, 0, 'CHAI  BADAN', 115, 'CBD', 'อปก.', NULL, NULL),
(281, 0, 'CHOMBUNG', 525, 'CBG', 'อปก.', NULL, NULL),
(282, 0, 'CHACHOENGSAO', 115, 'CC', 'อปก.', NULL, NULL),
(283, 0, 'CHONG  KLAM', 22, 'CHK', 'อปก.', NULL, NULL),
(284, 0, 'CHAENG  WATTANA', 230, 'CHW', 'อปล.', NULL, NULL),
(285, 0, 'CHULABHORN', 115, 'CLB', 'อปอ.', NULL, NULL),
(286, 0, 'CHIANG  MAI 1', 115, 'CM1', 'อปน.', NULL, NULL),
(287, 0, 'CHIANG  MAI 2', 115, 'CM2', 'อปน.', NULL, NULL),
(288, 0, 'CHIANG  MAI 3', 230, 'CM3', 'อปน.', NULL, NULL),
(289, 0, 'CHUMPHON', 115, 'CP', 'อปต.', NULL, NULL),
(290, 0, 'CHUM  PHAE', 115, 'CPA', 'อปอ.', NULL, NULL),
(291, 0, 'CHIANG  RAI', 230, 'CR', 'อปน.', NULL, NULL),
(292, 0, 'CHANTHABURI', 230, 'CT', 'อปก.', NULL, NULL),
(293, 0, 'CHOM  THONG', 115, 'CTG', 'อปน.', NULL, NULL),
(294, 0, 'CHOMTHIEN', 115, 'CTN', 'อปก.', NULL, NULL),
(295, 0, 'CHAIYAPHUM', 230, 'CYP', 'อปอ.', NULL, NULL),
(296, 0, 'DUEMBANG  NANGBUAT', 115, 'DBN', 'อปก.', NULL, NULL),
(297, 0, 'FANG', 22, 'FA', 'อปน.', NULL, NULL),
(298, 0, 'HUAHIN', 230, 'HH', 'อปก.', NULL, NULL),
(299, 0, 'HUAI  KUM', 115, 'HK', 'อปอ.', NULL, NULL),
(300, 0, 'HAT  YAI 1', 115, 'HY1', 'อปต.', NULL, NULL),
(301, 0, 'HAT  YAI 2', 230, 'HY2', 'อปต.', NULL, NULL),
(302, 0, 'KRABI', 230, 'KA', 'อปต.', NULL, NULL),
(303, 0, 'KANCHANABURI', 115, 'KB', 'อปก.', NULL, NULL),
(304, 0, 'KHON  KAEN 1', 230, 'KK1', 'อปอ.', NULL, NULL),
(305, 0, 'KHON  KAEN 2', 115, 'KK2', 'อปอ.', NULL, NULL),
(306, 0, 'KHON  KAEN 3', 230, 'KK3', 'อปอ.', NULL, NULL),
(307, 0, 'KAENG  KRACHAN', 115, 'KKC', 'อปก.', NULL, NULL),
(308, 0, 'KHON  KAEN  UNIVERSITY', 115, 'KKU', 'อปอ.', NULL, NULL),
(309, 0, 'KALASIN', 115, 'KL', 'อปอ.', NULL, NULL),
(310, 0, 'KLAENG', 115, 'KLA', 'อปก.', NULL, NULL),
(311, 0, 'KHLONG  MAI', 230, 'KLM', 'อปก.', NULL, NULL),
(312, 0, 'KHANOM', 230, 'KN', 'อปต.', NULL, NULL),
(313, 0, 'KHLONG  NGAE', 300, 'KNE', 'อปต.', NULL, NULL),
(314, 0, 'KHONG', 115, 'KNG', 'อปอ.', NULL, NULL),
(315, 0, 'KAMPHAENG  PHET', 115, 'KP', 'อปน.', NULL, NULL),
(316, 0, 'KIRIDHARN', 115, 'KRD', 'อปก.', NULL, NULL),
(317, 0, 'KAMPHAENG  SAEN', 115, 'KS', 'อปก.', NULL, NULL),
(318, 0, 'KAN  TARALAK', 115, 'KTL', 'อปอ.', NULL, NULL),
(319, 0, 'LOP  BURI 1', 115, 'LB1', 'อปก.', NULL, NULL),
(320, 0, 'LOP  BURI 2', 115, 'LB2', 'อปก.', NULL, NULL),
(321, 0, 'LOEI', 115, 'LE', 'อปอ.', NULL, NULL),
(322, 0, 'LAN  KRABU', 115, 'LKB', 'อปน.', NULL, NULL),
(323, 0, 'LUMPHUN 1', 115, 'LN1', 'อปน.', NULL, NULL),
(324, 0, 'LUMPHUN 2', 115, 'LN2', 'อปน.', NULL, NULL),
(325, 0, 'LAMPANG 1', 115, 'LP1', 'อปน.', NULL, NULL),
(326, 0, 'LAMPANG 2', 115, 'LP2', 'อปน.', NULL, NULL),
(327, 0, 'LAT  PHRAO', 230, 'LPR', 'อปล.', NULL, NULL),
(328, 0, 'LAM  POO  RA', 115, 'LR', 'อปต.', NULL, NULL),
(329, 0, 'LOM  SAK', 115, 'LS', 'อปน.', NULL, NULL),
(330, 0, 'LANG  SUAN', 230, 'LSN', 'อปต.', NULL, NULL),
(331, 0, 'LAMTAKONG', 230, 'LTK', 'อปอ.', NULL, NULL),
(332, 0, 'MAE  CHAN', 115, 'MCN', 'อปน.', NULL, NULL),
(333, 0, 'MUKDAHAN 1', 115, 'MD1', 'อปอ.', NULL, NULL),
(334, 0, 'MUKDAHAN 2', 115, 'MD2', 'อปอ.', NULL, NULL),
(335, 0, 'MAE  HONG  SON', 22, 'MH', 'อปน.', NULL, NULL),
(336, 0, 'MAHA  SARAKHAM', 115, 'MK', 'อปอ.', NULL, NULL),
(337, 0, 'MAE  MOH 1', 115, 'MM1', 'อปน.', NULL, NULL),
(338, 0, 'MAE  MOH 2', 230, 'MM2', 'อปน.', NULL, NULL),
(339, 0, 'MAE  MOH 3', 525, 'MM3', 'อปน.', NULL, NULL),
(340, 0, 'MAE  MOH  MINE', 115, 'MMM', 'อปน.', NULL, NULL),
(341, 0, 'MAE  NGAT', 22, 'MNG', 'อปน.', NULL, NULL),
(342, 0, 'MANOROM', 115, 'MR', 'อปน.', NULL, NULL),
(343, 0, 'MAE  SOT', 115, 'MS', 'อปน.', NULL, NULL),
(344, 0, 'NAN', 115, 'NA', 'อปน.', NULL, NULL),
(345, 0, 'NORTH  BANGKOK', 230, 'NB', 'อปล.', NULL, NULL),
(346, 0, 'NONG  BUA  LAM  PHU', 115, 'NBL', 'อปอ.', NULL, NULL),
(347, 0, 'NONG  CHOK', 525, 'NCO', 'อปล.', NULL, NULL),
(348, 0, 'NAKHON  CHAISI', 115, 'NCS', 'อปก.', NULL, NULL),
(349, 0, 'NONG  HAN', 115, 'NH', 'อปอ.', NULL, NULL),
(350, 0, 'NONG  KHAI', 115, 'NK', 'อปอ.', NULL, NULL),
(351, 0, 'NI  KHOM  MAPTAPHUT', 230, 'NKM', 'อปก.', NULL, NULL),
(352, 0, 'NAKHON  PANOM', 230, 'NN', 'อปอ.', NULL, NULL),
(353, 0, 'NAM  NGUM', 115, 'NNG', 'อปอ.', NULL, NULL),
(354, 0, 'NAM  PUNG 115', 115, 'NP115', 'อปอ.', NULL, NULL),
(355, 0, 'NAM  PUNG 69', 69, 'NP69', 'อปอ.', NULL, NULL),
(356, 0, 'NAM  PHONG 1', 115, 'NPO1', 'อปอ.', NULL, NULL),
(357, 0, 'NAM  PHONG 2', 230, 'NPO2', 'อปอ.', NULL, NULL),
(358, 0, 'NAKHON  RATCHASIMA 1', 115, 'NR1', 'อปอ.', NULL, NULL),
(359, 0, 'NAKHON  RATCHASIMA 2', 230, 'NR2', 'อปอ.', NULL, NULL),
(360, 0, 'NAKHON  SAWAN', 230, 'NS', 'อปน.', NULL, NULL),
(361, 0, 'NAKHON  SI  THAMMARAT', 230, 'NT', 'อปต.', NULL, NULL),
(362, 0, 'NARATHIWAT', 115, 'NW', 'อปต.', NULL, NULL),
(363, 0, 'NAKHON  NAYOK', 115, 'NY', 'อปก.', NULL, NULL),
(364, 0, 'ON  NUCH', 230, 'ON', 'อปล.', NULL, NULL),
(365, 0, 'PRACHIN  BURI 1', 115, 'PA1', 'อปก.', NULL, NULL),
(366, 0, 'PRACHIN  BURI 2', 230, 'PA2', 'อปก.', NULL, NULL),
(367, 0, 'PHETCHABURI', 115, 'PB', 'อปก.', NULL, NULL),
(368, 0, 'PHICHIT', 115, 'PC', 'อปน.', NULL, NULL),
(369, 0, 'PAK  CHONG', 230, 'PCH', 'อปอ.', NULL, NULL),
(370, 0, 'PLUAK DAENG', 525, 'PDG', 'อปก.', NULL, NULL),
(371, 0, 'PHETCHABUN', 115, 'PE', 'อปน.', NULL, NULL),
(372, 0, 'PHA  CHI', 115, 'PH', 'อปก.', NULL, NULL),
(373, 0, 'PHANG  KHON', 115, 'PHK', 'อปอ.', NULL, NULL),
(374, 0, 'PHUKET 1', 115, 'PK1', 'อปต.', NULL, NULL),
(375, 0, 'PHUKET 2', 115, 'PK2', 'อปต.', NULL, NULL),
(376, 0, 'PRA  KHON  CHAI', 115, 'PKC', 'อปอ.', NULL, NULL),
(377, 0, 'PRACHUAP KHIRI KHAN', 230, 'PKK', 'อปก.', NULL, NULL),
(378, 0, 'PHITSANULOK 1', 115, 'PL1', 'อปน.', NULL, NULL),
(379, 0, 'PHITSANULOK 2', 230, 'PL2', 'อปน.', NULL, NULL),
(380, 0, 'PAK  MUN', 115, 'PMN', 'อปอ.', NULL, NULL),
(381, 0, 'PHANGNGA', 115, 'PN', 'อปต.', NULL, NULL),
(382, 0, 'PHON', 115, 'PO', 'อปอ.', NULL, NULL),
(383, 0, 'PHON  THONG', 115, 'POT', 'อปอ.', NULL, NULL),
(384, 0, 'PHUNPHIN', 115, 'PP', 'อปต.', NULL, NULL),
(385, 0, 'PHRAE', 115, 'PR', 'อปน.', NULL, NULL),
(386, 0, 'PRANBURI', 115, 'PRB', 'อปก.', NULL, NULL),
(387, 0, 'PHRA  PHUTTABAT', 115, 'PTB', 'อปก.', NULL, NULL),
(388, 0, 'PATTANI', 115, 'PTN', 'อปต.', NULL, NULL),
(389, 0, 'PHATTHALUNG', 230, 'PU', 'อปต.', NULL, NULL),
(390, 0, 'PHAYAO', 115, 'PY', 'อปน.', NULL, NULL),
(391, 0, 'PHAYAKKAPHUM  PHISAI', 115, 'PYK', 'อปอ.', NULL, NULL),
(392, 0, 'RANOT', 115, 'RA', 'อปต.', NULL, NULL),
(393, 0, 'RATCHABURI 1', 115, 'RB1', 'อปก.', NULL, NULL),
(394, 0, 'RATCHABURI 2', 230, 'RB2', 'อปก.', NULL, NULL),
(395, 0, 'RATCHABURI-3', 525, 'RB3', 'อปก.', NULL, NULL),
(396, 0, 'ROI  ET', 230, 'RE', 'อปอ.', NULL, NULL),
(397, 0, 'RANONG', 115, 'RN', 'อปต.', NULL, NULL),
(398, 0, 'RAJJAPRABHA', 230, 'RPB', 'อปต.', NULL, NULL),
(399, 0, 'RATCHADAPHISEK', 230, 'RPS', 'อปล.', NULL, NULL),
(400, 0, 'RANGSIT', 230, 'RS', 'อปล.', NULL, NULL),
(401, 0, 'RAYONG 1', 115, 'RY1', 'อปก.', NULL, NULL),
(402, 0, 'RAYONG 2', 230, 'RY2', 'อปก.', NULL, NULL),
(403, 0, 'RAYONG 3', 115, 'RY3', 'อปก.', NULL, NULL),
(404, 0, 'SAM  PHRAN 1', 230, 'SA1', 'อปก.', NULL, NULL),
(405, 0, 'SAM  PHRAN 2', 115, 'SA2 ', 'อปก.', NULL, NULL),
(406, 0, 'SOUTH  BANGKOK', 230, 'SB', 'อปล.', NULL, NULL),
(407, 0, 'SI  RACHA', 230, 'SC', 'อปก.', NULL, NULL),
(408, 0, 'SOMDET', 115, 'SD', 'อปอ.', NULL, NULL),
(409, 0, 'SADAO', 115, 'SDO', 'อปต.', NULL, NULL),
(410, 0, 'SINGBURI', 115, 'SI', 'อปก.', NULL, NULL),
(411, 0, 'SIRIKIT', 230, 'SK', 'อปน.', NULL, NULL),
(412, 0, 'SANG   KA', 115, 'SKA', 'อปอ.', NULL, NULL),
(413, 0, 'SIKHUI', 230, 'SKI', 'อปอ.', NULL, NULL),
(414, 0, 'SONGKHLA', 115, 'SKL', 'อปต.', NULL, NULL),
(415, 0, 'SAWANKHALOK', 115, 'SL', 'อปน.', NULL, NULL),
(416, 0, 'SALOKBAT', 115, 'SLB', 'อปน.', NULL, NULL),
(417, 0, 'SI  MAHAPHOT', 115, 'SMP ', 'อปก.', NULL, NULL),
(418, 0, 'SAI  NOI', 525, 'SNO', 'อปล.', NULL, NULL),
(419, 0, 'SRINAGARIND 1', 230, 'SNR1', 'อปก.', NULL, NULL),
(420, 0, 'SAKON  NAKHON 1', 115, 'SO1', 'อปอ.', NULL, NULL),
(421, 0, 'SAKON  NAKHON 2', 230, 'SO2', 'อปอ.', NULL, NULL),
(422, 0, 'SUPHAN  BURI', 115, 'SP', 'อปก.', NULL, NULL),
(423, 0, 'SOP  PRAP', 115, 'SPP', 'อปน.', NULL, NULL),
(424, 0, 'SIRINDHORN', 115, 'SRD', 'อปอ.', NULL, NULL),
(425, 0, 'SURAT  THANI', 230, 'SRT', 'อปต.', NULL, NULL),
(426, 0, 'SI  SA  KET', 115, 'SS', 'อปอ.', NULL, NULL),
(427, 0, 'SUKHOTHAI', 115, 'ST', 'อปน.', NULL, NULL),
(428, 0, 'SOUTH  THONBURI', 230, 'STB', 'อปล.', NULL, NULL),
(429, 0, 'SATUN', 115, 'STU', 'อปต.', NULL, NULL),
(430, 0, 'SURIN', 115, 'SU', 'อปอ.', NULL, NULL),
(431, 0, 'SUNGAI  KOLOK', 115, 'SUK', 'อปต.', NULL, NULL),
(432, 0, 'TAK 1', 115, 'TA1', 'อปน.', NULL, NULL),
(433, 0, 'TAK 2', 230, 'TA2', 'อปน.', NULL, NULL),
(434, 0, 'THOEN', 525, 'TE', 'อปน.', NULL, NULL),
(435, 0, 'THAT  PHANOM', 115, 'TH', 'อปอ.', NULL, NULL),
(436, 0, 'THEONG', 230, 'THG', 'อปน.', NULL, NULL),
(437, 0, 'TAKHLI 1', 115, 'TK1', 'อปน.', NULL, NULL),
(438, 0, 'TAKHLI 2', 230, 'TK2', 'อปน.', NULL, NULL),
(439, 0, 'THALAN 1', 115, 'TL1', 'อปก.', NULL, NULL),
(440, 0, 'THALAN 2', 115, 'TL2', 'อปก.', NULL, NULL),
(441, 0, 'THALAN 3', 230, 'TL3', 'อปก.', NULL, NULL),
(442, 0, 'THA  MUANG', 115, 'TM', 'อปก.', NULL, NULL),
(443, 0, 'THA  THUNG  NA', 115, 'TN', 'อปก.', NULL, NULL),
(444, 0, 'TAKUA  PA', 115, 'TP', 'อปต.', NULL, NULL),
(445, 0, 'THEPHARAK', 230, 'TPR', 'อปล.', NULL, NULL),
(446, 0, 'THUNG  SONG', 230, 'TS', 'อปต.', NULL, NULL),
(447, 0, 'THA  TAKO', 525, 'TTK', 'อปน.', NULL, NULL),
(448, 0, 'THAWUNG', 230, 'TW', 'อปก.', NULL, NULL),
(449, 0, 'UBOL  RATCHATHANI 1', 115, 'UB1', 'อปอ.', NULL, NULL),
(450, 0, 'UBOL  RATCHATHANI 2', 230, 'UB2', 'อปอ.', NULL, NULL),
(451, 0, 'UDON  THANI 1', 115, 'UD1', 'อปอ.', NULL, NULL),
(452, 0, 'UDON  THANI 2', 115, 'UD2', 'อปอ.', NULL, NULL),
(453, 0, 'UBOLRATANA', 115, 'UR', 'อปอ.', NULL, NULL),
(454, 0, 'UTTARADIT', 115, 'UT', 'อปน.', NULL, NULL),
(455, 0, 'VAJIRALONGKORN', 230, 'VRK', 'อปก.', NULL, NULL),
(456, 0, 'WANG  NOI', 525, 'WN', 'อปก.', NULL, NULL),
(457, 0, 'WATTHANA  NAKHON', 115, 'WNK', 'อปก.', NULL, NULL),
(458, 0, 'YALA 1', 115, 'YL1', 'อปต.', NULL, NULL),
(459, 0, 'YALA 2', 115, 'YL2', 'อปต.', NULL, NULL),
(460, 0, 'YASOTHON', 230, 'YT', 'อปอ.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `students`
--


-- --------------------------------------------------------

--
-- Table structure for table `sun_flower`
--

CREATE TABLE IF NOT EXISTS `sun_flower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sun_flower`
--


-- --------------------------------------------------------

--
-- Table structure for table `surge_arresters`
--

CREATE TABLE IF NOT EXISTS `surge_arresters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ground_connector_hv` decimal(10,0) DEFAULT NULL,
  `ground_connector_lv` decimal(10,0) DEFAULT NULL,
  `ground_connector_tv` decimal(10,0) DEFAULT NULL,
  `porcelain_clean_hv` decimal(10,0) DEFAULT NULL,
  `porcelain_clean_lv` decimal(10,0) DEFAULT NULL,
  `porcelain_clean_tv` decimal(10,0) DEFAULT NULL,
  `porcelain_status_hv` decimal(10,0) DEFAULT NULL,
  `porcelain_status_lv` decimal(10,0) DEFAULT NULL,
  `porcelain_status_tv` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  `surge_counter_hv` int(11) DEFAULT NULL,
  `surge_counter_lv` int(11) DEFAULT NULL,
  `surge_counter_tv` int(11) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `surge_arresters`
--

INSERT INTO `surge_arresters` (`id`, `ground_connector_hv`, `ground_connector_lv`, `ground_connector_tv`, `porcelain_clean_hv`, `porcelain_clean_lv`, `porcelain_clean_tv`, `porcelain_status_hv`, `porcelain_status_lv`, `porcelain_status_tv`, `transformer`, `surge_counter_hv`, `surge_counter_lv`, `surge_counter_tv`, `visual_inspection_id`) VALUES
(1, '46', '45', '45', '76', '74', '75', '86', '86', '86', '343', NULL, NULL, NULL, NULL),
(2, '45', '45', '45', '74', '74', '74', '86', '86', '86', '1', NULL, NULL, NULL, NULL),
(3, '25', '36', NULL, '22', '33', NULL, '19', '30', NULL, NULL, 28, 39, NULL, 2),
(4, '25', '37', '47', '24', '33', '44', '19', '30', '41', NULL, 28, 39, 51, 4);

-- --------------------------------------------------------

--
-- Table structure for table `surge_arrester_factors`
--

CREATE TABLE IF NOT EXISTS `surge_arrester_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `surge_arrester_factors`
--

INSERT INTO `surge_arrester_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 39, '0,255,0', '2011-02-09 12:31:47', '2011-02-09 12:31:47'),
(2, 3, 'Acceptable', 40, 43, '0,0,255', '2011-02-09 12:31:47', '2011-02-09 12:31:47'),
(3, 2, 'Need Caution', 44, 46, '0,255,255', '2011-02-09 12:31:47', '2011-02-09 12:31:47'),
(4, 1, 'Poor', 47, 49, '255,146,0', '2011-02-09 12:31:47', '2011-02-09 12:31:47'),
(5, 0, 'Very Poor', 50, NULL, '255,0,0', '2011-02-09 12:31:47', '2011-02-09 12:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `system_fault_levels`
--

CREATE TABLE IF NOT EXISTS `system_fault_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  `bus_voltage_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `system_fault_levels`
--

INSERT INTO `system_fault_levels` (`id`, `start`, `end`, `score`, `score_message`, `bus_voltage_id`, `created_at`, `updated_at`) VALUES
(101, 0, 10000, 1, 'Very Low', 22, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(102, 10001, 16600, 2, 'Low', 22, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(103, 16601, 23200, 3, 'Moderate', 22, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(104, 23201, 30000, 4, 'High', 22, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(105, 30001, NULL, 4, 'High', 22, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(106, 0, 1000, 1, 'Very Low', 21, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(107, 1001, 2300, 2, 'Low', 21, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(108, 2301, 3600, 3, 'Moderate', 21, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(109, 3601, 5000, 4, 'High', 21, '2010-09-09 22:45:34', '2010-09-09 22:45:34'),
(110, 5001, NULL, 5, 'Very High', 21, '2010-09-09 22:45:34', '2010-09-09 22:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `system_locations`
--

CREATE TABLE IF NOT EXISTS `system_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `system_locations`
--

INSERT INTO `system_locations` (`id`, `value`, `created_at`, `updated_at`, `score`, `score_message`) VALUES
(61, 'Step 1', '2010-09-09 22:45:34', '2010-09-25 08:04:29', 1, 'Very Low'),
(62, 'Step 2', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 2, 'Low'),
(63, 'Step 3', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 3, 'Moderate'),
(64, 'Step 4', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 4, 'High'),
(65, 'Step 5', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 5, 'Very High'),
(66, 'No Shed or Tie Transformer', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 6, 'Extremely High');

-- --------------------------------------------------------

--
-- Table structure for table `system_stabilities`
--

CREATE TABLE IF NOT EXISTS `system_stabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `system_stabilities`
--

INSERT INTO `system_stabilities` (`id`, `value`, `created_at`, `updated_at`, `score`, `score_message`) VALUES
(61, 'Loading 115/22 or 33 kV', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 1, 'Very Low'),
(62, 'Loading 230/69 kV', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 2, 'Low'),
(63, 'Loading 230/115 kV', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 3, 'Moderate'),
(64, 'Tie 230/115 kV', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 4, 'High'),
(65, 'Tie 500/230 kV', '2010-09-09 22:45:34', '2010-09-09 22:45:34', 5, 'Very High'),
(66, NULL, '2010-09-09 22:45:34', '2010-09-09 22:45:34', 6, 'Extremely High');

-- --------------------------------------------------------

--
-- Table structure for table `tarrester`
--

CREATE TABLE IF NOT EXISTS `tarrester` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `currenth1` double DEFAULT NULL,
  `currenth2` double DEFAULT NULL,
  `currenth3` double DEFAULT NULL,
  `currentx1` double DEFAULT NULL,
  `currentx2` double DEFAULT NULL,
  `currentx3` double DEFAULT NULL,
  `currenty1` double DEFAULT NULL,
  `currenty2` double DEFAULT NULL,
  `currenty3` double DEFAULT NULL,
  `leakage_firsth1` double DEFAULT NULL,
  `leakage_firsth2` double DEFAULT NULL,
  `leakage_firsth3` double DEFAULT NULL,
  `leakage_firstx1` double DEFAULT NULL,
  `leakage_firstx2` double DEFAULT NULL,
  `leakage_firstx3` double DEFAULT NULL,
  `leakage_firsty1` double DEFAULT NULL,
  `leakage_firsty2` double DEFAULT NULL,
  `leakage_firsty3` double DEFAULT NULL,
  `leakageh1` double DEFAULT NULL,
  `leakageh2` double DEFAULT NULL,
  `leakageh3` double DEFAULT NULL,
  `leakagex1` double DEFAULT NULL,
  `leakagex2` double DEFAULT NULL,
  `leakagex3` double DEFAULT NULL,
  `leakagey1` double DEFAULT NULL,
  `leakagey2` double DEFAULT NULL,
  `leakagey3` double DEFAULT NULL,
  `ohm_firsth1` double DEFAULT NULL,
  `ohm_firsth2` double DEFAULT NULL,
  `ohm_firsth3` double DEFAULT NULL,
  `ohm_firstx1` double DEFAULT NULL,
  `ohm_firstx2` double DEFAULT NULL,
  `ohm_firstx3` double DEFAULT NULL,
  `ohm_firsty1` double DEFAULT NULL,
  `ohm_firsty2` double DEFAULT NULL,
  `ohm_firsty3` double DEFAULT NULL,
  `ohmh1` double DEFAULT NULL,
  `ohmh2` double DEFAULT NULL,
  `ohmh3` double DEFAULT NULL,
  `ohmx1` double DEFAULT NULL,
  `ohmx2` double DEFAULT NULL,
  `ohmx3` double DEFAULT NULL,
  `ohmy1` double DEFAULT NULL,
  `ohmy2` double DEFAULT NULL,
  `ohmy3` double DEFAULT NULL,
  `serialh1` varchar(255) DEFAULT NULL,
  `serialh2` varchar(255) DEFAULT NULL,
  `serialh3` varchar(255) DEFAULT NULL,
  `serialx1` varchar(255) DEFAULT NULL,
  `serialx2` varchar(255) DEFAULT NULL,
  `serialx3` varchar(255) DEFAULT NULL,
  `serialy1` varchar(255) DEFAULT NULL,
  `serialy2` varchar(255) DEFAULT NULL,
  `serialy3` varchar(255) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `test_kv` int(11) DEFAULT NULL,
  `watt_firsth1` double DEFAULT NULL,
  `watt_firsth2` double DEFAULT NULL,
  `watt_firsth3` double DEFAULT NULL,
  `watt_firstx1` double DEFAULT NULL,
  `watt_firstx2` double DEFAULT NULL,
  `watt_firstx3` double DEFAULT NULL,
  `watt_firsty1` double DEFAULT NULL,
  `watt_firsty2` double DEFAULT NULL,
  `watt_firsty3` double DEFAULT NULL,
  `watth1` double DEFAULT NULL,
  `watth2` double DEFAULT NULL,
  `watth3` double DEFAULT NULL,
  `wattx1` double DEFAULT NULL,
  `wattx2` double DEFAULT NULL,
  `wattx3` double DEFAULT NULL,
  `watty1` double DEFAULT NULL,
  `watty2` double DEFAULT NULL,
  `watty3` double DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tarrester`
--

INSERT INTO `tarrester` (`id`, `version`, `currenth1`, `currenth2`, `currenth3`, `currentx1`, `currentx2`, `currentx3`, `currenty1`, `currenty2`, `currenty3`, `leakage_firsth1`, `leakage_firsth2`, `leakage_firsth3`, `leakage_firstx1`, `leakage_firstx2`, `leakage_firstx3`, `leakage_firsty1`, `leakage_firsty2`, `leakage_firsty3`, `leakageh1`, `leakageh2`, `leakageh3`, `leakagex1`, `leakagex2`, `leakagex3`, `leakagey1`, `leakagey2`, `leakagey3`, `ohm_firsth1`, `ohm_firsth2`, `ohm_firsth3`, `ohm_firstx1`, `ohm_firstx2`, `ohm_firstx3`, `ohm_firsty1`, `ohm_firsty2`, `ohm_firsty3`, `ohmh1`, `ohmh2`, `ohmh3`, `ohmx1`, `ohmx2`, `ohmx3`, `ohmy1`, `ohmy2`, `ohmy3`, `serialh1`, `serialh2`, `serialh3`, `serialx1`, `serialx2`, `serialx3`, `serialy1`, `serialy2`, `serialy3`, `test_by`, `test_date`, `test_kv`, `watt_firsth1`, `watt_firsth2`, `watt_firsth3`, `watt_firstx1`, `watt_firstx2`, `watt_firstx3`, `watt_firsty1`, `watt_firsty2`, `watt_firsty3`, `watth1`, `watth2`, `watth3`, `wattx1`, `wattx2`, `wattx3`, `watty1`, `watty2`, `watty3`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 0.0989999994635582, 0.0989999994635582, 0.0989999994635582, 0.19200000166893, 0.188999995589256, 0.189999997615814, 0.739000022411346, 0.725000023841858, 0.73199999332428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90.5199966430664, 87.5899963378906, 88, 65.5, 68.1999969482422, 62.0999984741211, 68.5500030517578, 70.120002746582, 70.5500030517578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250000, 250000, 250000, 150000, 150000, 150000, 125000, 30000, 30000, 'BB3', 'CC3', 'DD3', 'GG3', 'HH3', 'II3', 'JJ3', 'KK3', 'LL3', 'G-A', '1997-01-03 00:00:00', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0610000006854534, 0.0590000003576279, 0.0520000010728836, 0.0930000022053719, 0.0890000015497208, 0.0949999988079071, 0.730000019073486, 0.591000020503998, 0.598999977111816, 'Test', '1', '343'),
(2, NULL, 0.0489999987185001, 0.0500000007450581, 0.0509999990463257, 1.16499996185303, 0.0689999982714653, 1.15499997138977, 0.722000002861023, 0.708999991416931, 0.705999970436096, 90.5199966430664, 87.5899963378906, 88, 65.5, 68.1999969482422, 62.0999984741211, 68.5500030517578, 70.120002746582, 70.5500030517578, 95.2300033569336, 95.879997253418, 100, 74.3000030517578, 76.0999984741211, 80.0100021362305, 76.9000015258789, 79.1100006103516, 72.6900024414062, 250000, 250000, 250000, 150000, 150000, 150000, 125000, 30000, 30000, 9370, 7780, 7070, 3840, 9800, 1840, 4500, 5290, 5500, 'BB4', 'CC4', 'DD4', 'GG4', 'HH4', 'II4', 'JJ4', 'KK4', 'LL4', 'G-A', '2001-12-06 00:00:00', 10, 0.0610000006854534, 0.0590000003576279, 0.0520000010728836, 0.0930000022053719, 0.0890000015497208, 0.0949999988079071, 0.730000019073486, 0.591000020503998, 0.598999977111816, 0.0689999982714653, 0.0659999996423721, 0.0549999997019768, 0.111000001430511, 0.0949999988079071, 0.125, 0.772000014781952, 0.59799998998642, 0.638000011444092, 'Test', '3', '343'),
(3, NULL, 0.0949999988079071, 0.0979999974370003, 0.0979999974370003, 0.194999992847443, 0.19200000166893, 0.190999999642372, 0.721000015735626, 0.725000023841858, 0.731000006198883, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 55.3400001525879, 56.2999992370605, 60.2299995422363, 63.8899993896484, 60.2999992370605, 59.3400001525879, 57.7700004577637, 57.0499992370605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250000, 250000, 250000, 250000, 250000, 250000, 125000, 125000, 125000, 'BB11', 'CC11', 'DD11', 'GG11', 'HH11', 'II11', 'JJ11', 'KK11', 'LL11', 'TCS#1', '2002-03-03 00:00:00', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0599999986588955, 0.519999980926514, 0.0410000011324883, 0.0900000035762787, 0.0829999968409538, 0.0850000008940697, 0.708999991416931, 0.610000014305115, 0.610000014305115, 'Test', '1', '344'),
(4, NULL, 0.0450000017881393, 0.0579999983310699, 0.0500000007450581, 1.11800003051758, 0.0579999983310699, 1.10899996757507, 0.231000006198883, 0.232999995350838, 0.238000005483627, 59, 55.3400001525879, 56.2999992370605, 60.2299995422363, 63.8899993896484, 60.2999992370605, 59.3400001525879, 57.7700004577637, 57.0499992370605, 90.3199996948242, 91.1999969482422, 88, 91.5199966430664, 94.5199966430664, 95, 87.6549987792969, 89.4520034790039, 90, 250000, 250000, 250000, 250000, 250000, 250000, 125000, 125000, 125000, 8500, 7500, 8000, 3000, 9500, 2500, 500, 6500, 5000, 'BB12', 'CC12', 'DD12', 'GG12', 'HH12', 'II12', 'JJ12', 'KK12', 'LL12', 'SETS/G3', '2009-10-04 00:00:00', 10, 0.0599999986588955, 0.519999980926514, 0.0410000011324883, 0.0900000035762787, 0.0829999968409538, 0.0850000008940697, 0.708999991416931, 0.610000014305115, 0.610000014305115, 0.0560000017285347, 0.0520000010728836, 0.0439999997615814, 0.0930000022053719, 0.0879999995231628, 0.090999998152256, 0.709999978542328, 0.620000004768372, 0.617999970912933, 'Test', '3', '344'),
(5, NULL, 0.0949999988079071, 0.0979999974370003, 0.0979999974370003, 0.194999992847443, 0.19200000166893, 0.190999999642372, 0.721000015735626, 0.725000023841858, 0.731000006198883, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 68, 70.1999969482422, 52, 53, 53, 39, 36, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250000, 250000, 250000, 150000, 150000, 150000, 125000, 30000, 30000, 'BB', 'CC', 'DD', 'GG', 'HH', 'II', 'JJ', 'KK', 'LL', 'GA????-?', '2003-06-01 00:00:00', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0549999997019768, 0.509999990463257, 0.0399999991059303, 0.0900000035762787, 0.0820000022649765, 0.0879999995231628, 0.700999975204468, 0.602999985218048, 0.611000001430511, 'Test', '1', '173'),
(6, NULL, 0.0439999997615814, 0.0509999990463257, 0.0480000004172325, 1.11500000953674, 0.0549999997019768, 1.10099995136261, 0.231000006198883, 0.232999995350838, 0.238000005483627, 60, 68, 70.1999969482422, 52, 53, 53, 39, 36, 35, 78, 72.5, 70, 68.9000015258789, 60, 68.1999969482422, 40.5800018310547, 40.9799995422363, 38.5499992370605, 250000, 250000, 250000, 150000, 150000, 150000, 125000, 30000, 30000, 8900, 7550, 7820, 2940, 8900, 1920, 440, 5320, 4800, 'BB1', 'CC1', 'DD1', 'GG1', 'HH1', 'II1', 'JJ1', 'KK1', 'LL1', '???-?', '2009-10-01 00:00:00', 10, 0.0549999997019768, 0.509999990463257, 0.0399999991059303, 0.0900000035762787, 0.0820000022649765, 0.0879999995231628, 0.700999975204468, 0.602999985218048, 0.611000001430511, 0.0560000017285347, 0.0520000010728836, 0.0439999997615814, 0.0930000022053719, 0.0879999995231628, 0.090999998152256, 0.709999978542328, 0.620000004768372, 0.617999970912933, 'Test', '3', '173'),
(7, NULL, 0.0900000035762787, 0.0949999988079071, 0.0989999994635582, 0.193000003695488, 0.180000007152557, 0.194999992847443, 0.735000014305115, 0.726000010967255, 0.732999980449677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58.2299995422363, 59, 56.2999992370605, 60, 60.8800010681152, 63.3499984741211, 58.3400001525879, 57.6699981689453, 59.0499992370605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250000, 250000, 250000, 150000, 150000, 150000, 125000, 125000, 125000, 'BB9', 'CC9', 'DD9', 'GG9', 'HH9', 'II9', 'JJ9', 'KK9', 'LL9', '???-??', '2007-09-02 00:00:00', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0649999976158142, 0.0599999986588955, 0.0529999993741512, 0.0979999974370003, 0.0850000008940697, 0.0900000035762787, 0.735000014305115, 0.592000007629395, 0.560000002384186, 'Test', '1', '215'),
(8, NULL, 0.0450000017881393, 0.0549999997019768, 0.0570000000298023, 1.16400003433228, 0.0659999996423721, 1.15600001811981, 0.721000015735626, 0.709999978542328, 0.708000004291534, 58.2299995422363, 59, 56.2999992370605, 60, 60.8800010681152, 63.3499984741211, 58.3400001525879, 57.6699981689453, 59.0499992370605, 89.0199966430664, 90.3000030517578, 87.3399963378906, 91.5, 94.3199996948242, 95.0999984741211, 87.5999984741211, 89.4400024414062, 90, 250000, 250000, 250000, 150000, 150000, 150000, 125000, 125000, 125000, 9500, 7700, 7000, 3800, 9500, 1940, 4500, 5200, 5500, 'BB10', 'CC10', 'DD10', 'GG10', 'HH10', 'II10', 'JJ10', 'KK10', 'LL10', '???-?', '2010-06-04 00:00:00', 10, 0.0649999976158142, 0.0599999986588955, 0.0529999993741512, 0.0979999974370003, 0.0850000008940697, 0.0900000035762787, 0.735000014305115, 0.592000007629395, 0.560000002384186, 0.0689999982714653, 0.0659999996423721, 0.0549999997019768, 0.111000001430511, 0.0949999988079071, 0.125, 0.772000014781952, 0.59799998998642, 0.638000011444092, 'Test', '3', '215'),
(9, NULL, 0.0989999994635582, 0.0989999994635582, 0.0989999994635582, 0.19200000166893, 0.188999995589256, 0.189999997615814, 0.739000022411346, 0.725000023841858, 0.73199999332428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91.5199966430664, 87.5199966430664, 88.6500015258789, 65.5400009155273, 68.6100006103516, 62.2000007629395, 68.75, 70.2300033569336, 70.5800018310547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250000, 250000, 250000, 125000, 125000, 125000, 125000, 30000, 30000, 'BB15', 'CC15', 'DD15', 'GG15', 'HH15', 'II15', 'JJ15', 'KK15', 'LL15', 'PRAMOTE', '2003-06-05 00:00:00', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0649999976158142, 0.0599999986588955, 0.0549999997019768, 0.0900000035762787, 0.0900000035762787, 0.0920000001788139, 0.736999988555908, 0.589999973773956, 0.595000028610229, 'Test', '1', '96'),
(10, NULL, 0.0489999987185001, 0.0500000007450581, 0.0509999990463257, 1.16499996185303, 0.0689999982714653, 1.15499997138977, 0.722000002861023, 0.708999991416931, 0.705999970436096, 91.5199966430664, 87.5199966430664, 88.6500015258789, 65.5400009155273, 68.6100006103516, 62.2000007629395, 68.75, 70.2300033569336, 70.5800018310547, 94.2300033569336, 97.879997253418, 100, 75.370002746582, 76.1549987792969, 84.0100021362305, 77.9000015258789, 79.1100006103516, 72.7900009155273, 250000, 250000, 250000, 125000, 125000, 125000, 125000, 125000, 125000, 9370, 7780, 7070, 3900, 9500, 1900, 5500, 5300, 6000, 'BB16', 'CC16', 'DD16', 'GG16', 'HH16', 'II16', 'JJ16', 'KK16', 'LL16', 'G.A', '2007-07-05 00:00:00', 10, 0.0649999976158142, 0.0599999986588955, 0.0549999997019768, 0.0900000035762787, 0.0900000035762787, 0.0920000001788139, 0.736999988555908, 0.589999973773956, 0.595000028610229, 0.0689999982714653, 0.0659999996423721, 0.0549999997019768, 0.111000001430511, 0.0949999988079071, 0.125, 0.772000014781952, 0.59799998998642, 0.638000011444092, 'Test', '3', '96'),
(11, NULL, 0.0989999994635582, 0.0989999994635582, 0.0989999994635582, 0.19200000166893, 0.188999995589256, 0.189999997615814, 0.739000022411346, 0.725000023841858, 0.73199999332428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60.810001373291, 68.2200012207031, 70.3000030517578, 52.3400001525879, 53.6599998474121, 53.6699981689453, 39.7299995422363, 36.6599998474121, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250000, 250000, 250000, 250000, 250000, 250000, 250000, 250000, 250000, 'BB13', 'CC13', 'DD13', 'GG13', 'HH13', 'II13', 'JJ13', 'KK13', 'LL13', 'G-A+B', '2003-05-10 00:00:00', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0540000014007092, 0.0579999983310699, 0.046000000089407, 0.0810000002384186, 0.0799999982118607, 0.0869999974966049, 0.690999984741211, 0.578000009059906, 0.579999983310699, 'Test', '1', '51'),
(12, NULL, 0.0489999987185001, 0.0500000007450581, 0.0489999987185001, 1.1599999666214, 0.0579999983310699, 1.17400002479553, 0.229000002145767, 0.230000004172325, 0.230000004172325, 60.810001373291, 68.2200012207031, 70.3000030517578, 52.3400001525879, 53.6599998474121, 53.6699981689453, 39.7299995422363, 36.6599998474121, 35, 78.5199966430664, 72.5699996948242, 80, 67.9000015258789, 61, 69.1999969482422, 45.5800018310547, 48.9799995422363, 48.5499992370605, 250000, 250000, 250000, 250000, 250000, 250000, 250000, 250000, 250000, 8870, 7450, 7790, 2840, 8880, 1820, 4390, 5220, 4740, 'BB14', 'CC14', 'DD14', 'GG14', 'HH14', 'II14', 'JJ14', 'KK14', 'LL14', 'G-A+B', '2009-06-10 00:00:00', 10, 0.0540000014007092, 0.0579999983310699, 0.046000000089407, 0.0810000002384186, 0.0799999982118607, 0.0869999974966049, 0.690999984741211, 0.578000009059906, 0.579999983310699, 0.0540000014007092, 0.0579999983310699, 0.0549999997019768, 0.179000005125999, 0.0949999988079071, 0.187000006437302, 0.699999988079071, 0.589999973773956, 0.59799998998642, 'Test', '3', '51'),
(13, NULL, 0.0989999994635582, 0.0989999994635582, 0.0989999994635582, 0.19200000166893, 0.188999995589256, 0.189999997615814, 0.739000022411346, 0.725000023841858, 0.73199999332428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 99, 99, 89, 78.6900024414062, 80, 48.560001373291, 40.2200012207031, 41.2200012207031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250000, 250000, 250000, 150000, 150000, 150000, 125000, 30000, 30000, '8070432', '8070433', '8070434', '8070441', '8070442', '8070443', '8070445', '8070448', '8070450', 'G-A', '2004-12-07 00:00:00', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0500000007450581, 0.0560000017285347, 0.0450000017881393, 0.0869999974966049, 0.0879999995231628, 0.0829999968409538, 0.689999997615814, 0.569999992847443, 0.584999978542328, 'Test', '1', '248'),
(14, NULL, 0.0489999987185001, 0.0500000007450581, 0.0489999987185001, 1.1599999666214, 0.0579999983310699, 1.17400002479553, 0.229000002145767, 0.230000004172325, 0.230000004172325, 99, 99, 99, 89, 78.6900024414062, 80, 48.560001373291, 40.2200012207031, 41.2200012207031, 126, 130, 100, 90.6600036621094, 100, 98.5, 50.7999992370605, 49.8699989318848, 50.2000007629395, 250000, 250000, 250000, 150000, 150000, 150000, 125000, 30000, 30000, 8870, 7450, 7790, 2840, 8880, 1820, 4390, 5220, 4740, 'BB2', 'CC2', 'DD2', 'GG2', 'HH2', 'II2', 'JJ2', 'KK2', 'LL2', 'G-A', '2008-03-03 00:00:00', 10, 0.0500000007450581, 0.0560000017285347, 0.0450000017881393, 0.0869999974966049, 0.0879999995231628, 0.0829999968409538, 0.689999997615814, 0.569999992847443, 0.584999978542328, 0.0540000014007092, 0.0579999983310699, 0.0549999997019768, 0.179000005125999, 0.0949999988079071, 0.187000006437302, 0.699999988079071, 0.589999973773956, 0.59799998998642, 'Test', '3', '248'),
(15, NULL, 0.0949999988079071, 0.0979999974370003, 0.0979999974370003, 0.194999992847443, 0.19200000166893, 0.190999999642372, 0.721000015735626, 0.725000023841858, 0.731000006198883, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60.1199989318848, 60.2000007629395, 61.0099983215332, 75.5, 76.9000015258789, 81.0199966430664, 79.1999969482422, 81.3000030517578, 89.0899963378906, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250000, 250000, 250000, 250000, 250000, 125000, 125000, 45000, 45000, 'BB5', 'CC5', 'DD5', 'GG5', 'HH5', 'II5', 'JJ5', 'KK5', 'LL5', '???.? Group3', '2003-06-03 00:00:00', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0579999983310699, 0.51800000667572, 0.0450000017881393, 0.0939999967813492, 0.0879999995231628, 0.0900000035762787, 0.708000004291534, 0.600000023841858, 0.617999970912933, 'Test', '1', '232'),
(16, NULL, 0.0450000017881393, 0.0560000017285347, 0.0500000007450581, 1.11699998378754, 0.0579999983310699, 1.10899996757507, 0.238000005483627, 0.238999992609024, 0.239999994635582, 60.1199989318848, 60.2000007629395, 61.0099983215332, 75.5, 76.9000015258789, 81.0199966430664, 79.1999969482422, 81.3000030517578, 89.0899963378906, 80.5500030517578, 85.2300033569336, 84.1100006103516, 90.5999984741211, 88.6999969482422, 90.6699981689453, 89.4499969482422, 88.5400009155273, 85.4000015258789, 250000, 250000, 250000, 250000, 250000, 125000, 125000, 45000, 45000, 9000, 8550, 8820, 3940, 9000, 2000, 500, 6320, 5000, '8069160', '8069161', '8069162', '8069183', '8069184', '8069185', '8069203', '8069204', '8069205', '???.? Group3', '2009-07-03 00:00:00', 10, 0.0579999983310699, 0.51800000667572, 0.0450000017881393, 0.0939999967813492, 0.0879999995231628, 0.0900000035762787, 0.708000004291534, 0.600000023841858, 0.617999970912933, 0.0560000017285347, 0.0520000010728836, 0.0439999997615814, 0.0930000022053719, 0.0879999995231628, 0.090999998152256, 0.709999978542328, 0.620000004768372, 0.617999970912933, 'Test', '3', '232'),
(17, NULL, 0.0989999994635582, 0.0989999994635582, 0.0989999994635582, 0.19200000166893, 0.188999995589256, 0.189999997615814, 0.739000022411346, 0.725000023841858, 0.73199999332428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54.7999992370605, 59.7700004577637, 61.3300018310547, 60, 59.2999992370605, 55, 61.439998626709, 63.5, 62.7999992370605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250000, 250000, 250000, 250000, 250000, 250000, 150000, 45000, 45000, 'BB7', 'CC7', 'DD7', 'GG7', 'HH7', 'II7', 'JJ7', 'KK7', 'LL7', '???.? GROUP  3', '2004-05-01 00:00:00', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0599999986588955, 0.0759999975562096, 0.0439999997615814, 0.0900000035762787, 0.0900000035762787, 0.0799999982118607, 0.704999983310699, 0.600000023841858, 0.579999983310699, 'Test', '1', '109'),
(18, NULL, 0.0500000007450581, 0.0549999997019768, 0.0419999994337559, 1.16799998283386, 0.0549999997019768, 1.17799997329712, 0.230000004172325, 0.238000005483627, 0.238000005483627, 54.7999992370605, 59.7700004577637, 61.3300018310547, 60, 59.2999992370605, 55, 61.439998626709, 63.5, 62.7999992370605, 85.9800033569336, 90.0299987792969, 89.3399963378906, 85, 84.1999969482422, 88.0800018310547, 90, 91.3399963378906, 90.2200012207031, 250000, 250000, 250000, 250000, 250000, 250000, 150000, 45000, 45000, 8900, 7500, 7800, 2840, 9000, 1800, 4300, 5200, 4800, '35017330', '35017331', '35017332', '35017351', '35017352', '35017353', '35017390', '35017391', '35017392', '???.? GROUP  3', '2010-06-01 00:00:00', 10, 0.0599999986588955, 0.0759999975562096, 0.0439999997615814, 0.0900000035762787, 0.0900000035762787, 0.0799999982118607, 0.704999983310699, 0.600000023841858, 0.579999983310699, 0.0540000014007092, 0.0579999983310699, 0.0549999997019768, 0.179000005125999, 0.0949999988079071, 0.187000006437302, 0.699999988079071, 0.589999973773956, 0.59799998998642, 'Test', '3', '109'),
(19, NULL, 0.0949999988079071, 0.0900000035762787, 0.0900000035762787, 0.194999992847443, 0.189999997615814, 0.197999998927116, 0.735000014305115, 0.725000023841858, 0.73199999332428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99.2099990844727, 99, 99, 89.0400009155273, 78.5999984741211, 80.7699966430664, 48.5, 40.3199996948242, 41.5200004577637, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250000, 250000, 250000, 150000, 150000, 125000, 125000, 125000, 125000, 'BB17', 'CC17', 'DD17', 'GG17', 'HH17', 'II17', 'JJ17', 'KK17', 'LL17', '???.8-1  ???.', '2001-03-01 00:00:00', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0659999996423721, 0.068000003695488, 0.0549999997019768, 0.0970000028610229, 0.090999998152256, 0.0939999967813492, 0.740000009536743, 0.564999997615814, 0.595000028610229, 'Test', '1', '167'),
(20, NULL, 0.0500000007450581, 0.0509999990463257, 0.0579999983310699, 1.16600000858307, 0.0599999986588955, 1.15499997138977, 0.722000002861023, 0.709999978542328, 0.702000021934509, 99.2099990844727, 99, 99, 89.0400009155273, 78.5999984741211, 80.7699966430664, 48.5, 40.3199996948242, 41.5200004577637, 106, 110, 100.199996948242, 90.6699981689453, 100, 98.9000015258789, 50.8199996948242, 49.9700012207031, 50.2550010681152, 250000, 250000, 250000, 150000, 150000, 150000, 150000, 150000, 150000, 9300, 7880, 7100, 3900, 9500, 1900, 4500, 5300, 6000, 'BB18', 'CC18', 'DD18', 'GG18', 'HH18', 'II18', 'JJ18', 'KK18', 'LL18', 'group.B', '2007-04-01 00:00:00', 10, 0.0659999996423721, 0.068000003695488, 0.0549999997019768, 0.0970000028610229, 0.090999998152256, 0.0939999967813492, 0.740000009536743, 0.564999997615814, 0.595000028610229, 0.0689999982714653, 0.0659999996423721, 0.0549999997019768, 0.111000001430511, 0.0949999988079071, 0.125, 0.772000014781952, 0.59799998998642, 0.638000011444092, 'Test', '3', '167');

-- --------------------------------------------------------

--
-- Table structure for table `tbushing`
--

CREATE TABLE IF NOT EXISTS `tbushing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `capc1h0` double DEFAULT NULL,
  `capc1h1` double DEFAULT NULL,
  `capc1h2` double DEFAULT NULL,
  `capc1h3` double DEFAULT NULL,
  `capc1x0` double DEFAULT NULL,
  `capc1x1` double DEFAULT NULL,
  `capc1x2` double DEFAULT NULL,
  `capc1x3` double DEFAULT NULL,
  `capc1y1` double DEFAULT NULL,
  `capc1y2` double DEFAULT NULL,
  `capc1y3` double DEFAULT NULL,
  `capc2h0` double DEFAULT NULL,
  `capc2h1` double DEFAULT NULL,
  `capc2h2` double DEFAULT NULL,
  `capc2h3` double DEFAULT NULL,
  `capc2x0` double DEFAULT NULL,
  `capc2x1` double DEFAULT NULL,
  `capc2x2` double DEFAULT NULL,
  `capc2x3` double DEFAULT NULL,
  `capc2y1` double DEFAULT NULL,
  `capc2y2` double DEFAULT NULL,
  `capc2y3` double DEFAULT NULL,
  `corb` double DEFAULT NULL,
  `currentc1h0` double DEFAULT NULL,
  `currentc1h1` double DEFAULT NULL,
  `currentc1h2` double DEFAULT NULL,
  `currentc1h3` double DEFAULT NULL,
  `currentc1x0` double DEFAULT NULL,
  `currentc1x1` double DEFAULT NULL,
  `currentc1x2` double DEFAULT NULL,
  `currentc1x3` double DEFAULT NULL,
  `currentc1y1` double DEFAULT NULL,
  `currentc1y2` double DEFAULT NULL,
  `currentc1y3` double DEFAULT NULL,
  `currentc2h0` double DEFAULT NULL,
  `currentc2h1` double DEFAULT NULL,
  `currentc2h2` double DEFAULT NULL,
  `currentc2h3` double DEFAULT NULL,
  `currentc2x0` double DEFAULT NULL,
  `currentc2x1` double DEFAULT NULL,
  `currentc2x2` double DEFAULT NULL,
  `currentc2x3` double DEFAULT NULL,
  `currentc2y1` double DEFAULT NULL,
  `currentc2y2` double DEFAULT NULL,
  `currentc2y3` double DEFAULT NULL,
  `serialh0` varchar(255) DEFAULT NULL,
  `serialh1` varchar(255) DEFAULT NULL,
  `serialh2` varchar(255) DEFAULT NULL,
  `serialh3` varchar(255) DEFAULT NULL,
  `serialx0` varchar(255) DEFAULT NULL,
  `serialx1` varchar(255) DEFAULT NULL,
  `serialx2` varchar(255) DEFAULT NULL,
  `serialx3` varchar(255) DEFAULT NULL,
  `serialy1` varchar(255) DEFAULT NULL,
  `serialy2` varchar(255) DEFAULT NULL,
  `serialy3` varchar(255) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `test_kv` double DEFAULT NULL,
  `wattc1h0` double DEFAULT NULL,
  `wattc1h1` double DEFAULT NULL,
  `wattc1h2` double DEFAULT NULL,
  `wattc1h3` double DEFAULT NULL,
  `wattc1x0` double DEFAULT NULL,
  `wattc1x1` double DEFAULT NULL,
  `wattc1x2` double DEFAULT NULL,
  `wattc1x3` double DEFAULT NULL,
  `wattc1y1` double DEFAULT NULL,
  `wattc1y2` double DEFAULT NULL,
  `wattc1y3` double DEFAULT NULL,
  `wattc2h0` double DEFAULT NULL,
  `wattc2h1` double DEFAULT NULL,
  `wattc2h2` double DEFAULT NULL,
  `wattc2h3` double DEFAULT NULL,
  `wattc2x0` double DEFAULT NULL,
  `wattc2x1` double DEFAULT NULL,
  `wattc2x2` double DEFAULT NULL,
  `wattc2x3` double DEFAULT NULL,
  `wattc2y1` double DEFAULT NULL,
  `wattc2y2` double DEFAULT NULL,
  `wattc2y3` double DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbushing`
--

INSERT INTO `tbushing` (`id`, `version`, `capc1h0`, `capc1h1`, `capc1h2`, `capc1h3`, `capc1x0`, `capc1x1`, `capc1x2`, `capc1x3`, `capc1y1`, `capc1y2`, `capc1y3`, `capc2h0`, `capc2h1`, `capc2h2`, `capc2h3`, `capc2x0`, `capc2x1`, `capc2x2`, `capc2x3`, `capc2y1`, `capc2y2`, `capc2y3`, `corb`, `currentc1h0`, `currentc1h1`, `currentc1h2`, `currentc1h3`, `currentc1x0`, `currentc1x1`, `currentc1x2`, `currentc1x3`, `currentc1y1`, `currentc1y2`, `currentc1y3`, `currentc2h0`, `currentc2h1`, `currentc2h2`, `currentc2h3`, `currentc2x0`, `currentc2x1`, `currentc2x2`, `currentc2x3`, `currentc2y1`, `currentc2y2`, `currentc2y3`, `serialh0`, `serialh1`, `serialh2`, `serialh3`, `serialx0`, `serialx1`, `serialx2`, `serialx3`, `serialy1`, `serialy2`, `serialy3`, `test_by`, `test_date`, `test_kv`, `wattc1h0`, `wattc1h1`, `wattc1h2`, `wattc1h3`, `wattc1x0`, `wattc1x1`, `wattc1x2`, `wattc1x3`, `wattc1y1`, `wattc1y2`, `wattc1y3`, `wattc2h0`, `wattc2h1`, `wattc2h2`, `wattc2h3`, `wattc2x0`, `wattc2x1`, `wattc2x2`, `wattc2x3`, `wattc2y1`, `wattc2y2`, `wattc2y3`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 680, 250, 270, 256, 650, 441, 443, 450, 671, 630, 631, 621, 250, 256, 251, 680, 440, 450, 440, 650, 690, 645, 1.11000001430511, 1.73399996757507, 0.833999991416931, 0.810999989509583, 0.925000011920929, 2.20900011062622, 1.45899999141693, 1.46099996566772, 1.45200002193451, 1.97300004959106, 2.09299993515015, 2.03399991989136, 1.82200002670288, 0.449000000953674, 0.533999979496002, 0.503000020980835, 1.85800004005432, 1.23800003528595, 1.18900001049042, 1.18700003623962, 1.75899994373322, 1.78299999237061, 1.82200002670288, '400006', '400007', '400008', '400009', '400010', '400011', '400012', '400013', '400014', '400015', '400016', '???-?G2', '2001-12-06 00:00:00', 10, 0.0740000009536743, 0.0160000007599592, 0.0189999993890524, 0.0179999992251396, 0.0540000014007092, 0.017000000923872, 0.0240000002086163, 0.0509999990463257, 0.0509999990463257, 0.0560000017285347, 0.0509999990463257, 0.0769999995827675, 0.0390000008046627, 0.0120000001043081, 0.0280000008642673, 0.0740000009536743, 0.0320000015199184, 0.0509999990463257, 0.0549999997019768, 0.0729999989271164, 0.0719999969005585, 0.0740000009536743, 'Test', '1', '343'),
(2, NULL, 670, 251, 280, 280, 680, 446, 440, 447, 633, 680, 630, 620, 251, 257, 259, 682, 445, 440, 448, 660, 690, 645, 1.11000001430511, 1.73199999332428, 0.823000013828278, 0.816999971866608, 0.938000023365021, 2.13299989700317, 1.45000004768372, 1.33500003814697, 1.34700000286102, 2.09299993515015, 2.1029999256134, 2.00399994850159, 1.74600005149841, 0.583000004291534, 0.508000016212463, 0.508000016212463, 1.85500001907349, 1.19799995422363, 1.24500000476837, 1.43299996852875, 1.84399998188019, 1.76499998569489, 1.83200001716614, '500007', '500008', '500009', '500010', '500011', '500012', '500013', '500014', '500015', '500016', '500017', 'SETS,G3', '2009-12-04 00:00:00', 10, 0.0439999997615814, 0.0199999995529652, 0.0130000002682209, 0.0179999992251396, 0.0419999994337559, 0.034000001847744, 0.0350000001490116, 0.0329999998211861, 0.0509999990463257, 0.0419999994337559, 0.0509999990463257, 0.0710000023245811, 0.0379999987781048, 0.0270000007003546, 0.0270000007003546, 0.061999998986721, 0.0439999997615814, 0.0529999993741512, 0.0320000015199184, 0.0710000023245811, 0.0729999989271164, 0.0710000023245811, 'Test', '3', '343'),
(3, NULL, 450, 300, 320, 280, 650, 610, 570, 600, 570, 610, 570, 200, 850, 800, 800, 300, 300, 300, 0, 200, 610, 570, 1.07000005245209, 1.44500005245209, 0.823000013828278, 0.787999987602234, 0.856000006198883, 1.75600004196167, 1.81099998950958, 1.68900001049042, 1.70000004768372, 0.610000014305115, 0.787999987602234, 0.610000014305115, 0.601000010967255, 2.75, 2.51999998092651, 2.57999992370605, 0.889999985694885, 0.9549999833107, 0.899999976158142, 0.9549999833107, 0.550000011920929, 0.899999976158142, 0.9549999833107, 'AA7', 'BB5', 'CC5', 'DD5', 'EE6', 'GG5', 'HH5', 'II5', 'JJ7', 'KK7', 'LL7', 'TCS#1', '2002-03-03 00:00:00', 10, 0.0350000001490116, 0.028999999165535, 0.0179999992251396, 0.0109999999403954, 0.0410000011324883, 0.0399999991059303, 0.0549999997019768, 0.0399999991059303, 0.0149999996647239, 0.0280000008642673, 0.0149999996647239, 0.0299999993294477, 0.0799999982118607, 0.0710000023245811, 0.0710000023245811, 0.0230000000447035, 0.0199999995529652, 0.0130000002682209, 0.0199999995529652, 0.0209999997168779, 0.0130000002682209, 0.0270000007003546, 'Test', '1', '344'),
(4, NULL, 424.700012207031, 264.100006103516, 267.399993896484, 265.899993896484, 575.299987792969, 573.099975585938, 569.900024414062, 546.200012207031, 190.399993896484, 573.099975585938, 569.900024414062, 177.399993896484, 867.900024414062, 803.700012207031, 823.799987792969, 295.700012207031, 295.5, 297, 306.100006103516, 174.399993896484, 573.099975585938, 569.900024414062, 1.08000004291534, 1.33399999141693, 0.8299999833107, 0.839999973773956, 0.836000025272369, 1.80799996852875, 1.80099999904633, 1.79700005054474, 1.71700000762939, 0.59799998998642, 0.8299999833107, 0.597000002861023, 0.556999981403351, 2.72699999809265, 2.52500009536743, 2.58800005912781, 0.929000020027161, 0.927999973297119, 0.933000028133392, 0.962000012397766, 0.547999978065491, 0.933000028133392, 0.927999973297119, '99E5025', '99E6004', '99E6005', '99E6006', '99E5042', '99E5034', '99E5035', '99E5036', '99E5019', 'KK8', 'LL8', 'SETS/G3', '2009-10-04 00:00:00', 10, 0.0260000005364418, 0.0149999996647239, 0.0149999996647239, 0.0149999996647239, 0.0370000004768372, 0.0370000004768372, 0.0410000011324883, 0.0359999984502792, 0.0140000004321337, 0.0149999996647239, 0.0140000004321337, 0.0209999997168779, 0.0759999975562096, 0.0729999989271164, 0.0700000002980232, 0.0199999995529652, 0.0230000000447035, 0.0189999993890524, 0.025000000372529, 0.0280000008642673, 0.0189999993890524, 0.0230000000447035, 'Test', '3', '344'),
(5, NULL, 620.799987792969, 250, 256.399993896484, 257.700012207031, 683, 440, 443, 442, 633, 683, 633, 621, 251, 257, 259, 686, 445, 445, 446, 643, 693, 643, 1.07000005245209, 1.94400000572205, 0.782999992370605, 0.805999994277954, 0.810000002384186, 2.125, 1.35500001907349, 1.36500000953674, 1.35500001907349, 1.95500004291534, 1.95899999141693, 2.01799988746643, 1.74399995803833, 0.483000010251999, 0.505999982357025, 0.509999990463257, 1.92499995231628, 1.15499997138977, 1.16499996185303, 1.15499997138977, 1.75499999523163, 1.75899994373322, 1.80099999904633, '97J5177', '97J6097', '98J6098', '99J6099', '97J5178', '97J5306', '97J5307', '97J5308', '97J5179', '800010', '800011', 'GA????-?', '2003-06-01 00:00:00', 10, 0.0509999990463257, 0.0149999996647239, 0.017000000923872, 0.0179999992251396, 0.0520000010728836, 0.0320000015199184, 0.0320000015199184, 0.0320000015199184, 0.0509999990463257, 0.0520000010728836, 0.0509999990463257, 0.0710000023245811, 0.025000000372529, 0.017000000923872, 0.0280000008642673, 0.0719999969005585, 0.0520000010728836, 0.0520000010728836, 0.0520000010728836, 0.0710000023245811, 0.0719999969005585, 0.0710000023245811, 'Test', '1', '173'),
(6, NULL, 620, 251.600006103516, 270, 257, 680, 441, 443, 446, 673, 683, 632, 621, 250, 256, 251, 682, 446, 440, 449, 654, 692, 644, 1.07000005245209, 1.84399998188019, 0.882000029087067, 0.904999971389771, 0.912000000476837, 2.22499990463257, 1.45500004291534, 1.4650000333786, 1.45500004291534, 2.0550000667572, 2.15799999237061, 2.01399993896484, 1.74500000476837, 0.583000004291534, 0.505999982357025, 0.518999993801117, 1.82400000095367, 1.25300002098083, 1.17799997329712, 1.25499999523163, 1.84500002861023, 1.77499997615814, 1.90299999713898, '900004', '900001', '900002', '900003', '900008', '900005', '900006', '900007', '900009', '900010', '900011', '???-?', '2009-10-01 00:00:00', 10, 0.0610000006854534, 0.0130000002682209, 0.0179999992251396, 0.0179999992251396, 0.0540000014007092, 0.0419999994337559, 0.034000001847744, 0.0350000001490116, 0.0509999990463257, 0.0529999993741512, 0.061999998986721, 0.0810000002384186, 0.0309999994933605, 0.0130000002682209, 0.028999999165535, 0.0729999989271164, 0.0560000017285347, 0.0529999993741512, 0.0520000010728836, 0.0719999969005585, 0.0719999969005585, 0.0710000023245811, 'Test', '3', '173'),
(7, NULL, 680, 300, 300, 300, 700, 500, 440, 400, 440, 500, 440, 440, 500, 600, 500, 300, 400, 400, 400, 500, 500, 440, 1.05999994277954, 1.58399999141693, 5.80999994277954, 14.1400003433228, 11.8800001144409, 2.21000003814697, 1.37999999523163, 1.40199995040894, 1.40499997138977, 1.98300004005432, 0.839999973773956, 1.88300001621246, 1.85000002384186, 1.39999997615814, 1.41999995708466, 1.39999997615814, 0.754999995231629, 1.10000002384186, 1.14999997615814, 1.1599999666214, 1.10000002384186, 1.14999997615814, 1.10000002384186, 'AA5', 'BB4', 'CC4', 'DD4', 'EE5', 'GG4', 'HH4', 'II4', 'JJ5', 'KK5', 'LL5', '???-??', '2007-09-02 00:00:00', 10, 0.0659999996423721, 0.185000002384186, 0.610000014305115, 0.649999976158142, 0.0549999997019768, 0.439999997615814, 0.0500000007450581, 0.0509999990463257, 0.0579999983310699, 0.00999999977648258, 0.0579999983310699, 0.0700000002980232, 0.0520000010728836, 0.0500000007450581, 0.0500000007450581, 0.0199999995529652, 0.0299999993294477, 0.0320000015199184, 0.0399999991059303, 0.0299999993294477, 0.0320000015199184, 0.0299999993294477, 'Test', '1', '215'),
(8, NULL, 670, 268.100006103516, 268, 266.5, 647, 446.899993896484, 447.299987792969, 451.299987792969, 447.299987792969, 446.899993896484, 447.299987792969, 447.299987792969, 450, 452.600006103516, 450.200012207031, 231.5, 366.600006103516, 371.600006103516, 369.399993896484, 446.899993896484, 446.899993896484, 447.299987792969, 1.07000005245209, 1.58800005912781, 0.836000025272369, 0.837000012397766, 0.828999996185303, 2, 1.38999998569489, 1.38999998569489, 1.39999997615814, 2.09999990463257, 0.837000012397766, 2.11999988555908, 1.7059999704361, 1.4099999666214, 1.4099999666214, 1.42999994754791, 0.72299998998642, 1.13999998569489, 1.1599999666214, 1.14999997615814, 1.13999998569489, 1.1599999666214, 1.13999998569489, 'AA6', '97D4888', '97D4889', '97D4890', '8C01182401', '8C01262801', '8C01262802', '8C01262803', 'JJ6', 'KK6', 'LL6', '???-?', '2010-06-04 00:00:00', 10, 0.0810000002384186, 0.017000000923872, 0.017000000923872, 0.017000000923872, 0.0500000007450581, 0.0450000017881393, 0.0590000003576279, 0.0480000004172325, 0.0509999990463257, 0.017000000923872, 0.0579999983310699, 0.0740000009536743, 0.0549999997019768, 0.0509999990463257, 0.0529999993741512, 0.0209999997168779, 0.0309999994933605, 0.0350000001490116, 0.034000001847744, 0.0309999994933605, 0.0350000001490116, 0.0350000001490116, 'Test', '3', '215'),
(9, NULL, 660, 315.700012207031, 312.799987792969, 311.100006103516, 500, 420, 350, 350, 350, 420, 350, 350, 400, 200, 500, 600, 850, 400, 400, 350, 420, 350, 1.08000004291534, 1.682000041008, 0.991999983787537, 0.982999980449677, 0.977999985218048, 2.17600011825562, 1.46000003814697, 1.47000002861023, 1.45200002193451, 1.29799997806549, 0.982999980449677, 1.29799997806549, 2, 1.89699995517731, 1.23000001907349, 2.10999989509583, 1.23099994659424, 1.19000005722046, 1.20099997520447, 1.24000000953674, 1.19200003147125, 1.20099997520447, 1.19000005722046, 'AA10', '198006', '198007', '198008', 'EE9', 'GG8', 'HH8', 'II8', 'JJ10', 'KK11', 'LL11', 'PRAMOTE', '2003-06-05 00:00:00', 10, 0.0549999997019768, 0.0260000005364418, 0.0260000005364418, 0.025000000372529, 0.0500000007450581, 0.0179999992251396, 0.025000000372529, 0.0509999990463257, 0.034000001847744, 0.0260000005364418, 0.034000001847744, 0.0399999991059303, 0.0740000009536743, 0.0370000004768372, 0.0500000007450581, 0.0299999993294477, 0.0540000014007092, 0.0500000007450581, 0.0549999997019768, 0.0500000007450581, 0.0500000007450581, 0.0540000014007092, 'Test', '1', '96'),
(10, NULL, 670, 320, 310, 320, 520, 400, 350, 320, 350, 400, 350, 320, 314.799987792969, 177.399993896484, 446.899993896484, 550.340026855469, 867.900024414062, 318.619995117188, 318.619995117188, 320, 400, 350, 1.08000004291534, 1.72300004959106, 0.790000021457672, 0.9549999833107, 0.9549999833107, 2.23000001907349, 1.47000002861023, 1.3400000333786, 1.34700000286102, 1.37699997425079, 0.9549999833107, 1.41700005531311, 2.06599998474121, 1.80999994277954, 1.4099999666214, 2.05599999427795, 1.41999995708466, 1.25, 1.18900001049042, 1.35000002384186, 1.25100004673004, 1.18900001049042, 1.25, 'AA11', 'BB8', 'CC8', 'DD8', 'EE10', 'GG9', 'HH9', 'II9', 'JJ11', 'KK12', 'LL12', 'G.A', '2007-07-05 00:00:00', 10, 0.0430000014603138, 0.017000000923872, 0.0299999993294477, 0.0299999993294477, 0.0710000023245811, 0.0370000004768372, 0.0370000004768372, 0.0329999998211861, 0.0209999997168779, 0.0299999993294477, 0.0209999997168779, 0.0729999989271164, 0.0810000002384186, 0.0219999998807907, 0.0700000002980232, 0.025000000372529, 0.0509999990463257, 0.0509999990463257, 0.0670000016689301, 0.0509999990463257, 0.0509999990463257, 0.0509999990463257, 'Test', '3', '96'),
(11, NULL, 620, 310, 300, 300, 650, 400, 400, 400, 400, 400, 400, 400, 420, 440, 400, 350, 350, 250, 0, 400, 400, 400, 1.0900000333786, 1.94500005245209, 0.842999994754791, 0.819000005722046, 0.890999972820282, 2.29999995231628, 1.15199995040894, 1.15199995040894, 1.15499997138977, 1.35500001907349, 0.819000005722046, 1.35500001907349, 2, 1.79999995231628, 1.36000001430511, 2.04999995231628, 1.35000002384186, 0.810000002384186, 0.75, 0.75, 0.810000002384186, 0.75, 0.810000002384186, 'AA8', 'BB6', 'CC6', 'DD6', 'EE7', 'GG6', 'HH6', 'II6', 'JJ8', 'KK9', 'LL9', 'G-A+B', '2003-05-10 00:00:00', 10, 0.0640000030398369, 0.025000000372529, 0.0140000004321337, 0.068000003695488, 0.0560000017285347, 0.0329999998211861, 0.0299999993294477, 0.028999999165535, 0.0320000015199184, 0.0140000004321337, 0.0320000015199184, 0.0599999986588955, 0.0700000002980232, 0.0419999994337559, 0.0670000016689301, 0.0430000014603138, 0.0299999993294477, 0.0299999993294477, 0.0309999994933605, 0.0309999994933605, 0.0299999993294477, 0.0299999993294477, 'Test', '1', '51'),
(12, NULL, 610, 291.040008544922, 290.079986572266, 286.929992675781, 630, 365.040008544922, 364.309997558594, 370.670013427734, 364.309997558594, 365.040008544922, 364.309997558594, 370.670013427734, 400, 447.299987792969, 314.799987792969, 320, 237.759994506836, 238.429992675781, 237.050003051758, 370.670013427734, 365.040008544922, 364.309997558594, 1.0900000333786, 1.94400000572205, 0.913999974727631, 0.91100001335144, 0.901000022888183, 2.18099999427795, 1.14699995517731, 1.14499998092651, 1.16400003433228, 1.45500004291534, 0.910000026226044, 1.55499994754791, 2.01999998092651, 1.70200002193451, 1.50499999523163, 2, 1.51499998569489, 0.746999979019165, 0.749000012874603, 0.745000004768371, 0.746999979019165, 0.749000012874603, 0.746999979019165, 'AA9', 'BB7', 'CC7', 'DD7', 'EE8', 'GG7', 'HH7', 'II7', 'JJ9', 'KK10', 'LL10', 'G-A+B', '2009-06-10 00:00:00', 10, 0.068000003695488, 0.0189999993890524, 0.0179999992251396, 0.017000000923872, 0.0520000010728836, 0.0299999993294477, 0.028999999165535, 0.0299999993294477, 0.0350000001490116, 0.0179999992251396, 0.0299999993294477, 0.063000001013279, 0.0820000022649765, 0.0350000001490116, 0.0599999986588955, 0.0350000001490116, 0.034000001847744, 0.0419999994337559, 0.0419999994337559, 0.0350000001490116, 0.0419999994337559, 0.034000001847744, 'Test', '3', '51'),
(13, NULL, 660, 250, 257, 257, 680, 440, 446, 440, 673, 680, 630, 620, 250.210006713867, 250, 251, 680, 440, 440, 440, 650, 690, 645, 1.05999994277954, 1.62199997901917, 0.912000000476837, 0.797999978065491, 0.818000018596649, 2.15599989891052, 1.37699997425079, 1.38199996948242, 1.29799997806549, 2.01699995994568, 2.18799996376038, 2.01099991798401, 1.89199995994568, 0.551999986171722, 0.500999987125397, 0.617999970912933, 1.89199995994568, 1.18900001049042, 1.23099994659424, 1.23800003528595, 1.72300004959106, 1.67200005054474, 1.90400004386902, '100005', '100006', '100007', '100008', '100009', '100010', '100011', '100012', '100013', '100014', '100015', 'G-A ???', '2005-01-07 00:00:00', 10, 0.0410000011324883, 0.0160000007599592, 0.0189999993890524, 0.017000000923872, 0.0430000014603138, 0.0390000008046627, 0.0280000008642673, 0.034000001847744, 0.0560000017285347, 0.0540000014007092, 0.0439999997615814, 0.0750000029802322, 0.0419999994337559, 0.0179999992251396, 0.0379999987781048, 0.0610000006854534, 0.0529999993741512, 0.0549999997019768, 0.0540000014007092, 0.0820000022649765, 0.0769999995827675, 0.0649999976158142, 'Test', '1', '248'),
(14, NULL, 670, 250, 250, 257.700012207031, 660, 446, 440, 447, 670, 681, 631, 620, 250.5, 256, 255, 682, 445, 440, 440, 650, 692, 644, 1.08000004291534, 1.88300001621246, 0.811999976634979, 0.802999973297119, 0.921999990940094, 2.22699999809265, 1.48199999332428, 1.44799995422363, 1.37699997425079, 1.92299997806549, 1.97800004482269, 2.05599999427795, 1.80200004577637, 0.583999991416931, 0.521000027656555, 0.521000027656555, 1.98199999332428, 1.25199997425079, 1.18700003623962, 1.35500001907349, 1.80900001525879, 1.73199999332428, 1.92299997806549, '200005', '200006', '200007', '200008', '200009', '200010', '200011', '200012', '200013', '200014', '200015', 'G-A ???', '2008-03-03 00:00:00', 10, 0.0329999998211861, 0.0219999998807907, 0.0120000001043081, 0.0199999995529652, 0.063000001013279, 0.0149999996647239, 0.034000001847744, 0.0209999997168779, 0.0560000017285347, 0.0560000017285347, 0.063000001013279, 0.0820000022649765, 0.0370000004768372, 0.0140000004321337, 0.0280000008642673, 0.0719999969005585, 0.0500000007450581, 0.0540000014007092, 0.0670000016689301, 0.0790000036358833, 0.0890000015497208, 0.0729999989271164, 'Test', '3', '248'),
(15, NULL, 620.799987792969, 250, 500, 560, 700, 420, 350, 380, 350, 420, 350, 350, 380, 350, 400, 850, 500, 440, 440, 420, 420, 350, 1.05999994277954, 1.94500005245209, 0.832000017166138, 0.810000002384186, 1.50199997425079, 2.22499990463257, 1.47699999809265, 1.45000004768372, 1.36000001430511, 1.20099997520447, 0.810000002384186, 1.29999995231628, 1.70000004768372, 2.03399991989136, 1.70500004291534, 1.71000003814697, 1.83000004291534, 1.24000000953674, 1.19000005722046, 1.19000005722046, 1.24000000953674, 1.19000005722046, 1.24000000953674, 'AA1', 'BB1', 'CC1', 'DD1', 'EE1', 'GG1', 'HH1', 'II1', 'JJ1', 'KK1', 'LL1', '???.? Group3', '2003-06-03 00:00:00', 10, 0.0610000006854534, 0.025000000372529, 0.0179999992251396, 0.090999998152256, 0.0520000010728836, 0.0469999983906746, 0.0370000004768372, 0.0399999991059303, 0.0560000017285347, 0.0179999992251396, 0.0560000017285347, 0.0710000023245811, 0.0509999990463257, 0.0719999969005585, 0.0719999969005585, 0.0719999969005585, 0.0299999993294477, 0.0500000007450581, 0.0560000017285347, 0.0299999993294477, 0.0500000007450581, 0.0299999993294477, 'Test', '1', '232'),
(16, NULL, 620, 250, 520, 550, 680, 400, 320, 350, 320, 400, 320, 320, 350, 320, 370.670013427734, 867.900024414062, 446.899993896484, 447.299987792969, 447.299987792969, 400, 400, 320, 1.05999994277954, 1.84399998188019, 0.934000015258789, 0.921000003814697, 1.54299998283386, 2.20000004768372, 1.58200001716614, 1.40100002288818, 1.48099994659424, 2, 0.921000003814697, 2.01999998092651, 1.75, 2.00399994850159, 1.74899995326996, 1.70000004768372, 1.88199996948242, 1.19000005722046, 1.24000000953674, 1.42999994754791, 1.19000005722046, 1.24000000953674, 1.19000005722046, 'AA2', 'BB2', 'CC2', 'DD2', 'EE2', 'GG2', 'HH2', 'II2', 'JJ2', 'KK2', 'LL2', '???.? Group3', '2009-07-03 00:00:00', 10, 0.0740000009536743, 0.017000000923872, 0.017000000923872, 0.0890000015497208, 0.0549999997019768, 0.0299999993294477, 0.0299999993294477, 0.0350000001490116, 0.0520000010728836, 0.017000000923872, 0.0520000010728836, 0.0799999982118607, 0.0509999990463257, 0.0810000002384186, 0.0810000002384186, 0.061999998986721, 0.0450000017881393, 0.0540000014007092, 0.0309999994933605, 0.0450000017881393, 0.0540000014007092, 0.0450000017881393, 'Test', '3', '232'),
(17, NULL, 670, 520, 520, 600, 650, 400, 400, 300, 400, 400, 400, 400, 600, 600, 500, 420, 350, 350, 400, 400, 400, 400, 1.07000005245209, 1.89400005340576, 0.912999987602234, 0.704999983310699, 1.60399997234344, 2.18600010871887, 0.910000026226044, 1.00199997425079, 1.10500001907349, 2.01999998092651, 0.704999983310699, 2.01999998092651, 1.79200005531311, 1.69000005722046, 1.72000002861023, 1.78999996185303, 1.98199999332428, 1.00199997425079, 1.05499994754791, 1, 1.00199997425079, 1.05499994754791, 1.00199997425079, 'AA3', 'BB3', 'CC3', 'DD3', 'EE3', 'GG3', 'HH3', 'II3', 'JJ3', 'KK3', 'LL3', '???.? GROUP  3', '2004-05-01 00:00:00', 10, 0.0549999997019768, 0.025000000372529, 0.0179999992251396, 0.0920000001788139, 0.0469999983906746, 0.00999999977648258, 0.0160000007599592, 0.0199999995529652, 0.0599999986588955, 0.0179999992251396, 0.0599999986588955, 0.0700000002980232, 0.0500000007450581, 0.0790000036358833, 0.0780000016093254, 0.0729999989271164, 0.0599999986588955, 0.0649999976158142, 0.0599999986588955, 0.0599999986588955, 0.0649999976158142, 0.061999998986721, 'Test', '1', '109'),
(18, NULL, 650, 517.239990234375, 512.780029296875, 514.369995117188, 620, 314.799987792969, 318.619995117188, 320.850006103516, 318.619995117188, 314.799987792969, 318.619995117188, 318.619995117188, 533.789978027344, 550.340026855469, 472.359985351562, 400, 347.899993896484, 339.630004882812, 326.890014648438, 314.799987792969, 314.799987792969, 318.619995117188, 1.07000005245209, 1.99399995803833, 1.625, 1.61099994182587, 1.61600005626678, 2.23000001907349, 0.989000022411346, 1.00100004673004, 1.00800001621246, 1.82299995422363, 1.61099994182587, 1.92299997806549, 1.79999995231628, 1.67700004577637, 1.72899997234344, 1.48399996757507, 1.80799996852875, 1.09300005435944, 1.06700003147125, 1.02699995040894, 1.09300005435944, 1.06700003147125, 1.09300005435944, 'AA4', '9380417', '9380413', '9380409', 'EE4', '92L6065', '9380431', '9380430', 'JJ4', 'KK4', 'LL4', '???.? GROUP  3', '2010-06-01 00:00:00', 10, 0.061999998986721, 0.465000003576279, 0.0320000015199184, 0.096000000834465, 0.0729999989271164, 0.0140000004321337, 0.0130000002682209, 0.0149999996647239, 0.0560000017285347, 0.0350000001490116, 0.0509999990463257, 0.0829999968409538, 0.188999995589256, 0.0799999982118607, 0.0850000008940697, 0.0729999989271164, 0.0599999986588955, 0.0610000006854534, 0.0610000006854534, 0.0599999986588955, 0.0610000006854534, 0.0610000006854534, 'Test', '3', '109'),
(19, NULL, 680, 550, 530, 600, 500, 350, 350, 340, 350, 350, 350, 340, 500, 400, 610, 600, 420, 440, 440, 340, 350, 350, 1.07000005245209, 1.81400001049042, 0.861999988555908, 1.63300001621246, 1.52199995517731, 2.22000002861023, 1.05999994277954, 1.12300002574921, 1.125, 1.45200002193451, 1.63300001621246, 1.39999997615814, 2.1340000629425, 1.80200004577637, 1.4099999666214, 2.20000004768372, 1.41499996185303, 1.24000000953674, 1.17900002002716, 1.18700003623962, 1.24399995803833, 1.17900002002716, 1.24000000953674, 'AA12', 'BB9', 'CC9', 'DD9', 'EE11', 'GG10', 'HH10', 'II10', 'JJ12', 'KK13', 'LL13', '???.8-1  ???.', '2001-03-01 00:00:00', 10, 0.0820000022649765, 0.0140000004321337, 0.0410000011324883, 0.0410000011324883, 0.0560000017285347, 0.0130000002682209, 0.0199999995529652, 0.0209999997168779, 0.0509999990463257, 0.0500000007450581, 0.0500000007450581, 0.0500000007450581, 0.0729999989271164, 0.0509999990463257, 0.0599999986588955, 0.0509999990463257, 0.0329999998211861, 0.0520000010728836, 0.0509999990463257, 0.034000001847744, 0.0520000010728836, 0.0329999998211861, 'Test', '1', '167'),
(20, NULL, 680, 510.920013427734, 520.909973144531, 516.559997558594, 480, 328.940002441406, 324.470001220703, 328.850006103516, 324.470001220703, 328.940002441406, 324.470001220703, 328.850006103516, 446.899993896484, 370.670013427734, 573.099975585938, 452.600006103516, 400, 447.299987792969, 447.299987792969, 328.850006103516, 328.940002441406, 324.470001220703, 1.0900000333786, 1.932000041008, 1.60500001907349, 1.63699996471405, 1.62300002574921, 2.18300008773804, 1.03299999237061, 1.01900005340576, 1.03299999237061, 1.34700000286102, 1.63699996471405, 1.29999995231628, 2, 1.70000004768372, 1.30599999427795, 2.23000001907349, 1.30999994277954, 1.19799995422363, 1.24600005149841, 1.43499994277954, 1.19500005245209, 1.24600005149841, 1.19799995422363, 'AA13', '9380410', '9380411', '9380412', 'EE12', '9380437', '9380439', '9380440', 'JJ13', 'KK14', 'LL14', 'group.B', '2007-04-01 00:00:00', 10, 0.0640000030398369, 0.0329999998211861, 0.034000001847744, 0.0350000001490116, 0.0399999991059303, 0.0160000007599592, 0.0160000007599592, 0.0160000007599592, 0.0329999998211861, 0.034000001847744, 0.0370000004768372, 0.0610000006854534, 0.0700000002980232, 0.0379999987781048, 0.0599999986588955, 0.0390000008046627, 0.0439999997615814, 0.0540000014007092, 0.0320000015199184, 0.046000000089407, 0.0540000014007092, 0.0439999997615814, 'Test', '3', '167');

-- --------------------------------------------------------

--
-- Table structure for table `thermo_scan`
--

CREATE TABLE IF NOT EXISTS `thermo_scan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `delt` double DEFAULT NULL,
  `load` double DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `thermo_scan`
--

INSERT INTO `thermo_scan` (`id`, `version`, `delt`, `load`, `test_by`, `test_date`, `work_order`, `perform_type`, `transformer`) VALUES
(1, NULL, 2, 22, 'Test', '2010-06-01 00:00:00', '111111', '1', '343');

-- --------------------------------------------------------

--
-- Table structure for table `thermo_scans`
--

CREATE TABLE IF NOT EXISTS `thermo_scans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delt` double DEFAULT NULL,
  `load` double DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `thermo_scans`
--

INSERT INTO `thermo_scans` (`id`, `delt`, `load`, `visual_inspection_id`) VALUES
(1, 2, 22, NULL),
(2, 2.5, 37, 2),
(3, 18, 48, 4);

-- --------------------------------------------------------

--
-- Table structure for table `thermo_scan_factors`
--

CREATE TABLE IF NOT EXISTS `thermo_scan_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `load_start` int(11) DEFAULT NULL,
  `load_end` int(11) DEFAULT NULL,
  `delta_start` int(11) DEFAULT NULL,
  `delta_end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `thermo_scan_factors`
--

INSERT INTO `thermo_scan_factors` (`id`, `hi_factor`, `condition`, `load_start`, `load_end`, `delta_start`, `delta_end`, `color`, `created_at`, `updated_at`) VALUES
(1, 3, 'Good', 70, 100, 0, 9, '0,255,0', '2011-02-13 08:00:30', '2011-02-13 08:00:30'),
(2, 3, 'Good', 40, 69, 0, 5, '0,255,0', '2011-02-13 08:00:30', '2011-02-13 08:00:30'),
(3, 3, 'Good', 0, 39, 0, 3, '0,255,0', '2011-02-13 08:00:30', '2011-02-13 08:00:30'),
(4, 2, 'Acceptable', 70, 100, 10, 35, '0,0,255', '2011-02-13 08:00:30', '2011-02-13 08:00:30'),
(5, 2, 'Acceptable', 40, 69, 6, 20, '0,0,255', '2011-02-13 08:00:30', '2011-02-13 08:00:30'),
(6, 2, 'Acceptable', 0, 69, 4, 15, '0,0,255', '2011-02-13 08:00:30', '2011-02-13 08:00:30'),
(7, 2, 'Need Caution', 70, 100, 36, 75, '0,255,255', '2011-02-13 08:00:30', '2011-02-13 08:00:30'),
(8, 2, 'Need Caution', 40, 69, 21, 45, '0,255,255', '2011-02-13 08:00:30', '2011-02-13 08:00:30'),
(9, 2, 'Need Caution', 0, 39, 16, 30, '0,255,255', '2011-02-13 08:00:30', '2011-02-13 08:00:30'),
(10, 0, 'Very Poor', 70, 100, 75, NULL, '255,0,0', '2011-02-13 08:00:30', '2011-02-13 08:00:30'),
(11, 0, 'Very Poor', 40, 69, 45, NULL, '255,0,0', '2011-02-13 08:00:30', '2011-02-13 08:00:30'),
(12, 0, 'Very Poor', 0, 39, 30, NULL, '255,0,0', '2011-02-13 08:00:30', '2011-02-13 08:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `transformer`
--

CREATE TABLE IF NOT EXISTS `transformer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `contract` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `egatsn` varchar(255) DEFAULT NULL,
  `first_energize` datetime DEFAULT NULL,
  `hv` double DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `lv` double DEFAULT NULL,
  `manufacturingserial` varchar(255) DEFAULT NULL,
  `maxcapacity` double DEFAULT NULL,
  `old_egatsn` varchar(255) DEFAULT NULL,
  `phase` int(11) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `transformer_name` varchar(255) DEFAULT NULL,
  `tv` double DEFAULT NULL,
  `vector_group` varchar(255) DEFAULT NULL,
  `first_substation` decimal(10,0) DEFAULT NULL,
  `manufacturing` decimal(10,0) DEFAULT NULL,
  `status` decimal(10,0) DEFAULT NULL,
  `winding_type_id` decimal(10,0) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `oltc_manufacturer` varchar(255) DEFAULT NULL,
  `oltc_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transformer_name` (`transformer_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=606 ;

--
-- Dumping data for table `transformer`
--

INSERT INTO `transformer` (`id`, `version`, `contract`, `detail`, `egatsn`, `first_energize`, `hv`, `item`, `lv`, `manufacturingserial`, `maxcapacity`, `old_egatsn`, `phase`, `picture`, `transformer_name`, `tv`, `vector_group`, `first_substation`, `manufacturing`, `status`, `winding_type_id`, `brand_id`, `position`, `oltc_manufacturer`, `oltc_type`) VALUES
(1, NULL, '45/5-30-5030-H01(A)', NULL, '7000016200', '1996-02-11 00:00:00', 115, 1, 22, '52013.0', 50, NULL, 3, NULL, 'AN-KT1A', 11, 'YYd1', '13', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN330/300'),
(2, NULL, '45/0-30-5858-RIP2-S3(E)', 'Test', '7000016201', '2004-10-26 00:00:00', 115, 2, 22, 'EDP011904', 50, NULL, 3, NULL, 'AN-KT2A', 11, 'Yy0,d1', '13', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-40'),
(3, NULL, 'P69/2517-A106', NULL, '7000000006', '1977-03-27 00:00:00', 230, 3, 115, '28122.0', 200, NULL, 3, NULL, 'AP-KT1A', 11, 'Yy0,d1', '14', '4', '1', '1', 1, NULL, 'ASEA', 'UCB'),
(4, NULL, '45/2-30-5001-8813', NULL, '7000000007', '1992-01-20 00:00:00', 230, 4, 115, '8.9900048', 200, NULL, 3, NULL, 'AP-KT2A', 11, 'Yy0,d1', '14', '6', '1', '1', 11, NULL, 'MR', '3xTI2002/150/C'),
(5, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000000003', '2000-05-10 00:00:00', 115, 5, 23, '57031.0', 50, NULL, 3, NULL, 'AP-KT3A', 0, 'Dy1', '14', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(6, NULL, '45/6-30-0140-E001(M)', NULL, '7000000004', '1997-05-18 00:00:00', 115, 6, 22, '573078.0', 40, NULL, 3, NULL, 'AP-KT4A', 0, 'Dy1', '14', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'DRI-DRII'),
(7, NULL, '45/4-30-5068-AP-ESSO-01', NULL, '7000000005', '1993-03-22 00:00:00', 115, 7, 22, '145496.0', 12.5, NULL, 3, NULL, 'AP-KT5A', 0, 'Dy1', '14', '8', '1', '2', 12, NULL, 'MR', 'MIII350-110/C-10193G'),
(8, NULL, '45/5-30-5074-H22(A)', NULL, '7000000008', '1993-03-22 00:00:00', 230, 8, 115, '103710.0', 200, NULL, 3, NULL, 'AP-KT6A', 22, 'Yy0,d1', '14', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/600IS'),
(9, NULL, '45/3-30-5079-EGAT-ATP01&02', NULL, '7000017252', '1991-10-01 00:00:00', 220, 9, 115, '9.1900008', 200, NULL, 3, NULL, 'AT1-KT10A', 22, 'YY0-D1', '15', '6', '1', '1', 11, NULL, 'MR', 'MI1800-110/C'),
(10, NULL, '45/0-30-5839-TS9-54(M)', NULL, '7000017259', '1999-01-01 00:00:00', 220, 10, 115, '9.711292101', 200, NULL, 3, NULL, 'AT1-KT3A', 22, 'YY0-D1', '15', '7', '1', '1', 15, NULL, 'MR', '3xMI'),
(11, NULL, '0053-C001TU', NULL, '7000017249', '1979-01-01 00:00:00', 230, 11, 115, 'S251385', 200, NULL, 3, NULL, 'AT1-KT7A', 11, 'YY0-D1', '15', '9', '1', '1', 8, NULL, 'TRAFO-UNION', 'ARSD150/1521/15-18'),
(12, NULL, '45/3-65-0106-7913T', NULL, '7000017176', '1982-03-15 00:00:00', 230, 12, 115, 'S251593', 200, NULL, 3, NULL, 'AT2-KT1A', 22, 'YY0-D1', '16', '9', '1', '1', 8, NULL, 'TRAFO-UNION', '3XARSD3252/15212-12'),
(13, NULL, '45/2-30-5006-EGAT-G05(S)', NULL, '7000018632', '1989-05-26 00:00:00', 220, 13, 115, '5BK012301', 200, NULL, 3, NULL, 'AT2-KT3A', 22, 'YY0-D1', '16', '2', '1', '1', 17, NULL, 'MR', 'MII200-150/C'),
(14, NULL, '45/0-30-5815-EGAT TS9-51(T)', NULL, '7000017241', '2000-04-28 00:00:00', 115, 14, 23, '8T9670T4', 50, NULL, 3, NULL, 'AT2-KT4A', 0, 'Dy1', '16', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(15, NULL, '45/0-30-5815-EGAT -TS9-51(T)', NULL, '7000017257', '1997-01-01 00:00:00', 115, 15, 23, 'BT9670T3', 50, NULL, 3, NULL, 'AY1-KT1A', 0, 'Dy1', '19', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(16, NULL, '45/0-30-5815-EGAT -TS9-51(T)', NULL, '7000017258', '1997-01-01 00:00:00', 115, 16, 23, 'BT9669T4', 50, NULL, 3, NULL, 'AY1-KT2A', 0, 'Dy1', '19', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(17, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000017129', '2007-04-05 00:00:00', 115, 17, 22, '8N5450T4', 50, NULL, 3, NULL, 'AY2-KT1A', 0, 'Dy1', '20', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(18, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000017111', '2007-06-01 00:00:00', 115, 18, 22, 'BN5451T1', 50, NULL, 3, NULL, 'AY2-KT2A', 0, 'Yy0,D1', '20', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(19, NULL, 'A001', NULL, '7000017151', '2007-04-09 00:00:00', 115, 19, 69, '558031.0', 40, NULL, 3, NULL, 'AY2-KT3A', 22, 'YY0,D1', '20', '7', '1', '1', 15, NULL, 'MITSUBISHI', 'MRDII400-80R/60-10193W'),
(20, NULL, '45/20-12-009-BNC6', NULL, '7000000880', '1977-01-01 00:00:00', 230, 20, 115, '5J8645T1', 100, NULL, 3, NULL, 'BB-KT1A', 11, 'Yy0,D1', '21', '11', '1', '1', 19, NULL, 'MEIDEN', 'LJDDS 115/1000-17'),
(21, NULL, 'P10/2510-1054', NULL, '7000000881', '1968-01-01 00:00:00', 115, 21, 22, '3A431001', 13.3299999237061, NULL, 3, NULL, 'BB-KT2A', 11, 'DY1', '21', '12', '1', '2', 16, NULL, 'DAIHEN', 'LT-6C17'),
(22, NULL, 'P10/2510-1054', NULL, '7000000882', '1968-01-01 00:00:00', 115, 22, 22, '3A430001', 13.3299999237061, NULL, 3, NULL, 'BB-KT3A', 0, 'DY1', '21', '12', '1', '2', 16, NULL, 'DAIHEN', 'LT-6C17'),
(23, NULL, '45/20-12-009-BNC6', NULL, '7000000883', '1977-01-01 00:00:00', 230, 23, 115, '5J8645T2', 100, NULL, 3, NULL, 'BB-KT4A', 11, 'YYO,D1', '21', '11', '1', '1', 19, NULL, 'MEIDEN', 'LJDDS 115/1000-17'),
(24, NULL, '45/0-30-5815-TS9-51(T)', NULL, '7000000011', '1999-02-07 00:00:00', 115, 24, 23, '8T9670T2', 50, NULL, 3, NULL, 'BBG-KT2A', 0, 'Dy1', '22', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(25, NULL, '45/0-30-5815-TS9-51(T)', NULL, '7000000012', '2000-03-04 00:00:00', 115, 25, 23, '8T9670T1', 50, NULL, 3, NULL, 'BBG-KT3A', 0, 'Dy1', '22', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(26, NULL, 'EGAT 47/0-30-5026-EGAT G03(T)', NULL, '7000025161', '1992-09-25 00:00:00', 115, 26, 34.5, '8P8745T1', 50, NULL, 3, NULL, 'BDN-KT1A', 11, 'YY0  D1', '24', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(27, NULL, 'EGAT 47/0-30-5026-EGAT G03(T)', NULL, '7000025162', '1992-09-25 00:00:00', 115, 27, 34.5, '8P8745T2', 50, NULL, 3, NULL, 'BDN-KT2A', 11, 'YY0  D1', '24', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(28, NULL, '45/5-30-5069-H01(T)', NULL, '7000000886', '1996-08-03 00:00:00', 115, 28, 22, '8R8404T1', 50, NULL, 3, NULL, 'BGS-KT1A', 0, 'DY1', '25', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(29, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000017104', '1990-01-01 00:00:00', 115, 29, 23, '8P9090T1', 50, NULL, 3, NULL, 'BI1-KT2A', 0, 'DY1', '26', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(30, NULL, '47/7-30-0004-WE-02', NULL, '7000017255', '1992-01-01 00:00:00', 230, 30, 115, 'AQ69008T1-1', 200, NULL, 3, NULL, 'BI2-KT1A', 22, 'YY0-D1', '27', '13', '1', '1', 14, NULL, 'MR', '3xMI600Y-150'),
(31, NULL, '45/0-30-5839-TS9-54(M)', NULL, '7000017209', '2009-05-22 00:00:00', 230, 31, 121, '9.711290105', 200, NULL, 3, NULL, 'BI2-KT2A', 22, 'YY0,D1', '27', '7', '1', '1', 15, NULL, 'MR', '3xMI-800'),
(32, NULL, '45/5-30-5115H02(A)', NULL, '7000017256', '1993-10-01 00:00:00', 230, 32, 115, '103730.0', 200, NULL, 3, NULL, 'BI2-KT3A', 22, 'YY0-D1', '27', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT'),
(33, NULL, '45/9-30-5811-HVDC-03(A)', NULL, '7000017251', '1989-10-01 00:00:00', 230, 33, 115, '5BK014001', 200, NULL, 3, NULL, 'BI2-KT4A', 22, 'YY0-D1', '27', '2', '1', '1', 17, NULL, 'MASCHINENFABRIK', 'MI600-150/C'),
(34, NULL, '45/5-30-5058-9101', NULL, '7000027363', '1992-01-01 00:00:00', 230, 34, 72.5, '7853301.0', 200, NULL, 3, NULL, 'BK-KT1A', 11, 'YY0D1', '28', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/600 IS'),
(35, NULL, '45/5-30-5058-9101', NULL, '7000027365', '1992-01-01 00:00:00', 230, 35, 72.5, '7853302.0', 200, NULL, 3, NULL, 'BK-KT2A', 11, 'YY0D1', '28', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/600 IS'),
(36, NULL, '45/9-30-5835-GBA-01(A)', NULL, '7000027367', '1997-01-01 00:00:00', 230, 36, 72.5, '103918/7853996', 300, NULL, 3, NULL, 'BK-KT3A', 22, 'YY0D1', '28', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/1050C'),
(37, NULL, '45/9-30-5835-GBA-01(A)', NULL, '7000027369', '1997-01-01 00:00:00', 230, 37, 72.5, '103921/7853997', 300, NULL, 3, NULL, 'BK-KT4A', 22, 'YY0D1', '28', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/1050C'),
(38, NULL, '45/3-83-0188-7928', NULL, '7000018601', '2009-01-01 00:00:00', 115, 38, 22, '558035.0', 25, NULL, 3, NULL, 'BKN-KT1A', 11, 'YY0-D1', '31', '7', '1', '3', 15, NULL, 'MR', 'MRDIII400'),
(39, NULL, '45/2-30-0049-WC001', NULL, '7000018602', '2009-01-01 00:00:00', 115, 39, 22, '6.0492004', 25, NULL, 3, NULL, 'BKN-KT2A', 11, 'YY0-D1', '31', '15', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND110/211/5-18'),
(40, NULL, '45/8-30-0143-F001(E)', NULL, '7000000016', '1987-07-09 00:00:00', 115, 40, 23, '136702.0', 50, NULL, 3, NULL, 'BL-KT2A', 0, 'Dy1', '32', '16', '1', '2', 26, NULL, 'MR', 'MIII300'),
(41, NULL, '45/8-30-5033-RIP-S2', NULL, '7000000014', '2005-11-10 00:00:00', 115, 41, 23, '8S9483T3', 50, NULL, 3, NULL, 'BL-KT3A', 0, 'Dy1', '32', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(42, NULL, 'N/A', NULL, '7000025252', '1999-12-09 00:00:00', 107, 42, 34.8499984741211, '535959.0', 7.5, NULL, 3, NULL, 'BLG-KT1A', 0, 'YY0', '33', '17', '1', '2', 24, NULL, 'ELIN', '-'),
(43, NULL, 'N/A', NULL, '7000025253', '1999-12-09 00:00:00', 107, 43, 34.8499984741211, '535956.0', 7.5, NULL, 3, NULL, 'BLG-KT2A', 0, 'YY1', '33', '17', '1', '2', 24, NULL, 'ELIN', ''),
(44, NULL, '45/5-30-5069-H01(T)', NULL, '7000000889', '1996-03-13 00:00:00', 115, 44, 22, '8R8409T2', 50, NULL, 3, NULL, 'BMN-KT1A', 11, 'DY1', '34', '10', '1', '3', 9, NULL, 'ABB', 'UZFRT650/300'),
(45, NULL, '45/5-30-5069-H01(T)', NULL, '7000000890', '1996-03-13 00:00:00', 115, 45, 22, '8R8409T1', 50, NULL, 3, NULL, 'BMN-KT2A', 11, 'DY1', '34', '10', '1', '3', 9, NULL, 'ABB', 'UZFRT650/300'),
(46, NULL, '45/7-30-5017-H32', NULL, '7000027891', '1994-01-01 00:00:00', 230, 46, 72.5, '103826.0', 200, NULL, 3, NULL, 'BN-KT2A', 11, 'YY0D1', '35', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/600 IS'),
(47, NULL, '45/7-30-5017-H32', NULL, '7000027892', '1994-01-01 00:00:00', 230, 47, 72.5, '103827.0', 200, NULL, 3, NULL, 'BN-KT3A', 11, 'YY0D1', '35', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/600 IS'),
(48, NULL, '45/3-30-5073-8907(BWN)', NULL, '7000027893', '1990-01-01 00:00:00', 230, 48, 115, '5BK012901', 200, NULL, 3, NULL, 'BN-KT4A', 22, 'YY0D1', '35', '2', '1', '1', 17, NULL, 'MR', 'MI1200-150/C'),
(49, NULL, '45/3-85-0105-913A', NULL, '7000027894', '1980-01-01 00:00:00', 230, 49, 115, '7200157.0', 200, NULL, 3, NULL, 'BN-KT6A', 11, 'YY0D1', '35', '5', '1', '1', 1, NULL, 'ASEA', 'UCBRT550/1200'),
(50, NULL, '45/6-30-0156-E001(K)', NULL, '7000027895', '1983-01-01 00:00:00', 220, 50, 69, 'AG69095T121', 200, NULL, 3, NULL, 'BN-KT7A', 11, 'YY0D1', '35', '13', '1', '1', 14, NULL, 'TRAFO UNION', 'ARSD2302/621-621/50-22'),
(51, NULL, '47/3-66-5037', NULL, '7000027896', '1984-01-01 00:00:00', 230, 51, 72.5, 'AG69095T221', 200, NULL, 3, NULL, 'BN-KT8A', 11, 'YY0D1', '35', '13', '1', '1', 14, NULL, 'TRAFO UNION', 'ARSD2302/621-621/56-18(18)/051'),
(52, NULL, '45/0-30-5829-TS9-52', NULL, '7000014529', '1999-09-30 00:00:00', 115, 52, 22, '8T9792T1', 50, NULL, 3, NULL, 'BNN-KT1A', 11, 'YY0-D1', '36', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN200/300'),
(53, NULL, '45/0-30-5829-TS9-52', NULL, '7000014542', '1999-09-30 00:00:00', 115, 53, 22, '8T9792T2', 50, NULL, 3, NULL, 'BNN-KT2A', 11, 'YY0-D1', '36', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN200/300'),
(54, NULL, '45/18-064-B001S', NULL, '7000017160', '1985-05-12 00:00:00', 115, 54, 22, '5BA158903', 25, NULL, 3, NULL, 'BP1-KT1A', 0, 'DY1', '37', '2', '1', '2', 17, NULL, 'DAIHEN', 'RER'),
(55, NULL, '45/2-30-0050-C001B', NULL, '7000017146', '1982-01-09 00:00:00', 115, 55, 22, '6.0545003', 25, NULL, 3, NULL, 'BP1-KT2A', 0, 'DY1', '37', '19', '1', '2', 23, NULL, 'TRAFO UNI', 'CRND'),
(56, NULL, '45/8-30-0143-F001(E)', NULL, '7000017244', '1987-06-29 00:00:00', 115, 56, 23, '136700.0', 50, NULL, 3, NULL, 'BP1-KT3A', 0, 'DY1', '37', '21', '1', '2', 12, NULL, 'MR', 'M'),
(57, NULL, '45/8-30-0138-F001FU', NULL, '7000017118', '1987-04-03 00:00:00', 230, 57, 115, 'AX69026T11', 200, NULL, 3, NULL, 'BP2-KT1A', 22, 'YY0-D1', '38', '13', '1', '3', 14, NULL, 'FUJI', '3XARSD3252/S621-S621/50-22(20)'),
(58, NULL, '45/8-30-0138-F001FU', NULL, '7000017115', '1987-04-02 00:00:00', 230, 58, 115, 'AX69026T12', 200, NULL, 3, NULL, 'BP2-KT2A', 22, 'YY0-D1', '38', '13', '1', '3', 14, NULL, 'FUJI', '3XARSD3252/S621-S621/50-22(20)'),
(59, NULL, '45/6-30-0140-E001M', NULL, '7000017246', '1986-08-30 00:00:00', 115, 59, 22, '573074.0', 40, NULL, 3, NULL, 'BP2-KT4A', 0, 'DY1', '38', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'DRI-DRII'),
(60, NULL, '45/5-30-5114-H02(M)', NULL, '7000017179', '1995-03-15 00:00:00', 230, 60, 115, 'AIZ69040T2', 200, NULL, 3, NULL, 'BP2-KT5A', 22, 'YY0-D1', '38', '13', '1', '3', 14, NULL, 'MR', 'M160'),
(61, NULL, 'E001M', NULL, '7000017165', '1996-10-13 00:00:00', 115, 61, 22, '573073.0', 40, NULL, 3, NULL, 'BP2-KT6A', 0, 'DY1', '38', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'DRI-DRII'),
(62, NULL, '47/2-30-5046-EGAT-G04(T)', NULL, '7000013040', '1990-09-01 00:00:00', 115, 62, 23, '338033.0', 50, NULL, 3, NULL, 'BPI-KT1A', 11, 'YY0-D1', '39', '22', '1', '3', 10, NULL, '', ''),
(63, NULL, '47/2-30-5046-EGAT-G04(T)', NULL, '7000014205', '1990-09-01 00:00:00', 115, 63, 22, NULL, 50, NULL, 3, NULL, 'BPI-KT1A', 11, 'YY0-D1', '39', '22', '1', '3', 10, NULL, 'MR', 'MIII500Y'),
(64, NULL, '45/0-30-5818-TS9-51(E)', NULL, '7000013041', '1997-09-01 00:00:00', 115, 64, 22, 'EDP011203', 50, NULL, 3, NULL, 'BPI-KT2A', 11, 'YY0-D1', '39', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-40'),
(65, NULL, 'EGAT BP-I-IE', NULL, '7000000043', '1986-10-21 00:00:00', 230, 65, 115, 'AQ69061T41', 200, NULL, 3, NULL, 'BPK-KT1A', 22, 'YY0-D1', '40', '13', '1', '1', 14, NULL, 'TRAFO-UNION', '3xARSD2302/1021-1021/50-1816'),
(66, NULL, '45/2-30-5006-EGAT-G05(S)', NULL, '7000000044', '1990-10-21 00:00:00', 230, 66, 115, '56K012201', 200, NULL, 3, NULL, 'BPK-KT4A', 22, 'YY0-D1', '40', '2', '1', '1', 17, NULL, 'MR', '3xMI1200-150/C-18170'),
(67, NULL, 'H01(T)', NULL, '7000000045', '1994-10-03 00:00:00', 115, 67, 23, '8R8395T1', 50, NULL, 3, NULL, 'BPK-KT5A', 0, 'Dy1', '40', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(68, NULL, 'P21/2514-A001', NULL, '7000027899', '1973-01-01 00:00:00', 230, 68, 69, '7.312504701', 200, NULL, 3, NULL, 'BPL-KT1A', 11, 'YY0D1', '41', '7', '1', '1', 15, NULL, 'MITSUBISHI', 'MRFI1600P-80L/150T'),
(69, NULL, '45/2-30-0053-C001TU', NULL, '7000027900', '1980-01-01 00:00:00', 230, 69, 115, 'S251386', 200, NULL, 3, NULL, 'BPL-KT2A', 11, 'YY0D1', '41', '9', '1', '1', 8, NULL, 'TRAFO UNION', 'ARSD150/1521/5-1'),
(70, NULL, '45/2-30-5001-8813', NULL, '7000027901', '1989-01-01 00:00:00', 230, 70, 115, 'AV69020T2', 200, NULL, 3, NULL, 'BPL-KT3A', 11, 'YY0D1', '41', '13', '1', '1', 14, NULL, 'TRAFO UNION', 'ARSD2303/2432-2431/50-18(16)/0'),
(71, NULL, '45/3-30-5079-EGAT-ATP-01&02(M)', NULL, '7000027902', '1990-01-01 00:00:00', 230, 71, 69, '9.1900005', 200, NULL, 3, NULL, 'BPL-KT4A', 22, 'YY0D1', '41', '6', '1', '1', 11, NULL, 'MR', 'TI2000/110C-10171'),
(72, NULL, '45/5-30-5076-H22(J)', NULL, '7000027903', '1993-01-01 00:00:00', 230, 72, 115, '95401.0', 200, NULL, 3, NULL, 'BPL-KT5A', 11, 'YY0D1', '41', '23', '1', '1', 18, NULL, 'MR', 'MI1200-150/B'),
(73, NULL, '45/2-30-5007-EGAT-G05(M)', NULL, '7000027904', '1989-01-01 00:00:00', 230, 73, 72.5, '8946849.0', 200, NULL, 3, NULL, 'BPL-KT6A', 11, 'YY0D1', '41', '24', '1', '1', 6, NULL, 'MR', 'MI601-150/B'),
(74, NULL, '45/2-30-5007-EGAT-G05(M)', NULL, '7000027905', '1989-01-01 00:00:00', 230, 74, 69, '8.9467869', 200, NULL, 3, NULL, 'BPL-KT7A', 11, 'YY0D1', '41', '24', '1', '1', 6, NULL, 'MR', 'MI601-150/B'),
(75, NULL, '45/2-30-5135-EGAT-G04(S)', NULL, '7000014667', '1993-10-30 00:00:00', 115, 75, 22, '338029.0', 50, NULL, 3, NULL, 'BR-KT1A', 11, 'YY0-D1', '42', '22', '1', '3', 10, NULL, 'MR', 'MIIIY500'),
(76, NULL, '45/5-30-5030-H01(A)', NULL, '7000014675', '1995-03-29 00:00:00', 115, 76, 22, '52009.0', 50, NULL, 3, NULL, 'BR-KT2A', 11, 'YY0-D1', '42', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN550/300'),
(77, NULL, '45/5-30-5115-H02(A)', NULL, '7000017125', '1994-07-04 00:00:00', 230, 77, 121, '103724.0', 200, NULL, 3, NULL, 'BSP-KT1A', 22, 'YY0-D1', NULL, '1', '1', '1', 13, NULL, 'ABB', 'UCGRT 650/600 IS'),
(78, NULL, '45/5-30-5115-H02(A)', NULL, '7000017126', '1994-07-04 00:00:00', 230, 78, 121, '103725.0', 200, NULL, 3, NULL, 'BSP-KT2A', 22, 'YY0-D1', NULL, '1', '1', '1', 13, NULL, 'ABB', 'UCGRT 650/600 IS'),
(79, NULL, '45/6-30-0140-E001M', NULL, '7000017127', '1994-07-04 00:00:00', 115, 79, 22, '573082.0', 25, NULL, 3, NULL, 'BSP-KT3A', 0, 'DY1', NULL, '7', '1', '2', 15, NULL, 'MITSUBISHI', 'MRM 800-110F/C-10171W-MA7A'),
(80, NULL, '47/6-30-5049-KNCC1&2-S1', NULL, '7000017215', '1995-01-24 00:00:00', 230, 80, 16, '103798.0', 100, NULL, 1, NULL, 'BSP-KT4AA', 0, 'YY0-D1', NULL, '1', '1', '1', 13, 'A', 'ABB', 'UCGRT'),
(81, NULL, '47/6-30-5049-KNCC1&2-S1', NULL, '7000017216', '1995-01-24 00:00:00', 230, 81, 16, '103799.0', 100, NULL, 1, NULL, 'BSP-KT4AB', 0, 'YY0-D2', NULL, '1', '1', '1', 13, 'B', 'ABB', 'UCGRT'),
(82, NULL, '47/6-30-5049-KNCC1&2-S1', NULL, '7000017217', '1995-01-24 00:00:00', 230, 82, 16, '103800.0', 100, NULL, 1, NULL, 'BSP-KT4AC', 0, 'YY0-D3', NULL, '1', '1', '1', 13, 'C', 'ABB', 'UCGRT'),
(83, NULL, '45-C49810-8-2-30(46)TS10-TX-03', NULL, '7000017197', '2005-05-19 00:00:00', 525, 83, 242, '4900004.0', 333.329986572266, NULL, 1, NULL, 'BSP2-KT1AA', 22, 'YY0-D1', '44', '25', '1', '1', 21, 'A', 'ABB', 'UCDRE 1050/1800'),
(84, NULL, '45-C49810-8-2-30(46)TS10-TX-03', NULL, '7000017198', '2005-05-19 00:00:00', 525, 84, 242, '4900005.0', 333.329986572266, NULL, 1, NULL, 'BSP2-KT1AB', 22, 'YY0-D1', '44', '25', '1', '1', 21, 'B', 'ABB', 'UCDRE 1050/1800'),
(85, NULL, '45-C49810-8-2-30(46)TS10-TX-03', NULL, '7000017199', '2005-05-19 00:00:00', 525, 85, 242, '4900006.0', 333.329986572266, NULL, 1, NULL, 'BSP2-KT1AC', 22, 'YY0-D1', '44', '25', '1', '1', 21, 'C', 'ABB', 'UCDRE 1050/1800'),
(86, NULL, '45/3-30-5079-EGAT-ATP 01&02 (M)', NULL, '7000000038', '1992-01-10 00:00:00', 230, 86, 121, '5BK012801', 200, NULL, 3, NULL, 'BWN-KT1A', 22, 'YY0-D1', '46', '2', '1', '1', 17, NULL, 'MR', '3xMI600-150/C'),
(87, NULL, '45/5-30-5117-H02(S)', NULL, '7000000039', '1997-08-25 00:00:00', 230, 87, 121, 'N407930', 200, NULL, 3, NULL, 'BWN-KT2A', 22, 'YY0-D2', '46', '9', '1', '1', 8, NULL, 'MR', '3xMI600-150/C'),
(88, NULL, '45/1-30-5804-TS9-53(M)', NULL, '7000000040', '1999-12-24 00:00:00', 230, 88, 121, 'A1E69002T3-1', 200, NULL, 3, NULL, 'BWN-KT3A', 22, 'YY0-D3', '46', '13', '1', '1', 14, NULL, 'MR', '3xMI600-170/C'),
(89, NULL, '45/9-30-5811-HVDC-03(A)', NULL, '7000000041', '1994-10-30 00:00:00', 230, 89, 121, '5BK014002', 200, NULL, 3, NULL, 'BWN-KT4A', 22, 'YY0-D4', '46', '2', '1', '1', 17, NULL, 'MR', '3xMI600-150/C'),
(90, NULL, '45/5-30-5069-H01[T]', NULL, '7000017214', '1995-10-23 00:00:00', 115, 90, 23, '8R8394T1', 50, NULL, 3, NULL, 'CA-KT1A', 0, 'DY1', '48', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(91, NULL, '45/3-30-5059-EGAT-ATP-01&02', NULL, '7000017187', '1992-09-16 00:00:00', 115, 91, 23, '8P9095T2', 50, NULL, 3, NULL, 'CA-KT2A', 0, 'DY1', '48', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(92, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000000018', '1991-12-10 00:00:00', 115, 92, 23, '8P9089T1', 50, NULL, 3, NULL, 'CB-KT1A', 0, 'DY1', '49', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(93, NULL, '45/5-30-5069-H01(T)', NULL, '7000000020', '2002-08-18 00:00:00', 115, 93, 22, '8R8408T1', 50, NULL, 3, NULL, 'CB-KT2A', 0, 'DY1', '49', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(94, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000000046', '2001-03-27 00:00:00', 115, 94, 23, '57015.0', 50, NULL, 3, NULL, 'CBD-KT1A', 0, 'DYN1', '50', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(95, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000000047', '2001-03-25 00:00:00', 115, 95, 23, '57016.0', 50, NULL, 3, NULL, 'CBD-KT2A', 0, 'DYN1', '50', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(96, NULL, 'E001M', NULL, '7000000178', '1992-04-12 00:00:00', 115, 96, 22, '573076.0', 40, NULL, 3, NULL, 'CC-KT1A', 0, 'Dy1', '52', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'DRI300-120/TH-10181G-DM2, DRII300-120/TI-10181G'),
(97, NULL, 'E001M', NULL, '7000000177', '1992-05-01 00:00:00', 115, 97, 22, '573075.0', 40, NULL, 3, NULL, 'CC-KT2A', 0, 'Dy1', '52', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'DRI300-120/TH-10181G-DM2, DRII300-120/TI-10181G'),
(98, NULL, '45/6-30-0140-E001(M)', NULL, '7000000180', '1997-08-23 00:00:00', 115, 98, 22, '573071.0', 40, NULL, 3, NULL, 'CC-KT3A', 0, 'Dy1', '52', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'DRI300-120/TH-10181G-DM2, DRII300-120/TI-10181G'),
(99, NULL, '45/9-30-5803-9507', NULL, '7000027911', '1996-01-01 00:00:00', 230, 99, 121, 'N408177', 300, NULL, 3, NULL, 'CHW-KT1A', 22, 'YY0D1', '54', '26', '1', '1', 4, NULL, 'MR', 'MI1200-123/B-12233W'),
(100, NULL, '45/9-30-5803-9507', NULL, '7000035517', '1995-01-01 00:00:00', 230, 100, 121, 'N408034', 300, NULL, 3, NULL, 'CHW-KT2A', 22, 'YY0-D1', '54', '26', '1', '1', 4, NULL, 'MR', '3xMI1200-123/B-12233W'),
(101, NULL, '45-025157-2-2-30(51)2007-TX-03', NULL, '7000035312', '2009-11-29 00:00:00', 230, 101, 121, '508035.0', 300, NULL, 3, NULL, 'CHW-KT3A', 22, 'YY0D1', '54', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/1050C'),
(102, NULL, '47/2-30-5026-EGAT-G03(T)', NULL, '7000000894', '1991-08-22 00:00:00', 115, 102, 23, '8P8744T1', 50, NULL, 3, NULL, 'CM1-KT1A', 0, 'DYN1', '56', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(103, NULL, '47/2-30-5026-EGAT-G03(T)', NULL, '7000000895', '1991-08-22 00:00:00', 115, 103, 23, '8P8744T2', 50, NULL, 3, NULL, 'CM1-KT2A', 0, 'DYN1', '56', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(104, NULL, '45/5-30-5069-H01(T)', NULL, '7000000899', '1993-06-30 00:00:00', 115, 104, 23, '8R8398T1', 50, NULL, 3, NULL, 'CM2-KT1A', 0, 'DYN1', '57', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(105, NULL, '45/5-30-5069-H01(T)', NULL, '7000000900', '1994-04-08 00:00:00', 115, 105, 23, '8R8406T1', 50, NULL, 3, NULL, 'CM2-KT2A', 0, 'DYN1', '57', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(106, NULL, '45/8-30-0228-E023', NULL, '7000000901', '1998-07-10 00:00:00', 115, 106, 23, '60908.0', 25, NULL, 3, NULL, 'CM2-KT3A', 0, 'DYN1', '57', '19', '1', '2', 23, NULL, 'TRAFO-UNION', 'XRSD2301/211/50-18'),
(107, NULL, '45/7-30-0011-WE-03(F)', NULL, '7000000904', '1992-12-23 00:00:00', 115, 107, 23, 'AN69003T2', 50, NULL, 3, NULL, 'CM3-KT1A', 0, 'DYN1', '58', '13', '1', '2', 14, NULL, 'FUJI', 'XRSD3251/211-211/50-18(17)/050'),
(108, NULL, '45/3-30-5059-EGAT-ATP01&02', NULL, '7000000905', '1992-10-21 00:00:00', 115, 108, 23, '8P9092T1', 50, NULL, 3, NULL, 'CM3-KT2A', 0, 'DYN1', '58', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(109, NULL, '45/6-30-5050-H02(S)', NULL, '7000035466', '1995-02-14 00:00:00', 230, 109, 121, 'N407920', 200, NULL, 3, NULL, 'CM3-KT3A', 22, 'DYN1', '58', '9', '1', '1', 8, NULL, 'MR', '3xMI600-150/C/12233W'),
(110, NULL, '45/5-30-5117-H02(S)', NULL, '7000000906', '1994-03-31 00:00:00', 230, 110, 121, 'N407922', 200, NULL, 3, NULL, 'CM3-KT4A', 22, 'DYN1', '58', '9', '1', '1', 8, NULL, 'MR', '3XMI 600-150/C-12233 W'),
(111, NULL, '45/1-30-5807-TS9-55', NULL, '7000000907', '2004-02-15 00:00:00', 230, 111, 121, '9.812811102', 200, NULL, 3, NULL, 'CM3-KT5A', 33, 'DYN1', '58', '7', '1', '1', 15, NULL, 'MASCNINE OF ABRIK', 'MI-800'),
(112, NULL, 'EGAT 45/5-30-5069-H01(T)', NULL, '7000025166', '1994-11-05 00:00:00', 115, 112, 23, '8R8410T1', 50, NULL, 3, NULL, 'CP-KT1A', 0, 'DYN1', '59', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT 650/300'),
(113, NULL, 'EGAT 45/5-30-5069-H01(T)', NULL, '7000025167', '1994-11-03 00:00:00', 115, 113, 23, '8R8410T2', 50, NULL, 3, NULL, 'CP-KT2A', 0, 'DYN1', '59', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT 600/300'),
(114, NULL, '45/8-30-0193-E025', NULL, '7000025168', '1987-01-06 00:00:00', 115, 114, 5.59999990463257, '1.1073311', 60, NULL, 3, NULL, 'CP-KT3A', 0, 'YD1', '59', '28', '1', '2', 2, NULL, '-', '-'),
(115, NULL, 'EGAT 45/4-30-5114-H02(M)', NULL, '7000035450', '2006-12-16 00:00:00', 230, 115, 121, 'A1Z69040T4-2', 200, NULL, 3, NULL, 'CP-KT4A', 22, 'YY0-D1', '59', '13', '1', '3', 14, NULL, ' MR ', '3xMI601'),
(116, NULL, '45/2-30-5001-8813(9001)', NULL, '7000025169', '2006-12-16 00:00:00', 230, 116, 121, '9.1900019', 200, NULL, 3, NULL, 'CP-KT5A', 22, 'YY0  D1', '59', '6', '1', '3', 11, NULL, 'MR', 'MI 600-110/C'),
(117, NULL, '45/2-30-0049-TS9-51(A)', NULL, '7000013045', '1997-09-01 00:00:00', 115, 117, 22, '56043.0', 50, NULL, 3, NULL, 'CPA-KT1A', 11, 'YY0-D1', '60', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN200/300'),
(118, NULL, '45/0-30-5816-TS9-51(A)', NULL, '7000013046', '1996-09-01 00:00:00', 115, 118, 22, '56044.0', 50, NULL, 3, NULL, 'CPA-KT2A', 11, 'YY0-D1', '60', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN200/300'),
(119, NULL, '45/3-5069-EGAT-ATP01&02', NULL, '7000035467', '2003-11-14 00:00:00', 115, 119, 23, '8P9089T2', 50, NULL, 3, NULL, 'CR-KT1A', 0, 'YY0-D1', '61', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(120, NULL, '45/5-30-5069-H01(T)', NULL, '7000000911', '2004-02-24 00:00:00', 115, 120, 23, '8R8396T1', 50, NULL, 3, NULL, 'CR-KT2A', 0, 'DYN1', '61', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(121, NULL, '45/0-30-5812-TS9-53(M)', NULL, '7000000912', '2000-01-19 00:00:00', 230, 121, 121, 'A1E69002T4-1', 200, NULL, 3, NULL, 'CR-KT4A', 22, 'DYN1', '61', '13', '1', '1', 14, NULL, 'MR', 'M1600'),
(122, NULL, '45/0-30-5812-TS9-53(M)', NULL, '7000000913', '1999-08-14 00:00:00', 230, 122, 121, 'A1E69002T4-2', 200, NULL, 3, NULL, 'CR-KT5A', 22, 'DYN1', '61', '13', '1', '1', 14, NULL, 'MR', 'M1600'),
(123, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000000167', '1990-01-01 00:00:00', 115, 123, 22, '8P9088T1', 50, NULL, 3, NULL, 'CT-KT1A', 0, 'Dy1', '62', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(124, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000000168', '1990-01-01 00:00:00', 115, 124, 22, '8P9088T2', 50, NULL, 3, NULL, 'CT-KT2A', 0, 'Dy1', '62', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(125, NULL, '45-C57527-3-2-7N(47) TS10-TX-01 (R) (A)', NULL, '7000000165', '2004-01-01 00:00:00', 230, 125, 115, '504004.0', 200, NULL, 3, NULL, 'CT-KT3A', 22, 'YY0-D1', '62', '1', '1', '3', 13, NULL, 'ABB', '3xUCGRT650'),
(126, NULL, '45-C57527-3-2-7N(47) TS10-TX-01 (R) (A)', NULL, '7000000166', '2004-01-01 00:00:00', 230, 126, 115, '504005.0', 200, NULL, 3, NULL, 'CT-KT4A', 22, 'YY0-D1', '62', '1', '1', '3', 13, NULL, 'ABB', '3xUCGRT650'),
(127, NULL, '45/7-30-0011-WE-03(F)', NULL, '7000000916', '1992-09-15 00:00:00', 115, 127, 22, 'AN69003T3-1', 25, NULL, 3, NULL, 'CTG-KT1A', 0, 'DYN1', '63', '13', '1', '2', 14, NULL, 'FUJI', 'VLN/B3*800WF9-3*800/30'),
(128, NULL, '45/2-30-0050-0019', NULL, '7000000917', '1994-06-22 00:00:00', 115, 128, 22, '60546-001', 25, NULL, 3, NULL, 'CTG-KT2A', 0, 'DYN1', '63', '19', '1', '2', 23, NULL, 'VOLTA-WERKE', 'CRND30/1002/5-18+3*ARSD30/1021'),
(129, NULL, '45/6-30-5056-MMS2', NULL, '7000000023', '1995-08-07 00:00:00', 115, 129, 23, '8R9911T6', 50, NULL, 3, NULL, 'CTN-KT1A', 0, 'Dy1', '64', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(130, NULL, '45/6-30-5056-MMS2', NULL, '7000000024', '1995-08-07 00:00:00', 115, 130, 23, '8R9911T7', 50, NULL, 3, NULL, 'CTN-KT2A', 0, 'Dy1', '64', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(131, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000014767', '2005-06-03 00:00:00', 115, 131, 22, '8P9097T2', 50, NULL, 3, NULL, 'CYP-KT1A', 11, 'YY0-D1', '65', '10', '1', '3', 9, NULL, 'MR', 'VIIIY350-030-10181W'),
(132, NULL, '45/5-30-5114-H02(M)', NULL, '7000014864', '1994-02-10 00:00:00', 230, 132, 121, 'AIZ69040T12', 200, NULL, 3, NULL, 'CYP-KT2A', 22, 'YY0-D1', '65', '13', '1', '3', 14, NULL, 'MR', '3xMI601'),
(133, NULL, '45/5-30-5030-H01(A)', NULL, '7000014784', '1995-06-30 00:00:00', 115, 133, 22, '52010.0', 50, NULL, 3, NULL, 'CYP-KT3A', 11, 'YY0-D1', '65', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN380/300'),
(134, NULL, '45/0-30-5842-TS9-54(T4)', NULL, '7000014835', '2000-05-09 00:00:00', 230, 134, 121, '9.8900017', 200, NULL, 3, NULL, 'CYP-KT4A', 22, 'YY0-D1', '65', '6', '1', '1', 11, NULL, 'MR', '3xMI600-110/C'),
(135, NULL, '47/2-30-5018-EGAT-G02(T)', NULL, '7000017148', '1991-03-09 00:00:00', 115, 135, 22, '8.90900043', 25, NULL, 3, NULL, 'DBN-KT1A', 0, 'DY1', '66', '6', '1', '2', 11, NULL, 'MR', 'V2xVIIIY500'),
(136, NULL, '45/2-30-5026-EGAT-G03(T)', NULL, '7000035643', '1996-11-27 00:00:00', 115, 136, 22, '8P8747T2', 25, NULL, 3, NULL, 'DBN-KT2A', 0, 'Dy1', '66', '10', '1', '2', 9, NULL, 'ABB', 'UZFRN200/300'),
(137, NULL, '45/18-030-064-B001S', NULL, '7000017248', '1976-01-01 00:00:00', 115, 137, 22, '5A1587001', 25, NULL, 3, NULL, 'DBN-KT3A', 0, 'DY1', '66', '12', '1', '2', 16, NULL, 'DAIHEN', ''),
(138, NULL, '45/5-30-5115-H02(A)', NULL, '7000017194', '1996-05-19 00:00:00', 230, 138, 121, '103727.0', 200, NULL, 3, NULL, 'HH-KT1A', 22, 'YY0-D1', '68', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT 650/600 IS'),
(139, NULL, '45/0-30-5812-TS9-53(M)', NULL, '7000017223', '1999-09-25 00:00:00', 230, 139, 115, 'A1E69002T1', 200, NULL, 3, NULL, 'HH-KT3A', 22, 'YY0-D1', '68', '13', '1', '1', 14, NULL, 'MR', ''),
(140, NULL, '45/3-30-5059-EGAT-ATP01&02', NULL, '7000025255', '1993-02-07 00:00:00', 115, 140, 34.5, '8P9102T1', 50, NULL, 3, NULL, 'HY1-KT1A', 11, 'YY0  D1', '70', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(141, NULL, '45/3-30-5059-EGAT-ATP01&02', NULL, '7000025256', '1993-02-04 00:00:00', 115, 141, 34.5, '8P9102T2', 50, NULL, 3, NULL, 'HY1-KT2A', 11, 'YY0  D1', '70', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(142, NULL, '45/3-30-5070-H01(H)', NULL, '7000025259', '1994-12-07 00:00:00', 115, 142, 34.5, 'T943017', 50, NULL, 3, NULL, 'HY2-KT1A', 11, 'YY0  D1', '71', '30', '1', '3', 25, NULL, 'MR', 'VIII 500Y'),
(143, NULL, '45/3-30-5070-H01(H)', NULL, '7000025260', '1994-12-09 00:00:00', 115, 143, 34.5, 'T943016', 50, NULL, 3, NULL, 'HY2-KT2A', 11, 'YY0  D1', '71', '30', '1', '3', 25, NULL, 'MR', 'VIII 500Y'),
(144, NULL, '47/0-30-0004-EGAT-PPB2(S)', NULL, '7000025261', '1989-01-22 00:00:00', 230, 144, 121, '94169.0', 200, NULL, 3, NULL, 'HY2-KT3A', 33, 'YY0  D1', '71', '23', '1', '1', 18, NULL, 'MR', '3XMI 501 150/C 12233'),
(145, NULL, '47/0-30-0004-EGAT-PPB2(S)', NULL, '7000025262', '1989-01-22 00:00:00', 230, 145, 121, '94170.0', 200, NULL, 3, NULL, 'HY2-KT4A', 33, 'YY0  D1', '71', '23', '1', '1', 18, NULL, 'MR', '3XMI 501 150/C 12233'),
(146, NULL, '45/8-30-5805-HVDC-03', NULL, '7000025263', '1997-03-08 00:00:00', 230, 146, 121, '5BK013801', 200, NULL, 3, NULL, 'HY2-KT5A', 33, 'YY0  D1', '71', '31', '1', '1', 17, NULL, 'MR', 'MI 1200-150/C'),
(147, NULL, '45/2-30-0050-C001B', NULL, '7000025198', '2001-08-07 00:00:00', 115, 147, 33, '60538-002', 25, NULL, 3, NULL, 'KA-KT1A', 10.5, 'YY0  D1', '72', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND140/211/50-18'),
(148, NULL, '45/1-62-0092-8/2521', NULL, '7000025199', '2007-05-29 00:00:00', 115, 148, 33, '60476-001', 25, NULL, 3, NULL, 'KA-KT2A', 10.5, 'YY0  D1', '72', '19', '1', '3', 23, NULL, 'FERRANTI', 'DS-5-500A'),
(149, NULL, '45/1-30-5807-TS9-55', NULL, '7000025200', '2001-09-06 00:00:00', 230, 149, 121, '9.816102102', 200, NULL, 3, NULL, 'KA-KT3A', 33, 'YY0  D1', '72', '7', '1', '1', 15, NULL, 'MR', '3XMI 800'),
(150, NULL, '45/1-30-5807-TS9-55', NULL, '7000025201', '2001-09-07 00:00:00', 230, 150, 121, '9.816102101', 200, NULL, 3, NULL, 'KA-KT4A', 33, 'YY0  D1', '72', '7', '1', '1', 15, NULL, 'MR', '3XMI 800'),
(151, NULL, '45/2-30-0015-C001M', NULL, '7000017136', '1980-03-06 00:00:00', 115, 151, 22, '5F9902T2', 25, NULL, 3, NULL, 'KB-KT1A', 0, 'DY1', '73', '11', '1', '2', 19, NULL, 'MEIDENSH', 'LJND22/1000-17'),
(152, NULL, '45/5-30-5069 H01(T)', NULL, '7000017159', '1996-03-12 00:00:00', 115, 152, 22, '8R8405T1', 50, NULL, 3, NULL, 'KB-KT2A', 0, 'DY1', '73', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT'),
(153, NULL, 'P65/2513-1340', NULL, '7000017164', '1971-10-13 00:00:00', 115, 153, 22, '556261.0', 25, NULL, 3, NULL, 'KB-KT3A', 0, 'DY1', '73', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'URS-LD7'),
(154, NULL, '45/2-30-0051-C001M', NULL, '7000017264', '1980-01-01 00:00:00', 230, 154, 115, '72198.0', 200, NULL, 3, NULL, 'KB2-KT1A', 22, 'YY0-D1', NULL, '34', '1', '3', 18, NULL, 'MR', '3XMI802110/D'),
(155, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000013023', '1990-09-01 00:00:00', 115, 155, 22, '8P9097T1', 50, NULL, 3, NULL, 'KK1-KT1A', 11, 'YY0-D1', '74', '11', '1', '3', 19, NULL, 'MR', 'VIII350Y-030-10181W'),
(156, NULL, 'EGAT xx1', NULL, '7000013024', '1998-09-01 00:00:00', 115, 156, 22, 'EDP011902', 50, NULL, 3, NULL, 'KK1-KT2A', 11, 'YY0-D1', '74', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-40'),
(157, NULL, '45/3-30-0184-D001M', NULL, '7000013025', '1981-09-01 00:00:00', 230, 157, 115, '8.134150101', 200, NULL, 3, NULL, 'KK1-KT3A', 22, NULL, '74', '7', '1', '1', 15, NULL, 'MR', '3xMI600-110/C/D-12233W'),
(158, NULL, '45/3-30-0184-D001M', NULL, '7000013026', '1981-09-01 00:00:00', 230, 158, 115, '8.134150102', 200, NULL, 3, NULL, 'KK1-KT4A', 22, NULL, '74', '7', '1', '1', 15, NULL, 'MR', '3xMI600-110/C/D-12233W'),
(159, NULL, 'EGAT BP-I-IE', NULL, '7000013027', '1989-09-01 00:00:00', 230, 159, 115, 'AV69020T1', 200, NULL, 3, NULL, 'KK1-KT5A', 22, NULL, '74', '13', '1', '1', 14, NULL, 'FUJI', '3xADSD3252/1021-1201/50-22'),
(160, NULL, '45/0-30-5816-TS9-51(A)', NULL, '7000013028', '1997-09-01 00:00:00', 115, 160, 22, '56040.0', 50, NULL, 3, NULL, 'KK1-KT6A', 11, NULL, '74', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN200/300'),
(161, NULL, '45/0-30-5829-TS9-52', NULL, '7000013049', '1998-09-01 00:00:00', 115, 161, 22, '8T9796T1', 50, NULL, 3, NULL, 'KK2-KT1A', 11, NULL, '75', '10', '1', '3', 9, NULL, 'ABB', 'UZFRN200/300'),
(162, NULL, '45/0-30-5829-TS9-52', NULL, '7000013050', '1998-09-01 00:00:00', 115, 162, 22, '8T9796T2', 50, NULL, 3, NULL, 'KK2-KT2A', 11, NULL, '75', '10', '1', '3', 9, NULL, 'ABB', 'UZFRN200/300'),
(163, NULL, '45/0-30-5858-RIP2-S3(E)', NULL, '7000013057', '1999-09-01 00:00:00', 115, 163, 22, 'EDP011906', 50, NULL, 3, NULL, 'KL-KT1A', 11, NULL, '79', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-40'),
(164, NULL, '45/0-30-5858-RIP2-S3(E)', NULL, '7000013058', '1999-09-01 00:00:00', 115, 164, 22, 'EDP011907', 50, NULL, 3, NULL, 'KL-KT2A', 11, NULL, '79', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-40'),
(165, NULL, '45/0-30-5815-TS9-51(T)', NULL, '7000000131', '1997-01-01 00:00:00', 115, 165, 23, '8T9669T1', 50, NULL, 3, NULL, 'KLA-KT1A', 0, NULL, '80', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(166, NULL, '45/8-30-5033-RIP-S2', NULL, '7000000132', '1997-01-01 00:00:00', 115, 166, 23, '8T9669T2', 50, NULL, 3, NULL, 'KLA-KT2A', 0, NULL, '80', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(167, NULL, '45/5-30-5117-H02(S)', NULL, '7000000097', '1995-06-05 00:00:00', 230, 167, 121, '407924.0', 200, NULL, 3, NULL, 'KLM-KT1A', 22, NULL, '81', '9', '1', '1', 8, NULL, 'MR', '3xMI600-150/C/12233W'),
(168, NULL, '45/5-30-5117-H02(S)', NULL, '7000000098', '1995-06-05 00:00:00', 230, 168, 121, '407926.0', 200, NULL, 3, NULL, 'KLM-KT2A', 22, NULL, '81', '9', '1', '1', 8, NULL, 'MR', '3xMI600-150/C/12233W'),
(169, NULL, '45/5-30-5117-H02(S)', NULL, '7000000099', '1995-06-05 00:00:00', 230, 169, 121, '407928.0', 200, NULL, 3, NULL, 'KLM-KT3A', 22, NULL, '81', '9', '1', '1', 8, NULL, 'MR', '3xMI600-150/C/12233W'),
(170, NULL, '47/5-30-0010-8101', NULL, '7000000181', '2008-01-10 00:00:00', 230, 170, 115, 'AE69025T4', 200, NULL, 3, NULL, 'KLM-KT4A', 22, NULL, '81', '13', '1', '1', 14, NULL, 'FUJI', '3xARSD3252/621S-621S/50-22(20)/0611'),
(171, NULL, 'EGAT 45/3-30-5070-H01(H)', NULL, '7000025174', '1997-05-08 00:00:00', 115, 171, 33.5, 'T943038', 50, NULL, 3, NULL, 'KN-KT1A', 11, 'YY0  D1', '82', '30', '1', '3', 25, NULL, 'MR', 'VIII Y=500-060'),
(172, NULL, 'EGAT 45/8-30-0137-F001(SU)', NULL, '7000025175', '1987-05-29 00:00:00', 230, 172, 121, '5BK010701', 100, NULL, 3, NULL, 'KN-KT2A', 33, 'YY0  D1', '82', '12', '1', '3', 16, NULL, 'MR', '3X0TMRMI 3-150/C'),
(173, NULL, 'EGAT 45/0-305829-TS9-52', NULL, '7000025176', '2002-11-08 00:00:00', 115, 173, 34.5, '8T9791T1', 50, NULL, 3, NULL, 'KN-KT3A', 11, 'YY0  D1', '82', '11', '1', '3', 19, NULL, 'ABB', 'RZFRN 200/300'),
(174, NULL, 'EGAT 47/0-30-0004-EGAT-PPB-2', NULL, '7000025177', '1998-04-29 00:00:00', 230, 174, 121, '8.8900013', 60, NULL, 3, NULL, 'KN-KT4A', 33, 'YY0  D1', '82', '6', '1', '3', 11, NULL, 'TOSHIBA', '3XFK-M 1040G/C'),
(175, NULL, '47/0-30-5824-HVDC01/2L', NULL, '7000025312', '2001-03-15 00:00:00', 230, 175, 122.23999786377, 'N408525', 58, NULL, 1, NULL, 'KNE-KT1AA', 122.23999786377, 'YY0  YD11', '83', '26', '1', '3', 4, 'A', 'MR', 'RMII 602-72.5 /C12231 W'),
(176, NULL, '47/0-30-5824-HVDC01/2L', NULL, '7000025313', '2001-03-15 00:00:00', 230, 176, 122.23999786377, 'N408526', 58, NULL, 1, NULL, 'KNE-KT1AB', 122.23999786377, 'YY0  YD11', '83', '26', '1', '3', 4, 'B', 'MR', 'RMII 602-72.5 /C12231 W'),
(177, NULL, '47/0-30-5824-HVDC01/2L', NULL, '7000025314', '2001-03-15 00:00:00', 230, 177, 122.23999786377, 'N408527', 58, NULL, 1, NULL, 'KNE-KT1AC', 122.23999786377, 'YY0  YD11', '83', '26', '1', '3', 4, 'C', 'MR', 'RMII 602-72.5 /C12231 W'),
(178, NULL, '47/0-30-5824-HVDC01/2L', NULL, '7000025315', '2001-03-15 00:00:00', 230, 178, 122.23999786377, 'N408528', 58, NULL, 3, NULL, 'Spare_KNE-KT1A', 122.23999786377, 'YY0  YD11', '231', '26', '5', '1', 4, NULL, 'MR', 'RMII 602-72.5 /C12231 W'),
(179, NULL, 'EGAT xx2', NULL, '7000025316', '2001-03-15 00:00:00', 230, 179, 115, '555272.0', 66.6699981689453, NULL, 3, NULL, 'KNE-KT2A', 11, 'YY0  D1', '83', '7', '1', '1', 15, NULL, 'MR', 'MRD1400'),
(180, NULL, 'P21/2514-A001', NULL, '7000015013', '1973-06-07 00:00:00', 115, 180, 22, '558034.0', 25, NULL, 3, NULL, 'KNG-KT1A', 11, NULL, '84', '7', '1', '3', 15, NULL, 'MR', 'DIII400-80N/60-10181G'),
(181, NULL, '45/6-30-0156-E001(K)', NULL, '7000015014', '1984-07-10 00:00:00', 115, 181, 22, 'AG-69095T412', 25, NULL, 3, NULL, 'KNG-KT2A', 11, NULL, '84', '13', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND701/211-211/50-18(17)/0507'),
(182, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000000921', '2000-11-16 00:00:00', 115, 182, 23, '8N5451T3', 50, NULL, 3, NULL, 'KP-KT1A', 0, 'D Y1', '85', '11', '1', '2', 19, NULL, 'ABB.UZFRT 650/300', 'BUF3'),
(183, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000000922', '2000-11-18 00:00:00', 115, 183, 23, '8N5449T2', 50, NULL, 3, NULL, 'KP-KT2A', 0, 'D Y1', '85', '11', '1', '2', 19, NULL, 'ABB.UZFRT 650/300', 'BUF3'),
(184, NULL, '45/0-30-5818 EGAT TS9-51(E)', NULL, '7000017282', '1998-01-01 00:00:00', 115, 184, 22, 'EDP011305', 50, NULL, 3, NULL, 'KS-KT1A', 0, 'DY1', '87', '36', '1', '2', 20, NULL, 'MR', 'HIIII400D'),
(185, NULL, '45/0-30-5818 EGAT TS9-51(E)', NULL, '7000017283', '1998-01-01 00:00:00', 115, 185, 22, 'EDP011306', 50, NULL, 3, NULL, 'KS-KT2A', 0, 'DY1', '87', '36', '1', '2', 20, NULL, 'MR', 'HIIII400D'),
(186, NULL, '45/2-30-0049-WC001', NULL, '7000016306', '2000-03-17 00:00:00', 115, 186, 22, '6.0539003', 31.5, NULL, 3, NULL, 'KTL-KT1A', 11, NULL, '88', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND'),
(187, NULL, '45/6-30-0156-E001(K)', NULL, '7000016307', '2000-03-17 00:00:00', 115, 187, 22, 'AG69095T431', 25, NULL, 3, NULL, 'KTL-KT2A', 11, NULL, '88', '13', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND701/211-211/50'),
(188, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000000051', '1999-12-14 00:00:00', 115, 188, 23, '8N5446T4', 50, NULL, 3, NULL, 'LB1-KT1A', 0, 'DYN1', '89', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(189, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000000052', '1999-12-17 00:00:00', 115, 189, 23, '8N5449T1', 50, NULL, 3, NULL, 'LB1-KT2A', 0, 'DYN1', '89', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(190, NULL, '45/7-30-0011-WE-03(F)', NULL, '7000000055', '1986-05-25 00:00:00', 115, 190, 22, 'AN69003T5', 25, NULL, 3, NULL, 'LB2-KT1A', 0, 'DYN1', '90', '37', '1', '2', 14, NULL, 'FUJI', 'VLN/B3X800/WFG-3X800/30'),
(191, NULL, '45/4-83-0063-WM101', NULL, '7000000056', '1982-12-20 00:00:00', 115, 191, 22, '8144902.0', 25, NULL, 3, NULL, 'LB2-KT2A', 0, 'DYN1', '90', '24', '1', '2', 6, NULL, 'HUAMING', 'CMIII–600Y/150C–10191W'),
(192, NULL, '45/6-30-0156-E001(K)', NULL, '7000017533', '2009-01-01 00:00:00', 115, 192, 22, 'AG69095T411', 25, NULL, 3, NULL, 'LE-KT1A', 11, NULL, '91', '13', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND701/211-211/50-18(17)/0507'),
(193, NULL, '45/2-30-0049-WC001', NULL, '7000017524', '1979-09-01 00:00:00', 115, 193, 22, '6.0542002', 31.5, NULL, 3, NULL, 'LE-KT2A', 11, NULL, '91', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND110/211/5-18'),
(194, NULL, 'EGAT 45/8-30-2028-E023', NULL, '7000017540', '1987-09-01 00:00:00', 115, 194, 22, '6.0909001', 31.5, NULL, 3, NULL, 'LE-KT3A', 11, NULL, '91', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND140/211/50-18'),
(195, NULL, '45/6-30-0140-E001M', NULL, '7000000926', '2003-06-12 00:00:00', 115, 195, 22, '573085.0', 25, NULL, 3, NULL, 'LKB-KT1A', 0, 'DY1', '92', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'MRMIII800-11OF/C-10171W-MA7A'),
(196, NULL, '45/6-30-0140-E001(M)', NULL, '7000000927', '2003-06-19 00:00:00', 115, 196, 22, '573090.0', 25, NULL, 3, NULL, 'LKB-KT2A', 0, 'DY1', '92', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'MRMIII800-11OF/C-10171W-MA7A'),
(197, NULL, '45/0-30-5815-EGAT TS9-51(T)', NULL, '7000000929', '1998-08-18 00:00:00', 115, 197, 23, '8T9668T4', 50, NULL, 3, NULL, 'LN1-KT1A', 0, 'DYN1', '93', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(198, NULL, '45/5-30-5069-H01(T)', NULL, '7000000931', '1994-04-25 00:00:00', 115, 198, 23, '8R8397T1', 50, NULL, 3, NULL, 'LN2-KT1A', 0, 'DYN1', '94', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(199, NULL, '45/5-30-5069-H01(T)', NULL, '7000000932', '1994-04-25 00:00:00', 115, 199, 23, '8R8397T2', 50, NULL, 3, NULL, 'LN2-KT2A', 0, 'DYN1', '94', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(200, NULL, '45/0-30-5815-EGAT-TS9-51(T)', NULL, '7000000936', '1998-11-12 00:00:00', 115, 200, 22, '8T9669T3', 50, NULL, 3, NULL, 'LP1-KT1A', 0, 'DY1', '95', '10', '1', '2', 9, NULL, 'MEIDEN', 'UZFRT'),
(201, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000000937', '1999-11-08 00:00:00', 115, 201, 22, '8N5449T4', 50, NULL, 3, NULL, 'LP1-KT2A', 0, 'DY1', '95', '10', '1', '2', 9, NULL, 'MEIDEN', 'UZFRT'),
(202, NULL, 'EGAT 45/7-30-0011-WE-03(F)', NULL, '7000000940', '1990-11-03 00:00:00', 115, 202, 22, 'AN69003T4-2', 25, NULL, 3, NULL, 'LP1-KT1A', 0, 'DYN1', '95', '13', '1', '2', 14, NULL, 'FUJI', 'VNL/B3X800/WF9-3X800/30'),
(203, NULL, '45/18-30-064-B001S', NULL, '7000000941', '1993-03-13 00:00:00', 115, 203, 22, '5BA159011', 25, NULL, 3, NULL, 'LP2-KT2A', 0, 'DYN1', '96', '12', '1', '2', 16, NULL, 'DAIHEN', 'RER-2-70-17'),
(204, NULL, 'P21/2514-A001', NULL, '7000027914', '1974-01-01 00:00:00', 220, 204, 69, '7.412507701', 200, NULL, 3, NULL, 'LPR-KT1A', 11, 'YY0D1', '97', '7', '1', '1', 15, NULL, 'MITSUBISHI', 'MRFI1600P-80L/150T-10193W'),
(205, NULL, '45/2-30-0053-C001TU', NULL, '7000027915', '1980-01-01 00:00:00', 220, 205, 69, 'S251401', 200, NULL, 3, NULL, 'LPR-KT2A', 11, 'YY0D1', '97', '9', '1', '1', 8, NULL, 'TRAFO UNION', 'ARSD110/2400/5-18'),
(206, NULL, '45/3-30-5079-EGAT-ATP-01&02(M)', NULL, '7000027916', '1995-01-01 00:00:00', 220, 206, 69, '9.1900007', 200, NULL, 3, NULL, 'LPR-KT3A', 22, 'YY0D1', '97', '6', '1', '1', 11, NULL, 'MR', 'TI2000/110C-10171'),
(207, NULL, '45/2-30-5007-EGAT-G05(M)', NULL, '7000027917', '1989-01-01 00:00:00', 220, 207, 69, '8946787.0', 200, NULL, 3, NULL, 'LPR-KT4A', 11, 'YY0D1', '97', '24', '1', '1', 6, NULL, 'MR', 'MI601-150/B'),
(208, NULL, '45/2-30-0050-C001B', NULL, '7000025204', '1991-10-18 00:00:00', 115, 208, 33, '6.0548002', 25, NULL, 3, NULL, 'LR-KT1A', 0, 'YY0  D1', '98', '19', '1', '2', 23, NULL, 'TRAFO-UNION', 'CRND110/211/5-18'),
(209, NULL, '45/18-30-064-B001S', NULL, '7000025205', '1993-05-12 00:00:00', 115, 209, 33, '5A1594001', 25, NULL, 3, NULL, 'LR-KT2A', 0, 'DY1', '98', '31', '1', '2', 17, NULL, 'DAIHEN', 'RFR-4-20-15'),
(210, NULL, '45/20-83-062-7701', NULL, '7000025206', '1993-05-14 00:00:00', 115, 210, 33, '566415.0', 25, NULL, 3, NULL, 'LR-KT3A', 0, 'YY0  D1', '98', '7', '1', '2', 15, NULL, 'MR', 'MIII 500-100/C 11239WS'),
(211, NULL, '45/3-30-0183-D001T', NULL, '7000000944', '1998-08-14 00:00:00', 230, 211, 115, '8144950.0', 100, NULL, 3, NULL, 'LS-KT1A', 22, 'YYO, D1', '99', '24', '1', '1', 6, NULL, 'ASEA', 'UCFRT650/500'),
(212, NULL, '45/8-30-0144-F001(M)', NULL, '7000000945', '2003-02-26 00:00:00', 115, 212, 22, '574418.0', 25, NULL, 3, NULL, 'LS-KT2A', 0, 'DY1', '99', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'MRMIII800-110F/C-18331W-MA7-B'),
(213, NULL, '45/6-30-0140-E001M', NULL, '7000000946', '2000-06-02 00:00:00', 115, 213, 22, '573089.0', 25, NULL, 3, NULL, 'LS-KT3A', 0, 'DY1', '99', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'MRMIII800-110F/C-10171W-MA7A'),
(214, NULL, '45/6-03-0253-458453', NULL, '7000000947', '1997-04-04 00:00:00', 230, 214, 115, '8345590.0', 100, NULL, 3, NULL, 'LS-KT4A', 22, 'YYO, D1', '99', '24', '1', '1', 6, NULL, 'MR', '3XMI501'),
(215, NULL, 'EGAT 45/0-30-5855-RIP2-S3(A)', NULL, '7000025180', '2001-07-04 00:00:00', 115, 215, 23, '57024.0', 50, NULL, 3, NULL, 'LSN-KT1A', 0, 'DYN1', '100', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT 550/300'),
(216, NULL, 'EGAT 45/0-30-5855-RIP2-S3(A)', NULL, '7000035451', '2001-07-04 00:00:00', 115, 216, 23, '57029.0', 50, NULL, 3, NULL, 'LSN-KT2A', 0, NULL, '100', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(217, NULL, 'EGAT  45/3-30-5073-8907 (BWN)', NULL, '7000025181', '2005-12-06 00:00:00', 220, 217, 115, '5BK013001', 200, NULL, 3, NULL, 'LSN-KT3A', 22, 'YY0  D1', '100', '31', '1', '1', 17, NULL, 'MR', 'MI 600-150/C'),
(218, NULL, 'EGAT  45/3-30-5079-EGAT-ATP01&', NULL, '7000025182', '2005-10-15 00:00:00', 220, 218, 115, '9.1900006', 200, NULL, 3, NULL, 'LSN-KT4A', 22, 'YY0  D1', '100', '6', '1', '1', 11, NULL, 'MR', '3XMI 600'),
(219, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000000953', '2003-09-05 00:00:00', 115, 219, 23, '57017.0', 50, NULL, 3, NULL, 'MCN-KT1A', 0, 'DYN1', '102', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(220, NULL, '45/5-30-5067-H18(A)', NULL, '7000016387', '1994-02-18 00:00:00', 115, 220, 22, '5003.0', 50, NULL, 3, NULL, 'MD1-KT1A', 11, NULL, '103', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN330/300'),
(221, NULL, '45/0-30-5818-TS9-51(E)', NULL, '7000016388', '2004-10-26 00:00:00', 115, 221, 22, 'EDP011905', 50, NULL, 3, NULL, 'MD1-KT2A', 11, NULL, '103', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-40'),
(222, NULL, 'EGAT xx3', NULL, '7000016450', '2004-10-26 00:00:00', 115, 222, 22, '60541-001', 25, NULL, 3, NULL, 'MD2-KT1A', 11, NULL, '104', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND110/2111/5-17'),
(223, NULL, '45/5-30-5030-H01(A)', NULL, '7000013061', '1993-09-01 00:00:00', 115, 223, 22, '25001.0', 50, NULL, 3, NULL, 'MK-KT1A', 11, NULL, '106', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN380/300'),
(224, NULL, '45/0-30-5816-TS9-51(A)', NULL, '7000013062', '1997-09-01 00:00:00', 115, 224, 22, '56039.0', 50, NULL, 3, NULL, 'MK-KT2A', 11, NULL, '106', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN200/300'),
(225, NULL, '333TH-II-26', NULL, '7000000956', '1988-04-27 00:00:00', 115, 225, 22, '528569.0', 6.5, NULL, 3, NULL, 'MM2-KT1A', 0, 'DYN1', '108', '12', '1', '1', 16, NULL, 'DAIHEN', 'DAIHEN'),
(226, NULL, '45/8-30-0143-F001(E)', NULL, '7000000957', '1987-08-26 00:00:00', 115, 226, 23, '136703.0', 50, NULL, 3, NULL, 'MM2-KT3A', 0, 'DYN1', '108', '21', '1', '2', 12, NULL, 'MR', 'M II,I 300301-4-110/C 10192G 1'),
(227, NULL, '45/8-30-0143-F001(E)', NULL, '7000000958', '1987-08-28 00:00:00', 115, 227, 23, '136704.0', 50, NULL, 3, NULL, 'MM2-KT4A', 0, 'DYN1', '108', '21', '1', '2', 12, NULL, 'MR', 'M II,I 300301-4-110/C 10192G 1'),
(228, NULL, '45/4-30-5119-MM-01', NULL, '7000000959', '1993-10-07 00:00:00', 115, 228, 23, '5P085-1', 50, NULL, 3, NULL, 'MM2-KT5A', 0, 'DYN1', '108', '39', '1', '2', 22, NULL, 'MR', 'HIII-400D-123-10181W'),
(229, NULL, '45-C49810-8-2-30(46) TS10-TX-0', NULL, '7000002734', '2006-03-31 00:00:00', 500, 229, 230, '5900001.0', 333.329986572266, NULL, 1, NULL, 'MM3-KT3AA', 22, 'YY0,D11', '109', '25', '1', '1', 21, 'A', 'ABB', 'UCDRE1050/1800/III'),
(230, NULL, '45-C49810-8-2-30(46) TS10-TX-0', NULL, '7000002736', '2006-03-31 00:00:00', 500, 230, 230, '5900002.0', 333.329986572266, NULL, 1, NULL, 'MM3-KT3AB', 22, 'YY0,D11', '109', '25', '1', '1', 21, 'B', 'ABB', 'UCDRE1050/1800/III'),
(231, NULL, '45-C49810-8-2-30(46) TS10-TX-0', NULL, '7000002738', '2006-03-31 00:00:00', 500, 231, 230, '5900003.0', 333.329986572266, NULL, 1, NULL, 'MM3-KT3AC', 22, 'YY0,D11', '109', '25', '1', '1', 21, 'C', 'ABB', 'UCDRE1050/1800/III'),
(232, NULL, '45/5-30-5114-H02(M)', NULL, '7000000964', '1993-12-22 00:00:00', 230, 232, 115, 'AIZ69040T1-1', 200, NULL, 3, NULL, 'MM3-KT4A', 22, 'YY0,D1', '109', '13', '1', '1', 14, NULL, 'MR', 'MR3XMI 600 150/D 12211W'),
(233, NULL, '45/0-30-5839-TS9-54(M)', NULL, '7000000965', '1999-12-08 00:00:00', 230, 233, 115, '9.711290103', 200, NULL, 3, NULL, 'MM3-KT5A', 22, 'YY0,D1', '109', '7', '1', '1', 15, NULL, 'MR', 'MI-800'),
(234, NULL, '45/5-30-5114-H02(M)', NULL, '7000000966', '1995-03-19 00:00:00', 230, 234, 115, 'A1Z69040T3', 200, NULL, 3, NULL, 'MM3-KT7A', 22, 'YY0,D1', '109', '13', '1', '1', 14, NULL, 'MR', 'MR3XMI 600 150/D 12211W'),
(235, NULL, '45/10-30-064-B001S', NULL, '7000000967', '1994-09-27 00:00:00', 115, 235, 22, '5A1588001', 25, NULL, 3, NULL, 'MM3-KT8A', 11, NULL, '109', '12', '1', '2', 16, NULL, 'DAIHEN', 'RER 2-70-17'),
(236, NULL, '45-C39466-8-2-30(46)IPP-S3-T', NULL, '7000002740', '2005-01-27 00:00:00', 500, 236, 230, '3900061.0', 333.329986572266, NULL, 1, NULL, 'MM3-KT9AA', 22, 'YY0,D11', '109', '25', '1', '1', 21, 'A', 'ABB', 'UCDRE1050/1800/III'),
(237, NULL, '45-C39466-8-2-30(46)IPP-S3-T', NULL, '7000002742', '2005-01-27 00:00:00', 500, 237, 230, '3900062.0', 333.329986572266, NULL, 1, NULL, 'MM3-KT9AB', 22, 'YY0,D11', '109', '25', '1', '1', 21, 'B', 'ABB', 'UCDRE1050/1800/III'),
(238, NULL, '45-C39466-8-2-30(46)IPP-S3-T', NULL, '7000002744', '2005-01-27 00:00:00', 500, 238, 230, '3900063.0', 333.329986572266, NULL, 1, NULL, 'MM3-KT9AC', 22, 'YY0,D11', '109', '25', '1', '1', 21, 'C', 'ABB', 'UCDRE1050/1800/III'),
(239, NULL, '45/5-30-5066-H18(E)', NULL, '7000000976', '1993-01-01 00:00:00', 115, 239, 22, 'EDP001201', 50, NULL, 3, NULL, 'MR-KT1A', 0, 'DY1', '112', '36', '1', '2', 20, NULL, 'MR', 'HIII      400');
INSERT INTO `transformer` (`id`, `version`, `contract`, `detail`, `egatsn`, `first_energize`, `hv`, `item`, `lv`, `manufacturingserial`, `maxcapacity`, `old_egatsn`, `phase`, `picture`, `transformer_name`, `tv`, `vector_group`, `first_substation`, `manufacturing`, `status`, `winding_type_id`, `brand_id`, `position`, `oltc_manufacturer`, `oltc_type`) VALUES
(240, NULL, '45/5-30-5069-H01(T)', NULL, '7000000977', '1995-01-04 00:00:00', 115, 240, 22, '8R8411T1', 50, NULL, 3, NULL, 'MR-KT2A', 0, 'DY1', '112', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(241, NULL, '45/0-30-5818 EGAT TS9-51(E)', NULL, '7000000981', '2003-03-14 00:00:00', 115, 241, 23, 'EDP011303', 50, NULL, 3, NULL, 'MS-KT1A', 0, 'DY1', '113', '36', '1', '2', 20, NULL, 'MR', 'HIII 400 D-123'),
(242, NULL, '45/0-30-5818 EGAT TS9-51(E)', NULL, '7000000982', '2000-12-18 00:00:00', 115, 242, 23, 'EDP011304', 50, NULL, 3, NULL, 'MS-KT2A', 0, 'DY1', '113', '36', '1', '2', 20, NULL, 'MR', 'HIII 400 D-123'),
(243, NULL, '45/7-30-0011-WE-03(F)', NULL, '7000000986', '2005-06-06 00:00:00', 115, 243, 23, 'AN69003T3-2', 25, NULL, 3, NULL, 'MTG-KT1A', 0, 'DYN1', NULL, '13', '1', '2', 14, NULL, 'FUJI', 'VLN/B3X800/WF9-3X800/30'),
(244, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000000988', '2001-03-08 00:00:00', 115, 244, 22, '57028.0', 50, NULL, 3, NULL, 'NA-KT1A', 0, 'DYN1', '114', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT 550/300'),
(245, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000000989', '2001-03-10 00:00:00', 115, 245, 22, '57025.0', 50, NULL, 3, NULL, 'NA-KT2A', 0, 'DYN1', '114', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT 550/300'),
(246, NULL, '45/8-30-0138-F001(FU)', NULL, '7000027920', '1986-01-01 00:00:00', 230, 246, 72.5, 'AX 69026T4', 200, NULL, 3, NULL, 'NB-KT1A', 11, 'YY0D1', '115', '13', '1', '1', 14, NULL, 'TRAFO UNION', 'ARSD2302/S621-S621/50-22(20)06'),
(247, NULL, '45/8-30-0138-F001(FU)', NULL, '7000027921', '1986-01-01 00:00:00', 230, 247, 72.5, 'AX 69026T3', 200, NULL, 3, NULL, 'NB-KT2A', 11, 'YY0D1', '115', '13', '1', '1', 14, NULL, 'TRAFO UNION', 'ARSD2302/S621-S621/50-22(20)06'),
(248, NULL, '45/5-30-5074-H22(A)', NULL, '7000027922', '1993-01-01 00:00:00', 230, 248, 72.5, '103711.0', 200, NULL, 3, NULL, 'NB-KT3A', 11, 'YY0D1', '115', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/600 IS'),
(249, NULL, 'P21/2514-A001', NULL, '7000027923', '1970-01-01 00:00:00', 69, 249, 11, '554711.0', 12.5, NULL, 3, NULL, 'NB-KT4A', 22, 'DY1', '115', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'URS-LD7'),
(250, NULL, 'P21/2514-A001', NULL, '7000027924', '1970-01-01 00:00:00', 69, 250, 11, '554709.0', 12.5, NULL, 3, NULL, 'NB-KT5A', 22, 'DY1', '115', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'URS-LD7'),
(251, NULL, '45/5-30-5074-H22(A)', NULL, '7000027925', '1993-01-01 00:00:00', 230, 251, 72.5, '103712.0', 200, NULL, 3, NULL, 'NB-KT6A', 11, 'YY0D1', '115', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/600 IS'),
(252, NULL, 'EGAT xx4', NULL, '7000027926', '1969-01-01 00:00:00', 115, 252, 69, '552428.0', 25, NULL, 3, NULL, 'NB-KT7A', 11, 'DY1', '115', '7', '1', '1', 15, NULL, 'MITSUBISHI', 'URS-LB6'),
(253, NULL, '45/8-30-0144-F001(M)', NULL, '7000017437', '1986-09-01 00:00:00', 115, 253, 22, '574412.0', 25, NULL, 3, NULL, 'NBL-KT1A', 11, NULL, '116', '7', '1', '3', 15, NULL, 'MR', 'MRMIII'),
(254, NULL, 'EGAT21/2514-A001', NULL, '7000017438', '1973-09-01 00:00:00', 115, 254, 22, '558036.0', 25, NULL, 3, NULL, 'NBL-KT2A', 11, NULL, '116', '7', '1', '3', 15, NULL, 'MR', 'MRMIII'),
(255, NULL, '45/0-30-5818-TS9-51(E)', NULL, '7000017453', '1990-09-01 00:00:00', 115, 255, 22, 'EDP011201', 25, NULL, 3, NULL, 'NBL-KT3A', 11, NULL, '116', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-40'),
(256, NULL, '45-1-30-5058-MM-EHVS-3-T(J)', NULL, '7000027932', '1990-01-01 00:00:00', 525, 256, 242, '94427.0', 200, NULL, 1, NULL, 'NCO-KT1AA', 22, 'YY0D1', '117', '23', '1', '1', 18, 'A', 'MR', 'TI1001-220/C-10193'),
(257, NULL, '45-1-30-5058-MM-EHVS-3-T(J)', NULL, '7000027933', '1990-01-01 00:00:00', 525, 257, 242, '94428.0', 200, NULL, 1, NULL, 'NCO-KT1AB', 22, 'YY0D1', '117', '23', '1', '1', 18, 'B', 'MR', 'TI1001-220/C-10193'),
(258, NULL, '45-1-30-5058-MM-EHVS-3-T(J)', NULL, '7000027934', '1990-01-01 00:00:00', 525, 258, 242, '94429.0', 200, NULL, 1, NULL, 'NCO-KT1AC', 22, 'YY0D1', '117', '23', '1', '1', 18, 'C', 'MR', 'TI1001-220/C-10193'),
(259, NULL, '45-1-30-5058-MM-EHVS-3-T(J)', NULL, '7000027935', '1990-01-01 00:00:00', 525, 259, 242, '94440.0', 200, NULL, 1, NULL, 'NCO-KT2AA', 22, 'YY0D1', '117', '23', '1', '1', 18, 'A', 'MR', 'TI1001-220/C-10193'),
(260, NULL, '45-1-30-5058-MM-EHVS-3-T(J)', NULL, '7000027936', '1990-01-01 00:00:00', 525, 260, 242, '94441.0', 200, NULL, 1, NULL, 'NCO-KT2AB', 22, 'YY0D1', '117', '23', '1', '1', 18, 'B', 'MR', 'TI1001-220/C-10193'),
(261, NULL, '45-1-30-5058-MM-EHVS-3-T(J)', NULL, '7000027937', '1990-01-01 00:00:00', 525, 261, 242, '94442.0', 200, NULL, 1, NULL, 'NCO-KT2AC', 22, 'YY0D1', '117', '23', '1', '1', 18, 'C', 'MR', 'TI1001-220/C-10193'),
(262, NULL, '45/0-30-0047-MM-EHVS2-T', NULL, '7000027938', '1988-01-01 00:00:00', 525, 262, 242, '8.8900014', 200, NULL, 1, NULL, 'NCO-KT3AA', 22, 'YY0,D1', '117', '6', '1', '1', 11, 'A', 'MR', 'TI1002-220/C-10171'),
(263, NULL, '45/0-30-0047-MM-EHVS2-T', NULL, '7000027939', '1988-01-01 00:00:00', 525, 263, 242, '8.8900015', 200, NULL, 1, NULL, 'NCO-KT3AB', 22, 'YY0,D1', '117', '6', '1', '1', 11, 'B', 'MR', 'TI1002-220/C-10171'),
(264, NULL, '45/0-30-0047-MM-EHVS2-T', NULL, '7000027940', '1988-01-01 00:00:00', 525, 264, 242, '8.8900016', 200, NULL, 1, NULL, 'NCO-KT3AC', 22, 'YY0,D1', '117', '6', '1', '1', 11, 'C', 'MR', 'TI1002-220/C-10171'),
(265, NULL, '45/0-30-5839-TS9-54(M)', NULL, '7000027941', '1999-01-01 00:00:00', 230, 265, 121, '9.711290104', 200, NULL, 3, NULL, 'NCO-KT4A', 22, 'YY0D1', '117', '7', '1', '1', 15, NULL, 'MR', 'MI800-170/B'),
(266, NULL, '45/5-30-5076-H22(J)', NULL, '7000027942', '1993-01-01 00:00:00', 230, 266, 121, '95399.0', 200, NULL, 3, NULL, 'NCO-KT5A', 22, 'YY0D1', '117', '23', '1', '1', 18, NULL, 'MR', 'MI601-150/C'),
(267, NULL, '45/5-30-5076-H22(J)', NULL, '7000027943', '1993-01-01 00:00:00', 230, 267, 121, '95400.0', 200, NULL, 3, NULL, 'NCO-KT6A', 22, 'YY0D1', '117', '23', '1', '1', 18, NULL, 'MR', 'MI601-150/C'),
(268, NULL, '45/18-064-B001S', NULL, '7000017268', '1976-01-01 00:00:00', 115, 268, 22, '5BA159012', 25, NULL, 3, NULL, 'NCS-KT1A', 0, 'DY1', '118', '12', '1', '2', 16, NULL, 'DAIHEN', 'RER'),
(269, NULL, '45/18-064-B001S', NULL, '7000017269', '1976-01-01 00:00:00', 115, 269, 22, '5BA159007', 25, NULL, 3, NULL, 'NCS-KT2A', 0, 'DY1', '118', '12', '1', '2', 16, NULL, 'DAIHEN', 'RER'),
(270, NULL, '45/6-30-5040-H01R(T)', NULL, '7000017278', '1993-01-01 00:00:00', 115, 270, 23, '8R9763T1', 50, NULL, 3, NULL, 'NCS-KT3A', 0, 'DY1', '118', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(271, NULL, '45/6-30-5056-MMS2', NULL, '7000017279', '1994-01-01 00:00:00', 115, 271, 23, '8R9911T8', 50, NULL, 3, NULL, 'NCS-KT4A', 0, 'DY1', '118', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(272, NULL, '45-C57530-3-2-7N(47)TS10-TX-02', NULL, '7000017284', '2004-01-01 00:00:00', 230, 272, 115, '8329837.0', 300, NULL, 3, NULL, 'NCS-KT5A', 22, 'YY0-D1', '118', '1', '1', '3', 13, NULL, 'ABB', 'UCGRT650/1050C'),
(273, NULL, '45-C57530-3-2-7N(47)TS10-TX-02', NULL, '7000017285', '2004-01-01 00:00:00', 230, 273, 115, '8329836.0', 300, NULL, 3, NULL, 'NCS-KT6A', 22, 'YY0-D1', '118', '1', '1', '3', 13, NULL, 'ABB', 'UCGRT650/1050C'),
(274, NULL, '45-C57530-3-2-7N(47)TS10-TX-02', NULL, '7000017286', '2004-01-01 00:00:00', 230, 274, 115, '8329835.0', 300, NULL, 3, NULL, 'NCS-KT7A', 22, 'YY0-D1', '118', '1', '1', '3', 13, NULL, 'ABB', 'UCGRT650/1050C'),
(275, NULL, '45/0-30-5858-RIP2-S3(E)', NULL, '7000017339', '1998-09-01 00:00:00', 115, 275, 22, 'EDP011903', 50, NULL, 3, NULL, 'NH-KT2A', 11, NULL, '119', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-40'),
(276, NULL, '45/0-30-5816-TS9-51(A)', NULL, '7000018223', '1997-09-01 00:00:00', 115, 276, 22, '56041.0', 50, NULL, 3, NULL, 'NK-KT1A', 11, NULL, '120', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN200/300'),
(277, NULL, '45/0-30-5816-TS9-51(A)', NULL, '7000018224', '1997-09-01 00:00:00', 115, 277, 22, '56042.0', 50, NULL, 3, NULL, 'NK-KT2A', 11, NULL, '120', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN200/300'),
(278, NULL, 'P29/2512-1223', NULL, '7000017925', '1983-09-01 00:00:00', 115, 278, 22, '5A1591001', 25, NULL, 3, NULL, 'NN-KT1A', 0, NULL, '122', '12', '1', '2', 16, NULL, 'MR', 'URS-LD7'),
(279, NULL, '45/6-30-0156-E001(K)', NULL, '7000017926', '1984-09-01 00:00:00', 115, 279, 22, 'AG69095T434', 25, NULL, 3, NULL, 'NN-KT2A', 11, NULL, '122', '13', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND701'),
(280, NULL, '45/5-30-5076-H22(J)', NULL, '7000017927', '1998-09-01 00:00:00', 230, 280, 121, '9.711290102', 200, NULL, 3, NULL, 'NN-KT4A', 22, NULL, '122', '7', '1', '1', 15, NULL, 'DAIHEN', '3xMI800 '),
(281, NULL, '45/9-30-5816-HVDC-03(AA)', NULL, '7000017928', '1996-09-01 00:00:00', 230, 281, 121, '5BK014201', 200, NULL, 3, NULL, 'NN-KT5A', 22, NULL, '122', '2', '1', '1', 17, NULL, 'MR', '3xMI600-150/C'),
(282, NULL, 'JOB NO.SE8403', NULL, '7000018017', '1971-09-01 00:00:00', 115, 282, 22, '5A0493001', 10, NULL, 3, NULL, 'NP-KT1A', 0, NULL, NULL, '12', '1', '2', 16, NULL, 'OSAKA', 'RER-2-70-17'),
(283, NULL, '47/7-30-0004-WE-02', NULL, '7000013053', '2009-01-01 00:00:00', 115, 283, 22, 'AN69051T11', 25, NULL, 3, NULL, 'NPO1-KT1A', 11, NULL, '126', '13', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND701/211-211/50-18(17)/0507'),
(284, NULL, '47/7-30-0004-WE-02', NULL, '7000013054', '2009-01-01 00:00:00', 115, 284, 22, 'AN69051T12', 25, NULL, 3, NULL, 'NPO1-KT2A', 11, NULL, '126', '13', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND701/211-211/50-18(17)/0507'),
(285, NULL, '45/2-30-5148-RY-NPO-01', NULL, '7000013065', '2009-01-01 00:00:00', 220, 285, 115, '5BK012401', 200, NULL, 3, NULL, 'NPO2-KT1A', 22, NULL, '127', '2', '1', '1', 17, NULL, 'MR', '3xMI1200-150/C'),
(286, NULL, '45/2-30-5148-RY-NPO-01', NULL, '7000013066', '2009-01-01 00:00:00', 220, 286, 115, '5BK012402', 200, NULL, 3, NULL, 'NPO2-KT2A', 22, NULL, '127', '2', '1', '1', 17, NULL, 'MR', '3xMI1200-150/C'),
(287, NULL, 'EGAT xx5', NULL, '7000013069', '1994-09-01 00:00:00', 220, 287, 115, NULL, 200, NULL, 3, NULL, 'NPO2-KT3A', 11, NULL, '127', '13', '1', '1', 14, NULL, '', ''),
(288, NULL, '45/2-30-5135-EGAT-G04(S)', NULL, '7000015147', '1991-10-30 00:00:00', 115, 288, 22, '338031.0', 50, NULL, 3, NULL, 'NR1-KT1A', 11, NULL, '128', '22', '1', '3', 10, NULL, 'MR', 'MIIIY500'),
(289, NULL, '45/2-30-5135-EGAT-G04(S)', NULL, '7000015155', '1991-10-25 00:00:00', 115, 289, 22, '338032.0', 50, NULL, 3, NULL, 'NR1-KT2A', 11, NULL, '128', '22', '1', '3', 10, NULL, 'MR', 'MIIIY500'),
(290, NULL, '45/7-30-5002-EGAT-ATP-17A', NULL, '7000015121', '1996-12-15 00:00:00', 115, 290, 22, '52045/001', 25, NULL, 3, NULL, 'NR1-KT3A', 11, NULL, '128', '40', '1', '3', 7, NULL, 'MR', 'MIIIY500'),
(291, NULL, '45/2-30-5135-EGAT-G04(S)', NULL, '7000015328', '1992-09-02 00:00:00', 115, 291, 22, '338027.0', 50, NULL, 3, NULL, 'NR2-KT1A', 11, NULL, '129', '22', '1', '3', 10, NULL, 'MR', 'MIIIY500'),
(292, NULL, '45/2-30-5135-EGAT-G04(S)', NULL, '7000015346', '1992-09-10 00:00:00', 115, 292, 22, '338026.0', 50, NULL, 3, NULL, 'NR2-KT2A', 11, NULL, '129', '22', '1', '3', 10, NULL, 'MR', 'MIIIY500'),
(293, NULL, '45-C62298-3-2-7N(47)TS10-TX04', NULL, '7000015428', '2005-09-29 00:00:00', 230, 293, 121, 'GBK604205', 300, NULL, 3, NULL, 'NR2-KT3A', 22, NULL, '129', '2', '1', '1', 17, NULL, 'MR', 'MI1230-170/C'),
(294, NULL, '45-C62298-3-2-7N(47)TS10-TX04', NULL, '7000015451', '2006-02-07 00:00:00', 230, 294, 121, 'GBK604203', 300, NULL, 3, NULL, 'NR2-KT4A', 22, NULL, '129', '2', '1', '1', 17, NULL, 'MR', '3xMI600-110/C-12211W'),
(295, NULL, '45-C62298-3-2-7N(47)TS10-TX04', NULL, '7000015497', '2006-02-12 00:00:00', 230, 295, 121, 'GBK604204', 300, NULL, 3, NULL, 'NR2-KT5A', 22, NULL, '129', '2', '1', '1', 17, NULL, 'MR', '3xMI600-110/C-12211W'),
(296, NULL, '45/5-30-5116-H02(MI)', NULL, '7000000993', '1995-03-21 00:00:00', 230, 296, 115, '9.274730101', 200, NULL, 3, NULL, 'NS-KT1A', 11, 'YYO, D1', '130', '7', '1', '1', 15, NULL, 'MR', '3X MI600'),
(297, NULL, '45/5-30-5069-H01(T)', NULL, '7000000994', '1995-06-22 00:00:00', 115, 297, 22, '8R8411T2', 50, NULL, 3, NULL, 'NS-KT2A', 0, 'DY1', '130', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(298, NULL, '45/6-30-5056-MMS2', NULL, '7000000995', '1995-09-24 00:00:00', 115, 298, 22, '8R9911T5', 50, NULL, 3, NULL, 'NS-KT3A', 0, 'DY1', '130', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(299, NULL, '45/5-30-5116-H02(MI)', NULL, '7000000996', '1995-05-22 00:00:00', 230, 299, 115, '9.274730102', 200, NULL, 3, NULL, 'NS-KT4A', 11, 'YYO, D1', '130', '7', '1', '1', 15, NULL, 'MR', '3X MI600'),
(300, NULL, '45/8-30-0228-E023', NULL, '7000000997', '1987-01-01 00:00:00', 115, 300, 22, '60908-001', 25, NULL, 3, NULL, 'NS-KT5A', 0, 'DYN1', '130', '19', '1', '2', 23, NULL, 'VOLTA-WERKE', 'XRSD2301/211/50-18'),
(301, NULL, '45/3-30-5059-ATP-01&02', NULL, '7000025211', '1991-08-26 00:00:00', 115, 301, 33, '8P9103T1', 50, NULL, 3, NULL, 'NT-KT1A', 11, 'YY0  D1', '131', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(302, NULL, '45/3-30-5059-ATP-01&02', NULL, '7000025212', '1991-08-22 00:00:00', 115, 302, 33, '8P9103T2', 50, NULL, 3, NULL, 'NT-KT2A', 11, 'YY0  D1', '131', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(303, NULL, '45/5-30-5116-H02(MI)', NULL, '7000025213', '1993-11-15 00:00:00', 230, 303, 121, '9.274720101', 200, NULL, 3, NULL, 'NT-KT3A', 33, 'YY0  D1', '131', '7', '1', '1', 15, NULL, 'MR', '3XMI 600 110/B12233W'),
(304, NULL, '45/5-30-5116-H02(MI)', NULL, '7000025214', '1996-05-28 00:00:00', 230, 304, 121, '9.374760101', 200, NULL, 3, NULL, 'NT-KT4A', 33, 'YY0  D1', '131', '7', '1', '1', 15, NULL, 'MR', '3XMI 600 110/B12233W'),
(305, NULL, '45/9-30-5834-GBA-10(J)/RB/1', NULL, '7000035518', '1987-01-01 00:00:00', 230, 305, 115, '96183.0', 200, NULL, 3, NULL, 'NV-KT1A', 22, NULL, NULL, '23', '1', '1', 18, NULL, 'MR', '3xMI802-170/C'),
(306, NULL, '45/6-30-0156-E001(K)', NULL, '7000025267', '2000-09-06 00:00:00', 115, 306, 33, 'AG690905T311', 25, NULL, 3, NULL, 'NW-KT1A', 11, 'YY0  D1', '132', '37', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND 701/211-211/50-18(17)/05'),
(307, NULL, '45/6-30-0156-E001(K)', NULL, '7000025268', '1988-05-13 00:00:00', 115, 307, 33, 'AG-69095T332', 25, NULL, 3, NULL, 'NW-KT2A', 11, 'YY0  D1', '132', '37', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND 701/211-211/50-18(17)/05'),
(308, NULL, '45/0-30-5858-RIP2-S3(E)', NULL, '7000025269', '2005-04-26 00:00:00', 115, 308, 34.5, 'EDP01201', 50, NULL, 3, NULL, 'NW-KT3A', 11, 'YY0D1', '132', '31', '1', '3', 17, NULL, 'MR', 'VIII 500Y'),
(309, NULL, '45/0-30-5818EGAT-TS9-51(E)', NULL, '7000000059', '2001-02-22 00:00:00', 115, 309, 23, 'EDP011307', 50, NULL, 3, NULL, 'NY-KT1A', 0, 'DYN1', '133', '36', '1', '2', 20, NULL, 'MR', 'HIII400D-123-10181W'),
(310, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000000060', '2001-02-24 00:00:00', 115, 310, 23, '8N5449T3', 50, NULL, 3, NULL, 'NY-KT2A', 0, 'DYN1', '133', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(311, NULL, '45/0-30-5803-EGAT-GBA-02', NULL, '7000027949', '1998-01-01 00:00:00', 230, 311, 115, 'GBK-600004', 300, NULL, 3, NULL, 'ON-KT1A', 22, 'YY0D1', '134', '2', '1', '1', 17, NULL, 'MR', 'MI1200-170/C-12211W'),
(312, NULL, '45/0-30-5803-EGAT-GBA-02', NULL, '7000027950', '1998-01-01 00:00:00', 230, 312, 115, 'GBK-600005', 300, NULL, 3, NULL, 'ON-KT2A', 22, 'YY0D1', '134', '2', '1', '1', 17, NULL, 'MR', 'MI1200-170/C-12211W'),
(313, NULL, '45/0-30-5818-TS9-51(E)', NULL, '7000000091', '1999-07-07 00:00:00', 115, 313, 22, 'EDP011302', 50, NULL, 3, NULL, 'PA1-KT1A', 0, NULL, '135', '36', '1', '2', 20, NULL, 'MR', 'HIII-400D-123'),
(314, NULL, '45/0-30-5818-TS9-51(E)', NULL, '7000000092', '1999-07-05 00:00:00', 115, 314, 22, 'EDP011308', 50, NULL, 3, NULL, 'PA1-KT2A', 0, NULL, '135', '36', '1', '2', 20, NULL, 'MR', 'HIII-400D-123'),
(315, NULL, '45/5-30-5115-H02(A)', NULL, '7000000095', '1996-02-01 00:00:00', 230, 315, 115, '103728.0', 200, NULL, 3, NULL, 'PA2-KT1A', 22, NULL, '136', '1', '1', '1', 13, NULL, 'ABB', '3xUCGRT650/600'),
(316, NULL, '45/5-30-5115-H02(A)', NULL, '7000000096', '1996-02-01 00:00:00', 230, 316, 115, '103729.0', 200, NULL, 3, NULL, 'PA2-KT2A', 22, NULL, '136', '1', '1', '1', 13, NULL, 'ABB', '3xUCGRT650/600'),
(317, NULL, '45/6-30-0140-E001(M)', NULL, '7000000087', '2002-04-24 00:00:00', 115, 317, 22, '573081.0', 25, NULL, 3, NULL, 'PA2-KT3A', 0, NULL, '136', '7', '1', '2', 15, NULL, 'MR', 'MRM'),
(318, NULL, '45/5-30-5067-H18(A)', NULL, '7000017222', '1998-01-25 00:00:00', 115, 318, 23, '5002.0', 50, NULL, 3, NULL, 'PB-KT1A', 0, 'DY1', '137', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(319, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000017208', '2000-07-21 00:00:00', 115, 319, 22, '8N5450T1', 50, NULL, 3, NULL, 'PB-KT2A', 0, 'DY1', '137', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(320, NULL, '45/3-83-0188-7928', NULL, '7000001001', '1982-06-22 00:00:00', 115, 320, 22, 'H67440-06', 25, NULL, 3, NULL, 'PC-KT1A', 0, 'DY1', '138', '41', '1', '2', 7, NULL, 'ALSTHOM', 'MAC27'),
(321, NULL, '45/6-30-0140-E001M', NULL, '7000001002', '1985-12-17 00:00:00', 115, 321, 22, '573088.0', 25, NULL, 3, NULL, 'PC-KT2A', 0, 'DY1', '138', '7', '1', '2', 15, NULL, 'MITSUBICHI', 'MRMIII-800-110F/C-10171W-MA7A'),
(322, NULL, '45/3-83-0188-7928', NULL, '7000001003', '1981-01-01 00:00:00', 115, 322, 22, 'H67440-02', 25, NULL, 3, NULL, 'PC-KT3A', 0, 'DY1', '138', '41', '1', '2', 7, NULL, 'ALSTHOM', 'MAC27'),
(323, NULL, '45/5-30-5030-H01(A)', NULL, '7000015586', '1996-08-02 00:00:00', 115, 323, 22, '52015.0', 50, NULL, 3, NULL, 'PCH-KT1A', 11, NULL, '139', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN380/300'),
(324, NULL, '45/5-30-5030-H01(A)', NULL, '7000015576', '1996-08-04 00:00:00', 115, 324, 22, '52016.0', 50, NULL, 3, NULL, 'PCH-KT2A', 11, NULL, '139', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN500/300'),
(325, NULL, '45-N96201-8-30(44)IPP-S2-T', NULL, '7000000135', '2002-08-20 00:00:00', 525, 325, 242, '1900067.0', 333.329986572266, NULL, 1, NULL, 'PDG-KT1AA', 22, NULL, '140', '6', '1', '1', 11, 'A', 'ABB', 'UCDRE1050/1800/III'),
(326, NULL, '45-N96201-8-30(44)IPP-S2-T', NULL, '7000000136', '2007-07-31 00:00:00', 525, 326, 242, '2.1793604', 333.329986572266, NULL, 1, NULL, 'PDG-KT1AB', 22, NULL, '140', '41', '1', '1', 7, 'B', 'ABB', 'UCDRE1050/1800/III'),
(327, NULL, '45-N96201-8-30(44)IPP-S2-T', NULL, '7000000137', '2002-08-20 00:00:00', 525, 327, 242, '1900069.0', 333.329986572266, NULL, 1, NULL, 'PDG-KT1AC', 22, NULL, '140', '6', '1', '1', 11, 'C', 'ABB', 'UCDRE1050/1800/III'),
(328, NULL, '45-N63795-8-2-30(42)IPP-S1-T', NULL, '7000000138', '2002-08-20 00:00:00', 525, 328, 242, '2.1793601', 333.329986572266, NULL, 1, NULL, 'PDG-KT2AA', 22, NULL, '140', '41', '1', '1', 7, 'A', 'ABB', 'UCDRE1050/1800/III'),
(329, NULL, '45-N63795-8-2-30(42)IPP-S1-T', NULL, '7000000139', '2002-08-20 00:00:00', 525, 329, 242, '2.1793602', 333.329986572266, NULL, 1, NULL, 'PDG-KT2AB', 22, NULL, '140', '41', '1', '1', 7, 'B', 'ABB', 'UCDRE1050/1800/III'),
(330, NULL, '45-N63795-8-2-30(42)IPP-S1-T', NULL, '7000000140', '2002-08-20 00:00:00', 525, 330, 242, '2.1793603', 333.329986572266, NULL, 1, NULL, 'PDG-KT2AC', 22, NULL, '140', '41', '1', '1', 7, 'C', 'ABB', 'UCDRE1050/1800/III'),
(331, NULL, '45/5-30-5116-H02(MI)', NULL, '7000000141', '1993-01-01 00:00:00', 230, 331, 115, '9.374750103', 200, NULL, 3, NULL, 'PDG-KT3A', 22, NULL, '140', '7', '1', '1', 15, NULL, 'MR', '3xMI600'),
(332, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000001006', '2001-09-18 00:00:00', 115, 332, 22, '57023.0', 50, NULL, 3, NULL, 'PE-KT1A', 0, 'DYN1', '141', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(333, NULL, '45/18-030-064-B001S', NULL, '7000001007', '1987-11-22 00:00:00', 115, 333, 22, '5BA159009', 25, NULL, 3, NULL, 'PE-KT2A', 0, 'DY1', '141', '12', '1', '2', 16, NULL, 'DAIHEN', 'RER-2-70-17'),
(334, NULL, '45/6-30-0156-E001(K)', NULL, '7000018105', '1984-09-01 00:00:00', 115, 334, 22, 'AG69095T436', 25, NULL, 3, NULL, 'PHK-KT1A', 11, NULL, '143', '13', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND701/211-211/50-18(17)/0507'),
(335, NULL, 'CRND701/211-211/5-18(17)-0507', NULL, '7000018106', '1984-09-01 00:00:00', 115, 335, 22, 'AG69095T437', 25, NULL, 3, NULL, 'PHK-KT2A', 11, NULL, '143', '13', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND701/211-211/50-18(17)/0507'),
(336, NULL, '45/0-30-5818-TS9-51(E)', NULL, '7000018107', '1997-09-01 00:00:00', 115, 336, 22, 'EDP011204', 50, NULL, 3, NULL, 'PHK-KT3A', 11, NULL, '143', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-30'),
(337, NULL, '45/5-30-5067-H18(A)', NULL, '7000025219', '1995-03-07 00:00:00', 115, 337, 34.5, '5004.0', 50, NULL, 3, NULL, 'PK1-KT1A', 11, 'YY0  D1', '144', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN 380/300'),
(338, NULL, '45/5-30-5070-H01(H)', NULL, '7000025220', '1995-03-10 00:00:00', 115, 338, 34.5, 'T933002', 50, NULL, 3, NULL, 'PK1-KT2A', 11, 'YY0  D1', '144', '30', '1', '3', 25, NULL, 'MR', 'VIII 500Y-60'),
(339, NULL, '45/6-30-0156-E001(K)', NULL, '7000025223', '1985-09-16 00:00:00', 115, 339, 33, 'AG-69095T331', 25, NULL, 3, NULL, 'PK2-KT1A', 11, 'YY0  D1', '145', '37', '1', '3', 14, NULL, 'FUJI', 'CRND701/211-211/50-18(17)0507'),
(340, NULL, '45/8-30-0144-F001(M)', NULL, '7000025224', '1987-08-21 00:00:00', 115, 340, 33, '574406.0', 25, NULL, 3, NULL, 'PK2-KT2A', 11, 'YY0  D1', '145', '7', '1', '3', 15, NULL, 'MITSUBISHI', 'MIII 600-110B/C'),
(341, NULL, '45/2-30-0049-WC001', NULL, '7000025225', '1994-04-07 00:00:00', 115, 341, 33, '6.0491001', 25, NULL, 3, NULL, 'PK2-KT3A', 11, 'YY0  D1', '145', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND110/211/5-18'),
(342, NULL, '45/2-30-0050-C001B', NULL, '7000025226', '1994-04-10 00:00:00', 115, 342, 33, '6.0548001', 25, NULL, 3, NULL, 'PK2-KT4A', 11, 'YY0  D1', '145', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND110/211/5-18'),
(343, NULL, '45/5-30-5030-H01(A)', NULL, '7000015685', '1995-08-18 00:00:00', 115, 343, 22, '52014.0', 50, NULL, 3, NULL, 'PKC-KT1A', 11, NULL, '146', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN380/300…BUF3'),
(344, NULL, '45/1-30-5804-TS9-56(M)', NULL, '7000015701', '2001-03-20 00:00:00', 115, 344, 22, '9.912790104', 50, NULL, 3, NULL, 'PKC-KT2A', 11, NULL, '146', '7', '1', '3', 15, NULL, 'MR', 'MII500Y1'),
(345, NULL, '45-5-30-0140-E001M', NULL, '7000017156', '1993-07-10 00:00:00', 115, 345, 22, '573069.0', 40, NULL, 3, NULL, 'PKK-KT1A', 0, 'DY1', '147', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'DRI 300-120/T2-1018G-DM2'),
(346, NULL, '47/5-30-0010-8101T', NULL, '7000017132', '1984-02-06 00:00:00', 230, 346, 115, 'AE69025T7-1', 100, NULL, 3, NULL, 'PKK-KT2A', 22, 'YY0-D1', '147', '13', '1', '1', 14, NULL, 'FUJI', '3XARSD3252/321-321/50-22(20)/0'),
(347, NULL, '47/5-30-0010-8101T', NULL, '7000017133', '1984-02-06 00:00:00', 230, 347, 115, 'AE69025T7-2', 100, NULL, 3, NULL, 'PKK-KT3A', 22, 'YY0-D1', '147', '13', '1', '1', 14, NULL, 'FUJI', '3XARSD 3252/321-321/50-22(20)/'),
(348, NULL, '45-5-30-0140-E001M', NULL, '7000017225', '1997-11-26 00:00:00', 115, 348, 22, '573070.0', 40, NULL, 3, NULL, 'PKK-KT4A', 0, 'DY1', '147', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'DRI 300-120/T2-1018G-DM2'),
(349, NULL, '45/3-30-5059-ATP01&02', NULL, '7000001010', '1992-08-18 00:00:00', 115, 349, 23, '8P9094T1', 50, NULL, 3, NULL, 'PL1-KT1A', 0, 'DY1', '148', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT 650/300'),
(350, NULL, '45/3-30-5059-ATP01&02', NULL, '7000001011', '1996-07-23 00:00:00', 115, 350, 23, '8P9094T2', 50, NULL, 3, NULL, 'PL1-KT2A', 0, 'DY1', '148', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT 650/300'),
(351, NULL, '45/3-30-5079-EGAT-ATP01&02(M)', NULL, '7000001023', '1997-01-02 00:00:00', 230, 351, 121, '5BK012802', 200, NULL, 3, NULL, 'PL2-KT1A', 22, 'YY0 D1', '149', '2', '1', '1', 17, NULL, 'MR', 'M1 600-150/C'),
(352, NULL, 'EGAT xx6', NULL, '7000001024', '1996-05-28 00:00:00', 115, 352, 22, '5A0179002', 12.5, NULL, 3, NULL, 'PL2-KT2A', 0, 'D Y1', '149', '12', '1', '2', 16, NULL, 'DAIHEN', 'LT-6C17'),
(353, NULL, 'EGAT xx7', NULL, '7000001025', '1988-03-22 00:00:00', 115, 353, 22, '5A0179003', 12.5, NULL, 3, NULL, 'PL2-KT3A', 0, 'D Y1', '149', '12', '1', '2', 16, NULL, 'DAIHEN', 'LT-6C17'),
(354, NULL, '45/1-30-5807-TS9-55', NULL, '7000001026', '2005-01-04 00:00:00', 230, 354, 121, '9.812810103', 200, NULL, 3, NULL, 'PL2-KT4A', 22, NULL, '149', '7', '1', '1', 15, NULL, 'MR', 'M1-800'),
(355, NULL, '45/6-30-0156-E001(K)', NULL, '7000025230', '2007-05-29 00:00:00', 115, 355, 33, 'AG-69095T323', 25, NULL, 3, NULL, 'PN-KT1A', 11, 'YY0  D1', '151', '37', '1', '3', 14, NULL, 'FUJI', 'CRND701/211-211/50-18(17)0507'),
(356, NULL, '47/7-30-0001-WE-01', NULL, '7000025231', '1998-01-09 00:00:00', 115, 356, 33, 'AN-69001T21-1', 25, NULL, 3, NULL, 'PN-KT2A', 11, 'YY0  D1', '151', '37', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND701/211-211/50-18(17)0507'),
(357, NULL, '45/2-30-0049-WC001', NULL, '7000013036', '1978-09-01 00:00:00', 115, 357, 22, '6.0540001', 31.5, NULL, 3, NULL, 'PO-KT1A', 11, NULL, '152', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND110/211/5-18'),
(358, NULL, '45/6-30-0156-E001(K)', NULL, '7000013037', '1984-09-01 00:00:00', 115, 358, 22, 'AG69095T435', 25, NULL, 3, NULL, 'PO-KT2A', 11, NULL, '152', '13', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND701/211-211/50-18(17)/050'),
(359, NULL, '45/8-30-0144-F001(M)', NULL, '7000012898', '1985-09-01 00:00:00', 115, 359, 22, '574413.0', 25, NULL, 3, NULL, 'POT-KT1A', 11, NULL, '153', '7', '1', '3', 15, NULL, 'MITSUBISHI', 'MRMIII600-110B/C-10181G-MA7-A'),
(360, NULL, '45/1-30-5804-TS9-56(M)', NULL, '7000012910', '1999-09-01 00:00:00', 115, 360, 22, '9.912790101', 50, NULL, 3, NULL, 'POT-KT2A', 11, NULL, '153', '7', '1', '3', 15, NULL, 'MR', 'MIII500Y'),
(361, NULL, '45/8-30-0144-F001(M)', NULL, '7000012899', '1985-09-01 00:00:00', 115, 361, 22, '574411.0', 25, NULL, 3, NULL, 'POT-KT3A', 11, NULL, '153', '7', '1', '3', 15, NULL, 'MITSUBISHI', 'MRMIII600-110B/C-10181G-MA7-A'),
(362, NULL, 'EGAT 45/0-30-5816-EGAT TS9-51', NULL, '7000025185', '1999-03-03 00:00:00', 115, 362, 34.5, '56045.0', 50, NULL, 3, NULL, 'PP-KT1A', 11, 'YY0  D1', '154', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN 200/300'),
(363, NULL, 'EGAT 45/0-30-5816-EGAT TS9-51', NULL, '7000025186', '2005-03-16 00:00:00', 115, 363, 34.5, '56046.0', 50, NULL, 3, NULL, 'PP-KT2A', 11, 'YY0  D1', '154', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN 200/300'),
(364, NULL, 'EGAT 45/5-30-5069-H01(T)', NULL, '7000001027', '1994-07-08 00:00:00', 115, 364, 22, '8R8407T1', 50, NULL, 3, NULL, 'PR-KT1A', 0, 'DYN1', '155', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(365, NULL, 'EGAT 45/5-30-5069-H01(T)', NULL, '7000001028', '1994-07-05 00:00:00', 115, 365, 22, '8R8407T2', 50, NULL, 3, NULL, 'PR-KT2A', 0, 'DYN1', '155', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(366, NULL, '45/5-30-5069-HO1(T)', NULL, '7000017221', '2006-11-24 00:00:00', 115, 366, 22, '8R8408T2', 50, NULL, 3, NULL, 'PRB-KT1A', 0, 'DY1', '156', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(367, NULL, '45/3-30-5059-EGAT-ATP01&02', NULL, '7000017206', '2006-11-20 00:00:00', 115, 367, 22, '8P9086T1', 50, NULL, 3, NULL, 'PRB-KT2A', 0, 'DY1', '156', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(368, NULL, '45/0-30-5815-EGAT-TS9-51(T)', NULL, '7000000063', '1998-04-03 00:00:00', 115, 368, 23, '8T9668T3', 50, NULL, 3, NULL, 'PTB-KT1A', 0, 'DYN1', '157', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(369, NULL, '45/8-30-5033-RIP-S2', NULL, '7000000064', '1996-05-05 00:00:00', 115, 369, 23, '8S9483T2', 50, NULL, 3, NULL, 'PTB-KT2A', 0, 'DYN1', '157', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(370, NULL, '45/3-83-0198-7928', NULL, '7000000037', '2008-02-10 00:00:00', 230, 370, 121, '92199.0', 200, NULL, 3, NULL, 'PTG-KT1A', 33, NULL, NULL, '23', '1', '1', 18, NULL, 'MR', '3xMI802'),
(371, NULL, '45/8-30-0144-F001(M)', NULL, '7000025272', '1986-11-26 00:00:00', 115, 371, 33, '574408.0', 25, NULL, 3, NULL, 'PTN-KT1A', 11, 'YY0  D1', '158', '7', '1', '3', 15, NULL, 'MR', 'MRMIII 600-110B/C-10181G'),
(372, NULL, '45/8-30-0144-F001(M)', NULL, '7000025273', '1986-11-26 00:00:00', 115, 372, 33, '574409.0', 25, NULL, 3, NULL, 'PTN-KT2A', 11, 'YY0  D1', '158', '7', '1', '3', 15, NULL, 'MR', 'MRMIII 600-110B/C-10181G'),
(373, NULL, '45/6-30-0156-E001(K)', NULL, '7000025274', '1992-12-03 00:00:00', 115, 373, 33, 'AG690905T313', 25, NULL, 3, NULL, 'PTN-KT3A', 11, 'YY0  D1', '158', '37', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND 701/211-211/50-18(17)/05'),
(374, NULL, '45/10-30-5829-TS9-52', NULL, '7000025277', '1998-10-30 00:00:00', 115, 374, 33, '8T9788T3', 50, NULL, 3, NULL, 'PU-KT1A', 11, 'YY0  D1', '159', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(375, NULL, '45/8-30-5805-HVDC-03', NULL, '7000034261', '1997-05-18 00:00:00', 230, 375, 121, '5BK013802', 200, NULL, 3, NULL, 'PU-KT2A', 33, 'YY0,D1', '159', '2', '1', '1', 17, NULL, 'MR', 'MI 600-150/C'),
(376, NULL, '45/10-30-5829-TS9-52', NULL, '7000025278', '1998-10-27 00:00:00', 115, 376, 33, '8T9788T4', 50, NULL, 3, NULL, 'PU-KT3A', 11, 'YY0  D2', '159', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(377, NULL, '45/1-30-5807-TS9-55', NULL, '7000025279', '2005-04-26 00:00:00', 230, 377, 120, '9.812811101', 200, NULL, 3, NULL, 'PU-KT4A', 33, 'YY0D1', '159', '7', '1', '1', 15, NULL, 'MR', 'MI-800'),
(378, NULL, '45/5-30-5069-H01(T)', NULL, '7000001031', '2005-02-20 00:00:00', 115, 378, 23, '8R8402T1', 50, NULL, 3, NULL, 'PY-KT1A', 0, 'DYN1', '160', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(379, NULL, '45/5-30-5069-H01(T)', NULL, '7000001032', '2003-11-11 00:00:00', 115, 379, 23, '8R8393T1', 50, NULL, 3, NULL, 'PY-KT2A', 0, 'DYN1', '160', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(380, NULL, '45/2-30-0049-WC001', NULL, '7000012992', '1979-09-01 00:00:00', 115, 380, 22, '6.0492002', 25, NULL, 3, NULL, 'PYK-KT1A', 11, NULL, '161', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND'),
(381, NULL, '45/0-30-5858-RIP2-S3(E)', NULL, '7000013010', '1998-09-01 00:00:00', 115, 381, 22, 'EDP011901', 50, NULL, 3, NULL, 'PYK-KT2A', 11, NULL, '161', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-40'),
(382, NULL, '45/5-30-5066 EGAT - H53', NULL, '7000025235', '1995-04-28 00:00:00', 115, 382, 34.5, 'EDP0014-1B', 50, NULL, 3, NULL, 'RA-KT1A', 11, 'YY0', '162', '7', '1', '3', 15, NULL, 'MR', 'VIII 500Y-30'),
(383, NULL, '45/5-30-5066-H53', NULL, '7000025236', '1997-03-28 00:00:00', 115, 383, 34.5, 'T933027', 50, NULL, 3, NULL, 'RA-KT2A', 11, 'YY0D', '162', '19', '1', '3', 23, NULL, 'MR', 'VIII 500Y-60'),
(384, NULL, '45/0-30-5817-TS9-51(AR)', NULL, '7000017213', '2000-06-23 00:00:00', 115, 384, 23, '56032.0', 50, NULL, 3, NULL, 'RB1-KT1A', 0, 'DYN1', '163', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(385, NULL, '45/18-046-B001S', NULL, '7000017203', '1994-10-19 00:00:00', 115, 385, 22, '5BA159006', 25, NULL, 3, NULL, 'RB1-KT2A', 0, 'DY1', '163', '12', '1', '2', 16, NULL, 'DAIHEN', 'RER-2-70-17'),
(386, NULL, 'EGAT xx8', NULL, '7000035576', '1984-02-08 00:00:00', 230, 386, 115, 'AE69025T4', 200, NULL, 3, NULL, 'RB2-KT1A', 22, NULL, '164', '13', '1', '1', 14, NULL, 'TRAFO-UNION', '3xRER-2-70-17'),
(387, NULL, '45/0-30-5817-EGAT TS9-51(AR)', NULL, '7000017175', '2000-12-14 00:00:00', 115, 387, 22, '56031.0', 50, NULL, 3, NULL, 'RB2-KT2A', 0, 'DY1', '164', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(388, NULL, '45/5-30-0194-8101E', NULL, '7000017113', '1993-09-01 00:00:00', 115, 388, 22, 'AE69025T2', 25, NULL, 3, NULL, 'RB2-KT3A', 0, 'DY1', '164', '13', '1', '2', 14, NULL, 'FUJI', 'VCN/B 3X800/WWF5-3X800/30'),
(389, NULL, '45-C73927-3-2-7N(48)TS10-TX-05', NULL, '7000017247', '2007-05-31 00:00:00', 230, 389, 121, 'GBK604902', 300, NULL, 3, NULL, 'RB2-KT4A', 22, 'YD1', '164', '2', '1', '1', 17, NULL, 'MR', 'MI1203-170/C'),
(390, NULL, '45-C73927-3-2-7N(48)TS10-TX-05', NULL, '7000017158', '2007-05-11 00:00:00', 230, 390, 121, 'GBK604903', 300, NULL, 3, NULL, 'RB2-KT5A', 22, 'YD1', '164', '2', '1', '1', 17, NULL, 'MR', 'MI1203-170/C'),
(391, NULL, '45/0-30-5801-RB-EHVS1-T', NULL, '7000017168', '1999-12-13 00:00:00', 525, 391, 242, '217841.08', 250, NULL, 1, NULL, 'RB3-KT1AA', 22, 'YY0-D1', '165', '40', '1', '1', 7, 'A', 'MR', 'RMI 1502 300/C'),
(392, NULL, '45/0-30-5801-RB-EHVS1-T', NULL, '7000017169', '1999-12-13 00:00:00', 525, 392, 242, '217841.09', 250, NULL, 1, NULL, 'RB3-KT1AB', 22, 'YY0-D1', '165', '40', '1', '1', 7, 'B', 'MR', 'RMI 1502 300/C'),
(393, NULL, '45/0-30-5801-RB-EHVS1-T', NULL, '7000017170', '1999-12-13 00:00:00', 525, 393, 242, '217841.1', 250, NULL, 1, NULL, 'RB3-KT1AC', 22, 'YY0-D1', '165', '40', '1', '1', 7, 'C', 'MR', 'RMI 1502 300/C'),
(394, NULL, '45/9-30-5834-GBA-01(J)/RBL1', NULL, '7000017211', '1998-11-22 00:00:00', 230, 394, 115, '96182.0', 200, NULL, 3, NULL, 'RB3-KT1B', 22, 'YY0-D1', '165', '23', '1', '1', 18, NULL, 'MR', 'MI802'),
(395, NULL, '45/0-30-5801-RB-EHVS1-T', NULL, '7000017171', '1999-12-13 00:00:00', 525, 395, 242, '217841.12', 250, NULL, 1, NULL, 'RB3-KT2AA', 22, 'YY0-D1', '165', '40', '1', '1', 7, 'A', 'MR', 'RMI 1502 300/C'),
(396, NULL, '45/0-30-5801-RB-EHVS1-T', NULL, '7000017172', '1999-12-13 00:00:00', 525, 396, 242, '217841.13', 250, NULL, 1, NULL, 'RB3-KT2AB', 22, 'YY0-D1', '165', '40', '1', '1', 7, 'B', 'MR', 'RMI 1502 300/C'),
(397, NULL, '45/0-30-5801-RB-EHVS1-T', NULL, '7000017173', '1999-12-13 00:00:00', 525, 397, 242, '217841.14', 250, NULL, 1, NULL, 'RB3-KT2AC', 22, 'YY0-D1', '165', '40', '1', '1', 7, 'C', 'MR', 'RMI 1502 300/C'),
(398, NULL, '45/9-30-5834-GBA-01(J)/RBL1', NULL, '7000017212', '1998-11-22 00:00:00', 230, 398, 115, '96183.0', 200, NULL, 3, NULL, 'RB3-KT2B', 22, 'YY0-D1', '165', '23', '1', '1', 18, NULL, 'MR', 'MI802'),
(399, NULL, '45/0-30-5815-TS9-51(T)/RBL1', NULL, '7000017138', '1998-07-06 00:00:00', 115, 399, 23, '8T9664T2', 50, NULL, 3, NULL, 'RB3-KT3B', 0, 'DY1', '165', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(400, NULL, '45/9-30-5834-GBA-01(J)/RBL1', NULL, '7000017139', '1998-07-06 00:00:00', 115, 400, 23, '8T9664T2', 50, NULL, 3, NULL, 'RB3-KT4B', 0, 'DY1', '165', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(401, NULL, '45/2-30-5025-G02(S)', NULL, '7000013070', '1989-09-01 00:00:00', 115, 401, 22, '8.90900052', 50, NULL, 3, NULL, 'RE-KT1A', 11, NULL, '166', '6', '1', '3', 11, NULL, 'MR', 'VIIIY350'),
(402, NULL, '47/2-30-5046-EGAT-G04(T)', NULL, '7000013071', '2009-01-01 00:00:00', 115, 402, 22, '338030.0', 50, NULL, 3, NULL, 'RE-KT2A', 11, NULL, '166', '22', '1', '3', 10, NULL, 'MR', 'MIII500Y-10191G'),
(403, NULL, '45/3-30-5001-8813(9001)', NULL, '7000013072', '1991-09-01 00:00:00', 230, 403, 121, '9.190002', 200, NULL, 3, NULL, 'RE-KT3A', 22, NULL, '166', '6', '1', '1', 11, NULL, 'MR', '3xMI600-110/C-12211W'),
(404, NULL, '45/2-30-5001-8813(9001)', NULL, '7000013073', '1991-09-01 00:00:00', 230, 404, 121, '9.1900021', 200, NULL, 3, NULL, 'RE-KT4A', 22, NULL, '166', '6', '1', '1', 11, NULL, 'MR', '3xMI600-110/C-12211W'),
(405, NULL, '45-C97418-2-2-30(49)2005-Tx.-03', NULL, '7000013076', '2007-09-01 00:00:00', 525, 405, 242, '07MK410103', 333.329986572266, NULL, 1, NULL, 'RE2-KT1AA', 22, NULL, NULL, '7', '1', '1', 15, 'A', 'MR', 'RI2003-300/D-10 193'),
(406, NULL, '45-C97418-2-2-30(49)2005-Tx.-03', NULL, '7000013077', '2007-09-01 00:00:00', 525, 406, 242, '07MK410103', 333.329986572266, NULL, 1, NULL, 'RE2-KT1AB', 22, NULL, NULL, '7', '1', '1', 15, 'B', 'MR', 'RI2003-300/D-10 193'),
(407, NULL, '45-C97418-2-2-30(49)2005-Tx.-03', NULL, '7000013078', '2007-09-01 00:00:00', 525, 407, 242, '07MK410103', 333.329986572266, NULL, 1, NULL, 'RE2-KT1AC', 22, NULL, NULL, '7', '1', '1', 15, 'C', 'MR', 'RI2003-300/D-10 193'),
(408, NULL, '45-C97418-2-2-30(49)2005-Tx.-03', NULL, '7000013079', '2007-09-01 00:00:00', 525, 408, 242, '07MK410104', 333.329986572266, NULL, 1, NULL, 'RE2-KT2AA', 22, NULL, NULL, '7', '1', '1', 15, 'A', 'MR', 'RI2003-300/D-10 193'),
(409, NULL, '45-C97418-2-2-30(49)2005-Tx.-03', NULL, '7000013080', '2007-09-01 00:00:00', 525, 409, 242, '07MK410104', 333.329986572266, NULL, 1, NULL, 'RE2-KT2AB', 22, NULL, NULL, '7', '1', '1', 15, 'B', 'MR', 'RI2003-300/D-10 193'),
(410, NULL, '45-C97418-2-2-30(49)2005-Tx.-03', NULL, '7000013081', '2007-09-01 00:00:00', 525, 410, 242, '07MK410104', 333.329986572266, NULL, 1, NULL, 'RE2-KT2AC', 22, NULL, NULL, '7', '1', '1', 15, 'C', 'MR', 'RI2003-300/D-10 193'),
(411, NULL, 'EGAT 45/2-30-0049-C001', NULL, '7000025189', '1981-09-11 00:00:00', 115, 411, 33, '60538-001', 25, NULL, 3, NULL, 'RN-KT1A', 11, 'YY0  D1', '167', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND110/211/5-1'),
(412, NULL, 'EGAT 45/2-30-0049-WC001', NULL, '7000025190', '1993-03-26 00:00:00', 115, 412, 33, '60494-001', 25, NULL, 3, NULL, 'RN-KT2A', 11, 'YY0  D1', '167', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND110/211/5-1'),
(413, NULL, '45/6-30-5050-H20', NULL, '7000027952', '1995-01-01 00:00:00', 230, 413, 72.5, 'N408036', 300, NULL, 3, NULL, 'RPS-KT1A', 22, 'YY0D1', '169', '9', '1', '1', 8, NULL, 'MR', 'MI1200-72.5/B-12233W'),
(414, NULL, '45/6-30-5050-H20', NULL, '7000027953', '1999-01-01 00:00:00', 230, 414, 72.5, 'N422375', 300, NULL, 3, NULL, 'RPS-KT2A', 22, 'YY0D1', '169', '26', '1', '1', 4, NULL, 'MR', 'MI1200-123/B-12233W'),
(415, NULL, '45/2-30-5007-EGAT-G05(M)', NULL, '7000027956', '1989-01-01 00:00:00', 230, 415, 72.5, '8946783.0', 200, NULL, 3, NULL, 'RS-KT1A', 11, 'YY0D1', '170', '24', '1', '1', 6, NULL, 'MR', 'MI601-150/B'),
(416, NULL, '45/2-30-5007-EGAT-G05(M)', NULL, '7000027957', '1989-01-01 00:00:00', 230, 416, 72.5, '8946785.0', 200, NULL, 3, NULL, 'RS-KT2A', 11, 'YY0D1', '170', '24', '1', '1', 6, NULL, 'MR', 'MI601-150/B'),
(417, NULL, '45/0-30-0052-8604', NULL, '7000027958', '1987-01-01 00:00:00', 230, 417, 72.5, 'AG69005T1', 200, NULL, 3, NULL, 'RS-KT4A', 11, 'YY0,D1', '170', '13', '1', '1', 14, NULL, 'TRAFO UNION', 'ARSD1021'),
(418, NULL, '45/1-30-5811-GBA-06(G)', NULL, '7000027959', '2000-01-01 00:00:00', 230, 418, 115, '217914-01', 300, NULL, 3, NULL, 'RS-KT5A', 22, 'YY0D1', '170', '41', '1', '1', 7, NULL, 'MR', 'MI1200-170/C-12233W'),
(419, NULL, '45/9-30-5833-GBA-01(AE)', NULL, '7000027960', '1997-01-01 00:00:00', 230, 419, 115, '2.7505', 300, NULL, 3, NULL, 'RS-KT6A', 22, 'YY0D1', '170', '44', '1', '1', 3, NULL, 'MR', 'MI1200-170/D-12233W'),
(420, NULL, '45/2-30-5007-EGAT-G05(M)', NULL, '7000027961', '1989-01-01 00:00:00', 230, 420, 72.5, '8946784.0', 200, NULL, 3, NULL, 'RS-KT7A', 11, 'YY0D1', '170', '24', '1', '1', 6, NULL, 'MR', 'MI601-150/B'),
(421, NULL, '45/9-30-5833-GBA-01(AE)', NULL, '7000027962', '1997-01-01 00:00:00', 230, 421, 121, '2.7505', 300, NULL, 3, NULL, 'RS-KT8A', 22, 'YY0D1', '170', '44', '1', '1', 3, NULL, 'MR', 'MI1200-170/D-12233W'),
(422, NULL, '45/0-30-5818-TS9-51(E)', NULL, '7000000161', '1997-01-01 00:00:00', 115, 422, 23, 'EOP011301', 50, NULL, 3, NULL, 'RY1-KT1A', 0, NULL, '171', '36', '1', '2', 20, NULL, 'MR', 'HIII-400D-123'),
(423, NULL, '45/5-30-5069-H01(T)', NULL, '7000000162', '1990-01-01 00:00:00', 115, 423, 23, '8P9096T1', 50, NULL, 3, NULL, 'RY1-KT2A', 0, NULL, '171', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(424, NULL, '45/5-30-0194-8101E', NULL, '7000000154', '1983-01-01 00:00:00', 230, 424, 115, 'AE69025T1', 200, NULL, 3, NULL, 'RY2-KT1A', 22, NULL, '172', '13', '1', '1', 14, NULL, 'FUJI', '3xARSD3252/621-621/50-22(20)/0611'),
(425, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000000155', '2000-03-12 00:00:00', 115, 425, 23, '8N544653', 50, NULL, 3, NULL, 'RY2-KT2A', 0, NULL, '172', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(426, NULL, '45/8-30-0138-F001(FU)', NULL, '7000000156', '1986-01-01 00:00:00', 230, 426, 115, 'AX69026T2', 200, NULL, 3, NULL, 'RY2-KT3A', 22, NULL, '172', '13', '1', '1', 14, NULL, 'FUJI', '3xARSD3252/S621-S621/50-22(20)/0611'),
(427, NULL, '45/4-30-5057-RY2-SS-01', NULL, '7000000157', '1992-01-01 00:00:00', 230, 427, 115, 'AQ69007T1', 200, NULL, 3, NULL, 'RY2-KT4A', 22, NULL, '172', '13', '1', '1', 14, NULL, 'MR', '3xMI600-150/D'),
(428, NULL, '45-025613-2-2-30(51)2007-TX-04', NULL, '7000034012', '2009-10-16 00:00:00', 230, 428, 115, '508031.0', 200, NULL, 3, NULL, 'RY2-KT5A', 22, 'YNA0D1', '172', '1', '1', '3', 13, NULL, 'ABB', 'UCGRT 650/1050/C'),
(429, NULL, '45/5-30-5116-H02(MI)', NULL, '7000000158', '1993-01-01 00:00:00', 230, 429, 115, '9.374750101', 200, NULL, 3, NULL, 'RY2-KT6A', 22, NULL, '172', '7', '1', '1', 15, NULL, 'MR', '3xMI600-110/B'),
(430, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000000150', '1990-01-01 00:00:00', 115, 430, 23, '8P9095T1', 50, NULL, 3, NULL, 'RY3-KT1A', 0, NULL, '173', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(431, NULL, '45/2-30-5052-EGAT-G02(S)', NULL, '7000000151', '1989-01-01 00:00:00', 115, 431, 23, '8.9090005', 50, NULL, 3, NULL, 'RY3-KT2A', 0, NULL, '173', '6', '1', '2', 11, NULL, 'MR', 'HIII-400D-123'),
(432, NULL, 'EGAY45/0-30-5066-PSI-01', NULL, '7000017142', '1995-04-07 00:00:00', 230, 432, 121, '9147503.0', 200, NULL, 3, NULL, 'SA1-KT1A', 0, 'YD1', '174', '24', '1', '1', 6, NULL, 'MR', 'MI600-150/C'),
(433, NULL, 'EGAT45/4-30-5066-PSI-01', NULL, '7000017152', '1994-02-10 00:00:00', 230, 433, 121, '5BK013201', 200, NULL, 3, NULL, 'SA1-KT2A', 0, '1.0021994', '174', '2', '1', '1', 17, NULL, 'MR', 'MI600-150/C'),
(434, NULL, 'EGAY45/0-30-5066-PSI-01', NULL, '7000017153', '1994-02-10 00:00:00', 230, 434, 121, '9147504.0', 200, NULL, 3, NULL, 'SA1-KT3A', 0, 'YD1', '174', '24', '1', '1', 6, NULL, 'MR', 'MI600-150/C'),
(435, NULL, 'EGAT45/4-30-5066-PSI-01', NULL, '7000017154', '1994-02-10 00:00:00', 230, 435, 121, '5BK013202', 200, NULL, 3, NULL, 'SA1-KT4A', 0, 'YD1', '174', '2', '1', '1', 17, NULL, 'MR', 'MI600-150/C'),
(436, NULL, 'EGAT45/5-30-5069-H01(T)', NULL, '7000017220', '1994-04-24 00:00:00', 115, 436, 23, '8R8395T2', 50, NULL, 3, NULL, 'SA1-KT5A', 0, 'DY1', '174', '11', '1', '2', 19, NULL, 'ABB', 'BORSDL'),
(437, NULL, 'EGAT45/1-30-55803-TS9-56(T)', NULL, '7000017202', '1999-09-19 00:00:00', 115, 437, 22, '8N5446T1', 50, NULL, 3, NULL, 'SA1-KT6A', 0, NULL, '174', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(438, NULL, '45/2-30-5052-EGAT-G02(S)', NULL, '7000017147', '1990-02-09 00:00:00', 115, 438, 23, '8.90900049', 50, NULL, 3, NULL, 'SA1-KT7A', 0, 'DY1', '174', '6', '1', '2', 11, NULL, 'MR', 'H111D 400'),
(439, NULL, '47/2-30-5018-EGAT-G02(T)', NULL, '7000017121', '1991-06-04 00:00:00', 115, 439, 22, '8.90900046', 50, NULL, 3, NULL, 'SA2-KT1A', 0, NULL, NULL, '6', '1', '2', 11, NULL, 'MR', 'HIII-400D-123'),
(440, NULL, '47/2-30-5018-EGAT-G02(T)', NULL, '7000017122', '1991-06-04 00:00:00', 115, 440, 22, '8.90900047', 50, NULL, 3, NULL, 'SA2-KT2A', 0, NULL, NULL, '6', '1', '2', 11, NULL, 'MR', 'HIII-400D-123'),
(441, NULL, '45/9-30-5835-GBA-01(A)', NULL, '7000027965', '1997-01-01 00:00:00', 230, 441, 72.5, '103923.0', 300, NULL, 3, NULL, 'SB-KT1A', 22, 'YY0D1', '176', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/1050C'),
(442, NULL, '45/9-30-5835-GBA-01(A)', NULL, '7000027966', '1997-01-01 00:00:00', 230, 442, 72.5, '103922.0', 300, NULL, 3, NULL, 'SB-KT2A', 22, 'YY0D1', '176', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/1050C'),
(443, NULL, '45/9-30-5833-GBA-01(AE)', NULL, '7000027967', '1997-01-01 00:00:00', 230, 443, 121, '2.7505011', 300, NULL, 3, NULL, 'SB-KT3A', 11, 'YY0D1', '176', '44', '1', '1', 3, NULL, 'MR', 'MI1200-170/D-12233W'),
(444, NULL, '45/9-30-5835-GBA-01(A)', NULL, '7000027968', '1997-01-01 00:00:00', 230, 444, 72.5, '103916.0', 300, NULL, 3, NULL, 'SB-KT4A', 11, 'YY0D1', '176', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/1050C'),
(445, NULL, '45/9-30-5835-GBA-01(A)', NULL, '7000027969', '1997-01-01 00:00:00', 230, 445, 72.5, '103917.0', 300, NULL, 3, NULL, 'SB-KT5A', 11, 'YY0D1', '176', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT650/1050C'),
(446, NULL, '45/9-30-5833-GBA-01(AE)', NULL, '7000027970', '1997-01-01 00:00:00', 230, 446, 121, '2.7505021', 300, NULL, 3, NULL, 'SB-KT6A', 11, 'YY0D1', '176', '44', '1', '1', 3, NULL, 'MR', 'MI1200-170/D-12233W'),
(447, NULL, 'EGAT45/3-30-5059-EGAT-ATP01&02', NULL, '7000000027', '2005-01-23 00:00:00', 115, 447, 23, '7.117623204', 50, NULL, 3, NULL, 'SC-KT2A', 0, 'DY1', '177', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(448, NULL, 'EGAT xx9', NULL, '7000000028', '2003-07-07 00:00:00', 115, 448, 22, '8R8403T1', 50, NULL, 3, NULL, 'SC-KT3A', 0, NULL, '177', '10', '1', '2', 9, NULL, 'MEIDEN', 'LJND'),
(449, NULL, '45/0-30-5818-TS9-51(E)', NULL, '7000012817', '2009-01-01 00:00:00', 525, 449, 242, 'EDP011205', 200, NULL, 3, NULL, 'SD-KT1A', 22, NULL, '178', '2', '1', '1', 17, NULL, 'MR', '3xVIII500Y-40'),
(450, NULL, '45/5-30-5066-TS9-51(E)', NULL, '7000012825', '2009-01-01 00:00:00', 115, 450, 22, 'EDP011206', 50, NULL, 3, NULL, 'SD-KT2A', 11, NULL, '178', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-40'),
(451, NULL, '45/8-30-0144-F001(M)', NULL, '7000025283', '1997-07-26 00:00:00', 115, 451, 33, '574407.0', 25, NULL, 3, NULL, 'SDO-KT1A', 11, 'YY0  D1', '179', '7', '1', '3', 15, NULL, 'MR', 'MRMIII 600-110B/C-10181G'),
(452, NULL, '45/7-30-0011-WE-03(F)', NULL, '7000025284', '1981-01-26 00:00:00', 132, 452, 115, 'AN69003T1', 66.6699981689453, NULL, 3, NULL, 'SDO-KT2A', 33, 'YY0  D1', '179', '37', '1', '3', 14, NULL, 'TRAFO-UNION', 'SF3&WF'),
(453, NULL, '45/7-30-0011-WE-03(F)', NULL, '7000025285', '1987-03-31 00:00:00', 132, 453, 115, 'AN69003T1', 66.6699981689453, NULL, 3, NULL, 'SDO-KT3A', 33, 'YY0  D1', '179', '37', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND 701/211-211/50-18(17)/05'),
(454, NULL, '47/7-30-0001-WE-01', NULL, '7000025286', '1997-07-19 00:00:00', 115, 454, 33, 'AN69001T22', 25, NULL, 3, NULL, 'SDO-KT4A', 11, 'YY0  D1', '179', '37', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND 701/211-211/50-18(17)/05'),
(455, NULL, 'B001S', NULL, '7000000031', '2002-03-20 00:00:00', 115, 455, 22, '5BA 159010', 25, NULL, 3, NULL, 'SH1-KT1A', 0, NULL, NULL, '31', '1', '2', 17, NULL, 'MITSUBISHI', 'RER-2-70-17'),
(456, NULL, '47/7-30-0004-WE-02', NULL, '7000000032', '2007-04-03 00:00:00', 115, 456, 22, 'AN69051T23', 25, NULL, 3, NULL, 'SH1-KT2A', 0, NULL, NULL, '13', '1', '2', 14, NULL, 'FUJI', 'VLN/B3x800/WF9-3x800/30'),
(457, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000000034', '2001-05-16 00:00:00', 115, 457, 23, '8N5450T2', 50, NULL, 3, NULL, 'SH2-KT1A', 0, NULL, NULL, '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(458, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000000036', '2003-05-13 00:00:00', 115, 458, 23, '8N5450T3', 50, NULL, 3, NULL, 'SH2-KT2A', 0, NULL, NULL, '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(459, NULL, '45/0-30-5815-EGAT-TS9-51', NULL, '7000017224', '1998-08-26 00:00:00', 115, 459, 22, '8T9664T3', 50, NULL, 3, NULL, 'SI-KT2A', 0, 'DY1', '180', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(460, NULL, '45/0-30-5815-EGAT-TS9-51', NULL, '7000017110', '1998-03-01 00:00:00', 115, 460, 22, '8T9664T4', 50, NULL, 3, NULL, 'SI-KT3A', 0, 'DY1', '180', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(461, NULL, 'P21/2514-A001', NULL, '7000001091', '1995-01-01 00:00:00', 115, 461, 22, '558020.0', 12.5, NULL, 3, NULL, 'SK-KT3A', 0, NULL, '181', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'CUB-URS'),
(462, NULL, 'P21/2514-A001', NULL, '7000001092', '1996-01-01 00:00:00', 115, 462, 22, '558022.0', 12.5, NULL, 3, NULL, 'SK-KT4A', 0, NULL, '181', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'URS-LD7'),
(463, NULL, '45/1-30-5804-TS9-56(M)', NULL, '7000015765', '1999-10-30 00:00:00', 115, 463, 22, '9.912790102', 50, NULL, 3, NULL, 'SKA-KT1A', 11, NULL, '182', '7', '1', '3', 15, NULL, 'MR', 'MII500Y1'),
(464, NULL, '45/1-30-5804-TS9-56(M)', NULL, '7000015777', '1999-10-30 00:00:00', 115, 464, 22, '9.912790103', 50, NULL, 3, NULL, 'SKA-KT2A', 11, NULL, '182', '7', '1', '3', 15, NULL, 'MR', 'MII500Y1'),
(465, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000015867', '1994-03-03 00:00:00', 115, 465, 22, '8P9101T1', 50, NULL, 3, NULL, 'SKI-KT1A', 11, NULL, '183', '10', '1', '3', 9, NULL, 'MR', 'VIII350Y-030-10181WR'),
(466, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000015859', '1994-03-05 00:00:00', 115, 466, 22, '8P9101T2', 50, NULL, 3, NULL, 'SKI-KT2A', 11, NULL, '183', '10', '1', '3', 9, NULL, 'MR', 'VIII350Y-030-10181WR'),
(467, NULL, '45/3-30-5059-EGAT-ATP01&02', NULL, '7000025289', '1991-10-31 00:00:00', 115, 467, 34.5, '8P9104T1', 50, NULL, 3, NULL, 'SKL-KT1A', 11, 'YY0  D1', '184', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(468, NULL, '45/3-30-5059-EGAT-ATP01&02', NULL, '7000025290', '1991-10-29 00:00:00', 115, 468, 34.5, '8P9104T2', 50, NULL, 3, NULL, 'SKL-KT2A', 11, 'YY0  D1', '184', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(469, NULL, '45/0-30-5829-TS9-52', NULL, '7000025291', '2000-08-07 00:00:00', 115, 469, 34.5, '8T9795T2', 50, NULL, 3, NULL, 'SKL-KT3A', 11, 'YY0  D1', '184', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(470, NULL, '47/2-30-5026-G03(T)', NULL, '7000001035', '1992-12-17 00:00:00', 115, 470, 22, '8P8746T1', 25, NULL, 3, NULL, 'SL-KT1A', 0, 'DY1', '185', '11', '1', '2', 19, NULL, 'ABB', 'UCLRN 380/900'),
(471, NULL, '45/6-30-0140-E001(M)', NULL, '7000001036', '1995-06-13 00:00:00', 115, 471, 22, '573084.0', 25, NULL, 3, NULL, 'SL-KT2A', 0, 'DY1', '185', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'MRMIII 800-110F/C-10171W  MA7A'),
(472, NULL, '47/2-30-5026-EGAT-G03(T)', NULL, '7000001039', '1991-12-11 00:00:00', 115, 472, 22, '8P8747T1', 25, NULL, 3, NULL, 'SLB-KT1A', 0, 'DY1', '186', '10', '1', '2', 9, NULL, 'ABB', 'UCLRN380/900'),
(473, NULL, '47/2-30-5008-EGAT-G02(T)', NULL, '7000001040', '1998-05-25 00:00:00', 115, 473, 22, '8.90900044', 25, NULL, 3, NULL, 'SLB-KT2A', 0, 'DY1', '186', '6', '1', '2', 11, NULL, 'MR', '2XVIIIY500 030 10171W'),
(474, NULL, '47/7-30-0001-WE-01', NULL, '7000001041', '1998-09-10 00:00:00', 115, 474, 22, 'AN69001T11', 25, NULL, 3, NULL, 'SLB-KT3A', 0, 'DY1', '186', '13', '1', '2', 14, NULL, 'FUJI', 'VLN/83X800/WF9-3X800/30'),
(475, NULL, '45/2-30-0051-C001M', NULL, '7000017229', '1995-08-27 00:00:00', 115, 475, 22, '5F9902T1', 25, NULL, 3, NULL, 'SM-KT1A', 0, NULL, NULL, '10', '1', '2', 9, NULL, 'MEIDEN', 'LJND'),
(476, NULL, 'EGAT47/7-30-0001-WE-01', NULL, '7000017210', '1992-09-22 00:00:00', 115, 476, 22, 'AN69001T12', 25, NULL, 3, NULL, 'SM-KT2A', 0, NULL, NULL, '13', '1', '2', 14, NULL, 'FUJI', 'VLN/B3X800/WF9-3X800/300');
INSERT INTO `transformer` (`id`, `version`, `contract`, `detail`, `egatsn`, `first_energize`, `hv`, `item`, `lv`, `manufacturingserial`, `maxcapacity`, `old_egatsn`, `phase`, `picture`, `transformer_name`, `tv`, `vector_group`, `first_substation`, `manufacturing`, `status`, `winding_type_id`, `brand_id`, `position`, `oltc_manufacturer`, `oltc_type`) VALUES
(477, NULL, 'EGAT45/5-30-5069-H01(T)', NULL, '7000017230', '1995-08-27 00:00:00', 115, 477, 22, '8R8399T1', 50, NULL, 3, NULL, 'SM-KT3A', 0, NULL, NULL, '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(478, NULL, '45/2-30-5052EGAT-G02(S)', NULL, '7000017204', '1990-05-20 00:00:00', 115, 478, 22, '8.90900048', 50, NULL, 3, NULL, 'SN1-KT1A', 0, NULL, NULL, '6', '1', '2', 11, NULL, 'MR', 'HIII-400D-123'),
(479, NULL, '45/2-30-5052EGAT-G02(S)', NULL, '7000017227', '1990-05-27 00:00:00', 115, 479, 22, '8.90900051', 50, NULL, 3, NULL, 'SN1-KT2A', 0, NULL, NULL, '6', '1', '2', 11, NULL, 'MR', 'HIII-400D-123'),
(480, NULL, 'EGAT xx10', NULL, '7000017242', '2007-07-28 00:00:00', 115, 480, 22, '8N5451T4', 50, NULL, 3, NULL, 'SN1-KT3A', 0, NULL, NULL, '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(481, NULL, '45/0-30-5815-EGAT TS9-51(T)', NULL, '7000017128', '1998-10-04 00:00:00', 115, 481, 22, '8T9668T1', 50, NULL, 3, NULL, 'SN2-KT1A', 0, NULL, NULL, '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(482, NULL, '45/0-30-5815-TS9-51(T)', NULL, '7000017186', '1998-03-16 00:00:00', 115, 482, 22, '8T9668T2', 50, NULL, 3, NULL, 'SN2-KT2A', 0, NULL, NULL, '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(483, NULL, 'EGAT45/5-30-5069-H01(T)', NULL, '7000017189', '1994-07-17 00:00:00', 115, 483, 22, '8R8401T1', 50, NULL, 3, NULL, 'SN2-KT3A', 0, NULL, NULL, '10', '1', '2', 9, NULL, 'ABB', 'UZFRT 650/300'),
(484, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000017116', '2000-07-02 00:00:00', 115, 484, 22, '8T9669T4', 50, NULL, 3, NULL, 'SN3-KT1A', 0, NULL, NULL, '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(485, NULL, 'EGAT45/3-30-5059 EGAT=ATP01&02', NULL, '7000017120', '1992-09-03 00:00:00', 115, 485, 23, '8P9091T2', 50, NULL, 3, NULL, 'SN3-KT2A', 0, 'DY1', NULL, '10', '1', '2', 9, NULL, 'BORSDL', 'UZFRT650/300'),
(486, NULL, '45/0-30-5842-TS9-54(T3)', NULL, '7000017207', '1999-05-21 00:00:00', 230, 486, 121, '9.8900013', 200, NULL, 3, NULL, 'SN4-KT1A', 22, NULL, NULL, '6', '1', '1', 11, NULL, 'MR', 'M1600-170/C'),
(487, NULL, '45/0-30-5842-TS9-54(T3)', NULL, '7000017149', '1999-04-09 00:00:00', 230, 487, 121, '9.8900014', 200, NULL, 3, NULL, 'SN4-KT2A', 22, NULL, NULL, '6', '1', '1', 11, NULL, 'MR', 'M1600-170/C'),
(488, NULL, '45/0-30-5842-TS9-54(T3)', NULL, '7000017162', '1999-07-13 00:00:00', 230, 488, 121, '9.8900015', 200, NULL, 3, NULL, 'SN4-KT3A', 22, NULL, NULL, '6', '1', '1', 11, NULL, 'MR', 'M1600-170/C'),
(489, NULL, '45/6-30-5050-H20', NULL, '7000027973', '1995-01-01 00:00:00', 230, 489, 121, 'N408032', 300, NULL, 3, NULL, 'SNO-KT1A', 22, 'YY0D1', '188', '9', '1', '1', 8, NULL, 'MR', 'MI1200-123/B-12233W'),
(490, NULL, '45/2-30-5007-G05(M)', NULL, '7000027974', '1998-01-01 00:00:00', 230, 490, 121, 'GBK600001', 300, NULL, 3, NULL, 'SNO-KT2A', 22, 'YY0D1', '188', '2', '1', '1', 17, NULL, 'MR', 'MI1200-170/C-12211W'),
(491, NULL, '45/6-30-5060-MM-EHVS-6-T(A)', NULL, '7000027975', '1994-01-01 00:00:00', 525, 491, 242, '1.113521', 250, NULL, 1, NULL, 'SNO-KT5AA', 22, 'YY0D1', '188', '1', '1', '1', 13, 'A', 'ABB', 'UCLRE1050/1800 III'),
(492, NULL, '45/6-30-5060-MM-EHVS-6-T(A)', NULL, '7000027976', '1994-01-01 00:00:00', 525, 492, 242, '1.1135211', 250, NULL, 1, NULL, 'SNO-KT5AB', 22, 'YY0D1', '188', '1', '1', '1', 13, 'B', 'ABB', 'UCLRE1050/1800 III'),
(493, NULL, '45/6-30-5060-MM-EHVS-6-T(A)', NULL, '7000027977', '1994-01-01 00:00:00', 525, 493, 242, '1.1135212', 250, NULL, 1, NULL, 'SNO-KT5AC', 22, 'YY0D1', '188', '1', '1', '1', 13, 'C', 'ABB', 'UCLRE1050/1800 III'),
(494, NULL, '45/8-30-5801-MM-EHVS8-T(A)', NULL, '7000027978', '1996-01-01 00:00:00', 525, 494, 242, '1.1155008', 250, NULL, 1, NULL, 'SNO-KT6AA', 22, 'YY0D1', '188', '1', '1', '1', 13, 'A', 'ABB', 'UCLRE1050/1800 III'),
(495, NULL, '45/8-30-5801-MM-EHVS8-T(A)', NULL, '7000027979', '1996-01-01 00:00:00', 525, 495, 242, '1.1155009', 250, NULL, 1, NULL, 'SNO-KT6AB', 22, 'YY0D1', '188', '1', '1', '1', 13, 'B', 'ABB', 'UCLRE1050/1800 III'),
(496, NULL, '45/8-30-5801-MM-EHVS8-T(A)', NULL, '7000027980', '1996-01-01 00:00:00', 525, 496, 242, '1.115501', 250, NULL, 1, NULL, 'SNO-KT6AC', 22, 'YY0D1', '188', '1', '1', '1', 13, 'C', 'ABB', 'UCLRE1050/1800 III'),
(497, NULL, '45/0-30-5820-GBA-05', NULL, '7000027981', '1998-01-01 00:00:00', 525, 497, 242, '217841-15', 250, NULL, 1, NULL, 'SNO-KT7AA', 22, 'YY0D1', '188', '40', '1', '1', 7, 'A', 'MR', 'RMI1502-300/C-10193W'),
(498, NULL, '45/0-30-5820-GBA-05', NULL, '7000027982', '1998-01-01 00:00:00', 525, 498, 242, '217841-16', 250, NULL, 1, NULL, 'SNO-KT7AB', 22, 'YY0D1', '188', '40', '1', '1', 7, 'B', 'MR', 'RMI1502-300/C-10193W'),
(499, NULL, '45/0-30-5820-GBA-05', NULL, '7000027983', '1998-01-01 00:00:00', 525, 499, 242, '217841-17', 250, NULL, 1, NULL, 'SNO-KT7AC', 22, 'YY0D1', '188', '40', '1', '1', 7, 'C', 'MR', 'RMI1502-300/C-10193W'),
(500, NULL, '45/0-30-5829-TS9-52', NULL, '7000017801', '1998-09-01 00:00:00', 115, 500, 22, '8T9792T3', 50, NULL, 3, NULL, 'SO1-KT1A', 11, NULL, '190', '10', '1', '3', 9, NULL, 'ABB', 'UZFRN200/300'),
(501, NULL, '45/0-30-5829-TS9-52', NULL, '7000017802', '1998-09-01 00:00:00', 115, 501, 22, '8T9792T4', 50, NULL, 3, NULL, 'SO1-KT3A', 11, NULL, '190', '10', '1', '3', 9, NULL, 'ABB', 'UZFRN200/300'),
(502, NULL, '45/9-30-5816-HVDC-03(AA)', NULL, '7000017695', '1996-09-01 00:00:00', 230, 502, 121, '5BK014202', 200, NULL, 3, NULL, 'SO2-KT2A', 22, NULL, '191', '2', '1', '1', 17, NULL, 'MR', '3xMI600-150/C'),
(503, NULL, '45/9-30-5816-HVDC-03(AA)', NULL, '7000017696', '1996-09-01 00:00:00', 230, 503, 121, '5BK014203', 200, NULL, 3, NULL, 'SO2-KT3A', 22, NULL, '191', '2', '1', '1', 17, NULL, 'MR', '3xMI600-150/C'),
(504, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000017180', '1992-08-15 00:00:00', 115, 504, 23, '8P9093T1', 50, NULL, 3, NULL, 'SP-KT1A', 0, NULL, '192', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(505, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000017181', '1992-08-15 00:00:00', 115, 505, 23, '8P9093T2', 50, NULL, 3, NULL, 'SP-KT2A', 0, NULL, '192', '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(506, NULL, '45/6-30-5056-MMS2', NULL, '7000000090', '1996-05-02 00:00:00', 115, 506, 23, '8S9483T1', 50, NULL, 3, NULL, 'SR1-KT1A', 0, 'Dy1', NULL, '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(507, NULL, '45/5-30-5069-H01(T)', NULL, '7000000089', '1994-05-01 00:00:00', 115, 507, 23, '8R8400T1', 50, NULL, 3, NULL, 'SR1-KT2A', 0, 'Dy1', NULL, '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(508, NULL, '45/6-30-0140-E001M', NULL, '7000000067', '1986-06-15 00:00:00', 115, 508, 22, '573077.0', 40, NULL, 3, NULL, 'SR2-KT1A', 0, 'DYN1', NULL, '7', '1', '2', 15, NULL, 'MITSUBISHI', 'DRI-300-120,DRII-300-120'),
(509, NULL, '45-C62298-3-2-7N(47)TS10-TX-04', NULL, '7000000068', '2005-11-23 00:00:00', 230, 509, 121, 'GBK604201', 300, NULL, 3, NULL, 'SR2-KT2A', 22, 'YNYN0D1', NULL, '2', '1', '1', 17, NULL, 'MR', '3XMI1203-170/C-12211W'),
(510, NULL, '45-C62298-3-2-7N(47)TS10-TX-04', NULL, '7000000069', '2005-10-09 00:00:00', 230, 510, 121, 'GBK604202', 300, NULL, 3, NULL, 'SR2-KT3A', 22, 'YNYN0D1', NULL, '2', '1', '1', 17, NULL, 'MR', '3XMI1203-170/C-12211W'),
(511, NULL, '45/6-30-5050H20', NULL, '7000000070', '2006-08-20 00:00:00', 230, 511, 121, 'N406034', 300, NULL, 3, NULL, 'SR2-KT4A', 22, 'YNYN0D1', NULL, '9', '1', '1', 8, NULL, 'MR', '3XMI1200-123/B-12233W'),
(512, NULL, '45/6-30-0140-E001M', NULL, '7000000071', '1984-05-14 00:00:00', 115, 512, 22, '573068.0', 40, NULL, 3, NULL, 'SR2-KT5A', 0, 'DYN1', NULL, '7', '1', '2', 15, NULL, 'MITSUBISHI', 'DRI-300-120,DRII-300-120'),
(513, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000000093', '2000-06-11 00:00:00', 115, 513, 23, '8N5451T2', 50, NULL, 3, NULL, 'SR4-KT1A', 0, NULL, NULL, '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(514, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000000179', '1995-02-26 00:00:00', 115, 514, 23, '8R8403T2', 50, NULL, 3, NULL, 'SR4-KT2A', 0, NULL, NULL, '10', '1', '2', 9, NULL, 'ABB', 'UZFRT650/300'),
(515, NULL, '45/8-11-0031-K-CLN01FJ', NULL, '7000025192', '1987-02-06 00:00:00', 230, 515, 121, 'AV69090T1-1', 100, NULL, 3, NULL, 'SRT-KT1A', 33, 'YY0  D1', '195', '37', '1', '3', 14, NULL, 'TRAFO-UNION', '3XARS 321'),
(516, NULL, '45/8-11-0031-K-CLN01FJ', NULL, '7000025193', '1987-03-13 00:00:00', 230, 516, 121, 'AV69090T1-2', 100, NULL, 3, NULL, 'SRT-KT2A', 33, 'YY0  D1', '195', '37', '1', '3', 14, NULL, 'TRAFO-UNION', '3XARS 321'),
(517, NULL, 'EGAT -', NULL, '7000025194', '1996-03-30 00:00:00', 230, 517, 121, '8545956.0', 100, NULL, 3, NULL, 'SRT-KT3A', 33, 'YY0  D1', '195', '24', '1', '3', 6, NULL, 'MR', '3XMSI 301'),
(518, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000016545', '1992-08-01 00:00:00', 115, 518, 22, '8P9098T1', 50, NULL, 3, NULL, 'SS-KT1A', 11, NULL, '196', '11', '1', '3', 19, NULL, 'MR', 'VIII350Y-030-10181W'),
(519, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000016546', '1992-08-01 00:00:00', 115, 519, 22, '8P9098T2', 50, NULL, 3, NULL, 'SS-KT2A', 11, NULL, '196', '11', '1', '3', 19, NULL, 'MR', 'VIII350Y-030-10181W'),
(520, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000001047', '2003-03-05 00:00:00', 115, 520, 22, '57026.0', 50, NULL, 3, NULL, 'ST-KT1A', 0, 'DYN1', '197', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT 550/300'),
(521, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000001048', '2002-12-09 00:00:00', 115, 521, 22, '57027.0', 50, NULL, 3, NULL, 'ST-KT2A', 0, 'DYN1', '197', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT 550/300'),
(522, NULL, '45/3-30-5079-EGAT-ATP-01&02(M)', NULL, '7000027987', '1991-01-01 00:00:00', 230, 522, 72.5, '9047125.0', 200, NULL, 3, NULL, 'STB-KT1A', 22, 'YY0D1', '198', '24', '1', '1', 6, NULL, 'MR', 'MI600-150/C'),
(523, NULL, '45/3-30-5079-EGAT-ATP-01&02(M)', NULL, '7000027988', '1991-01-01 00:00:00', 230, 523, 72.5, '9047126.0', 200, NULL, 3, NULL, 'STB-KT2A', 11, 'YY0D1', '198', '24', '1', '1', 6, NULL, 'MR', 'MI600-150/C'),
(524, NULL, '45/3-30-5070-8908(SB)', NULL, '7000027989', '1991-01-01 00:00:00', 230, 524, 72.5, '9047372.0', 200, NULL, 3, NULL, 'STB-KT3A', 11, 'YY0D1', '198', '24', '1', '1', 6, NULL, 'MR', 'MI601-150/B'),
(525, NULL, '45/0-30-0052-8604', NULL, '7000027990', '1987-01-01 00:00:00', 230, 525, 72.5, 'AG69005T2', 200, NULL, 3, NULL, 'STB-KT4A', 11, 'YY0,D1', '198', '13', '1', '1', 14, NULL, 'TRAFO UNION', 'ARSD1021'),
(526, NULL, '45/0-30-5829-TS9-52', NULL, '7000025318', '2002-03-20 00:00:00', 115, 526, 34.5, '8T9788T1', 50, NULL, 3, NULL, 'STU-KT1A', 11, 'YY0  D1', '199', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(527, NULL, '45/0-30-5829-TS9-52', NULL, '7000025296', '2002-03-20 00:00:00', 115, 527, 34.5, '8T9788T2', 50, NULL, 3, NULL, 'STU-KT2A', 11, 'YY0  D1', '199', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(528, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000015975', '1993-03-17 00:00:00', 115, 528, 22, '8P9099T1', 50, NULL, 3, NULL, 'SU-KT1A', 11, NULL, '200', '11', '1', '3', 19, NULL, 'MR', 'VIIIY350-030-10181WR'),
(529, NULL, '45/3-30-5059-EGAT-ATP 01&02', NULL, '7000015957', '1993-03-20 00:00:00', 115, 529, 22, '8P9099T2', 50, NULL, 3, NULL, 'SU-KT2A', 11, NULL, '200', '11', '1', '3', 19, NULL, 'MR', 'VIIIY350-030-10181WR'),
(530, NULL, 'EGAT 45/5-30-5114-H02(M)', NULL, '7000016110', '2006-10-26 00:00:00', 230, 530, 121, 'A1Z69040T4-2', 200, NULL, 3, NULL, 'SU2-KT1A', 22, 'YY0  D1', NULL, '37', '1', '1', 14, NULL, 'MR', 'MI 601'),
(531, NULL, '45/3-30-5070-H01(H)', NULL, '7000025299', '1997-03-12 00:00:00', 115, 531, 34.5, 'T9430307', 50, NULL, 3, NULL, 'SUK-KT1A', 11, 'YY0  D1', '201', '30', '1', '1', 25, NULL, 'MR', 'VIII 500Y'),
(532, NULL, '45/0-30-5816-EGAT TS-51(A)', NULL, '7000025300', '2001-02-02 00:00:00', 115, 532, 34.5, '56047.0', 50, NULL, 3, NULL, 'SUK-KT2A', 11, 'YY0  D1', '201', '1', '1', '1', 13, NULL, 'ABB', 'UZFRT 550/300'),
(533, NULL, '45/8-30-0144-F001(M)', NULL, '7000001049', '1994-05-27 00:00:00', 115, 533, 22, '574414.0', 25, NULL, 3, NULL, 'TA1-KT1A', 0, 'DY1', '202', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'MRMIII 800-110F/C-10171W  MA7A'),
(534, NULL, '45/18-30-0064-B001(S)', NULL, '7000001050', '1987-04-10 00:00:00', 115, 534, 22, '5BA159008', 25, NULL, 3, NULL, 'TA1-KT2A', 0, 'DY1', '202', '12', '1', '2', 16, NULL, 'DAIHEN', 'RER-2-70-17'),
(535, NULL, '45/3-30-0183-D001(T)', NULL, '7000000963', '1983-09-13 00:00:00', 230, 535, 115, '8044721.0', 200, NULL, 3, NULL, 'TA2-KT1A', 22, 'YYD0', '203', '24', '1', '1', 6, NULL, 'ASEA', 'UCFRT 650/500'),
(536, NULL, '45/3-83-0188-7928', NULL, '7000001055', '1995-06-20 00:00:00', 115, 536, 22, 'H67440-03', 25, NULL, 3, NULL, 'TE-KT1A', 0, 'DY1', '204', '41', '1', '2', 7, NULL, 'MR', 'VI11350'),
(537, NULL, '45/2-30-0049-WC001', NULL, '7000017599', '1979-09-01 00:00:00', 115, 537, 22, '60492-003', 31.5, NULL, 3, NULL, 'TH-KT1A', 11, NULL, '205', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND'),
(538, NULL, '45/2-30-0049-WC001', NULL, '7000017600', '1980-09-01 00:00:00', 115, 538, 22, '60547-001', 31.5, NULL, 3, NULL, 'TH-KT2A', 11, NULL, '205', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND'),
(539, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000001057', '2003-10-07 00:00:00', 115, 539, 23, '57021.0', 50, NULL, 3, NULL, 'THG-KT1A', 0, 'DYN1', '206', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(540, NULL, '47/7-30-0001-WE-01', NULL, '7000001060', '1986-06-16 00:00:00', 115, 540, 22, 'AN69001T31', 25, NULL, 3, NULL, 'TK2-KT1A', 0, 'DY1', '208', '13', '1', '2', 14, NULL, 'FUJI', 'VLN/B3X800/WF9-3X800/30'),
(541, NULL, '45/7-30-0011-WE-03(F)', NULL, '7000001061', '2003-02-10 00:00:00', 115, 541, 22, 'AN69003T4-1', 25, NULL, 3, NULL, 'TK2-KT2A', 0, 'DY1', '208', '13', '1', '2', 14, NULL, 'FUJI', 'VLN/B3X800/WF9-3X800/30'),
(542, NULL, '45/1-30-5803-TS9-56(T)', NULL, '7000000074', '2000-05-28 00:00:00', 115, 542, 23, '8N5446T2', 50, NULL, 3, NULL, 'TL1-KT6A', 0, 'DYN1', '209', '11', '1', '2', 19, NULL, 'ABB', 'UZFRT650/300'),
(543, NULL, '45/4-30-5066-PSI-01', NULL, '7000000076', '1994-08-28 00:00:00', 230, 543, 121, 'AQ69008T1-2', 200, NULL, 3, NULL, 'TL3-KT1A', 22, 'YNYN0D1', '211', '37', '1', '1', 14, NULL, 'MR', '3XMI600-150/D-12211W'),
(544, NULL, '45/3-30-5073-8907(BWN)', NULL, '7000000077', '1995-04-20 00:00:00', 230, 544, 121, '5BK012702', 200, NULL, 3, NULL, 'TL3-KT2A', 22, 'YNYN0D1', '211', '2', '1', '1', 17, NULL, 'MR', '3XMI600-150/C-12211W'),
(545, NULL, '45/3-30-5073-8907(BWN)', NULL, '7000000078', '1994-09-09 00:00:00', 230, 545, 121, '5BK012701', 200, NULL, 3, NULL, 'TL3-KT3A', 22, 'YNYN0D1', '211', '2', '1', '1', 17, NULL, 'MR', '3XMI600-150/C-12211W'),
(546, NULL, '45/0-30-5812-TS9-53(M)', NULL, '7000000079', '1999-09-29 00:00:00', 230, 546, 121, 'A1E69002T3-2', 200, NULL, 3, NULL, 'TL3-KT4A', 22, 'YNYN0D1', '211', '37', '1', '1', 14, NULL, 'MR', '3XMI600-170/D-12211W'),
(547, NULL, '45/6-30-0236-DOIOMS', NULL, '7000017272', '1984-01-01 00:00:00', 115, 547, 22, '8.40900018', 40, NULL, 3, NULL, 'TM-KT1A', 0, 'DY1', '212', '6', '1', '2', 11, NULL, 'TOSHIBA', '2XFK-M140G/C'),
(548, NULL, '45/7-13-0244', NULL, '7000017273', '1985-01-01 00:00:00', 115, 548, 33, '6.0841001', 40, NULL, 3, NULL, 'TM-KT2A', 22, 'DYN1', '212', '19', '1', '3', 23, NULL, 'TRAFO UNI', 'MA-E'),
(549, NULL, '45/8-30-0144-F001(M)', NULL, '7000025240', '2002-09-26 00:00:00', 115, 549, 33, '574405.0', 25, NULL, 3, NULL, 'TP-KT1A', 11, 'YY0  D1', '214', '16', '1', '3', 26, NULL, 'MITSUBISHI', 'MIII 600-110B/C'),
(550, NULL, '47/2-05-0019-PPB-C1', NULL, '7000025241', '2000-06-03 00:00:00', 115, 550, 33, '5G 8588 T1', 25, NULL, 3, NULL, 'TP-KT2A', 11, 'YY0  D1', '214', '11', '1', '3', 19, NULL, 'MEIDENSHA', 'LJNDG 115/400-18P'),
(551, NULL, '47/0-30-5803-EGAT-GBA-02', NULL, '7000027993', '1998-01-01 00:00:00', 230, 551, 121, 'GBK 600002', 300, NULL, 3, NULL, 'TPR-KT1A', 22, 'YY0D1', '215', '2', '1', '1', 17, NULL, 'MR', 'MI1200-170/C-12211W'),
(552, NULL, '47/0-30-5803-EGAT-GBA-02', NULL, '7000027994', '1998-01-01 00:00:00', 230, 552, 121, 'GBK 600003', 300, NULL, 3, NULL, 'TPR-KT2A', 22, 'YY0D1', '215', '2', '1', '1', 17, NULL, 'MR', 'MI1200-170/C-12211W'),
(553, NULL, '47/0-30-5803-EGAT-GBA-02', NULL, '7000027995', '1998-01-01 00:00:00', 230, 553, 72.5, '9.8900011', 300, NULL, 3, NULL, 'TPR-KT3A', 22, 'YY0D1', '215', '6', '1', '1', 11, NULL, 'MR', 'MI1500-123/C-12211W'),
(554, NULL, '47/0-30-5803-EGAT-GBA-02', NULL, '7000027996', '1998-01-01 00:00:00', 230, 554, 72.5, '9.8900012', 300, NULL, 3, NULL, 'TPR-KT4A', 22, 'YY0D1', '215', '6', '1', '1', 11, NULL, 'MR', 'MI1500-123/C-12211W'),
(555, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000000127', '1997-01-01 00:00:00', 115, 555, 23, '57022.0', 50, NULL, 3, NULL, 'TR-KT1A', 0, NULL, NULL, '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(556, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000000128', '1997-01-01 00:00:00', 115, 556, 23, '57019.0', 50, NULL, 3, NULL, 'TR-KT2A', 0, NULL, NULL, '1', '1', '2', 13, NULL, 'ABB', 'UZFRT550/300'),
(557, NULL, '45/9-30-5822-RIP-S1', NULL, '7000025244', '1999-10-04 00:00:00', 230, 557, 121, '55013.0', 200, NULL, 3, NULL, 'TS-KT1A', 33, 'YY0  D1', '216', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT 650/700 C SPECIAL'),
(558, NULL, '45/0-30-5839-TS9-54(M)', NULL, '7000025245', '1999-10-01 00:00:00', 230, 558, 121, '9.711291103', 200, NULL, 3, NULL, 'TS-KT2A', 33, 'YY0  D1', '216', '7', '1', '1', 15, NULL, 'MR', '3XMI 800'),
(559, NULL, '45/2-30-5085-EGAT-GO3(S)', NULL, '7000025246', '1999-04-01 00:00:00', 115, 559, 34.5, '8P8743T1', 50, NULL, 3, NULL, 'TS-KT3A', 11, 'YY0  D1', '216', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(560, NULL, '45/3-30-5059-ATP01&02', NULL, '7000025247', '1999-10-01 00:00:00', 115, 560, 34.5, '8P9106T1', 50, NULL, 3, NULL, 'TS-KT4A', 11, 'YY0  D1', '216', '11', '1', '3', 19, NULL, 'ABB', 'UZFRN 200/300'),
(561, NULL, '45/0-30-0047-MM-EHVS2-T', NULL, '7000003606', '1989-05-28 00:00:00', 525, 561, 242, 'AE69040T1-1', 200, NULL, 1, NULL, 'TTK-KT1AA', 22, 'YY0,D1', '217', '13', '1', '1', 14, 'A', 'MR', 'TI 1002 200/C 10171W'),
(562, NULL, '45/0-30-0047-MM-EHVS2-T', NULL, '7000003608', '1989-05-28 00:00:00', 525, 562, 242, 'AE69040T1-2', 200, NULL, 1, NULL, 'TTK-KT1AB', 22, 'YY0,D1', '217', '13', '1', '1', 14, 'B', 'MR', 'TI 1002 200/C 10171W'),
(563, NULL, '45/0-30-0047-MM-EHVS2-T', NULL, '7000003610', '1989-05-28 00:00:00', 525, 563, 242, 'AE69040T1-3', 200, NULL, 1, NULL, 'TTK-KT1AC', 22, 'YY0,D1', '217', '13', '1', '1', 14, 'C', 'MR', 'TI 1002 200/C 10171W'),
(564, NULL, '45/0-30-0047-MM-EHVS2-T', NULL, '7000003612', '1989-05-28 00:00:00', 525, 564, 242, 'AE69040T2-1', 200, NULL, 1, NULL, 'TTK-KT2AA', 22, 'YY0,D1', '217', '13', '1', '1', 14, 'A', 'MR', 'TI 1002 200/C 10171W'),
(565, NULL, '45/0-30-0047-MM-EHVS2-T', NULL, '7000003614', '1989-05-28 00:00:00', 525, 565, 242, 'AE69040T2-2', 200, NULL, 1, NULL, 'TTK-KT2AB', 22, 'YY0,D1', '217', '13', '1', '1', 14, 'B', 'MR', 'TI 1002 200/C 10171W'),
(566, NULL, '45/0-30-0047-MM-EHVS2-T', NULL, '7000003616', '1989-05-28 00:00:00', 525, 566, 242, 'AE69040T2-3', 200, NULL, 1, NULL, 'TTK-KT2AC', 22, 'YY0,D1', '217', '13', '1', '1', 14, 'C', 'MR', 'TI 1002 200/C 10171W'),
(567, NULL, '45/6-30-5057-MM-EHV96-T(J)', NULL, '7000003618', '1995-01-05 00:00:00', 525, 567, 242, '95768.0', 200, NULL, 1, NULL, 'TTK-KT3AA', 22, 'YY0,D1', '217', '34', '1', '1', 18, 'A', 'MR', 'TI 1001 220/C 11093W'),
(568, NULL, '45/6-30-5057-MM-EHV96-T(J)', NULL, '7000003621', '1995-01-05 00:00:00', 525, 568, 242, '95769.0', 200, NULL, 1, NULL, 'TTK-KT3AB', 22, 'YY0,D1', '217', '34', '1', '1', 18, 'B', 'MR', 'TI 1001 220/C 11093W'),
(569, NULL, '45/6-30-5057-MM-EHV96-T(J)', NULL, '7000003623', '1995-01-05 00:00:00', 525, 569, 242, '95770.0', 200, NULL, 1, NULL, 'TTK-KT3AC', 22, 'YY0,D1', '217', '34', '1', '1', 18, 'C', 'MR', 'TI 1001 220/C 11093W'),
(570, NULL, '45/2-30-5001-8813(9001)', NULL, '7000001065', '1991-02-12 00:00:00', 230, 570, 121, '9.1900018', 200, NULL, 3, NULL, 'TTK-KT4A', 22, 'YY0,D1', '217', '6', '1', '1', 11, NULL, 'MR', '3X MI600 110/C 12211W'),
(571, NULL, '45/5-30-5115-H02(A)', NULL, '7000001066', '1994-10-20 00:00:00', 230, 571, 121, '103726.0', 200, NULL, 3, NULL, 'TTK-KT5A', 22, 'YY0,D1', '217', '1', '1', '1', 13, NULL, 'ABB', 'UCGRT-650/600 IS'),
(572, NULL, '47/2-30-5003-EGAT-G01(T)', NULL, '7000001067', '2002-04-30 00:00:00', 115, 572, 22, '8.90900042', 25, NULL, 3, NULL, 'TTK-KT6A', 0, 'DY1', '217', '6', '1', '2', 11, NULL, 'MR', '2XVIIIY500 0301 10171W'),
(573, NULL, '47/2-30-5018-EGAT-G02(T)', NULL, '7000001068', '2002-07-10 00:00:00', 115, 573, 22, '8.90900045', 25, NULL, 3, NULL, 'TTK-KT7A', 0, 'DY1', '217', '6', '1', '2', 11, NULL, 'MR', '2XVIIIY500 0301 10171W'),
(574, NULL, '45-C57-7N(47)TS10-TX-01(T)', NULL, '7000000082', '2005-11-14 00:00:00', 230, 574, 121, '4710127.0', 200, NULL, 3, NULL, 'TW-KT1A', 22, 'YNYN0D1', '218', '46', '1', '1', 5, NULL, 'MR', '3XMI802-170/C-12233W'),
(575, NULL, '45-C57-7N(47)TS10-TX-01(T)', NULL, '7000000083', '2005-11-14 00:00:00', 230, 575, 121, '4710128.0', 200, NULL, 3, NULL, 'TW-KT2A', 22, 'YNYN0D1', '218', '46', '1', '1', 5, NULL, 'MR', '3XMI802-170/C-12233W'),
(576, NULL, '45/2-30-5052-EGAT-G02(S)', NULL, '7000016815', '1991-08-27 00:00:00', 115, 576, 22, '8.90900052', 50, NULL, 3, NULL, 'UB1-KT1A', 11, NULL, '219', '6', '1', '3', 11, NULL, 'MR', 'VIII350Y'),
(577, NULL, '45/2-30-5135-EGAT-G04(S)', NULL, '7000016816', '1991-08-22 00:00:00', 115, 577, 22, '338025.0', 50, NULL, 3, NULL, 'UB1-KT2A', 11, NULL, '219', '22', '1', '3', 10, NULL, 'MR', 'MIII500Y'),
(578, NULL, '47/5-30-5008-PMS1', NULL, '7000016898', '2004-10-27 00:00:00', 115, 578, 22, '8P8199T1', 50, NULL, 3, NULL, 'UB2-KT1A', 11, NULL, '220', '10', '1', '3', 9, NULL, 'MR', 'VIIIY350-030/10/8/WR'),
(579, NULL, '45/0-30-5818-TS9-51(E)', NULL, '7000016899', '2004-10-27 00:00:00', 115, 579, 22, 'EDP011202', 50, NULL, 3, NULL, 'UB2-KT2A', 11, NULL, '220', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-40'),
(580, NULL, '45/0-30-5812-TS9-53(M)', NULL, '7000016900', '2004-10-27 00:00:00', 230, 580, 121, 'A1E69002T2', 200, NULL, 3, NULL, 'UB2-KT3A', 22, NULL, '220', '13', '1', '1', 14, NULL, 'MR', '3xMI600-170/D/12211W'),
(581, NULL, '45/0-30-5843-TS9-54(T4)', NULL, '7000016901', '2004-10-27 00:00:00', 230, 581, 121, '9.8900016', 200, NULL, 3, NULL, 'UB2-KT4A', 22, NULL, '220', '6', '1', '1', 11, NULL, 'MR', '3xMI600-170/C'),
(582, NULL, '45/3-30-5059-ATP01&02(1-2)', NULL, '7000018355', '1990-09-01 00:00:00', 115, 582, 22, '8P9100T1', 50, NULL, 3, NULL, 'UD1-KT1A', 11, NULL, '221', '11', '1', '3', 19, NULL, 'MR', 'VIII350Y-030-10181W'),
(583, NULL, '45/3-30-5059-ATP01&02(1-2)', NULL, '7000018356', '1990-09-01 00:00:00', 115, 583, 22, '8P9100T2', 50, NULL, 3, NULL, 'UD1-KT2A', 11, NULL, '221', '11', '1', '3', 19, NULL, 'MR', 'VIII350Y-030-10181W'),
(584, NULL, '45/5-30-5030-H01(A)', NULL, '7000018508', '1993-09-01 00:00:00', 115, 584, 22, '52012.0', 50, NULL, 3, NULL, 'UD2-KT1A', 11, NULL, '222', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN'),
(585, NULL, '45/5-30-5066-H18(E)', NULL, '7000018509', '1993-09-01 00:00:00', 115, 585, 22, 'EDP001301', 50, NULL, 3, NULL, 'UD2-KT2A', 11, NULL, '222', '2', '1', '3', 17, NULL, 'MR', 'VIII500Y-30'),
(586, NULL, '45/2-30-0050-C001(B)', NULL, '7000001086', '1980-09-12 00:00:00', 115, 586, 22, '60545-001', 25, NULL, 3, NULL, 'UT-KT1A', 0, 'DYN1', '224', '19', '1', '2', 23, NULL, 'TRAFO-UNION', 'CRND 110/1002/5-18'),
(587, NULL, '45/6-30-0140-E001(M)', NULL, '7000001087', '1987-02-02 00:00:00', 115, 587, 22, '573091.0', 25, NULL, 3, NULL, 'UT-KT2A', 0, 'DY1', '224', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'MRMIII 800-110F/C-10171W  MA7A'),
(588, NULL, '45/0-30-5855-RIP2-S3(A)', NULL, '7000001088', '2000-09-07 00:00:00', 115, 588, 22, '57018.0', 50, NULL, 3, NULL, 'UT-KT3A', 0, 'DYN1', '224', '1', '1', '2', 13, NULL, 'ABB', 'UZFRT 550/300'),
(589, NULL, '45/0-30-5801-RB-EHVS1-T', NULL, '7000000102', '1999-10-23 00:00:00', 525, 589, 242, '217841-04', 250, NULL, 1, NULL, 'WN-KT1AA', 22, NULL, '226', '40', '1', '1', 7, 'A', 'MR', 'RMI1502-300/C'),
(590, NULL, '45/0-30-5801-RB-EHVS1-T', NULL, '7000000101', '1999-10-23 00:00:00', 525, 590, 242, '217841-02', 250, NULL, 1, NULL, 'WN-KT1AB', 22, NULL, '226', '40', '1', '1', 7, 'B', 'MR', 'RMI1502-300/C'),
(591, NULL, '45/0-30-5801-RB-EHVS1-T', NULL, '7000000103', '1999-10-23 00:00:00', 525, 591, 242, '217841-05', 250, NULL, 1, NULL, 'WN-KT1AC', 22, NULL, '226', '40', '1', '1', 7, 'C', 'MR', 'RMI1502-300/C'),
(592, NULL, '45/0-30-5801-RB-EHVS1-T', NULL, '7000000100', '1999-10-10 00:00:00', 525, 592, 242, '217841-03', 250, NULL, 1, NULL, 'WN-KT2AA', 22, NULL, '226', '40', '1', '1', 7, 'A', 'MR', 'RMI1502-300/C'),
(593, NULL, '45/0-30-5801-RB-EHVS1-T', NULL, '7000000104', '1999-10-10 00:00:00', 525, 593, 242, '217841-01', 250, NULL, 1, NULL, 'WN-KT2AB', 22, NULL, '226', '40', '1', '1', 7, 'B', 'MR', 'RMI1502-300/C'),
(594, NULL, '45/0-30-5801-RB-EHVS1-T', NULL, '7000000105', '1999-10-10 00:00:00', 525, 594, 242, '217841-06', 250, NULL, 1, NULL, 'WN-KT2AC', 22, NULL, '226', '40', '1', '1', 7, 'C', 'MR', 'RMI1502-300/C'),
(595, NULL, '45/8-30-0144-F001(M)', NULL, '7000000088', '1987-05-07 00:00:00', 115, 595, 22, '574415.0', 25, NULL, 3, NULL, 'WNK-KT1A', 0, NULL, '227', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'MRMIII800-110F/C-10171W'),
(596, NULL, 'EGAT xx11', NULL, '7000000086', '2003-08-23 00:00:00', 115, 596, 22, '558024.0', 25, NULL, 3, NULL, 'WNK-KT2A', 0, NULL, '227', '7', '1', '2', 15, NULL, 'MITSUBISHI', 'MRMIII800-110F/C-10171W'),
(597, NULL, '47/7-30-0001-WE-01', NULL, '7000025303', '1992-09-22 00:00:00', 115, 597, 33, 'AN69001T21-2', 25, NULL, 3, NULL, 'YL1-KT1A', 11, 'YY0  D1', '228', '37', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND 701/211-211/50-18(17)/050'),
(598, NULL, '45/6-30-0156-E001(K)', NULL, '7000025304', '1984-12-26 00:00:00', 115, 598, 33, 'AG690905T321', 25, NULL, 3, NULL, 'YL1-KT2A', 11, 'YY0  D1', '228', '37', '1', '3', 14, NULL, 'TRAFO-UNION', 'CRND 701/211-211/50-18(17)/050'),
(599, NULL, '45/2-30-0049-WC001', NULL, '7000025305', '2000-08-07 00:00:00', 115, 599, 33, '60494-002', 31.5, NULL, 3, NULL, 'YL1-KT3A', 11, 'YNYN0(D)', '228', '19', '1', '3', 23, NULL, 'TRAFO-UNION', 'CRND 110/211/5-18'),
(600, NULL, '45/0-30-5839-TS9-54(M)', NULL, '7000025308', '2002-10-28 00:00:00', 230, 600, 121, '9.711291101', 200, NULL, 3, NULL, 'YL2-KT1A', 33, 'YY0  D1', '229', '7', '1', '1', 15, NULL, 'MR', '3XMI 800 (MA7)'),
(601, NULL, '45/0-30-5839-TS9-54(M)', NULL, '7000025309', '2002-10-28 00:00:00', 230, 601, 121, '9.711291102', 200, NULL, 3, NULL, 'YL2-KT2A', 33, 'YY0  D1', '229', '7', '1', '1', 15, NULL, 'MR', '3XMI 800 (MA7)'),
(602, NULL, '45/0-30-5816-TS9-51(A)', NULL, '7000016653', '1997-09-01 00:00:00', 115, 602, 22, '56037.0', 50, NULL, 3, NULL, 'YT-KT1A', 11, NULL, '230', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN200/300'),
(603, NULL, '45/0-30-5816-TS9-51(A)', NULL, '7000016654', '1997-09-01 00:00:00', 115, 603, 22, '56038.0', 50, NULL, 3, NULL, 'YT-KT2A', 11, NULL, '230', '1', '1', '3', 13, NULL, 'ABB', 'UZFRN200/300'),
(604, NULL, 'EGAT 45-C57527-3-2-7N(47)TS10-TK-01(R)(A)', NULL, '7000016655', '2005-08-19 00:00:00', 230, 604, 121, '504006.0', 200, NULL, 3, NULL, 'YT-KT3A', 22, NULL, '230', '1', '1', '1', 13, NULL, 'ABB', '3xUCGRT650/1050/C'),
(605, NULL, 'EGAT 45/1-30-5807-TS9-55', NULL, '7000016656', '2006-11-27 00:00:00', 230, 605, 121, '9.812810101', 200, NULL, 3, NULL, 'YT-KT4A', 22, NULL, '230', '7', '1', '1', 15, NULL, 'MR', '3xMI600Y-150');

-- --------------------------------------------------------

--
-- Table structure for table `transformer_control_cabinets`
--

CREATE TABLE IF NOT EXISTS `transformer_control_cabinets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `animal` decimal(10,0) DEFAULT NULL,
  `control_humidity` decimal(10,0) DEFAULT NULL,
  `corrosion` decimal(10,0) DEFAULT NULL,
  `pragen` decimal(10,0) DEFAULT NULL,
  `wiring_control` decimal(10,0) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `transformer_control_cabinets`
--

INSERT INTO `transformer_control_cabinets` (`id`, `animal`, `control_humidity`, `corrosion`, `pragen`, `wiring_control`, `visual_inspection_id`) VALUES
(3, '161', '164', '159', '167', '171', 2),
(4, '161', '164', '159', '168', '170', 4);

-- --------------------------------------------------------

--
-- Table structure for table `transformer_control_cabinet_factors`
--

CREATE TABLE IF NOT EXISTS `transformer_control_cabinet_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hi_factor` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `transformer_control_cabinet_factors`
--

INSERT INTO `transformer_control_cabinet_factors` (`id`, `hi_factor`, `condition`, `start`, `end`, `color`, `created_at`, `updated_at`) VALUES
(1, 4, 'Good', 0, 39, '0,255,0', '2011-02-11 18:58:09', '2011-02-11 18:58:09'),
(2, 3, 'Acceptable', 40, 43, '0,0,255', '2011-02-11 18:58:09', '2011-02-11 18:58:09'),
(3, 2, 'Need Caution', 44, 46, '0,255,255', '2011-02-11 18:58:09', '2011-02-11 18:58:09'),
(4, 1, 'Poor', 47, 49, '255,146,0', '2011-02-11 18:58:09', '2011-02-11 18:58:09'),
(5, 0, 'Very Poor', 50, NULL, '255,0,0', '2011-02-11 18:58:09', '2011-02-11 18:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `transformer_history_move`
--

CREATE TABLE IF NOT EXISTS `transformer_history_move` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `move_by` varchar(255) DEFAULT NULL,
  `move_date` datetime DEFAULT NULL,
  `new_name` varchar(255) DEFAULT NULL,
  `old_name` varchar(255) DEFAULT NULL,
  `newstation` decimal(10,0) DEFAULT NULL,
  `oldstation` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `transformer_history_move`
--


-- --------------------------------------------------------

--
-- Table structure for table `transformer_informations`
--

CREATE TABLE IF NOT EXISTS `transformer_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_voltage_hv_id` int(11) DEFAULT NULL,
  `bus_voltage_lv_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `system_fault_level_hv` double DEFAULT NULL,
  `system_fault_level_lv` double DEFAULT NULL,
  `probability_of_force_outage_id` int(11) DEFAULT NULL,
  `social_aspect_id` int(11) DEFAULT NULL,
  `system_location_id` int(11) DEFAULT NULL,
  `application_use_id` int(11) DEFAULT NULL,
  `system_stability_id` int(11) DEFAULT NULL,
  `pollution_id` int(11) DEFAULT NULL,
  `n1_criteria_id` int(11) DEFAULT NULL,
  `public_image_id` int(11) DEFAULT NULL,
  `system_fault_level_id` int(11) DEFAULT NULL,
  `transformer_id` int(11) DEFAULT NULL,
  `recorded_date` date DEFAULT NULL,
  `bus_voltage_id` int(11) DEFAULT NULL,
  `overall_condition` double DEFAULT NULL,
  `probability_of_force_outage_value` int(11) DEFAULT NULL,
  `recent` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `transformer_informations`
--

INSERT INTO `transformer_informations` (`id`, `bus_voltage_hv_id`, `bus_voltage_lv_id`, `created_at`, `updated_at`, `system_fault_level_hv`, `system_fault_level_lv`, `probability_of_force_outage_id`, `social_aspect_id`, `system_location_id`, `application_use_id`, `system_stability_id`, `pollution_id`, `n1_criteria_id`, `public_image_id`, `system_fault_level_id`, `transformer_id`, `recorded_date`, `bus_voltage_id`, `overall_condition`, `probability_of_force_outage_value`, `recent`) VALUES
(11, 42, 54, '2010-09-11 13:07:06', '2010-10-18 20:01:47', 420, 12, 65, 63, 61, 62, 62, 61, 65, 66, NULL, 1, '2010-09-16', NULL, 59.22, 10, 1),
(12, 42, 52, '2010-09-11 20:11:09', '2010-09-12 18:40:49', 23, 15, 61, 61, 63, 61, 62, 61, 61, 66, NULL, 2, '2010-09-09', NULL, 59.22, 1, 1),
(13, 44, 51, '2010-09-12 21:39:56', '2010-09-12 21:39:56', 500, 220, 61, 62, 61, 62, 65, 63, 61, 61, NULL, 3, '2010-09-14', NULL, 59.22, 1, 1),
(14, 43, 54, '2010-09-13 03:30:23', '2011-03-03 11:20:18', 47.842, 31.3209, 61, 63, 66, 64, 64, 64, 61, 66, NULL, 167, '2010-10-03', NULL, 44.18, 0, 1),
(15, 42, 51, '2010-09-13 09:22:04', '2010-09-13 09:22:04', 10.5, 2.5, 61, 62, 62, 64, 61, 61, 61, 61, NULL, 107, '2010-09-13', NULL, 63.27, 1, 1),
(16, 42, 51, '2010-09-13 13:01:08', '2011-03-03 11:00:26', 1.9153, 5.3017, 61, 62, 63, 64, 61, 63, 61, 66, NULL, 343, '2010-10-04', NULL, 57.09, 0, 1),
(17, 43, 54, '2010-09-14 05:00:19', '2010-09-14 05:00:19', 10, 31, 61, 62, 66, 64, 64, 63, 61, 61, NULL, 168, '2010-09-14', NULL, 44.18, 1, 1),
(18, 42, 51, '2010-09-28 03:18:06', '2011-03-03 11:02:36', 1.9153, 5.2185, 61, 62, 63, 64, 61, 63, 61, 66, NULL, 344, '2010-10-04', NULL, 37, 0, 1),
(19, 42, 52, '2010-09-28 03:21:03', '2011-02-23 04:26:53', 7.5769, 5.7427, 61, 61, 63, 64, 61, 64, 65, 61, NULL, 173, '2010-10-04', NULL, 57.09, 1, 1),
(20, 42, 52, '2010-09-28 03:27:30', '2011-03-03 11:03:39', 6.5399, 7.7837, 61, 61, 62, 64, 61, 64, 61, 61, NULL, 215, '2010-10-03', NULL, 60.54, 0, 1),
(21, 42, 51, '2010-09-30 15:46:55', '2011-03-03 11:23:02', 11.4015, 7.3174, 61, 63, 63, 64, 61, 64, 61, 66, NULL, 96, '2010-10-03', NULL, 59.82, 0, 1),
(22, 43, 54, '2010-09-30 15:53:57', '2011-03-03 11:16:16', 39.4524, 36.6391, 61, 61, 66, 64, 64, 63, 65, 66, NULL, 232, '2010-10-03', NULL, 60.54, 0, 1),
(23, 43, 54, '2010-09-30 15:56:42', '2011-03-03 11:14:18', 23.7632, 4.0113, 61, 61, 66, 64, 64, 63, 65, 66, NULL, 109, '2010-10-03', NULL, 59.22, 0, 1),
(24, 43, 53, '2010-09-30 15:59:25', '2011-03-03 11:06:45', 5.0133, 8.2131, 61, 62, 66, 64, 62, 63, 61, 66, NULL, 51, '2010-10-03', NULL, 58.82, 3, 1),
(25, 44, 55, '2010-10-03 10:34:08', '2011-03-03 11:05:33', 29.7695, 39.1713, 61, 61, 66, 64, 65, 63, 61, 61, NULL, 494, '2010-10-03', NULL, 65, 0, 1),
(26, 43, 53, '2010-10-03 10:49:42', '2011-03-03 11:06:15', 34.4672, 22.5354, 61, 62, 66, 64, 62, 63, 61, 66, NULL, 248, '2010-10-03', NULL, 60.54, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trans_control_cab`
--

CREATE TABLE IF NOT EXISTS `trans_control_cab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `animal` decimal(10,0) DEFAULT NULL,
  `control_humidity` decimal(10,0) DEFAULT NULL,
  `corrosion` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `pragen` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  `wiring_control` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `trans_control_cab`
--

INSERT INTO `trans_control_cab` (`id`, `version`, `test_by`, `test_date`, `work_order`, `animal`, `control_humidity`, `corrosion`, `perform_type`, `pragen`, `transformer`, `wiring_control`) VALUES
(1, NULL, 'Test', '2010-06-01 00:00:00', '11111', '10', '22', '37', '1', '98', '343', '140'),
(2, NULL, 'Mod', '2010-06-02 00:00:00', '11113333', '11', '23', '37', '1', '98', '19', '139');

-- --------------------------------------------------------

--
-- Table structure for table `tran_status`
--

CREATE TABLE IF NOT EXISTS `tran_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tran_status`
--

INSERT INTO `tran_status` (`id`, `version`, `description`) VALUES
(1, NULL, '????????????????'),
(2, NULL, '?????????????????'),
(3, NULL, '????????????????'),
(4, NULL, '??????? spare'),
(5, NULL, 'Spare Part');

-- --------------------------------------------------------

--
-- Table structure for table `visual_bushing`
--

CREATE TABLE IF NOT EXISTS `visual_bushing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` datetime DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `oil_color_hv` decimal(10,0) DEFAULT NULL,
  `oil_color_lv` decimal(10,0) DEFAULT NULL,
  `oil_color_tv` decimal(10,0) DEFAULT NULL,
  `oil_fail_hv` decimal(10,0) DEFAULT NULL,
  `oil_fail_lv` decimal(10,0) DEFAULT NULL,
  `oil_fail_tv` decimal(10,0) DEFAULT NULL,
  `oil_level_hv` decimal(10,0) DEFAULT NULL,
  `oil_level_lv` decimal(10,0) DEFAULT NULL,
  `oil_level_tv` decimal(10,0) DEFAULT NULL,
  `perform_type` decimal(10,0) DEFAULT NULL,
  `pocelain_clean_hv` decimal(10,0) DEFAULT NULL,
  `pocelain_clean_lv` decimal(10,0) DEFAULT NULL,
  `pocelain_clean_tv` decimal(10,0) DEFAULT NULL,
  `pocelain_status_hv` decimal(10,0) DEFAULT NULL,
  `pocelain_status_lv` decimal(10,0) DEFAULT NULL,
  `pocelain_status_tv` decimal(10,0) DEFAULT NULL,
  `transformer` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `visual_bushing`
--

INSERT INTO `visual_bushing` (`id`, `version`, `test_by`, `test_date`, `work_order`, `oil_color_hv`, `oil_color_lv`, `oil_color_tv`, `oil_fail_hv`, `oil_fail_lv`, `oil_fail_tv`, `oil_level_hv`, `oil_level_lv`, `oil_level_tv`, `perform_type`, `pocelain_clean_hv`, `pocelain_clean_lv`, `pocelain_clean_tv`, `pocelain_status_hv`, `pocelain_status_lv`, `pocelain_status_tv`, `transformer`) VALUES
(1, NULL, 'Test', '2010-06-01 00:00:00', '11111222', '71', '70', '70', '108', '108', '109', '126', '126', '126', '1', '80', '81', '80', '89', '89', '89', '343');

-- --------------------------------------------------------

--
-- Table structure for table `visual_inspections`
--

CREATE TABLE IF NOT EXISTS `visual_inspections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `test_type` varchar(255) DEFAULT NULL,
  `test_by` varchar(255) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `oltc_counter` varchar(255) DEFAULT NULL,
  `work_order` varchar(255) DEFAULT NULL,
  `transformer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `visual_inspections`
--

INSERT INTO `visual_inspections` (`id`, `created_at`, `updated_at`, `test_type`, `test_by`, `test_date`, `oltc_counter`, `work_order`, `transformer_id`) VALUES
(1, '2011-01-16 04:48:35', '2011-01-16 16:43:33', 'Commissioning', 'sunny', '2011-01-16', '100', '100', 1),
(2, '2011-01-22 08:22:11', '2011-01-22 08:22:11', 'Commissioning', 'Sunny', '2011-01-22', '100', '100', 1),
(3, '2011-02-09 07:31:04', '2011-02-09 07:31:04', 'Commissioning', 'sunny', '2011-02-09', '100', '100', 11),
(4, '2011-02-14 12:29:59', '2011-02-14 12:29:59', 'Weekly', 'RPT', '2011-02-14', '2360', '013', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visual_inspection_conditions`
--

CREATE TABLE IF NOT EXISTS `visual_inspection_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_message` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `visual_inspection_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `table_name` (`table_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=221 ;

--
-- Dumping data for table `visual_inspection_conditions`
--

INSERT INTO `visual_inspection_conditions` (`id`, `description`, `start`, `end`, `condition`, `name`, `table_name`, `score`, `score_message`, `weight`, `visual_inspection_id`, `created_at`, `updated_at`) VALUES
(1, '1.1 Max. Load ของหม้อแปลง', 0, 59, NULL, 'maxload', 'general_conditions', 1, 'Good', 5, 1, NULL, NULL),
(2, '1.1 Max. Load ของหม้อแปลง', 60, 100, NULL, 'maxload', 'general_conditions', 2, NULL, 5, 1, NULL, NULL),
(3, '1.1 Max. Load ของหม้อแปลง', 101, 130, NULL, 'maxload', 'general_conditions', 3, NULL, 5, 1, NULL, NULL),
(4, '1.1 Max. Load ของหม้อแปลง', 131, 150, NULL, 'maxload', 'general_conditions', 4, NULL, 5, 1, NULL, NULL),
(5, '1.1 Max. Load ของหม้อแปลง', 151, NULL, NULL, 'maxload', 'general_conditions', 5, 'Poor', 5, 1, NULL, NULL),
(6, '1.2 เสียงของหม้อแปลง', NULL, NULL, 'ปกติ', 'sound', 'general_conditions', 1, NULL, 5, NULL, NULL, NULL),
(7, '1.2 เสียงของหม้อแปลง', NULL, NULL, 'ผิดปกติ', 'sound', 'general_conditions', 2, NULL, 5, NULL, NULL, NULL),
(8, '1.4 Grounding Connector', NULL, NULL, 'ปกติ', 'ground_connector', 'general_conditions', 1, NULL, 5, NULL, NULL, NULL),
(9, '1.4 Grounding Connector', NULL, NULL, 'หลวม', 'ground_connector', 'general_conditions', 2, NULL, 5, NULL, NULL, NULL),
(10, '1.4 Grounding Connector', NULL, NULL, 'หลุด', 'ground_connector', 'general_conditions', 3, NULL, 5, NULL, NULL, NULL),
(11, '1.3 การสั่นสะเทือน', NULL, NULL, 'ปกติ', 'vibration', 'general_conditions', 1, NULL, 5, NULL, NULL, NULL),
(12, '1.3 การสั่นสะเทือน', NULL, NULL, 'ผิดปกติ', 'vibration', 'general_conditions', 2, NULL, 5, NULL, NULL, NULL),
(13, '1.5 Foundation', NULL, NULL, 'ปกติ', 'foundation', 'general_conditions', 1, NULL, 5, NULL, NULL, NULL),
(14, '1.5 Foundation', NULL, NULL, 'มีรอยแตกเล็กน้อย', 'foundation', 'general_conditions', 2, NULL, 5, NULL, NULL, NULL),
(15, '1.5 Foundation', NULL, NULL, 'มีรอยแตกมาก', 'foundation', 'general_conditions', 3, NULL, 5, NULL, NULL, NULL),
(16, '1.6 Animal Protection', NULL, NULL, 'สภาพปกติ', 'animal_protect', 'general_conditions', 1, NULL, 5, NULL, NULL, NULL),
(17, '1.6 Animal Protection', NULL, NULL, 'สภาพชำรุด', 'animal_protect', 'general_conditions', 2, NULL, 5, NULL, NULL, NULL),
(18, '1.6 Animal Protection', NULL, NULL, 'ไม่มีใช้งาน', 'animal_protect', 'general_conditions', 3, NULL, 5, NULL, NULL, NULL),
(19, '3.1.1 สภาพ Porcelain', NULL, NULL, 'ปกติ', 'porcelain_status_hv', 'surge_arresters', 1, NULL, 5, NULL, NULL, NULL),
(20, '3.1.1 สภาพ Porcelain', NULL, NULL, 'มีรอยบิ่นเล็กน้อย', 'porcelain_status_hv', 'surge_arresters', 2, NULL, 5, NULL, NULL, NULL),
(21, '3.1.1 สภาพ Porcelain', NULL, NULL, 'มีรอยบิ่นมากกว่า1 แห่ง ', 'porcelain_status_hv', 'surge_arresters', 3, NULL, 5, NULL, NULL, NULL),
(22, '3.1.2 ความสะอาดของ Porcelain', NULL, NULL, 'ปกติ', 'porcelain_clean_hv', 'surge_arresters', 1, NULL, 5, NULL, NULL, NULL),
(23, '3.1.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกเล็กน้อย', 'porcelain_clean_hv', 'surge_arresters', 2, NULL, 5, NULL, NULL, NULL),
(24, '3.1.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกมาก', 'porcelain_clean_hv', 'surge_arresters', 3, NULL, 5, NULL, NULL, NULL),
(25, '3.1.3 สภาพ Grounding Connector', NULL, NULL, 'ปกติ', 'ground_connector_hv', 'surge_arresters', 1, NULL, 5, NULL, NULL, NULL),
(26, '3.1.3 สภาพ Grounding Connector', NULL, NULL, 'หลวม', 'ground_connector_hv', 'surge_arresters', 2, NULL, 5, NULL, NULL, NULL),
(27, '3.1.3 สภาพ Grounding Connector', NULL, NULL, 'หลุด', 'ground_connector_hv', 'surge_arresters', 3, NULL, 5, NULL, NULL, NULL),
(28, '3.1.4 Surge Counter', NULL, NULL, 'ค่าปกติ', 'surge_counter_hv', 'surge_arresters', 1, NULL, 5, NULL, NULL, NULL),
(29, '3.1.4 Surge Counter', NULL, NULL, 'ค่าเกิน 1.5 เท่าของค่าเริ่มต้น', 'surge_counter_hv', 'surge_arresters', 2, NULL, 5, NULL, NULL, NULL),
(30, '3.2.1 สภาพ Porcelain', NULL, NULL, 'ปกติ', 'porcelain_status_lv', 'surge_arresters', 1, NULL, 5, NULL, NULL, NULL),
(31, '3.2.1 สภาพ Porcelain', NULL, NULL, 'สกปรกเล็กน้อย', 'porcelain_status_lv', 'surge_arresters', 2, NULL, 5, NULL, NULL, NULL),
(32, '3.2.1 สภาพ Porcelain', NULL, NULL, 'มีรอยบิ่นมากกว่า1 แห่ง ', 'porcelain_status_lv', 'surge_arresters', 3, NULL, 5, NULL, NULL, NULL),
(33, '3.2.2 ความสะอาดของ Porcelain', NULL, NULL, 'ปกติ', 'porcelain_clean_lv', 'surge_arresters', 1, NULL, 5, NULL, NULL, NULL),
(34, '3.2.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกเล็กน้อย', 'porcelain_clean_lv', 'surge_arresters', 2, NULL, 5, NULL, NULL, NULL),
(35, '3.2.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกมาก', 'porcelain_clean_lv', 'surge_arresters', 3, NULL, 5, NULL, NULL, NULL),
(36, '3.2.3 สภาพ Grounding Connector', NULL, NULL, 'ปกติ', 'ground_connector_lv', 'surge_arresters', 1, NULL, 5, NULL, NULL, NULL),
(37, '3.2.3 สภาพ Grounding Connector', NULL, NULL, 'หลวม', 'ground_connector_lv', 'surge_arresters', 2, NULL, 5, NULL, NULL, NULL),
(38, '3.2.3 สภาพ Grounding Connector', NULL, NULL, 'หลุด', 'ground_connector_lv', 'surge_arresters', 3, NULL, 5, NULL, NULL, NULL),
(39, '3.2.4 Surge Counter', NULL, NULL, 'ค่าปกติ', 'surge_counter_lv', 'surge_arresters', 1, NULL, 5, NULL, NULL, NULL),
(40, '3.2.4 Surge Counter', NULL, NULL, 'ค่าเกิน 1.5 เท่าของค่าเริ่มต้น', 'surge_counter_lv', 'surge_arresters', 2, NULL, 5, NULL, NULL, NULL),
(41, '3.3.1 สภาพ Porcelain', NULL, NULL, 'ปกติ', 'porcelain_status_tv', 'surge_arresters', 1, NULL, 5, NULL, NULL, NULL),
(42, '3.3.1 สภาพ Porcelain', NULL, NULL, 'มีรอยบิ่นเล็กน้อย', 'porcelain_status_tv', 'surge_arresters', 2, NULL, 5, NULL, NULL, NULL),
(43, '3.3.1 สภาพ Porcelain', NULL, NULL, 'มีรอยบิ่นมากกว่า1 แห่ง ', 'porcelain_status_tv', 'surge_arresters', 3, NULL, 5, NULL, NULL, NULL),
(44, '3.3.2 ความสะอาดของ Porcelain', NULL, NULL, 'ปกติ', 'porcelain_clean_tv', 'surge_arresters', 1, NULL, 5, NULL, NULL, NULL),
(45, '3.3.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกเล็กน้อย', 'porcelain_clean_tv', 'surge_arresters', 2, NULL, 5, NULL, NULL, NULL),
(46, '3.3.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกมาก', 'porcelain_clean_tv', 'surge_arresters', 3, NULL, 5, NULL, NULL, NULL),
(47, '3.3.3 สภาพ Grounding Connector', NULL, NULL, 'ปกติ', 'ground_connector_tv', 'surge_arresters', 1, NULL, 5, NULL, NULL, NULL),
(48, '3.3.3 สภาพ Grounding Connector', NULL, NULL, 'หลวม', 'ground_connector_tv', 'surge_arresters', 2, NULL, 5, NULL, NULL, NULL),
(49, '3.3.3 สภาพ Grounding Connector', NULL, NULL, 'หลุด', 'ground_connector_tv', 'surge_arresters', 3, NULL, 5, NULL, NULL, NULL),
(50, '3.3.4 Surge Counter', NULL, NULL, 'ค่าปกติ', 'surge_counter_tv', 'surge_arresters', 1, NULL, 5, NULL, NULL, NULL),
(51, '3.3.4 Surge Counter', NULL, NULL, 'ค่าเกิน 1.5 เท่าของค่าเริ่มต้น', 'surge_counter_tv', 'surge_arresters', 2, NULL, 5, NULL, NULL, NULL),
(52, '2.1.1 สภาพ Porcelain', NULL, NULL, 'ปกติ', 'porcelain_status_hv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(53, '2.1.1 สภาพ Porcelain', NULL, NULL, 'มีรอยบิ่นเล็กน้อย', 'porcelain_status_hv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(54, '2.1.1 สภาพ Porcelain', NULL, NULL, 'มีรอยบิ่นมากกว่า1 แห่ง ', 'porcelain_status_hv', 'bushing_conditions', 3, NULL, 5, NULL, NULL, NULL),
(55, '2.1.2 ความสะอาดของ Porcelain', NULL, NULL, 'ปกติ', 'porcelain_clean_hv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(56, '2.1.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกเล็กน้อย', 'porcelain_clean_hv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(57, '2.1.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกมาก', 'porcelain_clean_hv', 'bushing_conditions', 3, NULL, 5, NULL, NULL, NULL),
(58, '2.1.3 การรั่วซึมของน้ำมัน', NULL, NULL, 'ไม่มีคราบน้ำมัน', 'oil_fail_hv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(59, '2.1.3 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันแห้ง', 'oil_fail_hv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(60, '2.1.3 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันเปียก', 'oil_fail_hv', 'bushing_conditions', 3, NULL, 5, NULL, NULL, NULL),
(61, '2.1.4 ระดับน้ำมัน', NULL, NULL, 'ปกติ', 'oil_level_hv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(62, '2.1.4 ระดับน้ำมัน', NULL, NULL, 'ผิดปกติ', 'oil_level_hv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(64, '2.1.5 สีของน้ำมัน', NULL, NULL, 'ปกติ(ใส)', 'oil_color_hv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(65, '2.1.5 สีของน้ำมัน', NULL, NULL, 'มีสีเข้ม', 'oil_color_hv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(66, '2.2.1 สภาพ Porcelain', NULL, NULL, 'ปกติ', 'porcelain_status_lv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(67, '2.2.1 สภาพ Porcelain', NULL, NULL, 'มีรอยบิ่นเล็กน้อย', 'porcelain_status_lv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(68, '2.2.1 สภาพ Porcelain', NULL, NULL, 'มีรอยบิ่นมากกว่า1 แห่ง ', 'porcelain_status_lv', 'bushing_conditions', 3, NULL, 5, NULL, NULL, NULL),
(69, '2.2.2 ความสะอาดของ Porcelain', NULL, NULL, 'ปกติ', 'porcelain_clean_lv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(70, '2.2.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกเล็กน้อย', 'porcelain_clean_lv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(71, '2.2.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกมาก', 'porcelain_clean_lv', 'bushing_conditions', 3, NULL, 5, NULL, NULL, NULL),
(72, '2.2.3 การรั่วซึมของน้ำมัน', NULL, NULL, 'ไม่มีคราบน้ำมัน', 'oil_fail_lv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(73, '2.2.3 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันแห้ง', 'oil_fail_lv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(74, '2.2.3 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันเปียก', 'oil_fail_lv', 'bushing_conditions', 3, NULL, 5, NULL, NULL, NULL),
(75, '2.2.4 ระดับน้ำมัน', NULL, NULL, 'ปกติ', 'oil_level_lv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(76, '2.2.4 ระดับน้ำมัน', NULL, NULL, 'ผิดปกติ', 'oil_level_lv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(77, '2.2.5 สีของน้ำมัน', NULL, NULL, 'ปกติ(ใส)', 'oil_color_lv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(78, '2.2.5 สีของน้ำมัน', NULL, NULL, 'มีสีเข้ม', 'oil_color_lv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(79, '2.3.1 สภาพ Porcelain', NULL, NULL, 'ปกติ', 'porcelain_status_tv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(80, '2.3.1 สภาพ Porcelain', NULL, NULL, 'มีรอยบิ่นเล็กน้อย', 'porcelain_status_tv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(81, '2.3.1 สภาพ Porcelain', NULL, NULL, 'มีรอยบิ่นมากกว่า1 แห่ง ', 'porcelain_status_tv', 'bushing_conditions', 3, NULL, 5, NULL, NULL, NULL),
(82, '2.3.2 ความสะอาดของ Porcelain', NULL, NULL, 'ปกติ', 'porcelain_clean_tv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(83, '2.3.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกเล็กน้อย', 'porcelain_clean_tv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(84, '2.3.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกมาก', 'porcelain_clean_tv', 'bushing_conditions', 3, NULL, 5, NULL, NULL, NULL),
(85, '2.3.4 ระดับน้ำมัน', NULL, NULL, 'ปกติ', 'oil_level_tv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(86, '2.3.4 ระดับน้ำมัน', NULL, NULL, 'ผิดปกติ', 'oil_level_tv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(87, '2.3.5 สีของน้ำมัน', NULL, NULL, 'ปกติ(ใส)', 'oil_color_tv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(88, '2.3.5 สีของน้ำมัน', NULL, NULL, 'มีสีเข้ม', 'oil_color_tv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(89, '2.3.3 การรั่วซึมของน้ำมัน', NULL, NULL, 'ไม่มีคราบน้ำมัน', 'oil_fail_tv', 'bushing_conditions', 1, NULL, 5, NULL, NULL, NULL),
(90, '2.3.3 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันแห้ง', 'oil_fail_tv', 'bushing_conditions', 2, NULL, 5, NULL, NULL, NULL),
(91, '2.3.3 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันเปียก', 'oil_fail_tv', 'bushing_conditions', 3, NULL, 5, NULL, NULL, NULL),
(92, '4.1 ความผุกร่อน', NULL, NULL, 'ปกติ', 'corrosion_maintank', 'conservator_tanks', 1, NULL, 5, NULL, NULL, NULL),
(93, '4.1 ความผุกร่อน', NULL, NULL, 'มีสนิม', 'corrosion_maintank', 'conservator_tanks', 2, NULL, 5, NULL, NULL, NULL),
(94, '4.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'ปกติ', 'oilfail_maintank', 'conservator_tanks', 1, NULL, 5, NULL, NULL, NULL),
(95, '4.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันแห้ง', 'oilfail_maintank', 'conservator_tanks', 2, NULL, 5, NULL, NULL, NULL),
(96, '4.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันเปียก', 'oilfail_maintank', 'conservator_tanks', 3, NULL, 5, NULL, NULL, NULL),
(97, '4.3 ระดับน้ำมัน', NULL, NULL, 'ปกติ', 'oil_level_maintank', 'conservator_tanks', 1, NULL, 5, NULL, NULL, NULL),
(98, '4.3 ระดับน้ำมัน', NULL, NULL, 'ต่ำกว่าปกติเล็กน้อย', 'oil_level_maintank', 'conservator_tanks', 2, NULL, 5, NULL, NULL, NULL),
(99, '4.3 ระดับน้ำมัน', NULL, NULL, 'ต่ำกว่าปกติมาก', 'oil_level_maintank', 'conservator_tanks', 3, NULL, 5, NULL, NULL, NULL),
(100, '4.4 สีของ Silica Gel', NULL, NULL, 'ปกติ', 'jel_color_maintank', 'conservator_tanks', 1, NULL, 5, NULL, NULL, NULL),
(101, '4.4 สีของ Silica Gel', NULL, NULL, 'สีจากด้านล่างเปลี่ยนน้อยกว่า 1 ใน 4 ', 'jel_color_maintank', 'conservator_tanks', 2, NULL, 5, NULL, NULL, NULL),
(102, '4.4 สีของ Silica Gel', NULL, NULL, 'สีจากด้านล่างเปลี่ยนน้อยกว่า 1 ใน 2 ', 'jel_color_maintank', 'conservator_tanks', 3, NULL, 5, NULL, NULL, NULL),
(103, '4.4 สีของ Silica Gel', NULL, NULL, 'สีจากด้านล่างเปลี่ยนมากกว่า 1 ใน 2', 'jel_color_maintank', 'conservator_tanks', 4, NULL, 5, NULL, NULL, NULL),
(104, '4.4 สีของ Silica Gel', NULL, NULL, 'สีจากด้านบนเปลี่ยนมากกว่าด้านล่าง', 'jel_color_maintank', 'conservator_tanks', 5, NULL, 5, NULL, NULL, NULL),
(105, '4.5 Breather', NULL, NULL, 'ปกติ', 'breather_maintank', 'conservator_tanks', 1, NULL, 5, NULL, NULL, NULL),
(106, '4.5 Breather', NULL, NULL, 'น้ำมันในถ้วยดักฝุ่นแห้ง', 'breather_maintank', 'conservator_tanks', 2, NULL, 5, NULL, NULL, NULL),
(107, '4.5 Breather', NULL, NULL, 'กระบอกแก้วมีรอยแตกร้าว', 'breather_maintank', 'conservator_tanks', 3, NULL, 5, NULL, NULL, NULL),
(108, '4.6 ความผุกร่อน', NULL, NULL, 'ปกติ', 'corrosion_oltc', 'conservator_tanks', 1, NULL, 5, NULL, NULL, NULL),
(109, '4.6 ความผุกร่อน', NULL, NULL, 'มีสนิม', 'corrosion_oltc', 'conservator_tanks', 2, NULL, 5, NULL, NULL, NULL),
(110, '4.7 การรั่วซึมของน้ำมัน', NULL, NULL, 'ปกติ', 'oilfail_oltc', 'conservator_tanks', 1, NULL, 5, NULL, NULL, NULL),
(111, '4.7 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันแห้ง', 'oilfail_oltc', 'conservator_tanks', 2, NULL, 5, NULL, NULL, NULL),
(112, '4.7 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันเปียก', 'oilfail_oltc', 'conservator_tanks', 3, NULL, 5, NULL, NULL, NULL),
(113, '4.8 ระดับน้ำมัน', NULL, NULL, 'ปกติ', 'oil_level_oltc', 'conservator_tanks', 1, NULL, 5, NULL, NULL, NULL),
(114, '4.8 ระดับน้ำมัน', NULL, NULL, 'ต่ำกว่าปกติเล็กน้อย', 'oil_level_oltc', 'conservator_tanks', 2, NULL, 5, NULL, NULL, NULL),
(115, '4.8 ระดับน้ำมัน', NULL, NULL, 'ต่ำกว่าปกติมาก', 'oil_level_oltc', 'conservator_tanks', 3, NULL, 5, NULL, NULL, NULL),
(116, '4.9 สีของ Silica Gel', NULL, NULL, 'ปกติ', 'jel_color_oltc', 'conservator_tanks', 1, NULL, 5, NULL, NULL, NULL),
(117, '4.9 สีของ Silica Gel', NULL, NULL, 'สีจากด้านล่างเปลี่ยนน้อยกว่า 1 ใน 4 ', 'jel_color_oltc', 'conservator_tanks', 2, NULL, 5, NULL, NULL, NULL),
(118, '4.9 สีของ Silica Gel', NULL, NULL, 'สีจากด้านล่างเปลี่ยนน้อยกว่า 1 ใน 2 ', 'jel_color_oltc', 'conservator_tanks', 3, NULL, 5, NULL, NULL, NULL),
(119, '4.9 สีของ Silica Gel', NULL, NULL, 'สีจากด้านล่างเปลี่ยนมากกว่า 1 ใน 2', 'jel_color_oltc', 'conservator_tanks', 4, NULL, 5, NULL, NULL, NULL),
(120, '4.9 สีของ Silica Gel', NULL, NULL, 'สีจากด้านบนเปลี่ยนมากกว่าด้านล่าง', 'jel_color_oltc', 'conservator_tanks', 5, NULL, 5, NULL, NULL, NULL),
(121, '4.10 Breather', NULL, NULL, 'ปกติ', 'breather_oltc', 'conservator_tanks', 1, NULL, 5, NULL, NULL, NULL),
(122, '4.10 Breather', NULL, NULL, 'น้ำมันในถ้วยดักฝุ่นแห้ง', 'breather_oltc', 'conservator_tanks', 2, NULL, 5, NULL, NULL, NULL),
(123, '4.10 Breather', NULL, NULL, 'กระบอกแก้วมีรอยแตกร้าว', 'breather_oltc', 'conservator_tanks', 3, NULL, 5, NULL, NULL, NULL),
(124, '5.1 ความผุกร่อน', NULL, NULL, 'ปกติ', 'corrosion', 'main_tanks', 1, NULL, 5, NULL, NULL, NULL),
(125, '5.1 ความผุกร่อน', NULL, NULL, 'มีสนิม', 'corrosion', 'main_tanks', 2, NULL, 5, NULL, NULL, NULL),
(126, '5.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'ปกติ', 'oil_fail', 'main_tanks', 1, NULL, 5, NULL, NULL, NULL),
(127, '5.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันแห้ง', 'oil_fail', 'main_tanks', 2, NULL, 5, NULL, NULL, NULL),
(128, '5.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันเปียก', 'oil_fail', 'main_tanks', 3, NULL, 5, NULL, NULL, NULL),
(129, '5.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'รั่วซึมน้อยกว่า 1 หยดต่อวินาที', 'oil_fail', 'main_tanks', 4, NULL, 5, NULL, NULL, NULL),
(130, '5.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'รั่วซึมมากกว่า 1 หยดต่อวินาที', 'oil_fail', 'main_tanks', 5, NULL, 5, NULL, NULL, NULL),
(135, '6.1 ความผุกร่อน', NULL, NULL, 'ปกติ', 'corrosion', 'hot_line_oil_filters', 1, NULL, 5, NULL, NULL, NULL),
(136, '6.1 ความผุกร่อน', NULL, NULL, 'มีสนิม', 'corrosion', 'hot_line_oil_filters', 2, NULL, 5, NULL, NULL, NULL),
(137, '6.2 Pressure', NULL, NULL, '<2 bar', 'pressure', 'hot_line_oil_filters', 1, NULL, 5, NULL, NULL, NULL),
(138, '6.2 Pressure', NULL, NULL, '<3 bar', 'pressure', 'hot_line_oil_filters', 2, NULL, 5, NULL, NULL, NULL),
(139, '6.2 Pressure', NULL, NULL, '<4 bar', 'pressure', 'hot_line_oil_filters', 3, NULL, 5, NULL, NULL, NULL),
(140, '6.2 Pressure', NULL, NULL, '>4 bar', 'pressure', 'hot_line_oil_filters', 4, NULL, 5, NULL, NULL, NULL),
(143, '7.1 ความผุกร่อน', NULL, NULL, 'ปกติ', 'corrosion', 'radiator_cooling_systems', 1, NULL, 5, NULL, NULL, NULL),
(144, '7.1 ความผุกร่อน', NULL, NULL, 'มีสนิม', 'corrosion', 'radiator_cooling_systems', 2, NULL, 5, NULL, NULL, NULL),
(145, '7.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'ปกติ', 'oil_fail', 'radiator_cooling_systems', 1, NULL, 5, NULL, NULL, NULL),
(146, '7.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันแห้ง', 'oil_fail', 'radiator_cooling_systems', 2, NULL, 5, NULL, NULL, NULL),
(147, '7.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันเปียก', 'oil_fail', 'radiator_cooling_systems', 3, NULL, 5, NULL, NULL, NULL),
(148, '7.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'รั่วซึมน้อยกว่า 1 หยดต่อวินาที', 'oil_fail', 'radiator_cooling_systems', 4, NULL, 5, NULL, NULL, NULL),
(149, '7.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'รั่วซึมมากกว่า 1 หยดต่อวินาที', 'oil_fail', 'radiator_cooling_systems', 5, NULL, 5, NULL, NULL, NULL),
(150, '7.3 ระดับเสียงของพัดลม', NULL, NULL, 'ปกติ', 'noise_level', 'radiator_cooling_systems', 1, NULL, 5, NULL, NULL, NULL),
(151, '7.3 ระดับเสียงของพัดลม', NULL, NULL, 'มีเสียงดัง ', 'noise_level', 'radiator_cooling_systems', 2, NULL, 5, NULL, NULL, NULL),
(152, '7.3 ระดับเสียงของพัดลม', NULL, NULL, 'พัดลมทำงานไม่ครบ', 'noise_level', 'radiator_cooling_systems', 3, NULL, 5, NULL, NULL, NULL),
(153, '7.4 ทดสอบการทำงานของ Oil Pump', NULL, NULL, 'ปกติ', 'oil_pump', 'radiator_cooling_systems', 1, NULL, 5, NULL, NULL, NULL),
(154, '7.4 ทดสอบการทำงานของ Oil Pump', NULL, NULL, 'มีเสียงดัง ', 'oil_pump', 'radiator_cooling_systems', 2, NULL, 5, NULL, NULL, NULL),
(155, '7.4 ทดสอบการทำงานของ Oil Pump', NULL, NULL, 'ไม่ทำงาน', 'oil_pump', 'radiator_cooling_systems', 3, NULL, 5, NULL, NULL, NULL),
(156, '7.5 สัตว์ทำรัง', NULL, NULL, 'ไม่พบรังสัตว์', 'animal', 'radiator_cooling_systems', 1, NULL, 5, NULL, NULL, NULL),
(157, '7.5 สัตว์ทำรัง', NULL, NULL, 'พบซากรังสัตว์เก่า', 'animal', 'radiator_cooling_systems', 2, NULL, 5, NULL, NULL, NULL),
(158, '7.5 สัตว์ทำรัง', NULL, NULL, 'พบรังสัตว์', 'animal', 'radiator_cooling_systems', 3, NULL, 5, NULL, NULL, NULL),
(159, '8.1 ความผุกร่อน', NULL, NULL, 'ปกติ', 'corrosion', 'transformer_control_cabinets', 1, NULL, 5, NULL, NULL, NULL),
(160, '8.1 ความผุกร่อน', NULL, NULL, 'มีสนิม', 'corrosion', 'transformer_control_cabinets', 2, NULL, 5, NULL, NULL, NULL),
(161, '8.2 สัตว์ทำรัง', NULL, NULL, 'ไม่พบรังสัตว์', 'animal', 'transformer_control_cabinets', 1, NULL, 5, NULL, NULL, NULL),
(162, '8.2 สัตว์ทำรัง', NULL, NULL, 'พบซากรังสัตว์เก่า', 'animal', 'transformer_control_cabinets', 2, NULL, 5, NULL, NULL, NULL),
(163, '8.2 สัตว์ทำรัง', NULL, NULL, 'พบรังสัตว์', 'animal', 'transformer_control_cabinets', 3, NULL, 5, NULL, NULL, NULL),
(164, '8.3 ความชื้นในตู้', NULL, NULL, 'ปกติ', 'control_humidity', 'transformer_control_cabinets', 1, NULL, 5, NULL, NULL, NULL),
(165, '8.3 ความชื้นในตู้', NULL, NULL, 'อุปกรณ์ภายในมีความชื้นบางจุด', 'control_humidity', 'transformer_control_cabinets', 2, NULL, 5, NULL, NULL, NULL),
(166, '8.3 ความชื้นในตู้', NULL, NULL, 'มีน้ำขังและ/หรือมีสนิม', 'control_humidity', 'transformer_control_cabinets', 3, NULL, 5, NULL, NULL, NULL),
(167, '8.4 ปะเก็นตู้', NULL, NULL, 'สภาพดี', 'pragen', 'transformer_control_cabinets', 1, NULL, 5, NULL, NULL, NULL),
(168, '8.4 ปะเก็นตู้', NULL, NULL, 'ฉีกขาดและ/หรือเสื่อมสภาพ แต่ไม่มีคราบน้ำขัง', 'pragen', 'transformer_control_cabinets', 2, NULL, 5, NULL, NULL, NULL),
(169, '8.4 ปะเก็นตู้', NULL, NULL, 'ฉีกขาดและ/หรือเสื่อมสภาพ และมีคราบน้ำขัง', 'pragen', 'transformer_control_cabinets', 3, NULL, 5, NULL, NULL, NULL),
(170, '8.5 Wiring Control', NULL, NULL, 'สภาพดี', 'wiring_control', 'transformer_control_cabinets', 1, NULL, 5, NULL, NULL, NULL),
(171, '8.5 Wiring Control', NULL, NULL, 'ฉนวนฉีกขาดและ/หรือเสื่อมสภาพ', 'wiring_control', 'transformer_control_cabinets', 2, NULL, 5, NULL, NULL, NULL),
(172, '8.5 Wiring Control', NULL, NULL, 'หลุดหลวม', 'wiring_control', 'transformer_control_cabinets', 3, NULL, 5, NULL, NULL, NULL),
(173, '9.1 สภาพ NGR', NULL, NULL, 'ปกติ', 'ngr_status', 'ngrs', 1, NULL, 5, NULL, NULL, NULL),
(174, '9.1 สภาพ NGR', NULL, NULL, 'สีเปลี่ยนและ/หรือ สกปรก', 'ngr_status', 'ngrs', 2, NULL, 5, NULL, NULL, NULL),
(175, '9.1 สภาพ NGR', NULL, NULL, 'มีสนิม/รอยร้าว', 'ngr_status', 'ngrs', 3, NULL, 5, NULL, NULL, NULL),
(176, '9.2 สภาพฐานรองรับ NGR', NULL, NULL, 'ปกติ', 'base_status', 'ngrs', 1, NULL, 5, NULL, NULL, NULL),
(177, '9.2 สภาพฐานรองรับ NGR', NULL, NULL, 'มีรอยแตกเล็กน้อย', 'base_status', 'ngrs', 2, NULL, 5, NULL, NULL, NULL),
(178, '9.2 สภาพฐานรองรับ NGR', NULL, NULL, 'มีรอยแตกมาก', 'base_status', 'ngrs', 3, NULL, 5, NULL, NULL, NULL),
(179, '9.2 สภาพฐานรองรับ NGR', NULL, NULL, 'ทรุด', 'base_status', 'ngrs', 4, NULL, 5, NULL, NULL, NULL),
(180, '9.3 ความสะอาดของ Support Insulator', NULL, NULL, 'ไม่มีคราบสกปรก', 'pocelain_clean', 'ngrs', 1, NULL, 5, NULL, NULL, NULL),
(181, '9.3 ความสะอาดของ Support Insulator', NULL, NULL, 'มีคราบสกปรกเล็กน้อย', 'pocelain_clean', 'ngrs', 2, NULL, 5, NULL, NULL, NULL),
(182, '9.3 ความสะอาดของ Support Insulator', NULL, NULL, 'มีคราบสกปรกมาก', 'pocelain_clean', 'ngrs', 3, NULL, 5, NULL, NULL, NULL),
(183, '9.4 Terminal Connector', NULL, NULL, 'ปกติ', 'ground_connector', 'ngrs', 1, NULL, 5, NULL, NULL, NULL),
(184, '9.4 Terminal Connector', NULL, NULL, 'มีสนิม', 'ground_connector', 'ngrs', 2, NULL, 5, NULL, NULL, NULL),
(185, '9.4 Terminal Connector', NULL, NULL, 'หลุด', 'ground_connector', 'ngrs', 3, NULL, 5, NULL, NULL, NULL),
(186, '9.4 Terminal Connector', NULL, NULL, 'สายตึง', 'ground_connector', 'ngrs', 4, NULL, 5, NULL, NULL, NULL),
(187, '10.1 สภาพ Pocelain', NULL, NULL, 'ปกติ', 'pocelain_status', 'regulating_pts', 1, NULL, 5, NULL, NULL, NULL),
(188, '10.1 สภาพ Pocelain', NULL, NULL, 'มีรอยบิ่นเล็กน้อย', 'pocelain_status', 'regulating_pts', 2, NULL, 5, NULL, NULL, NULL),
(189, '10.1 สภาพ Pocelain', NULL, NULL, 'มีรอยบิ่นมากกว่า1 แห่ง ', 'pocelain_status', 'regulating_pts', 3, NULL, 5, NULL, NULL, NULL),
(190, '10.2 ความสะอาดของ Porcelain', NULL, NULL, 'ปกติ', 'pocelain_clean', 'regulating_pts', 1, NULL, 5, NULL, NULL, NULL),
(191, '10.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกเล็กน้อย', 'pocelain_clean', 'regulating_pts', 2, NULL, 5, NULL, NULL, NULL),
(192, '10.2 ความสะอาดของ Porcelain', NULL, NULL, 'สกปรกมาก', 'pocelain_clean', 'regulating_pts', 3, NULL, 5, NULL, NULL, NULL),
(193, '10.3 การรั่วซึมของน้ำมัน', NULL, NULL, 'ไม่มีคราบน้ำมัน', 'oil_fail', 'regulating_pts', 1, NULL, 5, NULL, NULL, NULL),
(194, '10.3 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันแห้ง', 'oil_fail', 'regulating_pts', 2, NULL, 5, NULL, NULL, NULL),
(195, '10.3 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันเปียก', 'oil_fail', 'regulating_pts', 3, NULL, 5, NULL, NULL, NULL),
(196, '10.4 ระดับน้ำมัน', NULL, NULL, 'ปกติ', 'oil_level', 'regulating_pts', 1, NULL, 5, NULL, NULL, NULL),
(197, '10.4 ระดับน้ำมัน', NULL, NULL, 'ผิดปกติ', 'oil_level', 'regulating_pts', 2, NULL, 5, NULL, NULL, NULL),
(198, '10.5 สีของน้ำมัน', NULL, NULL, 'ปกติ', 'oil_color', 'regulating_pts', 1, NULL, 5, NULL, NULL, NULL),
(199, '10.5 สีของน้ำมัน', NULL, NULL, 'ผิดปกติ', 'oil_color', 'regulating_pts', 2, NULL, 5, NULL, NULL, NULL),
(200, '11.1 ความผุกร่อน', NULL, NULL, 'ปกติ', 'corrosion', 'oltc_compartments', 1, NULL, 5, NULL, NULL, NULL),
(201, '11.1 ความผุกร่อน', NULL, NULL, 'มีสนิม', 'corrosion', 'oltc_compartments', 2, NULL, 5, NULL, NULL, NULL),
(202, '11.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'ปกติ', 'oil_fail', 'oltc_compartments', 1, NULL, 5, NULL, NULL, NULL),
(203, '11.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันแห้ง', 'oil_fail', 'oltc_compartments', 2, NULL, 5, NULL, NULL, NULL),
(204, '11.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'มีคราบน้ำมันเปียก', 'oil_fail', 'oltc_compartments', 3, NULL, 5, NULL, NULL, NULL),
(205, '11.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'รั่วซึมน้อยกว่า 1 หยดต่อวินาที', 'oil_fail', 'oltc_compartments', 4, NULL, 5, NULL, NULL, NULL),
(206, '11.2 การรั่วซึมของน้ำมัน', NULL, NULL, 'รั่วซึมมากกว่า 1 หยดต่อวินาที', 'oil_fail', 'oltc_compartments', 5, NULL, 5, NULL, NULL, NULL),
(207, '12.1 ความผุกร่อน', NULL, NULL, 'ปกติ', 'corrosion', 'oltc_control_cabinets', 1, NULL, 5, NULL, NULL, NULL),
(208, '12.1 ความผุกร่อน', NULL, NULL, 'มีสนิม', 'corrosion', 'oltc_control_cabinets', 2, NULL, 5, NULL, NULL, NULL),
(209, '12.2 สัตว์ทำรัง', NULL, NULL, 'ไม่พบรังสัตว์', 'animal', 'oltc_control_cabinets', 1, NULL, 5, NULL, NULL, NULL),
(210, '12.2 สัตว์ทำรัง', NULL, NULL, 'พบซากรังสัตว์เก่า', 'animal', 'oltc_control_cabinets', 2, NULL, 5, NULL, NULL, NULL),
(211, '12.2 สัตว์ทำรัง', NULL, NULL, 'พบรังสัตว์', 'animal', 'oltc_control_cabinets', 3, NULL, 5, NULL, NULL, NULL),
(212, '12.3 ความชื้นในตู้', NULL, NULL, 'ปกติ', 'control_humidity', 'oltc_control_cabinets', 1, NULL, 5, NULL, NULL, NULL),
(213, '12.3 ความชื้นในตู้', NULL, NULL, 'อุปกรณ์ภายในมีความชื้นบางจุด', 'control_humidity', 'oltc_control_cabinets', 2, NULL, 5, NULL, NULL, NULL),
(214, '12.3 ความชื้นในตู้', NULL, NULL, 'มีน้ำขังและ/หรือมีสนิม', 'control_humidity', 'oltc_control_cabinets', 3, NULL, 5, NULL, NULL, NULL),
(215, '12.4 ปะเก็นตู้', NULL, NULL, 'สภาพดี', 'pragen', 'oltc_control_cabinets', 1, NULL, 5, NULL, NULL, NULL),
(216, '12.4 ปะเก็นตู้', NULL, NULL, 'ฉีกขาดและ/หรือเสื่อมสภาพ แต่ไม่มีคราบน้ำขัง', 'pragen', 'oltc_control_cabinets', 2, NULL, 5, NULL, NULL, NULL),
(217, '12.4 ปะเก็นตู้', NULL, NULL, 'ฉีกขาดและ/หรือเสื่อมสภาพ และมีคราบน้ำขัง', 'pragen', 'oltc_control_cabinets', 3, NULL, 5, NULL, NULL, NULL),
(218, '12.5 Wiring Control', NULL, NULL, 'สภาพดี', 'wiring_control', 'oltc_control_cabinets', 1, NULL, 5, NULL, NULL, NULL),
(219, '12.5 Wiring Control', NULL, NULL, 'ฉนวนฉีกขาด และ/หรือเสื่อมสภาพ', 'wiring_control', 'oltc_control_cabinets', 2, NULL, 5, NULL, NULL, NULL),
(220, '12.5 Wiring Control', NULL, NULL, 'หลุดหลวม', 'wiring_control', 'oltc_control_cabinets', 3, NULL, 5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_link`
--

CREATE TABLE IF NOT EXISTS `web_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `web_link`
--


-- --------------------------------------------------------

--
-- Table structure for table `web_tool`
--

CREATE TABLE IF NOT EXISTS `web_tool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `web_tool`
--


-- --------------------------------------------------------

--
-- Table structure for table `winding_type`
--

CREATE TABLE IF NOT EXISTS `winding_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `winding_type`
--

INSERT INTO `winding_type` (`id`, `version`, `description`) VALUES
(1, NULL, 'Auto Winding'),
(2, NULL, 'Two Winding'),
(3, NULL, 'Three Winding');

-- --------------------------------------------------------

--
-- Table structure for table `winding_types`
--

CREATE TABLE IF NOT EXISTS `winding_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `winding_types`
--

INSERT INTO `winding_types` (`id`, `description`) VALUES
(1, 'Auto Winding'),
(2, 'Two Winding'),
(3, 'Three Winding');
