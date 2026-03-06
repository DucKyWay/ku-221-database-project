create table `file_tag` (
    `tag_id` int(11) not null,
    `file_id` int(11) not null,
    primary key (`tag_id`),
    -- primary key (`file_id`, `tag_id`),
    foreign key (`file_id`) references `file`(`file_id`)
)
