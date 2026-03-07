create table `SHOP_UPLOAD` (
    `shop_id` int(11) not null,
    `file_id` int(11) not null,
    `uploaded_at` datetime not null,
    foreign key (`shop_id`) references `SHOP`(`shop_id`),
    foreign key (`file_id`) references `FILE`(`file_id`)
)
