create database hospital_db;

USE hospital_db;

create table patient (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    age TINYINT,
    gender CHAR(1),
    admission_date DATE
);
desc patients;

alter table patients
add phone_no BIGINT,
add email VARCHAR(25),
add city VARCHAR(20);

rename table patient to patients;

alter table patients
drop gender;

ALTER TABLE patients
modify patient_name VARCHAR(80),
modify age SMALLINT,
modify city VARCHAR(80);

alter table patients rename column patient_name to full_name;

alter table patients rename column admission_date to admitted_on;




create table doctor (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(50),
    specialization VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);
desc  doctors;
rename table doctor to doctors;

alter table doctors 
add  phone BIGINT,
add  email VARCHAR(100),
add room_no INT;

alter table doctors
modify doctor_name VARCHAR(100),
modify specialization VARCHAR(80),
MODIFY salary DECIMAL(12,2);

alter table doctors rename column doctor_name to full_name;
alter table doctors rename column specialization to department;

alter table doctors drop room_no;



create table nurse (
    nurse_id INT PRIMARY KEY,
    nurse_name VARCHAR(50),
    shift_time VARCHAR(20),
    salary DECIMAL(10,2),
    experience_years TINYINT
);

desc nurse;

alter table nurse 
add  phone BIGINT,
add  email VARCHAR(100),
add ward_no INT;

alter table nurse
modify nurse_name VARCHAR(100),
modify shift_time VARCHAR(30),
modify salary DECIMAL(12,2);

alter table  nurse rename column nurse_name to full_name;

alter table  nurse rename column shift_time to duty_shift;

alter table nurse drop experience_years;

create table appointment (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20)
);

desc appointment;

alter table  appointment
add  consultation_fee DECIMAL(8,2),
add room_no INT,
add remarks VARCHAR(100);

alter table  appointment drop status;

alter table  appointment
modify appointment_date DATETIME,
modify consultation_fee DECIMAL(10,2),
modify remarks VARCHAR(150);

alter table appointment
rename column appointment_date to visit_time;

alter table appointment rename COLUMN remarks to notes;

drop table  nurse;
drop table appointment;
show tables;