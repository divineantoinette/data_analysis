--Create a database named human_resourcesDB (hrDB due to already existing one)
CREATE DATABASE hrDB

--Make hrDB your current database
USE hrDB
--Import 2 datasets into hrDB database

--Retrieve all columns and data from the hr_data table
SELECT * FROM hr_data;

--Retrieve the id, first_name and last_name from the hr_data table
SELECT id, first_name, salary
FROM hr_data;

--Retrieve details from all columns of all staff in the Corporate Department
SELECT *
FROM hr_data
WHERE department = 'Corporate';

--Retrieve details from all columns of Private Individuals who earn above 4000
SELECT *
FROM hr_data
WHERE department = 'Private Individuals' AND salary > 4000;

--Write a query that returns the number of departments using the distinct command
SELECT DISTINCT department
FROM hr_data;

--The WHERE and IN clause helps to check a value that matches another value in a list
--For example code, SELECT * FROM customers WHERE city IN ('Liverpool', 'London','Manchester');

--The BETWEEN clause looks at/returns a range of values
--Write a query that returns the details of all staff who earn between 4500 and 6000
SELECT *
FROM hr_data
WHERE salary BETWEEN 4500 AND 6000;

--When using wildcards, you can use a dash - or percentage sign % to return a query with multiple characters, or an _ underscore to return a query for a specific single character
--Write a query that returns all the first names that start with the letter A
SELECT *
FROM hr_data
WHERE first_name LIKE 'A%';

--Write a query that returns all the first names that start with A and are 3 letters long
SELECT *
FROM hr_data
WHERE first_name LIKE 'A__';

--Write a query that returns all the first names with the second letter as o and followed by any other character
SELECT *
FROM hr_data
WHERE first_name LIKE '_o%';