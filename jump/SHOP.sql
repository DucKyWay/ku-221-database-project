-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Mar 07, 2026 at 01:49 PM
-- Server version: 10.4.28-MariaDB-1:10.4.28+maria~ubu2004
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `JUMP`
--

-- --------------------------------------------------------

--
-- Table structure for table `SHOP`
--

CREATE TABLE `SHOP` (
  `shop_name` varchar(255) NOT NULL,
  `shop_password` varchar(255) NOT NULL,
  `shop_avatar` varchar(255) NOT NULL,
  `tax_id` varchar(50) NOT NULL,
  `shop_work_hours_per_day` int(11) NOT NULL,
  `shop_work_days_per_month` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `SHOP`
--
ALTER TABLE `SHOP`
  ADD PRIMARY KEY (`shop_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
