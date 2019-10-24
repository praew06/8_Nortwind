-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2019 at 05:39 AM
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
-- Table structure for table `8shippers`
--

CREATE TABLE `8shippers` (
  `shipperid` int(5) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(12, 'pp', 45, 23, 21, 112, 11, 111, '', 33),
(123, 'แป้ง', 10, 9, 155, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryid` int(20) NOT NULL,
  `categoryname` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(20) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `contactname` varchar(50) NOT NULL,
  `contacttitle` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `postalcode` varchar(5) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `fax` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeid` int(20) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `hiredate` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `postalcode` varchar(5) NOT NULL,
  `country` varchar(50) NOT NULL,
  `homephone` varchar(10) NOT NULL,
  `extension` varchar(50) NOT NULL,
  `reportsto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderid` int(10) NOT NULL,
  `productid` int(10) NOT NULL,
  `unitprice` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(5) NOT NULL,
  `customerid` varchar(50) NOT NULL,
  `employeeid` varchar(50) NOT NULL,
  `orderdate` varchar(50) NOT NULL,
  `requireddate` varchar(50) NOT NULL,
  `shippeddate` varchar(50) NOT NULL,
  `shipvia` varchar(50) NOT NULL,
  `freight` varchar(50) NOT NULL,
  `shipname` varchar(50) NOT NULL,
  `shipaddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplierid` int(10) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `contactname` varchar(50) NOT NULL,
  `contacttitle` varchar(50) NOT NULL,
  `address` smallint(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `postalcode` varchar(5) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `fax` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `8shippers`
--
ALTER TABLE `8shippers`
  ADD PRIMARY KEY (`shipperid`);

--
-- Indexes for table `a_products`
--
ALTER TABLE `a_products`
  ADD PRIMARY KEY (`pdid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `8shippers`
--
ALTER TABLE `8shippers`
  MODIFY `shipperid` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a_products`
--
ALTER TABLE `a_products`
  MODIFY `pdid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
