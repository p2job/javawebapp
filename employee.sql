-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2020 at 01:12 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `ID` int(11) NOT NULL,
  `Department_ID` varchar(50) NOT NULL,
  `Department_Name` varchar(100) NOT NULL,
  `Create_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`ID`, `Department_ID`, `Department_Name`, `Create_Date`) VALUES
(1, '1001', 'โปรแกรมเมอร์', '2020-07-31 08:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `Name_Prefix` varchar(20) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `First_Name_Eng` varchar(100) NOT NULL,
  `Last_Name_Eng` varchar(100) NOT NULL,
  `Sex` varchar(20) NOT NULL,
  `Birth_Date` date NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `Race` varchar(50) NOT NULL,
  `Religion` varchar(50) NOT NULL,
  `Place_of_Birth` varchar(100) NOT NULL,
  `Age` int(11) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Height` int(11) NOT NULL,
  `Present_Address` text NOT NULL,
  `Home_Tel` int(11) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `E-mail` varchar(100) NOT NULL,
  `Department_ID` varchar(50) NOT NULL,
  `Create_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name_Prefix`, `First_Name`, `Last_Name`, `First_Name_Eng`, `Last_Name_Eng`, `Sex`, `Birth_Date`, `Nationality`, `Race`, `Religion`, `Place_of_Birth`, `Age`, `Weight`, `Height`, `Present_Address`, `Home_Tel`, `Mobile`, `E-mail`, `Department_ID`, `Create_Date`) VALUES
(1, 'à¸?à¸²à¸¢', 'asdasdasds', 'sadadsaadas', 'phongsakon', 'Boonsoi', 'Ã Â¸?Ã Â¸Â²Ã Â¸Â¢', '2020-07-31', 'asdadsa', 'sadadsda', 'asdadsad', 'asdasd', 21, 56, 175, 'asdadsadsa', 930561429, 930561429, 'phongsakon.b@ku.th', '1001', '2020-07-31 10:26:04'),
(2, 'à¸?à¸²à¸¢', 'à¸?à¸?à¸¨à¸?à¸£', 'à¸?à¸¸à¸?à¸ªà¸£à¹?à¸­à¸¢', 'phongsakon', 'Boonsoi', 'à¸?à¸²à¸¢', '2020-07-31', 'à¹?à¸?à¸¢', 'à¹?à¸?à¸¢', 'à¸?à¸¸à¸?à¸?', 'à¹?à¸£à¸?à¸?à¸²à¸¥', 21, 56, 175, 'à¸?à¹?à¸²à¸?', 930561429, 930561429, 'null', '1001', '2020-07-31 08:47:00'),
(3, 'Ã Â¸?Ã Â¸Â²Ã Â¸Â¢', 'Ã Â¸?Ã Â¸?Ã Â¸Â¨Ã Â¸?Ã Â¸Â£', 'Ã Â¸?Ã Â¸Â¸Ã Â¸?Ã Â¸ÂªÃ Â¸Â£Ã Â¹?Ã Â¸Â­Ã Â¸Â¢', 'phongsakon', 'Boonsoi', 'Ã Â¸?Ã Â¸Â²Ã Â¸Â¢', '2020-07-31', 'Ã Â¹?Ã Â¸?Ã Â¸Â¢', 'Ã Â¹?Ã Â¸?Ã Â¸Â¢', 'Ã Â¸?Ã Â¸Â¸Ã Â¸?Ã Â¸?', 'Ã Â¹?Ã Â¸Â£Ã Â¸?Ã Â¸?Ã Â¸Â²Ã Â¸Â¥', 21, 56, 175, 'Ã Â¸?Ã Â¹?Ã Â¸Â²Ã Â¸?', 930561429, 930561429, 'phongsakon.b@ku.th', '1001', '2020-07-31 10:21:53'),
(4, 'à¸?à¸²à¸¢', 'asdasdasds', 'à¸?à¸¸à¸?à¸ªà¸£à¹?à¸­à¸¢', 'phongsakon', 'Boonsoi', 'M', '2020-08-01', 'asdadsa', 'sadadsda', 'asdadsad', 'asdasd', 21, 56, 175, 'sadasdasdasd', 930561429, 930561429, 'phongsakon.b@ku.th', '1001', '2020-07-31 10:59:23'),
(5, 'à¸?à¸²à¸¢', 'à¸?à¸?à¸¨à¸?à¸£', 'à¸?à¸¸à¸?à¸ªà¸£à¹?à¸­à¸¢', 'phongsakon', 'Boonsoi', 'F', '2020-07-31', 'à¹?à¸?à¸¢', 'sadadsda', 'asdadsad', 'à¹?à¸£à¸?à¸?à¸²à¸¥', 21, 56, 175, 'sadasdasdasd', 930561429, 930561429, 'phongsakon.b@ku.th', '1001', '2020-07-31 11:11:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
