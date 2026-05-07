CREATE DATABASE software_db;

USE software_db;

CREATE TABLE developer (
developer_id INT PRIMARY KEY,
developer_name VARCHAR(50),
age TINYINT,
role_name VARCHAR(50),
salary DECIMAL(10)
);

CREATE TABLE project (project_id INT PRIMARY KEY, project_name VARCHAR(100), technology VARCHAR(50), budget BIGINT);

INSERT INTO developer VALUES (1, 'Amruta', 22, 'Java Developer', 45000.00),
(2, 'Rahul', 25, 'Frontend Developer', 40000.00),
(3, 'Sneha', 24, 'Backend Developer', 48000.00),
(4, 'Kiran', 27, 'Full Stack Developer', 55000.00);

INSERT INTO project VALUES (101, 'E-Commerce Website', 'Java', 500000),
(102, 'Hospital Management', 'Python', 750000),
(103, 'Student Portal', 'Spring Boot', 400000),
(105, 'Banking Application', 'Microservices', 900000);

select * from developer;

select * from project ;


