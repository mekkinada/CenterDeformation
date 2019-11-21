-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2019 at 02:32 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `center`
--

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE IF NOT EXISTS `action` (
  `ID_ACTION` int(11) NOT NULL,
  `LIB_ACTION` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_ACTION` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_ACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `civil_state`
--

CREATE TABLE IF NOT EXISTS `civil_state` (
  `ID_CIVIL_STATE` int(11) NOT NULL,
  `ID_USER` char(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_STATE_CIVIL_AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_STATE_CIVIL_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_STATE_CIVIL` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_CIVIL_STATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `ID_COUNTRY` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `ID_GOVERNORATE` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID_STATE_COUNTRY` int(11) DEFAULT NULL,
  `LIB_COUNTRY_AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_COUNTRY_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_DESCP_COUNTRY` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_COUNTRY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `price`) VALUES
(1, 'Core Java', 1000),
(4, 'Node JS', 1600),
(5, 'JAVAFST', 5000000),
(7, 'Casandra', 2600),
(8, 'Laravel', 2000),
(11, 'Core Java', 1000),
(16, 'jsf', 1000),
(19, 'java j2ee', 1),
(20, 'JPA', 1),
(21, 'JAVA JSF', 200),
(22, 'java java', 100),
(100, 'javaJ2ee', 1000000),
(102, '', 0),
(103, '', 0),
(104, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `courses_students`
--

CREATE TABLE IF NOT EXISTS `courses_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `courses_students`
--

INSERT INTO `courses_students` (`id`, `course_id`, `student_id`) VALUES
(1, NULL, NULL),
(2, 8, 1),
(3, 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `delegation`
--

CREATE TABLE IF NOT EXISTS `delegation` (
  `ID_DELEGATION` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `ID_LOCALITY` int(11) DEFAULT NULL,
  `ID_STATE_DELEGATION` int(11) DEFAULT NULL,
  `LIB_DLG_AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_DLG__EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_DLG` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_DELEGATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `governorate`
--

CREATE TABLE IF NOT EXISTS `governorate` (
  `ID_GOVERNORATE` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ID_STATE_GOUV` int(11) DEFAULT NULL,
  `ID_DELEGATION` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_GOUV_AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_GOUV_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_GOUV` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_GOVERNORATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locality`
--

CREATE TABLE IF NOT EXISTS `locality` (
  `ID_LOCALITY` int(11) NOT NULL,
  `ID_STATE_LOCALITY` int(11) DEFAULT NULL,
  `ID_USER` char(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_LOC_AR` char(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_LOC_FR` char(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_LOCALITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `private_user`
--

CREATE TABLE IF NOT EXISTS `private_user` (
  `USE_ID_USER` char(225) COLLATE utf8_unicode_ci NOT NULL,
  `ID_PRIVILEGE` int(11) NOT NULL,
  `ID_USER` char(225) COLLATE utf8_unicode_ci NOT NULL,
  `ID_PROFILE` int(11) NOT NULL,
  `DATE_AFFECT_PRIV_USER` date DEFAULT NULL,
  `STATE__USED___PRIVATE` int(11) DEFAULT NULL,
  `USED___PRIVATE___DATE___LAST___CHANGED` date DEFAULT NULL,
  `MOTIVE_DR_MODIF_PRIV` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PATTERN___CHG___STATE_` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`USE_ID_USER`,`ID_PRIVILEGE`,`ID_USER`,`ID_PROFILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

CREATE TABLE IF NOT EXISTS `privilege` (
  `ID_PRIVILEGE` int(11) NOT NULL,
  `ID_USER` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_PRIVILEGE_AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_PRIVILEGE_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_PRIVILEGE` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_PRIVILEGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privilege_profile`
--

CREATE TABLE IF NOT EXISTS `privilege_profile` (
  `ID_PRIVILEGE` int(11) NOT NULL,
  `ID_PROFILE` int(11) NOT NULL,
  `STATE_PRIVATE_PROFILE` int(11) DEFAULT NULL,
  `DATE___AFFECT___PRIV___PROFILE` date DEFAULT NULL,
  `DATE___DR___AFFECT___PRIVATE___PROFILE` date DEFAULT NULL,
  `MOTIVE_CHANG_PR_PF` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `STATE_CHANG_PR_PF` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID_PRIVILEGE`,`ID_PROFILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `ID_PROFILE` int(11) NOT NULL,
  `ID_USER` char(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_PROFILE_AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_PROFILE_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_PROFILE` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_PROFILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state_country`
--

CREATE TABLE IF NOT EXISTS `state_country` (
  `ID_STATE_COUNTRY` int(11) NOT NULL,
  `LIB___STATE___COUNTRY___AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB___STATE___COUNTRY___EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP___STATE___COUNTRY` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_STATE_COUNTRY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state_delegation`
--

CREATE TABLE IF NOT EXISTS `state_delegation` (
  `ID_STATE_DELEGATION` int(11) NOT NULL,
  `LIB_STATE_DLG_AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_STATE_DLG_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_STATE_DLG` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_STATE_DELEGATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state_locality`
--

CREATE TABLE IF NOT EXISTS `state_locality` (
  `ID_STATE_LOCALITY` int(11) NOT NULL,
  `LIB_STATE_LOC_AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_STATE_LOC_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_STATE_LOC` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_STATE_LOCALITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state_used`
--

CREATE TABLE IF NOT EXISTS `state_used` (
  `ID_STATE_USED` int(11) NOT NULL,
  `ID_USER` char(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_STATE_USED__AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_STATE_USED_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_USER_STATE` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_STATE_USED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state__governorate`
--

CREATE TABLE IF NOT EXISTS `state__governorate` (
  `ID_STATE_GOUV` int(11) NOT NULL,
  `LIB___STATE___GOV___AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_STATE_GOV_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_STATE_GOV` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_STATE_GOUV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state__privilege`
--

CREATE TABLE IF NOT EXISTS `state__privilege` (
  `ID_STATE__PRIVILEGE` int(11) NOT NULL,
  `LIB_STATE_PRIV_AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB__ETAT_PRIV_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_STATE_PRIV` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_STATE__PRIVILEGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state__profile`
--

CREATE TABLE IF NOT EXISTS `state__profile` (
  `ID_STATE_PROFILE` int(11) NOT NULL,
  `LIB_STATE_PROFILE_AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_STATE_PROFILE_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_STATE_PROFILE` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_STATE_PROFILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) DEFAULT NULL,
  `faculty` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `address` text,
  `gender` varchar(10) DEFAULT NULL,
  `registration_date` date NOT NULL,
  `Paid` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `phone`, `faculty`, `first_name`, `last_name`, `birthdate`, `address`, `gender`, `registration_date`, `Paid`) VALUES
(1, '5455454', 'FST', 'MEKKIIII', 'NNNADA', '2019-01-02', 'DFHDTHJEQTHSTRQHJSYRJ', 'ATHRTHYSR', '2019-01-06', 'EARHTYART');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE IF NOT EXISTS `trainer` (
  `CIN` int(11) NOT NULL,
  `THE_NAME` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIRSTNAME` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEL` int(11) DEFAULT NULL,
  PRIMARY KEY (`CIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_user`
--

CREATE TABLE IF NOT EXISTS `type_user` (
  `ID_TYPE_USER` int(11) NOT NULL,
  `ID_USER` char(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB___TP___USED___AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIB_TP_USE_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCP_TP_USER` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_TYPE_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID_USER` char(225) COLLATE utf8_unicode_ci NOT NULL,
  `ID_STUDENTS` int(11) DEFAULT NULL,
  `CIN` int(11) DEFAULT NULL,
  `PWD_USER` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IDENTITY_USED` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME_USED_AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIRST_NAME_USED_AR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_NAME_EN` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TELF_USED_PERS` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEL2_USER_PERS` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEX_USED` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_CREATION_USED` date DEFAULT NULL,
  `DATE_AFFEC_USEDATE_SYSTEM` date DEFAULT NULL,
  `DATE_BIRTH_USED` date DEFAULT NULL,
  `IDENTITY_PLACE_USED` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PLACE___BIRTH___USED` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL1___USED` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL2___USED` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS1_USED` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS2_USED` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDICATION_ADR` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOTE___USED__` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_ISSUE_CIN` date DEFAULT NULL,
  `DATE___ISSUE___PA` date DEFAULT NULL,
  `DATE___EXPIRATION___AP` date DEFAULT NULL,
  `URL_PHOTO` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID_USER`, `ID_STUDENTS`, `CIN`, `PWD_USER`, `IDENTITY_USED`, `NAME_USED_AR`, `FIRST_NAME_USED_AR`, `USER_NAME_EN`, `TELF_USED_PERS`, `TEL2_USER_PERS`, `SEX_USED`, `DATE_CREATION_USED`, `DATE_AFFEC_USEDATE_SYSTEM`, `DATE_BIRTH_USED`, `IDENTITY_PLACE_USED`, `PLACE___BIRTH___USED`, `EMAIL1___USED`, `EMAIL2___USED`, `ADDRESS1_USED`, `ADDRESS2_USED`, `INDICATION_ADR`, `NOTE___USED__`, `DATE_ISSUE_CIN`, `DATE___ISSUE___PA`, `DATE___EXPIRATION___AP`, `URL_PHOTO`) VALUES
('1', 1, 7070707, '123', '1234', 'nada', 'maki', 'nnada', '54999000', '45000999', 'F', '2018-12-05', '2018-11-05', '2018-12-27', 'tyty', 'fqy', '@1', '@2', 'add1', 'add2', 'ind', 'nnote', '2018-12-12', '2018-12-26', '2018-11-22', 'tof-95701118560344487705583'),
('2', 2, 2270707, '12322', '123224', 'nad2a', 'ma2ki', 'nnada', '54999000', '45000999', 'F', '2018-12-05', '2018-11-05', '2018-12-27', 'tyty', 'fqy', '@1', '@2', 'add1', 'add2', 'ind', 'nnote', '2018-12-12', '2018-12-26', '2018-11-22', 'tof-95701118560344487705583'),
('3', NULL, NULL, '0000', 'SAEEE', 'mekkinada', 'nadamekki', NULL, '45454', '90909', 'H', '2023-06-06', '2020-06-06', '2022-07-03', NULL, 'SAF', NULL, 'VRTBU@', 'ADD123', 'ADD123456', 'ADDDD', 'FFGHJ', '2022-05-05', '2022-01-07', '2019-04-08', 'photo-10945567');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `ID_USER` char(225) COLLATE utf8_unicode_ci NOT NULL,
  `ID_ACTION` int(11) NOT NULL,
  `DESCP_ACTION_USED` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `DATE___ACTION` date DEFAULT NULL,
  PRIMARY KEY (`ID_USER`,`ID_ACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses_students`
--
ALTER TABLE `courses_students`
  ADD CONSTRAINT `courses_students_ibfk_6` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_students_ibfk_5` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
