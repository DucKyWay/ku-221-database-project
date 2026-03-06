create table `shop_upload` (
    `shop_id` int(11) not null,
    `file_id` int(11) not null,
    `uploaded_at` datetime not null,
    foreign key (`shop_id`) references `shop`(`shop_id`),
    foreign key (`file_id`) references `file`(`file_id`)
)
