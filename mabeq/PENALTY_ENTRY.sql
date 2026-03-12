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
-- Table structure for table `penalty_entry`
--

CREATE TABLE `penalty_entry` (
  `entry_id` int(11) NOT NULL,
  `snapshot_penalty_entry_type` varchar(50) DEFAULT 'BASED_ON_SALARY' CHECK (`snapshot_penalty_entry_type` in ('CONSTANT','BASED_ON_SALARY')),
  `snapshot_penalty_entry_method` varchar(255) DEFAULT NULL,
  `snapshot_penalty_entry_fixed_amount` decimal(10,2) DEFAULT NULL,
  `penalty_duration` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penalty_entry`
--
ALTER TABLE `penalty_entry`
  ADD PRIMARY KEY (`entry_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penalty_entry`
--
ALTER TABLE `penalty_entry`
  ADD CONSTRAINT `fk_entry_penalty` FOREIGN KEY (`entry_id`) REFERENCES `statement_entry` (`entry_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
