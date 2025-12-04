-- use day4db;

-- DELIMITER $$

-- CREATE PROCEDURE filter_employees_by_salary(
--     IN p_min_salary DECIMAL(10,2),
--     IN p_max_salary DECIMAL(10,2)
-- )
-- BEGIN
--     SELECT * FROM employees
--     WHERE salary BETWEEN p_min_salary AND p_max_salary;
-- END $$

-- DELIMITER ;
-- DROP PROCEDURE IF EXISTS filter_employees_by_salary;
DELIMITER $$

CREATE PROCEDURE filter_employees_by_salary(
    IN p_min_salary DECIMAL(10,2),
    IN p_max_salary DECIMAL(10,2)
)
BEGIN
    SELECT * FROM employees
    WHERE salary BETWEEN p_min_salary AND p_max_salary;
END $$

DELIMITER ;

-- CALL filter_employees_by_salary(30000, 60000);
-- DESCRIBE employees;
ALTER TABLE employees
ADD COLUMN salary DECIMAL(10,2);

UPDATE employees
SET salary = 40000 WHERE id = 1;
UPDATE employees
SET salary = 50000 WHERE id = 2;



