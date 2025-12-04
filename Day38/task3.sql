-- use day4db;
-- CREATE TABLE products (
--     product_id INT PRIMARY KEY,
--     product_name VARCHAR(50),
--     price DECIMAL(10,2),
--     qty INT
-- );
-- INSERT INTO products VALUES
-- (101, 'Laptop', 75000, 10),
-- (102, 'Keyboard', 650, 50),
-- (103, 'Mouse', 450, 30),
-- (104, 'Monitor', 12000, 15),
-- (105, 'USB Cable', 150, 100);

delimiter $$
create procedure get_product_details(in pid int)
begin
select * 
from products
where product_id = pid;
end $$

delimiter ;

call get_product_details(103);

desc products;