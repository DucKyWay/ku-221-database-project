SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

create table `FILE` (
    `file_id` int(11) not null auto_increment,
    `external_key` varchar(255) not null,
    `filename` varchar(255) not null,
    `size` bigint(20),
    `mime_type` varchar(255),
    `metadata` varchar(255),
    `file_created_at` datetime default current_timestamp,
    primary key (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
