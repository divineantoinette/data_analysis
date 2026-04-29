--Import dataset from Excel into a database
CREATE DATABASE coffee_DB
  
--Use the coffee_DB database
USE coffee_DB;
SELECT * FROM orders;
SELECT DISTINCT [product_ID] FROM orders;

--Write a query to summarise quantity ordered by product ID
SELECT [product_ID], SUM(quantity) AS Total_Quantity
FROM orders
GROUP BY [product_ID];

--Write a query to summarise profits by coffee type
SELECT * FROM Products1;
SELECT [Coffee_Type], SUM(Profit) AS Total_Profit
FROM Products1
GROUP BY [Coffee_Type];

--Write a query to show the number of orders and quantity ordered by product id
SELECT [product_ID], COUNT(product_ID) AS Number_of_Orders, SUM(quantity) AS Total_Quantity
FROM orders
GROUP BY [product_ID];

--Sort them by total quantity in descending order
ORDER BY Total_Quantity DESC; --NOT WORKING

--Joins in SQL--

--Write a report that shows customer id, customer name, country and total quantity ordered
SELECT orders.[Customer_ID], customers1.[Customer_Name], customers1.[Country], orders.[quantity]
FROM orders o
INNER JOIN Customers1
ON [Customer_ID] = [Customer_ID];
