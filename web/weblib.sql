-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2016 at 07:55 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `weblib`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `BOOKID` int(5) NOT NULL AUTO_INCREMENT,
  `BOOK_NAME` varchar(50) NOT NULL,
  `AUTHOR_NAME` varchar(30) NOT NULL,
  `CATEGORY` varchar(25) NOT NULL,
  `PUBLISHER_NAME` varchar(25) NOT NULL,
  `STOCK` int(5) NOT NULL,
  `COVER_IMG` varchar(30) NOT NULL,
  PRIMARY KEY (`BOOKID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BOOKID`, `BOOK_NAME`, `AUTHOR_NAME`, `CATEGORY`, `PUBLISHER_NAME`, `STOCK`, `COVER_IMG`) VALUES
(1, 'Life of PI', 'Yann Martel', 'Novel', 'Metro Reads', 101, 'Life_of_pi.jpg'),
(2, 'The 3 Mistakes of my Life', 'Chetan Bhagat', 'Novel', 'Metro', 102, 'Mistake_3.jpg'),
(3, 'Playing it my way', 'Sachin Tendulkar', 'Sports', 'Reader Digest', 100, 'Sachin.jpg'),
(4, 'The Adventures of Sherlock Holmes', 'Sir Arthur Conan Doyle', 'Detective', 'Sterling Juvenile', 102, 'Sherlock_Holmes.jpg'),
(5, 'The Black Superman', 'Muhammad Naveed Ahmed', 'Sports', 'BookRix', 100, 'The_black_superman.png'),
(6, 'Gitanjali', 'Rabindra Nath Tagore', 'Poetry', 'India Society of London', 100, 'Gitanjali.jpg'),
(7, 'Gora', 'Rabindra Nath Tagore', 'Novel', 'Sahitya Akademi', 100, 'Gora.jpg'),
(8, 'Devdas', 'Sarat Chandra Chattopadhy', 'Novel', 'GCS', 100, 'Devdas_cover.jpg'),
(9, 'Cinderella', ' Brothers Grimm', 'FairyTale', 'Scribner Press', 103, 'Cinderella.jpg'),
(10, 'Teach Yourself PHP MySQL', 'Julie C. Meloni', 'Programming', 'SAMS', 100, 'Teach_Urself_Php.PNG'),
(11, 'PHP and MySql 24 Hour Trainer', 'Andrea Tarr', 'Programming', 'Wrox', 100, 'PHP_MySQL_24Hr.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `FID` int(5) NOT NULL AUTO_INCREMENT,
  `UNAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `CATEGORY` varchar(25) DEFAULT NULL,
  `MSG` text,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FID`, `UNAME`, `EMAIL`, `CATEGORY`, `MSG`) VALUES
(1, 'Suman', 'suman.g.84@gmail.com', 'General Message', 'It is good and user friendly...');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `MEMBER_NAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`MEMBER_NAME`, `EMAIL`, `PASSWORD`) VALUES
('Ayon Ghosh', 'ayon.g.84@gmail.com', 'ag1234'),
('CMC Academy', 'cmc@gmail.com', 'cmchazra'),
('Saikat Dutta', 'dutta.saikat@gmail.com', 'saikat'),
('Suman Ghosh', 'suman.g.84@gmail.com', 'sg123');

-- --------------------------------------------------------

--
-- Table structure for table `tran_book`
--

CREATE TABLE IF NOT EXISTS `tran_book` (
  `TransactionID` int(5) NOT NULL AUTO_INCREMENT,
  `BookID` int(5) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `IssueDate` varchar(20) DEFAULT NULL,
  `DueDate` varchar(20) DEFAULT NULL,
  `SubmitDate` varchar(20) DEFAULT NULL,
  `Fine` int(5) DEFAULT NULL,
  PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tran_book`
--

INSERT INTO `tran_book` (`TransactionID`, `BookID`, `Email`, `IssueDate`, `DueDate`, `SubmitDate`, `Fine`) VALUES
(1, 2, 'suman.g.84@gmail.com', '2016-07-15', '2016-07-30', '2016-07-17', 0),
(2, 1, 'ayon.g.84@gmail.com', '2016-07-16', '2016-07-31', '2016-07-17', 0),
(3, 1, 'ayon.g.84@gmail.com', '2016-07-16', '2016-07-31', '2016-07-17', 0),
(4, 4, 'ayon.g.84@gmail.com', '2016-07-16', '2016-07-31', '2016-07-17', 0),
(5, 4, 'ayon.g.84@gmail.com', '2016-07-17', '2016-08-01', '2016-07-17', 0),
(6, 2, 'ayon.g.84@gmail.com', '2016-07-17', '2016-08-01', '2016-07-17', 0),
(7, 2, 'ayon.g.84@gmail.com', '2016-07-24', '2016-08-08', '2016-07-24', 0),
(8, 9, 'suman.g.84@gmail.com', '2016-07-30', '2016-08-14', '2016-07-31', 0),
(9, 2, 'suman.g.84@gmail.com', '2016-07-30', '2016-08-14', '2016-07-31', 0),
(10, 4, 'suman.g.84@gmail.com', '2016-07-30', '2016-08-14', '2016-07-31', 0),
(11, 8, 'suman.g.84@gmail.com', '2016-07-30', '2016-08-14', '2016-07-31', 0),
(12, 9, 'suman.g.84@gmail.com', '2016-07-31', '2016-08-15', '2016-07-31', 0),
(13, 2, 'suman.g.84@gmail.com', '2016-07-31', '2016-08-15', '2016-07-31', 0),
(14, 3, 'suman.g.84@gmail.com', '2016-07-31', '2016-08-15', '2016-07-31', 0),
(15, 5, 'suman.g.84@gmail.com', '2016-07-31', '2016-08-15', '2016-07-31', 0),
(16, 6, 'suman.g.84@gmail.com', '2016-07-31', '2016-08-15', '2016-07-31', 0),
(17, 8, 'suman.g.84@gmail.com', '2016-07-31', '2016-08-15', NULL, NULL),
(18, 1, 'suman.g.84@gmail.com', '2016-07-31', '2016-08-15', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
