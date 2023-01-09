-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 29, 2020 at 07:24 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`, `status`) VALUES
(3, 'Fan 2020', 'Active'),
(2, 'ORIENT', 'Active'),
(4, 'Redmi', 'Active'),
(5, 'Samsung', 'Active'),
(6, 'Fuji', 'Active'),
(8, 'SunSilk', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

DROP TABLE IF EXISTS `cashier`;
CREATE TABLE IF NOT EXISTS `cashier` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`id`, `username`, `password`, `status`) VALUES
(1, 'hizbullah', '12345', 'Active'),
(2, 'ghafoor', 'ghafoor', 'Active'),
(3, 'ali', 'ali', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(2, 'Asia Fan', 'Deactive'),
(3, 'laptop', 'Active'),
(9, 'Iron', 'Active'),
(8, 'Cosmetic', 'Active'),
(7, 'Mobile', 'Active'),
(12, 'Shampoo', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `product` varchar(100) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cat_id` int(15) NOT NULL,
  `brand_id` int(15) NOT NULL,
  `cost_price` int(15) NOT NULL,
  `retail_price` int(15) NOT NULL,
  `qty` int(15) NOT NULL,
  `barcode` int(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product`, `description`, `cat_id`, `brand_id`, `cost_price`, `retail_price`, `qty`, `barcode`, `status`) VALUES
(1, 'Orient 100', 'Laptop with luxury Features', 3, 2, 120000, 150000, 20, 23019211, 'Active'),
(2, 'Real me 6 pro', 'Quad Camera setup 64 megaPixel Main sensor  with \n6 GB Ram and SanpDragon 720g', 2, 2, 55000, 60000, 57, 2121, 'Deactive'),
(4, 'Lip Stick', 'Lip Stick', 8, 6, 1500, 2000, 10, 1234, 'Active'),
(5, 'Sunsilk Shampoo', 'long and silky hair', 11, 7, 123, 150, 1, 0, 'Active'),
(6, 'SunSilk 201', 'This is shampoo will give strength to hair', 12, 8, 130, 150, 390, 111, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `subtotal` int(15) NOT NULL,
  `pay` int(15) NOT NULL,
  `balance` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `cashier`, `subtotal`, `pay`, `balance`) VALUES
(1, '2020/07/25', '', 1020000, 1500000, 480000),
(2, '2020/07/25', '', 1020000, 1500000, 480000),
(3, '2020/07/25', '', 1020000, 500000, -520000),
(4, '2020/07/25', '', 780000, 800000, 20000),
(5, '2020/07/25', '', 960000, 1000000, 40000),
(6, '2020/07/25', '', 120000, 150000, 30000),
(7, '2020/07/25', '', 12120000, 12120000, 0),
(8, '2020/07/26', '', 840000, 840000, 0),
(9, '2020/07/26', '', 720000, 720000, 0),
(10, '2020/07/26', '', 180000, 180000, 0),
(11, '2020/07/26', '', 60000, 60000, 0),
(12, '2020/07/26', '', 60000, 60000, 0),
(13, '2020/07/26', '', 60000, 60000, 0),
(14, '2020/07/26', '', 60000, 60000, 0),
(15, '2020/07/26', '', 60000, 60000, 0),
(16, '2020/07/26', '', 60000, 60000, 0),
(17, '2020/07/26', '', 60000, 60000, 0),
(18, '2020/07/26', '', 60000, 60000, 0),
(19, '2020/07/26', '', 60000, 60000, 0),
(20, '2020/07/26', 'hizbullah', 20000, 30000, 10000),
(21, '2020/07/29', 'hizbullah', 12000, 12000, 0),
(22, '2020/07/29', 'hizbullah', 1500, 2000, 500),
(23, '2020/07/29', 'hizbullah', 750, 750, 0),
(24, '2020/07/29', 'hizbullah', 600, 600, 0),
(25, '2020/07/29', 'hizbullah', 60000, 60000, 0),
(26, '2020/07/29', 'ghafoor', 15000, 20000, 5000),
(27, '2020/07/29', 'ghafoor', 1500, 1500, 0),
(28, '2020/07/29', 'ali', 120000, 120000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

DROP TABLE IF EXISTS `sales_product`;
CREATE TABLE IF NOT EXISTS `sales_product` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `sales_id` int(15) NOT NULL,
  `product_id` int(100) NOT NULL,
  `sell_price` int(15) NOT NULL,
  `qty` int(15) NOT NULL,
  `total` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `product_id`, `sell_price`, `qty`, `total`) VALUES
(1, 4, 2121, 60000, 3, 180000),
(2, 4, 2121, 60000, 10, 600000),
(3, 5, 2121, 60000, 12, 720000),
(4, 5, 2121, 60000, 4, 240000),
(5, 6, 2121, 60000, 2, 120000),
(6, 7, 23019211, 150000, 80, 12000000),
(7, 7, 2121, 60000, 2, 120000),
(8, 8, 2121, 60000, 12, 720000),
(9, 8, 2121, 60000, 2, 120000),
(10, 9, 2121, 60000, 12, 720000),
(11, 10, 2121, 60000, 3, 180000),
(12, 11, 2121, 60000, 1, 60000),
(13, 12, 2121, 60000, 1, 60000),
(14, 13, 2121, 60000, 1, 60000),
(15, 14, 2121, 60000, 1, 60000),
(16, 15, 2121, 60000, 1, 60000),
(17, 16, 2121, 60000, 1, 60000),
(18, 17, 2121, 60000, 1, 60000),
(19, 18, 2121, 60000, 1, 60000),
(20, 19, 2121, 60000, 1, 60000),
(21, 20, 1234, 2000, 10, 20000),
(22, 21, 0, 150, 80, 12000),
(23, 22, 0, 150, 10, 1500),
(24, 23, 0, 150, 5, 750),
(25, 24, 0, 150, 4, 600),
(26, 25, 2121, 60000, 1, 60000),
(27, 26, 111, 150, 100, 15000),
(28, 27, 111, 150, 10, 1500),
(29, 28, 2121, 60000, 2, 120000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
