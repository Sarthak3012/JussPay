-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 17, 2021 at 03:54 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Id` int(5) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Amount` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Id`, `Name`, `Email`, `Amount`) VALUES
(1, 'Riya Das', 'riyadas567@gmail.com', 103988),
(2, 'Raj Mishra', 'rajmishra28@gmail.com', 166724),
(3, 'Kunj Verma', 'kunjverma89@gmail.com', 144054),
(4, 'Nishi Patel', 'nishipatel67@gmail.com', 62798),
(5, 'Rajvi Mehta', 'rajvim489@gmail.com', 2588360),
(6, 'Niraj Pandya', 'pandyanirajr45@gmail.com', 89143),
(7, 'Virat Shah', 'viratshah235@gmail.com', 8257),
(8, 'Ram Ajudiya', 'ramajudiya789@gmail.com', 29967),
(9, 'Ronak Gajera', 'ronakgajera89@gmail.com', 95000),
(10, 'Rohan Sharma', 'sharmarohan8976@gmail.om', 61467);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `Sender` varchar(20) NOT NULL,
  `Receiver` varchar(20) NOT NULL,
  `Amount` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`Sender`, `Receiver`, `Amount`) VALUES
('Virat Shah', 'Ronak Gajera', 5000),
('Nishi Patel', 'Niraj Pandya', 456),
('Rajvi Mehta', 'Ram Ajudiya', 8900);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
