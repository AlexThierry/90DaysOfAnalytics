DROP DATABASE IF EXISTS staff_db;

CREATE DATABASE staff_db;

USE staff_db; 

CREATE TABLE staffdemographic 
(StaffID INTEGER, 
FirstName VARCHAR(25), 
LastName VARCHAR(25), 
Age INTEGER, 
Gender VARCHAR(50)
);

CREATE TABLE staffsalary 
(StaffID INTEGER, 
JobTitle VARCHAR(50), 
Salary INTEGER
);

INSERT INTO staffdemographic VALUES
(101, 'Michael', 'Ambe', 25, 'Male'),
(102, 'James', 'Brown', 29, 'Female'),
(103, 'Nina', 'Karel', 30, 'Female'),
(104, 'Rachael', 'Neba', 33, 'Female'),
(105, 'Cynthia', 'White', 35, 'Female'),
(106, 'Grace', 'Sandra', 30, 'Female'),
(107, 'Suzanne', 'Williams', 38, 'Female'),
(108, 'Mary', 'Ayuk', 27, 'Female'),
(109, 'Peter', 'Asong', 40, 'Male'),
(112, 'Anne', 'Okoye', 40, 'Female');

INSERT INTO staffsalary VALUES
(101, 'Accountant', 45000),
(102, 'Analyst', 36000),
(103, 'Care Rep', 63000),
(104, 'Analyst', 47000),
(105, 'Receptionist', 50000),
(106, 'Manager', 65000),
(107, 'Care Rep', 41000),
(108, 'Manager', 48000),
(109, 'HR', 42000),
(110, 'Receptionist', 35000);