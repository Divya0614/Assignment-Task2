-- use day4db;
SELECT 
    DATEDIFF(
        STR_TO_DATE(CONCAT(YEAR(CURDATE()) + 1, '-01-01'), '%Y-%m-%d'),
        CURDATE()
    ) AS new_year;
