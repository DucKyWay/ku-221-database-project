-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2026 at 03:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pretest_00`
--

-- --------------------------------------------------------

--
-- Table structure for table `payroll_period`
--

CREATE TABLE `payroll_period` (
  `payroll_period_id` int(11) NOT NULL,
  `period_name` varchar(255) NOT NULL,
  `finalized_date` datetime NOT NULL,
  `finalized_by` int(11) DEFAULT NULL,
  `start_period` date NOT NULL,
  `end_period` date NOT NULL,
  `period_status` varchar(50) NOT NULL CHECK (`period_status` in ('draft','finalized','paid')),
  `snapshot_work_days_per_month` int(11) DEFAULT NULL,
  `snapshot_work_hours_per_day` decimal(4,2) DEFAULT NULL,
  `edited` tinyint(1) DEFAULT 0,
  `period_created_at` datetime DEFAULT current_timestamp(),
  `period_updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payroll_period`
--
ALTER TABLE `payroll_period`
  ADD PRIMARY KEY (`payroll_period_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
