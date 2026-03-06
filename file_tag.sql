create table `file_tag` (
    `file_id` int(11) not null,
    `tag_id` int(11) not null,
    primary key (`file_id`, `tag_id`),
    foreign key (`file_id`) references `file`(`file_id`)
)
