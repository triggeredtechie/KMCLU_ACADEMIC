-- Write the queries for Data Definition & Data Manipulation Language 

-- For Data Definition Language (CREATE, ALTER, RENAME, TRUNCATE & DROP

CREATE DATABASE IF NOT EXISTS DDL_DML;

-- IF NOT EXISTS : these checks wheather database exists or not  

 USE DDL_DML;
 
 -- CREATE : this helps in creating a database and tables
 
 CREATE TABLE IF NOT EXISTS KMCLU_BTECH(
    RollNo INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- ALTER : This helps in 

ALTER TABLE KMCLU_BTECH
ADD Email VARCHAR(100);

-- RENAME : 

ALTER TABLE KMCLU_BTECH
RENAME TO KMCLU_BTECH_STUDENTS;

-- For DATA MANIPULATION LANGUAGE ( Insert, Update, Delete )

INSERT INTO KMCLU_BTECH_STUDENTS VALUES 
(8, "Akash", "Gupta", "CSE with AI&ML", "xyz@gmail.com"), 
(28, "Nusrat", "Ali", "CSE with AI&ML", "abc@gmail.com"), 
(51, "Aman", "Raidas", "CSE with AI&ML", "pqs@gmail.com");

-- TABLE name changed to 'KMCLU_BTECH_STUDENTS' because of line no 25,26

-- UPDATE : 

UPDATE KMCLU_BTECH_STUDENTS
SET Department = 'BTECH CSE with AI&ML'
WHERE RollNO = 8;

-- DELETE : 

DELETE FROM KMCLU_BTECH_STUDENTS
WHERE RollNo = 51;

-- DDL DROP Command 

SELECT * FROM KMCLU_BTECH_STUDENTS; -- Shows all the data stored in Table 

DROP DATABASE DDL_DML;
