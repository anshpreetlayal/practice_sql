--Find the total amount of orders placed by customer John Doe.
SELECT SUM(o.TotalAmount)
FROM Order o
JOIN Customer c ON o.CustomerID = c.CustomerID
WHERE c.FirstName = 'John' AND c.LastName = 'Doe';

--Which customers joined before September 2020?
SELECT FirstName, LastName
FROM Customer
WHERE DateJoined < '2020-09-01';

--What products were ordered by customer Sophia Williams?
SELECT p.ProductName
FROM Product p
JOIN OrderItem oi ON p.ProductID = oi.ProductID
JOIN "Order" o ON oi.OrderID = o.OrderID
JOIN Customer c ON o.CustomerID = c.CustomerID
WHERE c.FirstName = 'Sophia' AND c.LastName = 'Williams';

--Retrieve all orders with a total amount greater than $600.
SELECT *
FROM "Order"
WHERE TotalAmount > 600;

--List the products with a price lower than $25.
SELECT ProductName
FROM Product
WHERE Price < 25;

--Find the email address of the customer who made the order with the highest total amount.
SELECT c.Email
FROM Customer c
JOIN "Order" o ON c.CustomerID = o.CustomerID
WHERE o.TotalAmount = (SELECT MAX(TotalAmount) FROM "Order");

--Which customers placed orders in January 2023?

--Retrieve the order date and total amount for orders placed by customers who joined in 2021.

--What products were ordered by customer Ava Moore in her order placed on September 10, 2022?

--List the order IDs and customer IDs for orders with a total amount between $400 and $500.
SELECT OrderID, CustomerID
FROM "Order"
WHERE TotalAmount BETWEEN 400 AND 500;




