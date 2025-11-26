USE day4db;

CREATE VIEW vw_valid_phones AS 
SELECT 
    e.*,
    e.phone AS phone_original,
    CASE
        WHEN e.phone LIKE '+%' 
        THEN CONCAT('+', REGEXP_REPLACE(e.phone, '[^0-9]', ''))

        WHEN LENGTH(REGEXP_REPLACE(e.phone, '[^0-9]', '')) = 10 
        THEN CONCAT('+91', REGEXP_REPLACE(e.phone, '[^0-9]', ''))

        ELSE NULL
    END AS phone_number
FROM employees e;
