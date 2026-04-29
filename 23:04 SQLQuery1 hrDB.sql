--Retrieve all of the information from the q sales table
SELECT *
FROM q_sales_data;

--Arithmetic Operators--

--Write a query to get the performance of each staff in the first half of the year
SELECT id, (q1 + q2) AS half_year_sales --This will return the id column and add together the values in q1 and q2, naming it as a new column
FROM q_sales_data;

--Write a query that computes the annual sales for all the staff
SELECT id, (q1 + q2 + q3 + q4) AS annual_sales
FROM q_sales_data;

--Write a query that retrieves all data in the hr table
--Calculate 20% of staff salary as annual_bonus
SELECT salary * 0.2 AS annual_bonus
FROM hr_data;

--Data Aggregation--

--Write a query to calculate the total of the salary column
SELECT ROUND(SUM(salary),2) AS total_salaries -- The round aggregation requires the expression you wish to round, then a comma, and enter the number of decimal places you want
FROM hr_data;

--Write a query to calculate the average, maximum and minimum salary being paid
SELECT ROUND(SUM(salary),0) AS total_salaries,
ROUND(AVG(salary), 0) AS average_salary,
ROUND(MAX(salary), 0) AS max_salary,
ROUND(MIN(salary), 0) AS min_salary
FROM hr_data;

--Class Activity--

--Write a query to calculate the total sales for q1 and q2
SELECT (q1 + q2) AS first_half_sales
FROM q_sales_data;
--Write a query to calculate the average sales, highest sale, and lowest sale for the same period
SELECT SUM(q1 + q2) AS first_half_sales,
AVG(q1 + q2) AS avg_first_half_sales,
MAX(q1 + q2) AS max_first_half_sales,
MIN(q1 + q2) AS min_first_half_sales
FROM q_sales_data;
--Round these numbers to 2 decimal places
SELECT ROUND(SUM(q1 + q2), 2) AS first_half_sales,
ROUND(AVG(q1 + q2), 2) AS avg_first_half_sales,
ROUND(MAX(q1 + q2), 2) AS max_first_half_sales,
ROUND(MIN(q1 + q2), 2) AS min_first_half_sales
FROM q_sales_data;

--Group By--

SELECT *
FROM hr_data;

--Write a query to show us how much salary goes to each department
SELECT department, ROUND(SUM(salary), 2) AS total_salary
FROM hr_data
GROUP BY department;

--Order By--

--Write a query that retrieves the highest paid salary to the lowest
SELECT *
FROM hr_data
ORDER BY salary DESC;

--Write a query to show us how much salary goes to each department and order in descending order
SELECT department, ROUND(SUM(salary), 2) AS total_salary
FROM hr_data
GROUP BY department
ORDER BY total_salary DESC; --You need to include the column you would like to order values by

--Joins for Data Blending--

SELECT *
FROM hr_data;

SELECT *
FROM q_sales_data;

--Write a query that will join the two tables together
SELECT Q.id, H.first_name, H.department, H.salary, Q.q1, Q.q2, Q.q3, Q.q4
FROM hr_data H --The H and Q are an alias so we can use this to reference to the tables easier
INNER JOIN q_sales_data Q
ON H.id = Q.id; --Where both of the tables have the same value