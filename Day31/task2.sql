-- CREATE DATABASE college;
USE college;

CREATE TABLE department (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
description VARCHAR(100)
);
INSERT INTO department (name, description)
VALUES
('John', 'Computer Science'),
('Priya', 'Information Technology'),
('Divya', 'CSE');


SELECT * FROM department;