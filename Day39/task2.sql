-- use day4db;

DELIMITER $$

CREATE PROCEDURE get_employees_by_dept(
    IN p_dept_id INT
)
BEGIN
    SELECT * FROM employees
    WHERE id = p_dept_id;
END $$

DELIMITER ;
CALL get_employees_by_dept(2);
