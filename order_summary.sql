-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 25, 2018 at 07:17 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Harsh`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_summary`
--

CREATE TABLE `order_summary` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `order_summary`
--

INSERT INTO `order_summary` (`id`, `name`, `date`, `status`) VALUES
(1, 'abc', '2018-06-27', 'pending'),
(2, 'pqr', '2018-06-26', 'completed'),
(3, 'aaa', '2018-06-27', 'completed'),
(4, 'qwe', '2018-06-28', 'completed'),
(5, 'asd', '2018-06-29', 'pending'),
(6, 'dfg', '2018-06-28', 'finished'),
(7, 'tyu', '2018-06-26', 'inprocess'),
(8, 'zxc', '2018-06-27', 'pending'),
(9, 'sdf', '2018-06-25', 'pending'),
(10, 'poi', '2018-06-29', 'finished'),
(11, 'hgf', '2018-06-30', 'finished'),
(12, 'cvb', '2018-06-30', 'inprocess'),
(13, 'hjk', '2018-06-30', 'pending'),
(14, 'lkj', '2018-06-30', 'inprocess'),
(15, 'kjh', '2018-06-30', 'pending'),
(16, 'ert', '2018-06-29', 'finished'),
(17, 'tyu', '2018-06-30', 'inprocess'),
(18, 'dcv', '2018-06-28', 'pending'),
(19, 'dfdf', '2018-06-26', 'inprocess'),
(20, 'dfvdfv', '2018-06-30', 'finished'),
(21, 'erer', '2018-06-27', 'completed'),
(22, 'asas', '2018-06-28', 'pending'),
(23, 'qwq', '2018-06-28', 'pending'),
(24, 'qwsa', '2018-06-28', 'pending'),
(25, 'qwqwas', '2018-06-26', 'pending'),
(26, 'zxzx', '2018-06-28', 'completed'),
(27, 'xzdsa', '2018-06-27', 'pending'),
(28, 'asdfvc', '2018-06-28', 'pending'),
(29, 'qwaswq', '2018-06-30', 'completed'),
(30, 'asdfvc', '2018-06-27', 'pending'),
(31, 'lkjnm', '2018-06-30', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_summary`
--
ALTER TABLE `order_summary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_summary`
--
ALTER TABLE `order_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
