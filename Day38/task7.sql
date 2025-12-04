-- use day4db;

-- DELIMITER $$

-- CREATE PROCEDURE add_employee(
--     IN p_name VARCHAR(100),
--     IN p_email VARCHAR(100),
--     IN p_phone VARCHAR(20),
--     IN p_emp_code INT,
--     IN p_hire_date DATE,
--     IN p_username VARCHAR(100)
-- )
-- BEGIN
--     INSERT INTO employees (name, email, phone, emp_code, hire_date, username)
--     VALUES (p_name, p_email, p_phone, p_emp_code, p_hire_date, p_username);
-- END $$

-- DELIMITER ;



-- CALL add_employee('Divya', 'HR', 45000);

--  describe employees;

DROP PROCEDURE IF EXISTS add_employee;

DELIMITER $$

CREATE PROCEDURE add_employee(
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_phone VARCHAR(20),
    IN p_emp_code INT,
    IN p_hire_date DATE,
    IN p_username VARCHAR(100)
)
BEGIN
    INSERT INTO employees (name, email, phone, emp_code, hire_date, username)
    VALUES (p_name, p_email, p_phone, p_emp_code, p_hire_date, p_username);
END $$

DELIMITER ;

CALL add_employee(
    'Divya',
    'divya@gmail.com',
    '9876543210',
    101,
    '2025-01-01',
    'divyaUser'
);

