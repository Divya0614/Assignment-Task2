use day4db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50)
);
INSERT INTO customers (customer_name, email, phone, city) VALUES
('Divya', 'divya@gmail.com', '9876543210', 'Madurai'),
('Arun', 'arun@gmail.com', '9876501234', 'Chennai'),
('Priya', 'priya@gmail.com', '7654983210', 'Coimbatore'),
('Karthik', 'karthik@gmail.com', '9876123456', 'Trichy');
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2025-01-10', 1500),
(1, '2025-01-15', 2600),
(2, '2025-01-20', 1800),
(3, '2025-02-01', 900),
(1, '2025-02-05', 3200),
(4, '2025-02-06', 500);


CREATE VIEW vw_total_orders_per_customer AS
SELECT 
    c.customer_id,
    c.customer_name,
    c.email,
    c.phone,
    c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_order_value
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id,
    c.customer_name,
    c.email,
    c.phone,
    c.city;
SELECT * FROM vw_total_orders_per_customer;


