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

INSERT INTO data_types_demo VALUES (1, 22, 450000, 87.0, 'A', 'Amruta', 'Java Developer', true, '2026-05-05', '2026-05-05 10:30:00');
select * from data_types_demo;

