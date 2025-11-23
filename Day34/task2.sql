use day3db;

CREATE TABLE employees_4 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    department_id INT,
    active TINYINT(1)
);

INSERT INTO employees_4 (first_name, last_name, salary, hire_date, department_id, active)
VALUES
('Divya', 'M', 92000, '2020-05-14', 1, 1),
('Kaviya', 'S', 68000, '2019-11-20', 3, 1),
('Iniya', 'R', 78000, '2021-03-10', 5, 1),
('John', 'Paul', 82000, '2022-07-25', 1, 0),
('Arun', 'K', 55000, '2018-01-22', 3, 1),
('Priya', 'V', 99000, '2020-10-18', 5, 1),
('Rahul', 'S', 47000, '2023-02-05', 2, 0),
('Sneha', 'L', 88000, '2021-12-01', 1, 1);

select * from employees_4
where hire_date between '2020-01-01' and '2022-12-31';
