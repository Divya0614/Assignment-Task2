-- use day4db;

-- DELIMITER $$

-- CREATE PROCEDURE add_order(
--     IN p_customer_id INT,
--     IN p_product_id INT,
--     IN p_quantity INT,
--     IN p_order_date DATE
-- )
-- BEGIN
--     INSERT INTO orders (customer_id, product_id, quantity, order_date)
--     VALUES (p_customer_id, p_product_id, p_quantity, p_order_date);
-- END $$

-- DELIMITER ;

CALL add_order(1, 101, 2, '2025-12-04');
