-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mariadb22
-- Generation Time: Mar 07, 2026 at 08:17 AM
-- Server version: 11.5.2-MariaDB-ubu2404
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobile_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `STATEMENT_ENTRY`
--

CREATE TABLE `STATEMENT_ENTRY` (
  `entry_id` varchar(191) NOT NULL,
  `employee_statement_id` varchar(191) DEFAULT NULL,
  `snapshot_entry_name_th` varchar(255) DEFAULT NULL,
  `snapshot_entry_name_en` varchar(255) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `entry_created_at` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `STATEMENT_ENTRY`
--
ALTER TABLE `STATEMENT_ENTRY`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `employee_statement_id` (`employee_statement_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
