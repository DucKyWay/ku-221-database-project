create table `FILE` (
    `FILE_ID` int(11) not null auto_increment,
    `EXTERNAL_KEY` varchar(255) not null,
    `FILENAME` varchar(255) not null,
    `SIZE` bigint(20),
    `MIME_TYPE` varchar(255),
    `METADATA` varchar(255),
    `FILE_CREATED_AT` datetime default current_timestamp,
    primary key (`FILE_ID`)
)
