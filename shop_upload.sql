create table `shop_upload` (
    `shop_name` varchar(255) not null,
    foreign key (`shop_id`) references `shop`(`shop_name`)
)
