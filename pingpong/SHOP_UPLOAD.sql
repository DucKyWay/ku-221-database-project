SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

create table `SHOP_UPLOAD` (
    `shop_id` int(11) not null,
    `file_id` int(11) not null,
    `uploaded_at` datetime not null,
    foreign key (`shop_id`) references `SHOP`(`shop_id`),
    foreign key (`file_id`) references `FILE`(`file_id`)
)
ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
