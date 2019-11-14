-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2019 at 06:58 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `a_products`
--

CREATE TABLE `a_products` (
  `pdid` int(10) NOT NULL,
  `pdname` varchar(10) NOT NULL,
  `supplierid` int(10) NOT NULL,
  `categoryid` int(10) NOT NULL,
  `quantityperunit` int(10) NOT NULL,
  `unitprice` int(10) NOT NULL,
  `unitsinstock` int(10) NOT NULL,
  `unitsonorder` int(10) NOT NULL,
  `reorderlevel` varchar(50) NOT NULL,
  `discontinued` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `a_products`
--

INSERT INTO `a_products` (`pdid`, `pdname`, `supplierid`, `categoryid`, `quantityperunit`, `unitprice`, `unitsinstock`, `unitsonorder`, `reorderlevel`, `discontinued`) VALUES
(123, 'á»é§', 10, 9, 155, 0, 0, 0, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a_products`
--
ALTER TABLE `a_products`
  ADD PRIMARY KEY (`pdid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a_products`
--
ALTER TABLE `a_products`
  MODIFY `pdid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
