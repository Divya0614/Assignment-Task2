
use day4db;
SELECT 
    DATEDIFF(
        CASE
            WHEN CURDATE() <= DATE(CONCAT(YEAR(CURDATE()), '-02-06'))
            THEN DATE(CONCAT(YEAR(CURDATE()), '-02-06'))
            ELSE DATE(CONCAT(YEAR(CURDATE()) + 1, '-02-06'))
        END,
    CURDATE()) AS days_to_birthday;
