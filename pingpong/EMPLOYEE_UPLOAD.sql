create table `EMPLOYEE_UPLOAD` (
    `EMPLOYEE_ID` int(11) not null auto_increment,
    `FILE_ID` int(11) not null,
    `UPLOADED_ADD` datetime not null,
    foreign key (`EMPLOYEE_ID`) references `EMPLOYEE`(`EMPLOYEE_ID`),
    foreign key (`FILE_ID`) references `FILE`(`FILE_ID`)
)
