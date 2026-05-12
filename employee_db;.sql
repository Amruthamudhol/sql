create database employee_db;

use employee_db;

create table employee_info (
employee_id int, 
employee_name varchar(50),
 department varchar(50), 
 salary int, 
 age int);
 
 insert into employee_info values (1,'amruta','hr',25000,22);
insert into employee_info values (2,'ravi','sales',30000,25);
insert into employee_info values (3,'sneha','developer',45000,21);
insert into employee_info values (4,'kiran','manager',60000,30);

select * from employee_info where salary between 25000 and 50000;
select * from employee_info where age between 21 and 25;
select * from employee_info where salary not between 30000 and 50000;
select * from employee_info where age not between 22 and 30;
select * from employee_info where department='hr' or department='sales';
select * from employee_info where salary between 25000 and 60000 and age between 21 and 25;
select * from employee_info where department='developer' or salary > 50000;
select * from employee_info where salary not between 20000 and 40000 and department='manager';
select employee_name, salary from employee_info where age between 21 and 30;
select * from employee_info where department='sales' or age not between 20 and 24;
select count(*) from employee_info;
select sum(salary) from employee_info;
select avg(salary) from employee_info;
select max(salary) from employee_info;
select min(salary) from employee_info;


create table employee (
employee_id int primary key,
employee_name varchar(50),
salary int
);

insert into employee values (1,'amruta',25000);
insert into employee values (2,'ravi',30000);
insert into employee values (3,'sneha',45000);

create table attendance (
attendance_id int primary key,
employee_id int,
working_days int,
absent_days int,
foreign key (employee_id) references employee(employee_id)
);

insert into attendance values (101,1,25,5);
insert into attendance values (102,2,24,6);
insert into attendance values (103,3,26,4);




