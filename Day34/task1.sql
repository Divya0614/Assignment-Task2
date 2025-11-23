-- create database day3db;

CREATE TABLE employees_3 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10,2),
    department VARCHAR(100)
);
INSERT INTO employees_3 (first_name, last_name, salary, department)
VALUES
('Divya', 'M', 92000, 'IT'),
('Kaviya', 'S', 68000, 'HR'),
('Iniya', 'R', 78000, 'Finance'),
('John', 'Paul', 82000, 'Marketing'),
('Arun', 'K', 55000, 'Sales'),
('Priya', 'V', 99000, 'IT'),
('Rahul', 'S', 47000, 'Admin'),
('Sneha', 'L', 88000, 'Operations');

select first_name 
from employees_3
where salary > 75000

