use day2db;
create table product(
id int primary key auto_increment,
name varchar(100),
price decimal(10,2),
created_at datetime
);
INSERT INTO product (name, price, created_at)
VALUES
('Laptop', 75000.00, NOW()),
('Smartphone', 25000.00, NOW()),
('Headphones', 1500.00, NOW()),
('Keyboard', 650.00, NOW()),
('USB Cable', 150.00, NOW());

-- select * from product
-- where price > 500;

select * from product
order by price desc limit 3;