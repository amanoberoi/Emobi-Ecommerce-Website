-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 20, 2012 at 07:22 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `emobi`
--
CREATE DATABASE `emobi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `emobi`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`) VALUES
('ani', 'ani'),
('prathamesh', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`name`) VALUES
('Apple'),
('Blackberry'),
('HTC'),
('Micromax'),
('Nokia'),
('Samsung'),
('Sony');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `password`, `address`) VALUES
('a', 'a', ''),
('aman', 'aman', ''),
('Dinesh', 'patel', ''),
('pratham', 'abc', ''),
('pratima', '1234', ''),
('prosaragad', 'abc', ''),
('test', 'test', '');

-- --------------------------------------------------------

--
-- Table structure for table `handset`
--

CREATE TABLE IF NOT EXISTS `handset` (
  `id` int(11) NOT NULL,
  `b_id` varchar(15) DEFAULT NULL,
  `name` varchar(25) NOT NULL,
  `screen` varchar(35) NOT NULL,
  `os` varchar(25) NOT NULL,
  `price` int(11) NOT NULL,
  `camera` varchar(50) NOT NULL,
  `features` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foreig_key` (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `handset`
--

INSERT INTO `handset` (`id`, `b_id`, `name`, `screen`, `os`, `price`, `camera`, `features`, `stock`) VALUES
(1, 'Nokia', 'Nokia E6', '640 x 480 Pixels, 2.46"', 'Symbian Anna', 377, 'Yes,2x Digital Zoom with Full-focus & Flash', 'Wi-Fi,MP3,Digital Audio&Video Recording', 100),
(2, 'Nokia', 'Nokia 6700 Classic Gold E', 'Symbian Anna', '640 x 480 Pixels, 3.15"', 451, '5MP', '4x Digital Zoom with Autofocus & LED Flash,\r\n3G,512 MB RAM', 100),
(3, 'Nokia', 'Nokia Lumia 800', '800 X 480 Pixels,3.7"', 'Windows Phone 7.5', 511, '8.0 MP', 'Memory InBuilt 512 MB (Program,100) + 16 GB (Internal,100),\r\n3G ', 100),
(4, 'Nokia', 'Nokia N9', '854 x 480 Pixels, 3.9"', 'MeeGo 1.2 Harmattan', 589, '8.0 MP', '16 GB or 64 GB + RAM: 1 GB,3G', 100),
(5, 'Nokia', 'Nokia E7', '640 x 360 Pixels, 4.0"', 'Symbian 3 OS,upgradable t', 566, '8.0MP, Ext:0.3MP, VGA', 'Wi-Fi ,3G,RAM: 1 GB,16 GB Internal', 100),
(6, 'Nokia', 'Nokia Lumia 900', '480 x 800 Pixels, 4.3"', 'Windows Phone 7.5 Mango', 694, 'Ext:8.0MP;Int:1.0MP', '14.5 GB (Internal,100) + 512 MB RAM, 3G', 100),
(7, 'Nokia', 'Nokia Lumia 800', '800 x 480 Pixels, 3.7"', 'Windows Phone 7.5', 511, '8.0 MP', '512 MB (Program,100) + 16 GB (Internal,100), 3G', 100),
(8, 'Nokia', 'Nokia 808 PureView', '640 x 360 Pixels, 4.0 inches', '540', 41, 'Nokia Belle Feature Pack 1', 'Wi-Fi ,3G', 100),
(9, 'Nokia', 'Nokia Lumia 920', '1280 x 768 pix., 4.5"', 'Windows Phone 8', 889, 'Ext:8.7MP; Int:1.0MP', 'Wi-Fi ,3G,16 GB Internal, HD Audio & Video Recording', 100),
(10, 'Nokia', 'Nokia Lumia 820', '480 x 800 Pixels, 3.7"', 'Windows Phone 8', 734, '8.0 MP', 'Wi-Fi ,3G,HD Video Recording', 100),
(11, 'Nokia', 'Nokia X7', '640 x 360 Pixels, 4.0"', 'Symbian Anna', 443, '8.0 MP', 'WiFi,3G 512 MB', 100),
(12, 'Samsung', 'Samsung Galaxy Ace', '320 x 480 Pixels, 3.5"', 'Android OS v2.3 ', 300, '3.0 MP', 'Bluetooth v3.0 with A2DP,Wi-Fi', 100),
(13, 'Samsung', 'Samsung Omnia M', '480 x 800 Pixels, 4.0" ', 'Windows Phone OS v7.5 (Ma', 353, 'Ext:5.0MP; Int:0.3MP, VGA', '3G,4 (or) 8 GB (Internal) + 384 MB (RAM)', 99),
(14, 'Samsung', 'Samsung Galaxy S3', '1280 x 720 Pixels, 4.8"', 'Android OS v4.0 ', 776, 'Ext:8.0MP: Int:1.9MP', '16 (or) 32 GB (User memory), 64,3G,Wi-Fi', 100),
(15, 'Samsung', 'Samsung Galaxy Y Duos', '240 x 320 Pixels, 3.14"', 'Android OS v2.3 ', 204, '3.0 MP', 'Wi-Fi ,3G,MP3,Digital Audio&Video Recording', 100),
(16, 'Samsung', 'Samsung Galaxy R', '480 x 800 Pixels, 4.2"', 'Android OS v2.3 ', 522, 'Ext:5.0MP; Int:1.3MP', 'Wi-Fi ,3G,MP3', 100),
(17, 'Samsung', 'Samsung Galaxy Note 2', '320 x 480 Pixels, 5.5"', 'Android OS, v4.1 ', 864, 'Ext:8.0MP; Int:1.9MP', '16 (or) 32 (or) 64 GB (Internal) + 2 GB (RAM) Wi-Fi 3G ', 100),
(18, 'Samsung', 'Samsung Galaxy S Duos', '480 x 800 Pixels, 4.0"', 'Android OS, v4.0', 398, 'Ext:5.0MP; Int:0.3MP,VGA', 'Wi-Fi, 3G, 1GB (Internal) + 512 MB (RAM)', 100),
(19, 'Samsung', 'Samsung Galaxy S2 X', '800 x 480 Pixels, 3.5"', 'Android OS v2.3', 576, '8.0MP,Front: 2.0MP', 'Wi-Fi ,3G', 100),
(20, 'Samsung', 'Galaxy Attain', '320 x 480 Pixels, 3.5"', 'Android OS v2.3', 347, 'Ext:3.0MP,; Int:1.3MP', '512 MB RAM, 3G', 100),
(21, 'Samsung', 'Galaxy Advance', '480 x 800 Pixels, 4.0"', 'Android OS v2.3', 597, 'Ext:5.0MP; Int:1.3MP', 'Wi-Fi, 3G', 100),
(22, 'Samsung', 'Samsung Galaxy S2 WiMax', '4.7 inches', 'Android OS v2.3', 575, 'Ext:8.0MP,; Int:2.0MP', 'Wi-Fi ,3G, CPU C210 + QSC6085 (1.4GHz), Samsung Apps', 100),
(23, 'HTC', 'HTC Desire V', '488', 'Android 4.0', 5, '480 x 800 pixels,4.0 inches', '1 GHz Cortex-A5,Dual SIM,512 MB RAM,3G, 4 GB internal ,microSD up to 32 GB,Wi-Fi,GPS', 99),
(24, 'HTC', 'HTC Desire', '320 x 480 pixels, 3.5 inches', 'Android OS, v4.0', 328, '5 MP, autofocus', '600 MHz Cortex-A5, 512 MB RAM, microSD up to 32 GB,Wi-Fi', 99),
(25, 'HTC', 'HTC One X', '720 x 1280 pixels, 4.7 inches', 'Android 4.0', 800, '8.1 MP', 'Quad-core 1.5 GHz, 1 GB RAM, 32 GB internal,Wi-Fi,GPS,3G', 100),
(26, 'HTC', 'HTC One S', '540 x 960 pixels, 4.3 inches', 'Android 4.0', 746, '8 MP', 'Dual-core 1.5 GHz, 1 GB RAM, 16 GB internal, Wi-Fi, GPS, 3G', 100),
(27, 'HTC', 'HTC Explorer', '320 x 480 pixels, 3.2 inches', 'Android OS, v2.3', 194, '3.15 MP', '600 MHz Cortex A5, 512 MB RAM, 3G, microSD up to 32GB, Wi-Fi', 100),
(28, 'HTC', 'HTC One V', '480 x 800 pixels, 3.7 inches', 'Android OS, v4.0.3', 389, '5 MP', '1 GHz, 512 MB RAM, Wi-Fi, 4 GB internal, microSD up to 32GB', 100),
(29, 'HTC', 'HTC Sensation XE', '540 x 960 pixels, 4.3 inches', 'Android OS, v2.3.4', 716, '8 MP', 'Dual-core 1.5 GHz, 768 MB RAM,GPS,3G', 100),
(30, 'HTC', 'One Z', '480 x 800 pixels, 3.7 inches', 'Android OS, v2.3.4', 569, '5 MP', '1 GHz,768 MB RAM,GPS,Wi-Fi3G', 100),
(31, 'HTC', 'ChaCha', '480 x 320 pixels, 2.6 inches', 'Android OS, v2.3', 262, '5 MP', '800 MHz, Wi-Fi, 3G, 512 MB internal, microSD, up to 32GB', 100),
(32, 'Blackberry', 'Blackberry Curve 9220', '320 x 240 pixels,2.44"', 'BlackBerry OS 7.1', 236, '2 MP', '512 MB RAM,512 MB ROM,microSD up to 32 GB,Wi-Fi', 86),
(33, 'Blackberry', 'Blackberry Curve 9380', '360 x 480 pixels,3.2"', 'BlackBerry OS 7.0', 371, '5 MP', '512 MB RAM,WiFi,microSD up to 32GB', 95),
(34, 'Blackberry', 'Blackberry Bold 9790', '480 x 360 pixels,2.45"', 'BlackBerry OS 7.0', 577, '5 MP', '1 GHz,768 MB RAM,8 GB internal,microSD up to 32GB', 99),
(35, 'BlackBerry', 'BlackBerry Bold Touch 990', '640 x 480 pixels,2.8"', 'BlackBerry OS 7.0', 726, '5 MP', '1.2 GHz,768 MB RAM,8GB internal,microSD up to 32GB', 100),
(36, 'Blackberry', 'Blackberry Torch 9860', '480 x 800 pixels,3.7"', 'BlackBerry OS 7', 464, '5 MP', '1.2 GHz,768 MB RAM,4 GB internal,microSD up to 32GB', 100),
(37, 'Apple', 'Apple iPhone 5', '640 x 1136 pixels,4.0"', 'iOS 6', 933, '8 MP', 'Dual-core 1.2 GHz,1 GB RAM,16/32/64 GB internal', 82),
(38, 'Apple', 'Apple iPhone 4S', '640 x 960 pixels,3.5"', 'iOS 5', 989, '8 MP', 'Dual-core 1 GHz,512 MB RAM,16/32/64 GB internal', 99),
(39, 'Apple', 'Apple iPhone 4', '640 x 960 pixels,3.5"', 'iPhone OS 4', 842, '5 MP', '1 GHz,512 MB RAM,8/16/32 GB internal', 100),
(40, 'Apple', 'Apple iPhone 3G S', '320 x 480 pixels,3.5"', 'iPhone OS 3', 464, '3.15 MP', '600 MHz,256 MB RAM,8/16/32 GB internal', 100),
(41, 'Apple', 'Apple iPhone 3G', '320 x 480 pixels,3.5"', 'iPhone OS', 656, '2 MP', '412 MHz ,128 MB RAM,8 GB/ 16 GB storage', 100),
(42, 'Sony', 'Sony Xperia SL', '720 x 1280 pixels,4.3"', 'Android OS, v4.0.4', 689, '12 MP', 'Dual-core 1.7 GHz,1 GB RAM,32 GB internal', 100),
(43, 'Sony', 'Sony Xperia Neo L', '480 x 854 pixels,4.0"', 'Android OS, v4.0.4', 411, '5 MP', '1 GHz,512 MB RAM,GPS,1 GB internal,microSD, up to 32GB', 100),
(44, 'Sony', 'Sony Xperia Ion HSPA', '720 x 1280 pixels,4.55"', 'Android OS,v2.3', 800, '12 MP', 'Dual-core 1.5 GHz,1 GB RAM,13.2 GB internal,microSD, up to 32 GB', 100),
(45, 'Sony', 'Sony Xperia Tipo Dual', '320 x 480 pixels,3.2"', 'Android OS,v4.0.3', 229, '3.15 MP', '800 MHz,512 MB RAM,2.9 GB internal,microSD, up to 32 GB', 100),
(46, 'Sony', 'Sony Xperia Tipo', '320 x 480 pixels,3.2"', 'Android OS,v4.0.4', 211, '3.15 MP', '800 MHz,512 MB RAM,2.9 GB internal,microSD up to 32 GB', 100),
(47, 'Sony', 'Sony Xperia Miro', '320 x 480 pixels,3.5"', 'Android OS,v4.0', 322, '5 MP', '800 MHz,512 MB RAM,4 GB internal,microSD up to 32 GB', 100),
(48, 'Sony', 'Sony Xperia go', '320 x 480 pixels,3.5"', 'Android OS,v2.3', 422, '5 MP', 'Dual-core 1 GHz,512 MB RAM,8 GB internal,microSD up to 32 GB', 100),
(49, 'Sony', 'Sony Xperia Sola', '480 x 854 pixels,3.7"', 'Android OS, v2.3', 489, '5 MP', 'Dual-core 1 GHz,512 MB RAM,8 GB internal,microSD up to 32 GB', 100),
(50, 'Sony', 'Sony Xperia P', '540 x 960 pixels,4.0"', 'Android OS,v2.3', 544, '8 MP', 'Dual-core 1 GHz,1 GB RAM,16 GB internal', 100),
(51, 'Sony', 'Sony Xperia U', '480 x 854 pixels,3.5"', 'Android OS, v2.3', 367, '5 MP', 'Dual-core 1 GHz,512 MB RAM,8 GB internal', 101),
(52, 'Sony', 'Sony Xperia S', '720 x 1280 pixels,4.3"', 'Android OS,v2.3', 689, '12 MP', 'Dual-core 1.5 GHz,1 GB RAM,32 GB internal', 100),
(53, 'Micromax', 'Micromax A100', '480 x 854 pixels, 5.0 inches', 'Android OS, v4.0.3', 222, '5 MP', '1 GHz,512 MB RAM,4 GB internal,microSD up to 32 GB', 99),
(54, 'Micromax', 'Micromax A90', '480 x 800 pixels, 4.3 inches', 'Android OS, v4.0.3 ', 289, '8 MP', '1 GHz,512 MB RAM,4 GB internal,microSD up to 32 GB', 100),
(55, 'Micromax', 'Micromax A84', '480 x 800 pixels, 4.3 inches', 'Android OS, v2.3.6', 222, '5 MP', '1 GHz,Wi-Fi,1,microSD, up to 32 GB', 100);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `timest` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fore_key` (`username`),
  KEY `frig_key` (`phone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `username`, `phone_id`, `timest`) VALUES
(4, 'aman', 12, 'Fri, 12 Oct 2012 17:16:30 UTC'),
(5, 'aman', 12, 'Fri, 12 Oct 2012 17:16:31 UTC'),
(6, 'aman', 12, 'Fri, 12 Oct 2012 17:17:03 UTC'),
(7, 'aman', 12, 'Fri, 12 Oct 2012 17:17:04 UTC'),
(8, 'aman', 12, 'Fri, 12 Oct 2012 17:17:05 UTC'),
(9, 'aman', 12, 'Fri, 12 Oct 2012 17:17:05 UTC'),
(10, 'aman', 12, 'Fri, 12 Oct 2012 17:17:05 UTC'),
(11, 'aman', 12, 'Fri, 12 Oct 2012 17:17:05 UTC'),
(14, 'aman', 12, 'Fri, 12 Oct 2012 17:34:25 UTC'),
(16, 'aman', 12, 'Fri, 12 Oct 2012 17:44:01 UTC'),
(17, 'aman', 22, 'Fri, 12 Oct 2012 17:59:34 UTC'),
(18, 'aman', 22, 'Fri, 12 Oct 2012 17:59:35 UTC'),
(20, 'aman', 22, 'Sat, 13 Oct 2012 06:19:37 UTC'),
(21, 'aman', 32, 'Sat, 13 Oct 2012 07:33:44 UTC'),
(22, 'aman', 32, 'Sat, 13 Oct 2012 08:28:46 UTC'),
(23, 'aman', 32, 'Sat, 13 Oct 2012 08:29:56 UTC'),
(24, 'aman', 32, 'Sat, 13 Oct 2012 08:30:37 UTC'),
(25, 'aman', 32, 'Sat, 13 Oct 2012 08:30:59 UTC'),
(26, 'aman', 32, 'Sat, 13 Oct 2012 08:31:17 UTC'),
(27, 'aman', 32, 'Sat, 13 Oct 2012 08:31:31 UTC'),
(28, 'aman', 32, 'Sat, 13 Oct 2012 08:31:49 UTC'),
(29, 'aman', 32, 'Sat, 13 Oct 2012 08:34:13 UTC'),
(30, 'pratham', 37, 'Mon, 15 Oct 2012 05:19:35 UTC'),
(31, 'a', 37, 'Mon, 15 Oct 2012 11:07:45 UTC'),
(32, 'Dinesh', 53, 'Mon, 15 Oct 2012 11:29:29 UTC'),
(33, 'a', 37, 'Mon, 15 Oct 2012 11:52:19 UTC'),
(34, 'aman', 37, 'Thu, 18 Oct 2012 13:54:08 UTC');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `handset`
--
ALTER TABLE `handset`
  ADD CONSTRAINT `foreig_key` FOREIGN KEY (`b_id`) REFERENCES `brand` (`name`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fore_key` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `frig_key` FOREIGN KEY (`phone_id`) REFERENCES `handset` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
