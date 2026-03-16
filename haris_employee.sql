-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mariadb22
-- Generation Time: Mar 16, 2026 at 08:57 AM
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
-- Table structure for table `BRANCH`
--

CREATE TABLE `BRANCH` (
  `branch_id` int(11) NOT NULL,
  `branch_name_th` varchar(255) NOT NULL,
  `branch_name_en` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `BRANCH`
--

INSERT INTO `BRANCH` (`branch_id`, `branch_name_th`, `branch_name_en`, `address`) VALUES
(1, 'สาขารามอินทรา', 'Ramindra', 'กทม.'),
(2, 'สาขาปากเกร็ด', 'Pak Kret', 'นนทบุรี'),
(3, 'สาขาราชพฤกษ์', 'Ratchaphruek', 'นนทบุรี');

-- --------------------------------------------------------

--
-- Table structure for table `COMPENSATION_ENTRY`
--

CREATE TABLE `COMPENSATION_ENTRY` (
  `entry_id` int(11) NOT NULL,
  `snapshot_compensation_entry_type` varchar(50) DEFAULT NULL CHECK (`snapshot_compensation_entry_type` in ('INCOME','DEDUCTION','NON_CALCULATED'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `COMPENSATION_ENTRY`
--

INSERT INTO `COMPENSATION_ENTRY` (`entry_id`, `snapshot_compensation_entry_type`) VALUES
(1, 'INCOME'),
(3, 'DEDUCTION'),
(4, 'INCOME'),
(5, 'DEDUCTION'),
(7, 'INCOME'),
(8, 'DEDUCTION'),
(10, 'DEDUCTION'),
(11, 'INCOME'),
(13, 'DEDUCTION');

-- --------------------------------------------------------

--
-- Table structure for table `COMPENSATION_SETTINGS`
--

CREATE TABLE `COMPENSATION_SETTINGS` (
  `settings_id` int(11) NOT NULL,
  `compensation_settings_type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `COMPENSATION_SETTINGS`
--

INSERT INTO `COMPENSATION_SETTINGS` (`settings_id`, `compensation_settings_type`) VALUES
(1, 'เบี้ยขยัน'),
(2, 'ค่าเดินทาง'),
(3, 'ค่าอาหาร'),
(4, 'ประกันสังคม'),
(5, 'ภาษีหัก ณ ที่จ่าย');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `employee_id` int(11) NOT NULL,
  `date_employed` date DEFAULT NULL,
  `gender` enum('MALE','FEMALE','OTHER') NOT NULL,
  `phone` varchar(20) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_account_owner` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(50) DEFAULT NULL,
  `promptpay` varchar(20) DEFAULT NULL,
  `employee_status` enum('ACTIVE','INACTIVE','PARTTIME') NOT NULL,
  `employee_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`employee_id`, `date_employed`, `gender`, `phone`, `avatar`, `salary`, `bank_name`, `bank_account_owner`, `bank_account_number`, `promptpay`, `employee_status`, `employee_created_at`, `branch_id`) VALUES
(1, '2017-01-01', 'MALE', '081', NULL, '25000.00', NULL, NULL, NULL, NULL, 'ACTIVE', '2026-03-12 11:08:43', 1),
(2, '2018-05-01', 'FEMALE', '082', NULL, '18000.00', NULL, NULL, NULL, NULL, 'ACTIVE', '2026-03-12 11:08:43', 1),
(3, '2019-01-01', 'MALE', '083', NULL, '17000.00', NULL, NULL, NULL, NULL, 'ACTIVE', '2026-03-12 11:08:43', 2),
(4, '2020-06-01', 'FEMALE', '084', NULL, '16000.00', NULL, NULL, NULL, NULL, 'ACTIVE', '2026-03-12 11:08:43', 3),
(5, '2021-01-01', 'MALE', '085', NULL, '20000.00', NULL, NULL, NULL, NULL, 'ACTIVE', '2026-03-12 11:08:43', 2),
(6, '2022-02-01', 'FEMALE', '086', NULL, '15500.00', NULL, NULL, NULL, NULL, 'ACTIVE', '2026-03-12 11:08:43', 3),
(7, '2023-01-01', 'MALE', '087', NULL, '19000.00', NULL, NULL, NULL, NULL, 'ACTIVE', '2026-03-12 11:08:43', 3),
(8, '2024-01-01', 'FEMALE', '088', NULL, '16000.00', NULL, NULL, NULL, NULL, 'ACTIVE', '2026-03-12 11:08:43', 2),
(9, '2025-01-01', 'MALE', '089', NULL, '22000.00', NULL, NULL, NULL, NULL, 'ACTIVE', '2026-03-12 11:08:43', 1),
(10, '2026-01-01', 'FEMALE', '090', NULL, '17500.00', NULL, NULL, NULL, NULL, 'ACTIVE', '2026-03-12 11:08:43', 3);

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE_ADDRESS`
--

CREATE TABLE `EMPLOYEE_ADDRESS` (
  `address_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EMPLOYEE_ADDRESS`
--

INSERT INTO `EMPLOYEE_ADDRESS` (`address_id`, `employee_id`, `address`) VALUES
(1, 1, '10/2 ถ.รามอินทรา แขวงคันนายาว เขตคันนายาว กรุงเทพฯ 10230'),
(2, 2, '55 ซ.ประชาชื่น ถ.ประชาชื่น แขวงทุ่งสองห้อง เขตหลักสี่ กรุงเทพฯ 10210'),
(3, 3, '22/4 หมู่ 3 ต.บางพลับ อ.ปากเกร็ด จ.นนทบุรี 11120'),
(4, 4, '88 ถ.ราชพฤกษ์ ต.บางรักน้อย อ.เมือง จ.นนทบุรี 11000'),
(5, 5, '14 ซ.นนทบุรี 40 ถ.รัตนาธิเบศร์ ต.บางกระสอ อ.เมือง จ.นนทบุรี 11000'),
(6, 6, '3/7 ถ.ราชพฤกษ์ ต.มหาสวัสดิ์ อ.บางกรวย จ.นนทบุรี 11130'),
(7, 7, '101 ถ.ราชพฤกษ์ ต.บางสีทอง อ.บางกรวย จ.นนทบุรี 11130'),
(8, 8, '67/1 ซ.5 ถ.ประชาชื่น ต.บางพลับ อ.ปากเกร็ด จ.นนทบุรี 11120'),
(9, 9, '200 ถ.รามอินทรา แขวงท่าแร้ง เขตบางเขน กรุงเทพฯ 10220'),
(10, 10, '45/9 ถ.ราชพฤกษ์ ต.บางรักน้อย อ.เมือง จ.นนทบุรี 11000');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE_STATEMENT`
--

CREATE TABLE `EMPLOYEE_STATEMENT` (
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
-- Dumping data for table `EMPLOYEE_STATEMENT`
--

INSERT INTO `EMPLOYEE_STATEMENT` (`employee_statement_id`, `payroll_period_id`, `snapshot_employee_id`, `snapshot_employee_first_name`, `snapshot_employee_last_name`, `snapshot_employee_branch_name_th`, `snapshot_employee_branch_name_en`, `snapshot_salary`, `pay_slip_sent`, `paid_at`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'สมชาย', 'สายเนื้อ', 'สาขารามอินทรา', NULL, '25000.00', 0, '2017-12-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(2, 2, 1, 'สมชาย', 'สายเนื้อ', 'สาขารามอินทรา', NULL, '25000.00', 0, '2018-12-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(3, 3, 1, 'สมชาย', 'สายเนื้อ', 'สาขารามอินทรา', NULL, '25000.00', 0, '2019-12-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(4, 4, 1, 'สมชาย', 'สายเนื้อ', 'สาขารามอินทรา', NULL, '25000.00', 0, '2020-12-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(5, 5, 1, 'สมชาย', 'สายเนื้อ', 'สาขารามอินทรา', NULL, '25000.00', 0, '2021-12-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(6, 6, 1, 'สมชาย', 'สายเนื้อ', 'สาขารามอินทรา', NULL, '25000.00', 0, '2022-12-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(7, 7, 1, 'สมชาย', 'สายเนื้อ', 'สาขารามอินทรา', NULL, '25000.00', 0, '2023-12-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(8, 8, 1, 'สมชาย', 'สายเนื้อ', 'สาขารามอินทรา', NULL, '25000.00', 0, '2024-12-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(9, 9, 1, 'สมชาย', 'สายเนื้อ', 'สาขารามอินทรา', NULL, '25000.00', 0, '2025-12-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(10, 10, 1, 'สมชาย', 'สายเนื้อ', 'สาขารามอินทรา', NULL, '25000.00', 0, '2026-03-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(11, 10, 2, 'สมศรี', 'รักดี', 'สาขาปากเกร็ด', NULL, '18000.00', 0, '2026-03-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(12, 10, 3, 'มานะ', 'ขยัน', 'สาขาราชพฤกษ์', NULL, '17000.00', 0, '2026-03-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(13, 10, 4, 'ชูใจ', 'สดใส', 'สาขารามอินทรา', NULL, '16000.00', 0, '2026-03-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(14, 10, 5, 'ปิติ', 'ยินดี', 'สาขาปากเกร็ด', NULL, '20000.00', 0, '2026-03-30 00:00:00', NULL, '2026-03-12 11:08:43', '2026-03-12 11:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE_UPLOAD`
--

CREATE TABLE `EMPLOYEE_UPLOAD` (
  `employee_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `uploaded_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `EMPLOYEE_UPLOAD`
--

INSERT INTO `EMPLOYEE_UPLOAD` (`employee_id`, `file_id`, `uploaded_at`) VALUES
(1, 1, '2026-03-12 11:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `FILE`
--

CREATE TABLE `FILE` (
  `file_id` int(11) NOT NULL,
  `external_key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `size` bigint(20) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `metadata` varchar(255) DEFAULT NULL,
  `file_created_at` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `FILE`
--

INSERT INTO `FILE` (`file_id`, `external_key`, `filename`, `size`, `mime_type`, `metadata`, `file_created_at`) VALUES
(1, 'HARIS-DOC-001', 'id_card_sample.jpg', 512, 'image/jpeg', NULL, '2026-03-12 11:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `FILE_TAG`
--

CREATE TABLE `FILE_TAG` (
  `tag_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `FILE_TAG`
--

INSERT INTO `FILE_TAG` (`tag_id`, `file_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `OT_CONFIG`
--

CREATE TABLE `OT_CONFIG` (
  `ot_settings_type` varchar(100) NOT NULL,
  `ot_settings_method` varchar(100) NOT NULL,
  `ot_settings_fixed_amount` decimal(10,2) DEFAULT NULL,
  `multiplier` decimal(5,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `OT_CONFIG`
--

INSERT INTO `OT_CONFIG` (`ot_settings_type`, `ot_settings_method`, `ot_settings_fixed_amount`, `multiplier`) VALUES
('BASED_ON_SALARY', 'HOURLY', NULL, '1.50'),
('CONSTANT', 'HOURLY', '75.00', '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `OT_ENTRY`
--

CREATE TABLE `OT_ENTRY` (
  `entry_id` int(11) NOT NULL,
  `snapshot_ot_entry_type` varchar(50) DEFAULT 'BASED_ON_SALARY' CHECK (`snapshot_ot_entry_type` in ('CONSTANT','BASED_ON_SALARY')),
  `snapshot_ot_entry_method` varchar(50) DEFAULT NULL CHECK (`snapshot_ot_entry_method` in ('HOURLY','DAILY')),
  `snapshot_ot_entry_fixed_amount` decimal(10,2) DEFAULT 0.00,
  `ot_duration` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `OT_ENTRY`
--

INSERT INTO `OT_ENTRY` (`entry_id`, `snapshot_ot_entry_type`, `snapshot_ot_entry_method`, `snapshot_ot_entry_fixed_amount`, `ot_duration`) VALUES
(2, 'BASED_ON_SALARY', 'HOURLY', '0.00', '3.00'),
(9, 'CONSTANT', 'HOURLY', '75.00', '8.00'),
(12, 'BASED_ON_SALARY', 'HOURLY', '0.00', '4.00');

-- --------------------------------------------------------

--
-- Table structure for table `OT_SETTINGS`
--

CREATE TABLE `OT_SETTINGS` (
  `settings_id` int(11) NOT NULL,
  `ot_settings_type` varchar(100) DEFAULT NULL,
  `ot_settings_created_at` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `OT_SETTINGS`
--

INSERT INTO `OT_SETTINGS` (`settings_id`, `ot_settings_type`, `ot_settings_created_at`) VALUES
(1, 'BASED_ON_SALARY', '2026-03-01 08:00:00'),
(2, 'CONSTANT', '2026-03-01 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `PAYROLL_PERIOD`
--

CREATE TABLE `PAYROLL_PERIOD` (
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
-- Dumping data for table `PAYROLL_PERIOD`
--

INSERT INTO `PAYROLL_PERIOD` (`payroll_period_id`, `period_name`, `finalized_date`, `finalized_by`, `start_period`, `end_period`, `period_status`, `snapshot_work_days_per_month`, `snapshot_work_hours_per_day`, `edited`, `period_created_at`, `period_updated_at`) VALUES
(1, 'Dec 2017', '2017-12-25 00:00:00', NULL, '2017-12-01', '2017-12-31', 'paid', NULL, NULL, 0, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(2, 'Dec 2018', '2018-12-25 00:00:00', NULL, '2018-12-01', '2018-12-31', 'paid', NULL, NULL, 0, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(3, 'Dec 2019', '2019-12-25 00:00:00', NULL, '2019-12-01', '2019-12-31', 'paid', NULL, NULL, 0, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(4, 'Dec 2020', '2020-12-25 00:00:00', NULL, '2020-12-01', '2020-12-31', 'paid', NULL, NULL, 0, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(5, 'Dec 2021', '2021-12-25 00:00:00', NULL, '2021-12-01', '2021-12-31', 'paid', NULL, NULL, 0, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(6, 'Dec 2022', '2022-12-25 00:00:00', NULL, '2022-12-01', '2022-12-31', 'paid', NULL, NULL, 0, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(7, 'Dec 2023', '2023-12-25 00:00:00', NULL, '2023-12-01', '2023-12-31', 'paid', NULL, NULL, 0, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(8, 'Dec 2024', '2024-12-25 00:00:00', NULL, '2024-12-01', '2024-12-31', 'paid', NULL, NULL, 0, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(9, 'Dec 2025', '2025-12-25 00:00:00', NULL, '2025-12-01', '2025-12-31', 'paid', NULL, NULL, 0, '2026-03-12 11:08:43', '2026-03-12 11:08:43'),
(10, 'Mar 2026', '2026-03-25 00:00:00', NULL, '2026-03-01', '2026-03-31', 'paid', NULL, NULL, 0, '2026-03-12 11:08:43', '2026-03-12 11:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `PENALTY_CONFIG`
--

CREATE TABLE `PENALTY_CONFIG` (
  `penalty_settings_type` varchar(100) NOT NULL,
  `penalty_settings_method` varchar(100) NOT NULL,
  `penalty_settings_fixed_amount` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `PENALTY_CONFIG`
--

INSERT INTO `PENALTY_CONFIG` (`penalty_settings_type`, `penalty_settings_method`, `penalty_settings_fixed_amount`) VALUES
('BASED_ON_SALARY', 'DAILY', NULL),
('CONSTANT', 'DAILY', '300.00');

-- --------------------------------------------------------

--
-- Table structure for table `PENALTY_ENTRY`
--

CREATE TABLE `PENALTY_ENTRY` (
  `entry_id` int(11) NOT NULL,
  `snapshot_penalty_entry_type` varchar(50) DEFAULT 'BASED_ON_SALARY' CHECK (`snapshot_penalty_entry_type` in ('CONSTANT','BASED_ON_SALARY')),
  `snapshot_penalty_entry_method` varchar(255) DEFAULT NULL,
  `snapshot_penalty_entry_fixed_amount` decimal(10,2) DEFAULT NULL,
  `penalty_duration` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PENALTY_ENTRY`
--

INSERT INTO `PENALTY_ENTRY` (`entry_id`, `snapshot_penalty_entry_type`, `snapshot_penalty_entry_method`, `snapshot_penalty_entry_fixed_amount`, `penalty_duration`) VALUES
(6, 'CONSTANT', 'DAILY', '300.00', '2.00');

-- --------------------------------------------------------

--
-- Table structure for table `PENALTY_SETTINGS`
--

CREATE TABLE `PENALTY_SETTINGS` (
  `settings_id` int(11) NOT NULL,
  `penalty_settings_type` varchar(100) DEFAULT NULL,
  `penalty_settings_created_at` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `PENALTY_SETTINGS`
--

INSERT INTO `PENALTY_SETTINGS` (`settings_id`, `penalty_settings_type`, `penalty_settings_created_at`) VALUES
(1, 'BASED_ON_SALARY', '2026-03-01 08:00:00'),
(2, 'CONSTANT', '2026-03-01 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `PERSON`
--

CREATE TABLE `PERSON` (
  `person_id` int(11) NOT NULL,
  `person_first_name` varchar(100) NOT NULL,
  `person_last_name` varchar(100) NOT NULL,
  `person_email` varchar(255) NOT NULL,
  `person_nickname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PERSON`
--

INSERT INTO `PERSON` (`person_id`, `person_first_name`, `person_last_name`, `person_email`, `person_nickname`) VALUES
(1, 'สมชาย', 'สายเนื้อ', 'som1@mail.com', 'ชาย'),
(2, 'สมศรี', 'รักดี', 'som2@mail.com', 'ศรี'),
(3, 'มานะ', 'ขยัน', 'man1@mail.com', 'นะ'),
(4, 'ชูใจ', 'สดใส', 'choo1@mail.com', 'ใจ'),
(5, 'ปิติ', 'ยินดี', 'piti1@mail.com', 'ติ'),
(6, 'มานี', 'มีนา', 'manee1@mail.com', 'นี'),
(7, 'กมล', 'ใจตรง', 'kamon1@mail.com', 'มน'),
(8, 'วิชัย', 'ใจสู้', 'vichai@mail.com', 'ชัย'),
(9, 'สุดา', 'พารวย', 'suda@mail.com', 'ดา'),
(10, 'ธนา', 'พารุ่ง', 'thana@mail.com', 'นา');

-- --------------------------------------------------------

--
-- Table structure for table `POSITION`
--

CREATE TABLE `POSITION` (
  `position_id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `POSITION`
--

INSERT INTO `POSITION` (`position_id`, `label`) VALUES
(1, 'ผู้จัดการสาขา'),
(2, 'พนักงานเสิร์ฟ'),
(3, 'พนักงานครัว'),
(4, 'แคชเชียร์'),
(5, 'พนักงานทำความสะอาด');

-- --------------------------------------------------------

--
-- Table structure for table `SETTINGS`
--

CREATE TABLE `SETTINGS` (
  `settings_id` int(11) NOT NULL,
  `name_th` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `SETTINGS`
--

INSERT INTO `SETTINGS` (`settings_id`, `name_th`, `name_en`) VALUES
(1, 'วันทำงานต่อเดือน', 'Work Days Per Month'),
(2, 'ชั่วโมงทำงานต่อวัน', 'Work Hours Per Day'),
(3, 'อัตราค่าล่วงเวลา', 'OT Rate'),
(4, 'วันหยุดประจำสัปดาห์', 'Weekly Off Day');

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
-- Dumping data for table `SHOP`
--

INSERT INTO `SHOP` (`shop_name`, `shop_password`, `shop_avatar`, `tax_id`, `shop_work_hours_per_day`, `shop_work_days_per_month`) VALUES
('Haris Premium Buffet', 'hashed_pass_123', 'haris_logo.png', '0105555555555', 9, 26);

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
-- Dumping data for table `SHOP_EMAIL_CONFIG`
--

INSERT INTO `SHOP_EMAIL_CONFIG` (`email_config_id`, `shop_name`, `shop_email_address`, `shop_email_password`, `smtp_host`, `smtp_port`, `smtp_secure`) VALUES
(5, 'Haris Premium Buffet', 'hr@harisbuffet.com', 'mailpass123', 'smtp.gmail.com', 587, 'tls');

-- --------------------------------------------------------

--
-- Table structure for table `SHOP_UPLOAD`
--

CREATE TABLE `SHOP_UPLOAD` (
  `shop_name` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `uploaded_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `SHOP_UPLOAD`
--

INSERT INTO `SHOP_UPLOAD` (`shop_name`, `file_id`, `uploaded_at`) VALUES
(1, 1, '2026-03-12 11:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `STATEMENT_ENTRY`
--

CREATE TABLE `STATEMENT_ENTRY` (
  `entry_id` int(11) NOT NULL,
  `employee_statement_id` int(11) DEFAULT NULL,
  `snapshot_entry_name_th` varchar(255) DEFAULT NULL,
  `snapshot_entry_name_en` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `entry_created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `STATEMENT_ENTRY`
--

INSERT INTO `STATEMENT_ENTRY` (`entry_id`, `employee_statement_id`, `snapshot_entry_name_th`, `snapshot_entry_name_en`, `amount`, `entry_created_at`) VALUES
(1, 10, 'เบี้ยขยัน', 'Attendance Bonus', '500.00', '2026-03-25 09:00:00'),
(2, 10, 'ล่วงเวลา', 'Overtime', '1125.00', '2026-03-25 09:00:00'),
(3, 10, 'ประกันสังคม', 'Social Security', '-750.00', '2026-03-25 09:00:00'),
(4, 11, 'ค่าเดินทาง', 'Travel Allowance', '300.00', '2026-03-25 09:00:00'),
(5, 11, 'ประกันสังคม', 'Social Security', '-540.00', '2026-03-25 09:00:00'),
(6, 11, 'ขาดงาน', 'Absence Penalty', '-600.00', '2026-03-25 09:00:00'),
(7, 12, 'เบี้ยขยัน', 'Attendance Bonus', '500.00', '2026-03-25 09:00:00'),
(8, 12, 'ประกันสังคม', 'Social Security', '-510.00', '2026-03-25 09:00:00'),
(9, 13, 'ล่วงเวลา', 'Overtime', '600.00', '2026-03-25 09:00:00'),
(10, 13, 'ประกันสังคม', 'Social Security', '-480.00', '2026-03-25 09:00:00'),
(11, 14, 'เบี้ยขยัน', 'Attendance Bonus', '500.00', '2026-03-25 09:00:00'),
(12, 14, 'ล่วงเวลา', 'Overtime', '1500.00', '2026-03-25 09:00:00'),
(13, 14, 'ประกันสังคม', 'Social Security', '-600.00', '2026-03-25 09:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `COMPENSATION_ENTRY`
--
ALTER TABLE `COMPENSATION_ENTRY`
  ADD PRIMARY KEY (`entry_id`);

--
-- Indexes for table `COMPENSATION_SETTINGS`
--
ALTER TABLE `COMPENSATION_SETTINGS`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `fk_employee_branch` (`branch_id`);

--
-- Indexes for table `EMPLOYEE_ADDRESS`
--
ALTER TABLE `EMPLOYEE_ADDRESS`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `EMPLOYEE_STATEMENT`
--
ALTER TABLE `EMPLOYEE_STATEMENT`
  ADD PRIMARY KEY (`employee_statement_id`),
  ADD KEY `fk_payroll_period` (`payroll_period_id`);

--
-- Indexes for table `EMPLOYEE_UPLOAD`
--
ALTER TABLE `EMPLOYEE_UPLOAD`
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `file_id` (`file_id`);

--
-- Indexes for table `FILE`
--
ALTER TABLE `FILE`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `FILE_TAG`
--
ALTER TABLE `FILE_TAG`
  ADD PRIMARY KEY (`tag_id`),
  ADD KEY `file_id` (`file_id`);

--
-- Indexes for table `OT_CONFIG`
--
ALTER TABLE `OT_CONFIG`
  ADD PRIMARY KEY (`ot_settings_type`);

--
-- Indexes for table `OT_ENTRY`
--
ALTER TABLE `OT_ENTRY`
  ADD PRIMARY KEY (`entry_id`);

--
-- Indexes for table `OT_SETTINGS`
--
ALTER TABLE `OT_SETTINGS`
  ADD PRIMARY KEY (`settings_id`),
  ADD KEY `ot_settings_type` (`ot_settings_type`);

--
-- Indexes for table `PAYROLL_PERIOD`
--
ALTER TABLE `PAYROLL_PERIOD`
  ADD PRIMARY KEY (`payroll_period_id`);

--
-- Indexes for table `PENALTY_CONFIG`
--
ALTER TABLE `PENALTY_CONFIG`
  ADD PRIMARY KEY (`penalty_settings_type`);

--
-- Indexes for table `PENALTY_ENTRY`
--
ALTER TABLE `PENALTY_ENTRY`
  ADD PRIMARY KEY (`entry_id`);

--
-- Indexes for table `PENALTY_SETTINGS`
--
ALTER TABLE `PENALTY_SETTINGS`
  ADD PRIMARY KEY (`settings_id`),
  ADD KEY `penalty_settings_type` (`penalty_settings_type`);

--
-- Indexes for table `PERSON`
--
ALTER TABLE `PERSON`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `person_email` (`person_email`);

--
-- Indexes for table `POSITION`
--
ALTER TABLE `POSITION`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `SETTINGS`
--
ALTER TABLE `SETTINGS`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `SHOP`
--
ALTER TABLE `SHOP`
  ADD PRIMARY KEY (`shop_name`);

--
-- Indexes for table `SHOP_EMAIL_CONFIG`
--
ALTER TABLE `SHOP_EMAIL_CONFIG`
  ADD PRIMARY KEY (`email_config_id`),
  ADD KEY `shop_name` (`shop_name`);

--
-- Indexes for table `SHOP_UPLOAD`
--
ALTER TABLE `SHOP_UPLOAD`
  ADD KEY `shop_name` (`shop_name`),
  ADD KEY `file_id` (`file_id`);

--
-- Indexes for table `STATEMENT_ENTRY`
--
ALTER TABLE `STATEMENT_ENTRY`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `fk_employee_statement` (`employee_statement_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BRANCH`
--
ALTER TABLE `BRANCH`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `EMPLOYEE_ADDRESS`
--
ALTER TABLE `EMPLOYEE_ADDRESS`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `EMPLOYEE_UPLOAD`
--
ALTER TABLE `EMPLOYEE_UPLOAD`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `FILE`
--
ALTER TABLE `FILE`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `PERSON`
--
ALTER TABLE `PERSON`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `POSITION`
--
ALTER TABLE `POSITION`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SHOP_EMAIL_CONFIG`
--
ALTER TABLE `SHOP_EMAIL_CONFIG`
  MODIFY `email_config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `COMPENSATION_ENTRY`
--
ALTER TABLE `COMPENSATION_ENTRY`
  ADD CONSTRAINT `fk_entry_compensation` FOREIGN KEY (`entry_id`) REFERENCES `STATEMENT_ENTRY` (`entry_id`);

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `fk_employee_branch` FOREIGN KEY (`branch_id`) REFERENCES `BRANCH` (`branch_id`);

--
-- Constraints for table `EMPLOYEE_STATEMENT`
--
ALTER TABLE `EMPLOYEE_STATEMENT`
  ADD CONSTRAINT `fk_payroll_period` FOREIGN KEY (`payroll_period_id`) REFERENCES `PAYROLL_PERIOD` (`payroll_period_id`);

--
-- Constraints for table `OT_ENTRY`
--
ALTER TABLE `OT_ENTRY`
  ADD CONSTRAINT `fk_entry_ot` FOREIGN KEY (`entry_id`) REFERENCES `STATEMENT_ENTRY` (`entry_id`);

--
-- Constraints for table `PENALTY_ENTRY`
--
ALTER TABLE `PENALTY_ENTRY`
  ADD CONSTRAINT `fk_entry_penalty` FOREIGN KEY (`entry_id`) REFERENCES `STATEMENT_ENTRY` (`entry_id`);

--
-- Constraints for table `STATEMENT_ENTRY`
--
ALTER TABLE `STATEMENT_ENTRY`
  ADD CONSTRAINT `fk_employee_statement` FOREIGN KEY (`employee_statement_id`) REFERENCES `EMPLOYEE_STATEMENT` (`employee_statement_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

