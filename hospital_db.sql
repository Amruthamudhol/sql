create database hospital_db;
USE hospital_db;

CREATE TABLE patient (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    age TINYINT,
    gender CHAR(1),
    admission_date DATE
);

INSERT INTO patient VALUES
(1, 'Amruta', 22, 'F', '2026-05-01'),
(2, 'Rahul', 30, 'M', '2026-05-02'),
(3, 'Sneha', 27, 'F', '2026-05-03'),
(4, 'Kiran', 35, 'M', '2026-05-04'),
(5, 'Divya', 29, 'F', '2026-05-05');

select  * from  patient;

CREATE TABLE doctor (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(50),
    specialization VARCHAR(50),
    salary DECIMAL(10)
);
INSERT INTO doctor  VALUES
(101, 'Dr. Sharma', 'Cardiologist', 85000),
(102, 'Dr. Murti', 'Neurologist', 92000),
(103, 'Dr. Vinod', 'Orthopedic', 78000.00),
(104, 'Dr. Bhargav', 'Dermatologist', 69000.00),
(105, 'Dr. Ravi', 'Pediatrician', 81000);

desc doctor;
select * from doctor;
