-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mariadb22
-- Generation Time: Mar 07, 2026 at 08:16 AM
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
-- Table structure for table `OT_ENTRY`
--

CREATE TABLE `OT_ENTRY` (
  `entry_id` varchar(191) NOT NULL,
  `snapshot_ot_entry_type` enum('CONSTANT','BASED_ON_SALARY') DEFAULT 'BASED_ON_SALARY',
  `snapshot_ot_entry_method` varchar(255) DEFAULT NULL,
  `snapshot_ot_entry_fixed_amount` decimal(15,2) DEFAULT 0.00,
  `ot_duration` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `OT_ENTRY`
--
ALTER TABLE `OT_ENTRY`
  ADD PRIMARY KEY (`entry_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
