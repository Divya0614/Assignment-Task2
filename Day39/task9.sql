use day4db;


DELIMITER $$

CREATE PROCEDURE total_sales_for_month(
    IN p_month INT,
    IN p_year INT,
    OUT p_total_sales DECIMAL(10,2)
)
BEGIN
    SELECT SUM(quantity * price) INTO p_total_sales
    FROM orders
    WHERE MONTH(order_date) = p_month
      AND YEAR(order_date) = p_year;
END $$

DELIMITER ;

CALL total_sales_for_month(12, 2025, @total);
SELECT @total;
