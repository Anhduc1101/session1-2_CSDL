-- tạo CSDL
create database session01;
use session01;

-- tạo bảng users
CREATE table users(
userId int primary key,
user_name varchar(50),
email varchar(50),
password varchar(255)
);

create table category(
catId int primary key,
catName varchar(50),
description varchar(255),
status boolean
);

create table product(
proId int primary key,
catId int,
foreign key (catId) references category (catId) ,
proName varchar(50),
description varchar(255),
stock int,
price int, 
image varchar(255)
);

create table orders(
orderId int primary key,
userId int,
foreign key (userId) references users (userId),
create_at date,
status boolean
);

create table order_details(
orderId int,
foreign key (orderId)references orders(orderId),
proId int,
foreign key(proId)references product(proId),
quantity int,
price int);