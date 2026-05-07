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
update member set phone=9535018770 ;

INSERT INTO member VALUES (1, 'Amruta', 22, 'F', 9876543210, 'amruta@gmail.com'),
(2, 'Rahul', 25, 'M', 9876501234, 'rahul@gmail.com'),
(3, 'Sneha', 24, 'F', 9876512345, 'sneha@gmail.com'),
(4, 'Silpa', 24, 'F', 9876512345, 'sneha@gmail.com');

desc  member;

delete from member where member_id=2;
delete from member;



CREATE TABLE book (
    book_id INT ,
    book_title VARCHAR(100) not null,
    author_name VARCHAR(50) unique not null  ,
    category VARCHAR(50),
    price DECIMAL(8,2),
    available BOOLEAN
);
insert into  book values (1, 'java programming', 'James Gosling', 'Programming', 550.00, true);
insert into  book values(2, 'Database Systems', 'c.j', 'Education', 650.00, true);
insert into  book values(2, 'Database Systems', 'amruta', 'Education', 650.00, true);


update book  set author_name = 'Harshita' where  book_id=111;

insert into  book values (107, 'Java Programming', 'James Gosling', 'Programming', 550.00, true),
(108, 'Database Systems', 'C.J. Date', 'Education', 650.00, true),
(109, 'Python Basics', 'Guido Rossum', 'Programming', 500.00, false),
(110, 'Python Basics', 'Guido Rossum', 'Programming', 500.00, true );

insert into book( book_id,author_name,category,price ) values
(114,'amruta','Programming',100.00 ),
(112,'geeta','Programming',120.00 );


desc book;
select * from book;
drop table book;



