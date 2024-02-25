create database manger_sale;
use manger_sale;
create table rolle(
rolle_id bigint auto_increment primary key,
rolle_name varchar(100),
create_by varchar(100),
is_delete bit(1),
create_at time,
update_by varchar(100),
update_at time
);
create table users(
user_id bigint auto_increment primary key,
user_name varchar(100),
user_email varchar(150),
`password` varchar(50),
user_phone varchar(11),
create_by varchar(100),
is_delete bit(1),
create_at time,
update_by varchar(100),
update_at time
);
create table rolle_user(
rolle_user_id bigint auto_increment primary key,
rolle_id bigint,
user_id bigint,
create_by varchar(100),
is_delete bit(1),
create_at time,
update_by varchar(100),
update_at time,
foreign key (rolle_id) references rolle(rolle_id),
foreign key (user_id) references users(user_id)
);

c
