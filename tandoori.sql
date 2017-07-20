-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2017 at 06:31 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tandoori`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `adminuser`
--

CREATE TABLE IF NOT EXISTS `adminuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `adminuser`
--

INSERT INTO `adminuser` (`id`, `name`, `username`, `password`) VALUES
(1, 'sweta', 'sweta', '111'),
(2, 'sweta', 'sweta', '123'),
(3, 'ram', 'ram', '123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`user_id`, `firstname`, `lastname`, `gender`, `address`, `phone`, `email`, `password`) VALUES
(1, 'sweta', 'shrestha', 'f', 'sanepa', '2423432432', 'sweta@gmail.com', '123'),
(2, 'anusha', 'stha', 'f', 'ktm', '87847857443', 'anusha@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(70) NOT NULL,
  `price` float NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `p_name` varchar(40) NOT NULL,
  `price` float NOT NULL,
  `description` longtext NOT NULL,
  `image` text NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `type`, `p_name`, `price`, `description`, `image`, `time`) VALUES
(18, 'Tandoori', 'tandoori2', 1000, '<p>tandori chicken is best insian food</p>\r\n', 'tandoor_chicken_3.jpg', '0000-00-00'),
(19, 'Tandoori', 'Chicken Tandoori', 800, '<p>Best tandoor</p>\r\n', '1.jpg', '0000-00-00'),
(21, 'Beverage', 'Hard Drink', 1000, '<p>harddrink</p>\r\n', 'dukati.jpg', '0000-00-00'),
(22, 'Tandoori', 'Masala Tandoori', 10000, '<p>Masala Tandoori</p>\r\n', 'How-To-Make-Spicy-Fried-Chicken.jpg', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slide1` text NOT NULL,
  `slide2` text NOT NULL,
  `slide3` text NOT NULL,
  `slide4` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `dob` date NOT NULL,
  `country` varchar(20) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `email`, `address`, `contact`, `gender`, `dob`, `country`, `block`, `time`) VALUES
(1, 'yoo', 'he ', 'he', 'asdw@asd.com', 'tahachal', 'hhhhh', 'm', '1993-02-01', 'Nepal', 0, '2017-05-04 11:47:03'),
(2, 'hey', 'hey', 'hey', 'hwyw@aas.com', 'asjdags', '28198912', 'f', '0000-00-00', '', 0, '2017-05-04 11:52:53'),
(3, 'ramlal', 'user', 'user', 'user@userw.com', 'users', '21223123', 'm', '0000-00-00', 'nepal', 0, '2017-05-04 12:58:56'),
(4, 'ram', 'ramstha', '123', 'ram@gmail.com', 'ktm', '324673647324', 'm', '0000-00-00', 'nepal', 0, '2017-07-07 14:51:50');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
