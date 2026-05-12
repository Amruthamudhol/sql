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


INSERT INTO data_types_demo VALUES (3, 22, 450000, 87.0, 'A', 'Amruta', 'Java Developer', true, '2026-05-05', '2026-05-05 10:30:00');
insert into data_types_demo VALUES  (4, 25, 520000, 91.5, 'A', 'Rahul', 'Frontend Developer', true, '2026-05-06', '2026-05-06 11:15:00');

update data_types_demo set  grade = 'B' where  id =4;

set autocommit =0;

insert into data_types_demo VALUES  (5, 25, 520000, 91.5, 'A', 'Rahul', 'Frontend Developer', true, '2026-05-06', '2026-05-06 11:15:00');

rollback;

delete from data_types_demo where id=2;



select * from data_types_demo;


