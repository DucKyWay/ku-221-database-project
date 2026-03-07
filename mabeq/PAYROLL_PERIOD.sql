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
-- Table structure for table `PAYROLL_PERIOD`
--

CREATE TABLE `PAYROLL_PERIOD` (
  `payroll_period_id` varchar(191) NOT NULL,
  `period_name` varchar(255) NOT NULL,
  `finalized_date` datetime NOT NULL,
  `finalized_by` varchar(255) DEFAULT NULL,
  `start_period` datetime NOT NULL,
  `end_period` datetime NOT NULL,
  `period_status` enum('draft','finalized','paid') NOT NULL,
  `snapshot_work_days_per_month` int(11) DEFAULT NULL,
  `snapshot_work_hours_per_day` int(11) DEFAULT NULL,
  `edited` tinyint(1) DEFAULT 0,
  `period_created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `period_updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PAYROLL_PERIOD`
--
ALTER TABLE `PAYROLL_PERIOD`
  ADD PRIMARY KEY (`payroll_period_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
