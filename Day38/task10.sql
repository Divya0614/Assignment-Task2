-- use day4db;

-- CREATE TABLE customers1 (
--     customer_id INT PRIMARY KEY,
--     customer_name VARCHAR(100)
-- );
-- CREATE TABLE products2 (
--     product_id INT PRIMARY KEY,
--     product_name VARCHAR(100),
--     price DECIMAL(10,2)
-- );
-- CREATE TABLE orders1 (
--     order_id INT PRIMARY KEY,
--     customer_id INT,
--     product_id INT,
--     quantity INT
-- );
CREATE VIEW vw_customer_orders AS
SELECT 
    o.order_id,
    c.customer_name,
    p.product_name,
    p.price,
    o.quantity,
    (p.price * o.quantity) AS total_amount
FROM orders1 o
JOIN customers c 
    ON o.customer_id = c.customer_id
JOIN products p
    ON o.product_id = p.product_id;

SELECT * FROM vw_customer_orders;

