CREATE DATABASE ecommerce_db;
USE ecommerce_db;
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    age TINYINT,
    gender CHAR(1),
    email VARCHAR(100),
    phone BIGINT,
    is_active BOOLEAN
);

CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock SMALLINT,
    description TEXT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity TINYINT,
    total_amount DOUBLE,
    order_date DATETIME
);

INSERT INTO customer VALUES(1, 'Amruta', 22, 'F', 'amruta@gmail.com', 9876543210, true),
(2, 'Rahul', 25, 'M', 'rahul@gmail.com', 9876501234, true),
(3, 'Sneha', 24, 'F', 'sneha@gmail.com', 9876512345, false),
(4, 'Kiran', 27, 'M', 'kiran@gmail.com', 9876523456, true);

INSERT INTO product VALUES(101, 'Laptop', 'Electronics', 55000.00, 10, 'Dell Inspiron 15'),
(102, 'Smartphone', 'Electronics', 25000.00, 20, 'Samsung Galaxy M14'),
(103, 'Headphones', 'Accessories', 2000.00, 50, 'Wireless Bluetooth Headphones');

INSERT INTO orders VALUES(1001, 1, 101, 1, 55000.00, '2026-05-01 10:30:00'),
(1002, 2, 102, 2, 50000.00, '2026-05-02 11:00:00'),
(1003, 3, 103, 3, 6000.00, '2026-05-03 12:15:00');
select * from orders;
select * from customer ;
select * from product ;

