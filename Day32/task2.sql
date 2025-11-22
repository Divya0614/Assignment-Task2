-- create database day2db;
use day2db;
create table employees(
id int primary key auto_increment,
first_name varchar(100),
last_name varchar(100),
hire_date date,
salary decimal(10,3)
);

insert into employees(first_name, last_name, hire_date, salary)
values
('Divya', 'M', '2023-05-10', 40000),
('Kaviya', 'S', '2022-11-15', 38000),
('John', 'A', '2020-09-01', 42000);

-- select * from employees;
select first_name, last_name from employees;