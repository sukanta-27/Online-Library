-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2016 at 11:54 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `all_books`
--

-- --------------------------------------------------------

--
-- Table structure for table `books_table`
--

CREATE TABLE `books_table` (
  `Serial Number` varchar(500) NOT NULL,
  `Name Of The Book` varchar(100) NOT NULL,
  `Name Of The Author` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `No. Of Stocks Available` int(254) NOT NULL,
  `Image Link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_table`
--

INSERT INTO `books_table` (`Serial Number`, `Name Of The Book`, `Name Of The Author`, `Category`, `No. Of Stocks Available`, `Image Link`) VALUES
('D1', 'Romeo and Juliet', 'William Shakespeare', 'Drama', 200, ''),
('D2', 'MACBETH', 'William Shakespeare', 'Drama', 200, ''),
('D3', 'The Fault in Our Stars', ' John Green', 'Drama', 200, ''),
('D4', 'Hamlet', ' William Shakespeare', 'Drama', 200, ''),
('D5', 'A Midsummer Night''s Dream', 'William Shakespeare', 'Drama', 200, ''),
('D6', 'Julius Caesar', 'William Shakespeare', 'Drama', 200, ''),
('R1', 'Love Story', 'Erich Segal', 'Romance', 200, ''),
('R2', 'Pride and Prejudice', ' Jane Austen', 'Romance', 200, ''),
('R3', 'The Notebook', 'Nicholas Sparks', 'Romance', 200, ''),
('R4', 'Mr. Perfect', 'Linda Howard', 'Romance', 200, ''),
('SF1', 'Ready Player One', 'Ernest Cline', 'Science Fiction', 200, ''),
('SF2', 'The Martian', 'Andy Weir ', 'Science Fiction', 200, ''),
('SF3', 'Old Man''s War', 'John Scalzi ', 'Science Fiction', 200, ''),
('SF4', 'Dune\r\n', 'Frank Herbert', 'Science Friction', 200, ''),
('SF5', 'The Book of the New Sun', 'Gene Wolfe', 'Science Friction', 200, ''),
('SF6', 'The Moon Is a Harsh Mistress\r\n', 'Robert A. Heinlein', 'Science Friction', 200, ''),
('SF7', 'The Dispossessed\n', 'Ursula K. Le Guin', 'Science Friction', 200, ''),
('SF8', 'Hyperion', 'Dan Simmons', 'Science Friction', 200, ''),
('SF9', 'Neuromancer', 'William Gibson', 'Science Friction', 200, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books_table`
--
ALTER TABLE `books_table`
  ADD PRIMARY KEY (`Serial Number`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
