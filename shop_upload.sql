create table `shop_upload` (
    -- `shop_name` varchar(255) not null,
    `shop_id` int(11) not null,
    -- foreign key (`shop_name`) references `shop`(`shop_name`)
    foreign key (`shop_id`) references `shop`(`shop_id`)
)
