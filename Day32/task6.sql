use day2db;
create table product(
id int primary key auto_increment,
name varchar(100),
price decimal(10,2),
created_at datetime
);

