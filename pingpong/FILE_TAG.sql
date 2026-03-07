create table `FILE_TAG` (
    `tag_id` int(11) not null,
    `file_id` int(11) not null,
    primary key (`tag_id`),
    foreign key (`file_id`) references `FILE`(`file_id`)
)
