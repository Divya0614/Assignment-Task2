use day4db;

DELIMITER $$

CREATE PROCEDURE get_highest_salary(
    OUT p_max_salary DECIMAL(10,2)
)
BEGIN
    SELECT MAX(salary)
    INTO p_max_salary
    FROM employees;
END $$

DELIMITER ;
CALL get_highest_salary(@result);
SELECT @result;
