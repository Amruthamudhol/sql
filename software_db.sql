CREATE DATABASE software_db;

USE software_db;

CREATE TABLE developer (
developer_id INT PRIMARY KEY,
developer_name CHAR(25) check(length(developer_name)>=3),
email varchar(20) check(email like '%@gmail.com'),
dob date check(dob between '2003-01-01' and '2003-12-31'),
salary DECIMAL(10)
);

 
INSERT INTO developer VALUES (12, 'Amr',  'amruta@gmail.com', '2003-01-15',40000.00);

INSERT INTO developer VALUES (13, 'Amruta',  'akshata@gmail.com', '2003-01-15',40000.00);
select * from developer;

delete from developer where developer_id = 1;


create table projects (
project_id int primary key,
project_name varchar(15),
duration date ,
developer_id int,
foreign key (developer_id) references developer(developer_id)
);

insert into projects values (1,'software','2026-12-31',12);

select * from projects;

