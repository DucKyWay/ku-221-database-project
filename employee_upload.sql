create table `employee_upload` (
    `employee_id` int(11) not null auto_increment,
    `file_id` int(11) not null,
    `uploaded_at` datetime not null default current_timestamp,
    primary key (`employee_id`, `file_id`),
    foreign key (`employee_id`) references `employee`(`employee_id`),
    foreign key (`file_id`) references `file`(`file_id`)
)
