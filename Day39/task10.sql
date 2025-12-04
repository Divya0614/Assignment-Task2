use day4db;

DELIMITER $$

CREATE PROCEDURE increase_product_price(
    IN p_percentage DECIMAL(5,2)
)
BEGIN
    UPDATE products
    SET price = price + (price * p_percentage / 100);
END $$

DELIMITER ;

SELECT * FROM products;
