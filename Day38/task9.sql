use day4db;
CREATE TABLE products1 (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    stock INT
);
INSERT INTO products1 (product_name, stock) VALUES
('Laptop', 10),
('Mobile', 20),
('Headphones', 50);
DELIMITER $$

CREATE PROCEDURE update_product_stock(
    IN p_product_id INT,
    IN p_new_stock INT
)
BEGIN
    UPDATE products1
    SET stock = p_new_stock
    WHERE product_id = p_product_id;
END $$

DELIMITER ;

CALL update_product_stock(1, 40);

