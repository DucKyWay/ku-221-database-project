create table `SHOP_UPLOAD` (
    `SHOP_ID` int(11) not null,
    `FILE_ID` int(11) not null,
    `UPLOADED_AT` datetime not null,
    foreign key (`SHOP_ID`) references `SHOP`(`SHOP_ID`),
    foreign key (`FILE_ID`) references `FILE`(`FILE_ID`)
)
