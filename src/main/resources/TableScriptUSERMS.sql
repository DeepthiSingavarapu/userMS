drop database if exists user_db;
create database user_db;
use user_db;

create table buyer (
buyer_id varchar(30) not null,
name varchar(30),
email varchar(30),
phone_number varchar(10),
password varchar(60),
is_privileged varchar(5),
reward_points varchar(20),
is_active varchar(5),

constraint buyer_pk primary key (buyer_id)

);




create table seller (
seller_id varchar(30) not null,
name varchar(30),
email varchar(30),
phone_number varchar(10),
password varchar(60),
is_active varchar(5),

constraint seller_pk primary key (seller_id)

);

create table wishlist (
buyer_id varchar(30),
prod_id varchar(30),


constraint wishlist_pk primary key (prod_id,buyer_id)

);

create table cart (
buyer_id varchar(30),
prod_id varchar(30),
quantity int,


constraint wishlist_pk primary key (prod_id,buyer_id)

);
INSERT INTO `user_db`.`buyer` (`buyer_id`, `name`, `email`, `phone_number`, `password`, `is_privileged`, `reward_points`, `is_active`) VALUES ('2001', 'DEEPTHI', 'deepthi01@gmail.com', '9090909001', 'DEEPTHI@2001', 'YES', '1000', 'YES');
INSERT INTO `user_db`.`buyer` (`buyer_id`, `name`, `email`, `phone_number`, `password`, `is_privileged`, `reward_points`, `is_active`) VALUES ('2002', 'DEVI', 'devi02@gmail.com', '9090909002', 'DEVI@2002', 'YES', '1100', 'YES');

INSERT INTO `user_db`.`cart` (`buyer_id`, `prod_id`, `quantity`) VALUES ('2001', '3001', '10');
INSERT INTO `user_db`.`cart` (`buyer_id`, `prod_id`, `quantity`) VALUES ('2002', '3002', '20');
INSERT INTO `user_db`.`seller` (`seller_id`, `name`, `email`, `phone_number`, `password`, `is_active`) VALUES ('4001', 'RAMESH', 'ramesh01@gmail.com', '9090909026', 'RAMESH@4001', 'YES');
INSERT INTO `user_db`.`seller` (`seller_id`, `name`, `email`, `phone_number`, `password`, `is_active`) VALUES ('4002', 'SRINIVAS', 'srinivas02@gmail.com', '9090909025', 'SRINIVAS@4002', 'YES');

INSERT INTO `user_db`.`wishlist` (`buyer_id`, `prod_id`) VALUES ('2001', '3001');
INSERT INTO `user_db`.`wishlist` (`buyer_id`, `prod_id`) VALUES ('2002', '3002');
