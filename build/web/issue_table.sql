-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2016 at 09:34 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `issue_table`
--

CREATE TABLE `issue_table` (
  `Serial_Number` int(200) NOT NULL,
  `Email_ID` varchar(50) NOT NULL,
  `Name_Of_The_Book` varchar(100) NOT NULL,
  `Date_Of_Issue` varchar(50) NOT NULL,
  `Action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_table`
--

INSERT INTO `issue_table` (`Serial_Number`, `Email_ID`, `Name_Of_The_Book`, `Date_Of_Issue`, `Action`) VALUES
(45, 'cc', 'vcv', 'vc', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `issue_table`
--
ALTER TABLE `issue_table`
  ADD PRIMARY KEY (`Email_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
