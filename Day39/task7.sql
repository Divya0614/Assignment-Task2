use day4db;

DELIMITER $$

CREATE PROCEDURE calculate_bill(
    IN p_product_id INT,
    IN p_quantity INT,
    OUT p_total_bill DECIMAL(10,2)
)
BEGIN
    DECLARE product_price DECIMAL(10,2);

    -- Get the product price
    SELECT price INTO product_price
    FROM products
    WHERE product_id = p_product_id;

    -- Calculate total bill
    SET p_total_bill = product_price * p_quantity;
END $$

DELIMITER ;

CALL calculate_bill(101, 2, @bill);
SELECT @bill;

