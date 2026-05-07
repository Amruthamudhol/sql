create database ecommerce_db;
use ecommerce_db;

create table customers (
    customer_id int,
    customer_name varchar(50) NOT NULL,
    gender char(1),
    phone bigint UNIQUE,
    email varchar(100) UNIQUE,
    customer_type enum('Regular','Premium','VIP'),
    address text,
    is_active boolean,
    username varchar(30),
    password_binary binary(16)
);

insert into customers values
(1,'Amruta','F',9876543210,'amruta@gmail.com','Premium','Bangalore Karnataka',1,'amruta123','pass123456789012'),
(2,'Rahul','M',9876543211,'rahul@gmail.com','Regular','Mysore Karnataka',1,'rahul123','pass987654321098'),
(3,'Sneha','F',9876543212,'sneha@gmail.com','VIP','Hubli Karnataka',1,'sneha123','pass456789123456'),
(4,'Kiran','M',9876543213,'kiran@gmail.com','Premium','Belgaum Karnataka',0,'kiran123','pass654321987654');

insert into  customers(customer_id, customer_name, gender, phone, customer_type)values
(7,'Divya','F',9876543216,'Premium'),
(8,'Rakesh','M',9876543217,'Regular'),
(9,'Anjali','F',9876543218,'VIP'),
(10,'Karthik','M',9876543219,'Premium');

UPDATE customers SET customer_name = 'Amrutha' WHERE customer_id = 1;
UPDATE customers SET customer_type = 'VIP' WHERE customer_id = 2;
UPDATE customers SET is_active = 0 WHERE customer_id = 3;
UPDATE customers SET phone = 9999999999 WHERE customer_id = 4;
UPDATE customers SET gender = 'M' WHERE customer_id = 7;

DELETE FROM customers WHERE customer_id = 10;
DELETE FROM customers WHERE customer_id = 9;
DELETE FROM customers WHERE customer_id = 8;
DELETE FROM customers WHERE customer_id = 7;
DELETE FROM customers WHERE customer_id = 4;

alter table customers add city varchar(30);
alter table customers modify customer_name varchar(100);


select * from customers;


create table products (
    product_id int,
    product_name varchar(50) NOT NULL,
    category varchar(30),
    price decimal(10,2),
    discount float,
    rating double,
    features set('Bluetooth','WiFi','Touch','5G'),
    description text,
    stock int,
    brand varchar(30)
);

insert into  products values 
(101,'Smart Watch','Accessories',5500.00,8.5,4.3,'Bluetooth,Touch','Fitness smart watch',25,'Noise'),
(102,'Tablet','Electronics',32000.99,12.0,4.6,'WiFi,Touch','Android tablet with large display',12,'Lenovo'),
(103,'Headphones','Accessories',2999.50,15.5,4.2,'Bluetooth','Wireless headphones with bass',40,'Boat'),
(104,'Smart TV','Electronics',45000.00,20.0,4.8,'WiFi,Bluetooth','55 inch 4K Smart TV',8,'Sony');

insert into  products (product_id, product_name, category, price, stock) values
(105,'Keyboard','Electronics',1500.00,20),
(106,'Mouse','Electronics',800.00,35),
(107,'Printer','Electronics',12000.50,10),
(108,'Speaker','Accessories',3500.75,18);

update products set price = 6000.00 where product_id = 101;
update products set stock = 25 where product_id = 102;
update products set brand = 'JBL'where product_id = 103;
update products set category = 'Home Electronics' where product_id = 104;
update products set product_name = 'Gaming Keyboard'where product_id = 105;

alter table products add manufacture_date date;
alter table products rename column brand to company_name;


delete from products where product_id = 108;
delete from  products where product_id = 107;
delete from  products where product_id = 106;
delete from  products where product_id = 105;
delete from products where product_id = 104;

select * from products;

create table orders (
    order_id int,
    customer_id int,
    product_id int,
    quantity int,
    total_amount decimal(10,2),
    payment_mode enum('UPI','CARD','COD'),
    order_status varchar(20),
    delivered boolean,
    order_code char(6),
    tracking_number bigint
);

insert into orders values
(1001,3,103,1,5500.00,'COD','Delivered',1,'ORD103',5556667773),
(1002,4,104,2,64001.98,'CARD','Shipped',1,'ORD104',5556667774),
(1003,1,105,3,8998.50,'UPI','Processing',0,'ORD105',5556667775),
(1004,2,106,1,45000.00,'CARD','Delivered',1,'ORD106',5556667776);

insert into orders (order_id, customer_id, product_id, total_amount) values
(1005,3,107,1500.00),
(1006,4,108,800.00),
(1007,1,109,12000.50),
(1008,2,110,3500.75);

update orders set total_amount = 6000.00 where order_id = 1001;
update orders set payment_mode = 'upi' where order_id = 1002;
update orders set delivered = 1 where order_id = 1003;
update orders set order_status = 'cancelled' where order_id = 1004;
update orders set quantity = 5 where order_id = 1005;

delete from orders where order_id = 1008;
delete from orders where order_id = 1007;
delete from orders where order_id = 1006;
delete from orders where order_id = 1005;
delete from orders where order_id = 1004;

alter table orders drop column tracking_number;
alter table orders add delivery_date date;
alter table orders rename column delivered to order_delivered;

select* from orders;

create table payments (
    payment_id int,
    order_id int,
    amount double,
    tax float,
    payment_method enum('CARD','UPI','NETBANKING'),
    transaction_id varchar(50),
    payment_note text,
    payment_success boolean,
    currency char(3),
    gateway varchar(30)
);

insert into payments values
(7,1003,5500.00,12.5,'UPI','TXN11111','Cash on delivery payment',1,'INR','Paytm'),
(8,1004,64001.98,18.0,'CARD','TXN22222','Card payment successful',1,'INR','Razorpay'),
(9,1005,8998.50,10.0,'UPI','TXN33333','UPI payment pending',0,'INR','GooglePay'),
(10,1006,45000.00,15.0,'NETBANKING','TXN44444','Net banking payment completed',1,'INR','HDFC');

insert into payments (payment_id, order_id, amount, payment_method, payment_success) values
(11,1007,1500.00,'CARD',1),
(12,1008,800.00,'UPI',1),
(13,1009,12000.50,'NETBANKING',0),
(14,1010,3500.75,'CARD',1);

update payments set amount = 6000.00 where payment_id = 7;
update payments set payment_method = 'upi' where payment_id = 8;
update payments set payment_success = 1 where payment_id = 9;
update payments set gateway = 'phonepe' where payment_id = 10;
update payments set currency = 'usd' where payment_id = 11;

delete from payments where payment_id = 14;
delete from payments where payment_id = 13;
delete from payments where payment_id = 12;
delete from payments where payment_id = 11;
delete from payments where payment_id = 10;

alter table payments drop column payment_note;
alter table payments add payment_date date;
alter table payments modify gateway varchar(50);



select* from payments;

create table shipping (
    shipping_id int,
    order_id int,
    courier_name varchar(50),
    vehicle_number char(10),
    contact_number bigint,
    shipping_speed enum('Normal','Fast','Express'),
    delivery_options set('SMS','Email','Call'),
    shipped boolean,
    warehouse_location text,
    delivery_days tinyint
);

insert into shipping values
(1,1001,'BlueDart','KA01AB1234',9988776655,'Express','SMS,Email',1,'Bangalore Warehouse',2),
(2,1002,'DTDC','KA02CD5678',9988776644,'Fast','SMS,Call',0,'Mysore Warehouse',4),
(3,1003,'Delhivery','KA03EF9012',9988776633,'Normal','Email',1,'Hubli Warehouse',5),
(4,1004,'EcomExpress','KA04GH3456',9988776622,'Express','SMS,Call',1,'Belgaum Warehouse',1);

insert into shipping(shipping_id, courier_name, shipping_speed) values
(8,'BlueDart','Express'),
(9,'DTDC','Fast'),
(10,'IndiaPost','Normal');


update shipping set courier_name = 'dhl' where shipping_id = 1;
update shipping set shipping_speed = 'fast' where shipping_id = 2;
update shipping set shipped = 0 where shipping_id = 3;
update shipping set delivery_days = 3 where shipping_id = 4;
update shipping set warehouse_location = 'delhi warehouse' where shipping_id = 8;

delete from shipping where shipping_id = 10;
delete from shipping where shipping_id = 9;
delete from shipping where shipping_id = 8;
delete from shipping where shipping_id = 4;
delete from shipping where shipping_id = 3;

select * from shipping;
