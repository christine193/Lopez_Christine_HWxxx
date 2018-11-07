-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 07, 2018 at 10:33 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pie`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_piechart`
--

DROP TABLE IF EXISTS `tbl_piechart`;
CREATE TABLE IF NOT EXISTS `tbl_piechart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ages` varchar(50) NOT NULL,
  `info` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_piechart`
--

INSERT INTO `tbl_piechart` (`ID`, `ages`, `info`) VALUES
(1, '13-17', 'slice2'),
(2, '18-24', 'slice6'),
(3, '25-34', 'slice5'),
(4, '35-44', 'slice1'),
(5, '45-54', 'slice4'),
(6, '55+', 'slice3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
