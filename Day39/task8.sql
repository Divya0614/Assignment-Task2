use day4db;

CREATE TABLE user_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100),
    login_time DATETIME
);

DELIMITER $$

CREATE PROCEDURE log_user_login(
    IN p_username VARCHAR(100)
)
BEGIN
    INSERT INTO user_log (username, login_time)
    VALUES (p_username, NOW());
END $$

DELIMITER ;

CALL log_user_login('Divya');

SELECT * FROM user_log;

