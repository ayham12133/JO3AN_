-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 23, 2021 at 06:25 PM
-- Server version: 10.4.10-MariaDB
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
-- Database: `productdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `categorieId` int(12) NOT NULL AUTO_INCREMENT,
  `categorieName` varchar(255) NOT NULL,
  `categorieDesc` text NOT NULL,
  `categorieCreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`categorieId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categorieId`, `categorieName`, `categorieDesc`, `categorieCreateDate`) VALUES
(1, 'Burger-menu', '', '2021-11-24 18:17:24'),
(2, 'Salad-menu', '', '2021-11-24 18:17:24'),
(3, 'Drinks-menu', '', '2021-11-24 18:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(1000) NOT NULL,
  `price` float NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `build_No` int(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `item_name`, `price`, `user_name`, `address`, `build_No`, `phone`) VALUES
(26, 'Beef Burger', 6, 'cvd', 'sdas', 22, '781301638'),
(27, 'Beef Burger', 6, 'cvd', 'sdas', 22, '781301638'),
(28, 'Beef Burger', 6, 'ahmad', 'sdas', 22, '781301638'),
(29, 'Beef BurgerCesar saladChiken cesar salad', 13, 'ahmad', 'abu nsair', 22, '781301638'),
(30, 'Beef BurgerChicken Burger', 10, 'ayham', 'abu nsair', 22, '781301638'),
(31, 'Vegan BurgerRocca salad', 8, 'ahmad', 'abu nsair', 22, '781301638'),
(32, 'Beef BurgerChicken BurgerVegan Burger', 15, 'ayham', 'abu nsair', 22, '781301638'),
(33, 'Beef BurgerChicken BurgerVegan BurgerCesar saladChiken cesar saladRocca salad', 25, 'ayham', 'amman', 23, '1232131234'),
(34, 'Beef BurgerChicken BurgerVegan BurgerCesar saladChiken cesar saladRocca salad', 25, 'ayham', 'irbid', 44, '781301638'),
(35, 'Beef BurgerChicken BurgerVegan BurgerCesar saladChiken cesar saladRocca salad', 25, 'ayham', 'irbid', 44, '781301638'),
(36, 'Beef BurgerChicken BurgerVegan BurgerCesar saladChiken cesar saladRocca saladSmoothieFrappeEspresso', 32, 'ayham', 'aqaba', 11, '781301638'),
(37, 'Beef BurgerChicken BurgerVegan BurgerCesar saladChiken cesar saladRocca saladSmoothieFrappeEspresso', 32, 'ayham', 'abu nsair', 22, '781301638'),
(38, 'Cesar salad', 3, 'ahmad', 'amman', 11, '121212'),
(39, 'Beef BurgerVegan BurgerChiken cesar saladEspresso', 17, 'ahmad', 'asdasd Wilson Avenue', 11, '781301638'),
(40, 'Beef BurgerSmoothie', 8, 'ayham', 'amman', 57, '781301638'),
(41, 'Espresso', 2, 'ayham', 'amman', 57, '781301638'),
(42, 'Espresso', 2, 'ayham', 'amman', 57, '454545454'),
(43, 'Espresso', 2, 'ayham', 'amman', 57, '09724919842'),
(44, 'Espresso', 2, 'ayham', 'amman', 57, '0972491984213123123'),
(45, 'Beef BurgerEspresso', 8, 'ayham', '2979 Wilson Avenue', 57, '09724919842'),
(46, 'Beef BurgerEspresso', 8, 'ayham', '297923232 Wilson Avenue', 57, '09724919842'),
(47, 'Beef BurgerEspresso', 8, 'ayham', '297923232 Wilson Avenue', 57, '09724919842'),
(48, 'Beef BurgerBeef BurgerBeef BurgerChicken BurgerChicken BurgerChicken BurgerVegan BurgerVegan BurgerVegan Burger', 45, 'ayham', 'abu nsair', 22, '0781301638'),
(49, 'Beef BurgerBeef BurgerVegan BurgerChiken cesar saladSmoothie', 23, 'ahmad', '2979 Wilson Avenue abu nsair bahrieh ', 56, '0781301456465'),
(50, 'Beef BurgerBeef BurgerChicken BurgerChicken BurgerVegan BurgerCesar saladCesar saladChiken cesar saladChiken cesar saladRocca saladRocca saladSmoothieSmoothieFrappeFrappeEspressoEspresso', 59, 'ahmad', 'amman-abdoun-mac', 345, '23645768798866432');

-- --------------------------------------------------------

--
-- Table structure for table `producttb`
--

DROP TABLE IF EXISTS `producttb`;
CREATE TABLE IF NOT EXISTS `producttb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(25) NOT NULL,
  `product_price` float DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `productCategorieId` int(21) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producttb`
--

INSERT INTO `producttb` (`id`, `product_name`, `product_price`, `product_image`, `productCategorieId`) VALUES
(1, 'Beef Burger', 6, 'pexels-samfotograffo-3052366.jpg', 1),
(2, 'Chicken Burger', 4, 'chickenBurger.jpg', 1),
(3, 'Vegan Burger', 5, 'garden-veggie-burgers-vegan-gluten-free-delicious-vegetable-green-vegetarian-easy-687x1030.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `producttb2`
--

DROP TABLE IF EXISTS `producttb2`;
CREATE TABLE IF NOT EXISTS `producttb2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(25) NOT NULL,
  `product_price` float DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producttb2`
--

INSERT INTO `producttb2` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(4, 'Cesar salad', 3, 'vegan-salad.jpg'),
(5, 'Chiken cesar salad', 4, 'Cesar-salad.jpg'),
(6, 'Rocca salad', 3, 'rocca-salad.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `producttb3`
--

DROP TABLE IF EXISTS `producttb3`;
CREATE TABLE IF NOT EXISTS `producttb3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(25) NOT NULL,
  `product_price` float DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producttb3`
--

INSERT INTO `producttb3` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(7, 'Smoothie', 2, 'smoonew.jpeg'),
(8, 'Frappe', 3, 'frappenew.jpeg'),
(9, 'Espresso', 2, 'espressonew.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(20) NOT NULL,
  `emails` varchar(50) NOT NULL,
  `userType` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''0=user 1=admin''',
  `Password` varchar(20) NOT NULL,
  `cPassword` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_id`, `Username`, `emails`, `userType`, `Password`, `cPassword`) VALUES
(1, 'ayham', 'ayham@gmail.com', '1', '123', '123'),
(2, 'ahmad', 'sd@sdfg', '0', '12', '12');

-- --------------------------------------------------------

--
-- Table structure for table `viewcart`
--

DROP TABLE IF EXISTS `viewcart`;
CREATE TABLE IF NOT EXISTS `viewcart` (
  `cartItemId` int(11) NOT NULL AUTO_INCREMENT,
  `pizzaId` int(11) NOT NULL,
  `itemQuantity` int(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`cartItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories` ADD FULLTEXT KEY `categorieName` (`categorieName`,`categorieDesc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
