-- use day4db;

-- CREATE TABLE order_items (
--     item_id INT PRIMARY KEY AUTO_INCREMENT,
--     product_id INT,
--     qty INT,
--     price DECIMAL(10,2)
-- );
-- INSERT INTO order_items (product_id, qty, price) VALUES
-- (101, 2, 150.00),
-- (102, 5, 99.50),
-- (103, 1, 450.00),
-- (104, 3, 75.25);

-- DELIMITER $$

-- CREATE FUNCTION total_price(qty INT, price DECIMAL(10,2))
-- RETURNS DECIMAL(10,2)
-- DETERMINISTIC
-- BEGIN
--     RETURN qty * price;
-- END $$

-- DELIMITER ;

SELECT 
    item_id,
    product_id,
    qty,
    price,
    total_price(qty, price) AS total_amount
FROM order_items;
