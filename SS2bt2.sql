use quanLyBanHang;
create table customer(
cID int primary key auto_increment,
cName varchar(255),
cAge int
);
create table `order`(
oID int primary key auto_increment,
cID int,
foreign key(cID) references customer(cID),
oDate date,
OtotalPrice float
);
create table product(
pID int primary key auto_increment,
pName varchar(255),
pPrice float
);
create table orderDetai(
oID int,
foreign key(oID) references `order`(oID),
pID int,
foreign key(pID) references product(pID),
odQTY int
);