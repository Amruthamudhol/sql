create database college_db;

use college_db;

CREATE TABLE data_types_demo (
    id INT,
    age TINYINT,
    salary BIGINT,
    marks DECIMAL(5,2),
    grade CHAR(1),
    name VARCHAR(50),
    description TEXT,
    is_active BOOLEAN,
    created_date DATE,
    created_time DATETIME
);

desc data_types_demo;
rename table data_types_demo to data_types;

alter table data_types add father_name varchar(10),
add mother_name varchar(10),
add mbl_no bigint;

alter table data_types drop age,
drop description;

alter table data_types
rename column is_active to active,
rename column created_time to time;



INSERT INTO data_types_demo VALUES (1, 22, 450000, 87.0, 'A', 'Amruta', 'Java Developer', true, '2026-05-05', '2026-05-05 10:30:00'),
(2, 25, 520000, 91.5, 'A', 'Rahul', 'Frontend Developer', true, '2026-05-06', '2026-05-06 11:15:00'),
(3, 28, 610000, 76.8, 'B', 'Sneha', 'Database Analyst', true, '2026-05-07', '2026-05-07 09:45:00'),
(4, 24, 430000, 68.2, 'C', 'Kiran', 'Support Engineer', false, '2026-05-08', '2026-05-08 02:20:00'),
(5, 30, 750000, 88.9, 'A', 'Divya', 'Software Tester', true, '2026-05-09', '2026-05-09 04:10:00');


select * from data_types_demo;

