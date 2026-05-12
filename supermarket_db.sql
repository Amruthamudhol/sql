CREATE DATABASE supermarket_db;
use supermarket_db;

CREATE TABLE customer_info (
    customer_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    age INT,
    membership VARCHAR(20)
);

INSERT INTO customer_info VALUES
(1, 'Amruta', 'Bangalore', 22, 'Gold');

INSERT INTO customer_info VALUES
(2, 'Ravi', 'Mysore', 25, 'Silver');

INSERT INTO customer_info VALUES
(3, 'Sneha', 'Hubli', 21, 'Gold');

INSERT INTO customer_info VALUES
(4, 'Kiran', 'Delhi', 30, 'Platinum');

SELECT * FROM customer_info WHERE city IN ('Bangalore', 'Mysore');

SELECT * FROM customer_info WHERE age IN (21, 22, 25);

select * from customer_info where membership not in ('silver');

select * from customer_info where city in ('bangalore') and membership in ('gold');

select * from customer_info where city in ('mysore') or membership in ('platinum');

select * from customer_info where age not in (30);

select customer_name, city from customer_info where city not in ('hubli','delhi');

select * from customer_info where customer_id in (1,3);



select * from customer_info where membership is not null;
select * from customer_info where city is not null;
select * from customer_info where age is not null;
select * from customer_info where customer_name is not null;
select * from customer_info where membership is null;
select * from customer_info where city is null;
select * from customer_info where age is null;
select * from customer_info where customer_name is null;
select customer_name, city from customer_info where membership is not null;
select * from customer_info where customer_id is not null;