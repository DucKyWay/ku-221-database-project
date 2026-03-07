-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Mar 07, 2026 at 01:50 PM
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
-- Table structure for table `SHOP_EMAIL_CONFIG`
--

CREATE TABLE `SHOP_EMAIL_CONFIG` (
  `email_config_id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_email_address` varchar(255) NOT NULL,
  `shop_email_password` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_secure` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `SHOP_EMAIL_CONFIG`
--
ALTER TABLE `SHOP_EMAIL_CONFIG`
  ADD PRIMARY KEY (`email_config_id`),
  ADD KEY `shop_name` (`shop_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `SHOP_EMAIL_CONFIG`
--
ALTER TABLE `SHOP_EMAIL_CONFIG`
  MODIFY `email_config_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `SHOP_EMAIL_CONFIG`
--
ALTER TABLE `SHOP_EMAIL_CONFIG`
  ADD CONSTRAINT `SHOP_EMAIL_CONFIG_ibfk_1` FOREIGN KEY (`shop_name`) REFERENCES `SHOP` (`shop_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
