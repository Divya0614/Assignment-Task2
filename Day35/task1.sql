-- create database day4db;
-- use day4db;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    emp_code INT,
    hire_date DATE
);
INSERT INTO employees (name, email, phone, emp_code, hire_date) VALUES
('Divya', '  divya@example.com  ', '987-654-3210', 7, '2022-03-15'),
('Kaviya', 'kaviya@example.com', '900-111-2222', 55, '2021-11-05'),
('Iniya', '  iniya@example.com', '888-777-6666', 123, '2022-07-20'),
('Arun', 'arun@example.com  ', '999-000-1111', 5, '2023-02-10'),
('Priya', 'priya@example.com', '777-88-9999', 402, '2022-12-01'),
('John', ' john@example.com ', '123-456-7890', 78, '2020-05-25');

select name, hire_date, year(hire_date) as year, month(hire_date) as month from employees
where year(hire_date) = 2022;