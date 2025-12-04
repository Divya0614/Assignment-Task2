-- use day4db;
-- CREATE TABLE students (
--     student_id INT PRIMARY KEY,
--     student_name VARCHAR(100),
--     phone VARCHAR(20)
-- );
-- CREATE TABLE employees0 (
--     emp_id INT PRIMARY KEY,
--     emp_name VARCHAR(100),
--     department_id INT,
--     salary DECIMAL(10,2)
-- );
DELIMITER $$

CREATE PROCEDURE show_all_students()
BEGIN
    SELECT * FROM students;
END $$

DELIMITER ;

CALL show_all_students();

