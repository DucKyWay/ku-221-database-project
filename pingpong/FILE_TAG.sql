create table `FILE_TAG` (
    `tag_ID` int(11) not null,
    `FILE_ID` int(11) not null,
    primary key (`TAG_ID`),
    foreign key (`FILE_ID`) references `FILE`(`FILE_ID`)
)
