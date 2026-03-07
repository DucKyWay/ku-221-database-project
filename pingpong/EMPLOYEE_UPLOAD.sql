create table `EMPLOYEE_UPLOAD` (
    `employee_id` int(11) not null auto_increment,
    `file_id` int(11) not null,
    `uploaded_at` datetime not null,
    foreign key (`employee_id`) references `EMPLOYEE`(`employee_id`),
    foreign key (`file_id`) references `FILE`(`file_id`)
)
