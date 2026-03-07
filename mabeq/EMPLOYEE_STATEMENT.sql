-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mariadb22
-- Generation Time: Mar 07, 2026 at 08:15 AM
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
-- Table structure for table `EMPLOYEE_STATEMENT`
--

CREATE TABLE `EMPLOYEE_STATEMENT` (
  `employee_statement_id` varchar(191) NOT NULL,
  `payroll_period_id` varchar(191) DEFAULT NULL,
  `snapshot_employee_id` varchar(191) NOT NULL,
  `snapshot_employee_first_name` varchar(255) NOT NULL,
  `snapshot_employee_last_name` varchar(255) NOT NULL,
  `snapshot_employee_branch_name_th` varchar(255) DEFAULT NULL,
  `snapshot_employee_branch_name_en` varchar(255) DEFAULT NULL,
  `snapshot_salary` decimal(15,2) NOT NULL,
  `pay_slip_sent` tinyint(1) DEFAULT 0,
  `paid_at` datetime DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EMPLOYEE_STATEMENT`
--
ALTER TABLE `EMPLOYEE_STATEMENT`
  ADD PRIMARY KEY (`employee_statement_id`),
  ADD KEY `payroll_period_id` (`payroll_period_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
