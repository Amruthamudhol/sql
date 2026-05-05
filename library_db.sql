CREATE DATABASE library_db;
USE library_db;

CREATE TABLE member (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(50),
    age TINYINT,
    gender CHAR(1),
    phone BIGINT,
    email VARCHAR(100)
);

INSERT INTO member VALUES (1, 'Amruta', 22, 'F', 9876543210, 'amruta@gmail.com'),
(2, 'Rahul', 25, 'M', 9876501234, 'rahul@gmail.com'),
(3, 'Sneha', 24, 'F', 9876512345, 'sneha@gmail.com');
desc  member;
select* from  member;

CREATE TABLE book (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100),
    author_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(8,2),
    available BOOLEAN
);

INSERT INTO book VALUE (101, 'Java Programming', 'James Gosling', 'Programming', 550.00, true),
(102, 'Database Systems', 'C.J. Date', 'Education', 650.00, true),
(103, 'Python Basics', 'Guido Rossum', 'Programming', 500.00, false);
desc book;
select * from book;

