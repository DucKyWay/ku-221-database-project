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
-- Table structure for table `employee_statement`
--

CREATE TABLE `employee_statement` (
  `employee_statement_id` int(11) NOT NULL,
  `payroll_period_id` int(11) DEFAULT NULL,
  `snapshot_employee_id` int(11) NOT NULL,
  `snapshot_employee_first_name` varchar(255) NOT NULL,
  `snapshot_employee_last_name` varchar(255) NOT NULL,
  `snapshot_employee_branch_name_th` varchar(255) DEFAULT NULL,
  `snapshot_employee_branch_name_en` varchar(255) DEFAULT NULL,
  `snapshot_salary` decimal(10,2) NOT NULL,
  `pay_slip_sent` tinyint(1) DEFAULT 0,
  `paid_at` datetime DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_statement`
--
ALTER TABLE `employee_statement`
  ADD PRIMARY KEY (`employee_statement_id`),
  ADD KEY `fk_payroll_period` (`payroll_period_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_statement`
--
ALTER TABLE `employee_statement`
  ADD CONSTRAINT `fk_payroll_period` FOREIGN KEY (`payroll_period_id`) REFERENCES `payroll_period` (`payroll_period_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
