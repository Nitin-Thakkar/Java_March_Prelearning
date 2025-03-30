-- CREATE DATABASE
CREATE SCHEMA miit_java_march_2025; -- ctrl + enter

CREATE DATABASE miit_java_march_2025_1;

-- Make default database
USE miit_java_march_2025;

-- Get the list of all the databases
SHOW DATABASES;
SHOW SCHEMAS;


-- DELETE THE DATABASE
DROP DATABASE miit_java_march_2025_1;

-- CREATE TABLE
-- CREATE TABLE <table_name>
-- (col1 datatype <constrains>,
 -- col2  datatype <constrains>)

CREATE TABLE `miit_java_march_2025`.`employees` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  `salary` DECIMAL(10,2) NULL,
  `doj` DATETIME NULL,
  PRIMARY KEY (`id`));
CREATE TABLE `miit_java_march_2025`.`employees_1` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  `salary` DECIMAL(10,2) NULL,
  `doj` DATETIME NULL,
  PRIMARY KEY (`id`));

  
  DESC miit_java_march_2025.employees;
  
  -- DROP TABLE / DELETE TABLE
  DROP TABLE miit_java_march_2025.employees_1;
  
  -- ALTER TABLE
  -- ADD NEW COLUMN
  ALTER TABLE miit_java_march_2025.employees
  ADD COLUMN deparment varchar(50);
  
  -- DELETE COLUMN
  ALTER TABLE miit_java_march_2025.employees
  DROP COLUMN deparment;
  
  DESC miit_java_march_2025.employees;
  
-- RENAME EXISTING COLUMN
ALTER TABLE miit_java_march_2025.employees
RENAME COLUMN doj TO date_of_joining;

-- Modify the existing column datatype
ALTER TABLE miit_java_march_2025.employees
MODIFY COLUMN firstname varchar(50);
  
-- Fetch the records from the table
SELECT * FROM miit_java_march_2025.employees;

-- INSERT RECORDS IN THE TABLE
INSERT INTO miit_java_march_2025.employees
(firstname,lastname,salary,date_of_joining)
VALUES ("Subhash","Ghakhar",85000.90,"2020-01-25"),
("Mili","Kakadiya",75000.90,"2022-07-01"),
("Mali","Kakadiya",75000.90,"2022-07-01	"),
("Shubh","bhavsar",100000.90,"2020-12-25"),
("Helly","lastName",80000.90,"2025-01-20");

SELECT * from miit_java_march_2025.employees;

-- Get the Unique records
SELECT distinct firstname from miit_java_march_2025.employees;

-- Where condition
SELECT * from miit_java_march_2025.employees WHERE id = 4;
SELECT * from miit_java_march_2025.employees WHERE firstname = "Mili";
SELECT * from miit_java_march_2025.employees WHERE firstname LIKE "M_li";
SELECT * from miit_java_march_2025.employees WHERE firstname LIKE "%h";

SELECT * FROM miit_java_march_2025.employees where firstname like "s%"
or firstname like "a%";

SELECT * FROM miit_java_march_2025.employees WHERE salary between 85000 and 100000;

SELECT * FROM miit_java_march_2025.employees;

-- UPDATE QUERY

UPDATE miit_java_march_2025.employees
SET salary = 95000.00,firstName = "Avani"
WHERE id = 4;

SET SQL_SAFE_UPDATES = 0;
-- DELETE the data
DELETE FROM miit_java_march_2025.employees WHERE id = 3 ;

-- Truncate : Remove your records form tables
TRUNCATE TABLE  miit_java_march_2025.employees;

SELECT * FROM  miit_java_march_2025.employees;

-- DELETE TABLE
DROP TABLE  miit_java_march_2025.employees;



