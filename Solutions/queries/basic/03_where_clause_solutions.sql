-- 1. Find the total amount of orders placed by customer John Doe.
SELECT SUM(o.TotalAmount)
FROM Order o
JOIN Customer c ON o.CustomerID = c.CustomerID
WHERE c.FirstName = 'John' AND c.LastName = 'Doe';

-- 2. Which customers joined before September 2020?
SELECT FirstName, LastName
FROM Customer
WHERE DateJoined < '2020-09-01';

-- 3. What products were ordered by customer Sophia Williams?
SELECT p.ProductName
FROM Product p
JOIN OrderItem oi ON p.ProductID = oi.ProductID
JOIN "Order" o ON oi.OrderID = o.OrderID
JOIN Customer c ON o.CustomerID = c.CustomerID
WHERE c.FirstName = 'Sophia' AND c.LastName = 'Williams';

-- 4. Retrieve all orders with a total amount greater than $600.
SELECT *
FROM "Order"
WHERE TotalAmount > 600;

-- 5. List the products with a price lower than $25.
SELECT ProductName
FROM Product
WHERE Price < 25;

-- 6. Find the email address of the customer who made the order with the highest total amount.
SELECT c.Email
FROM Customer c
JOIN "Order" o ON c.CustomerID = o.CustomerID
WHERE o.TotalAmount = (SELECT MAX(TotalAmount) FROM "Order");

-- 7. Which customers placed orders in January 2023?
SELECT DISTINCT c.FirstName, c.LastName
FROM Customer c
JOIN "Order" o ON c.CustomerID = o.CustomerID
WHERE o.OrderDate BETWEEN '2023-01-01' AND '2023-01-31';

-- 8. Retrieve the order date and total amount for orders placed by customers who joined in 2021.
SELECT O.OrderDate, O.TotalAmount
FROM Order O
JOIN Customers C ON O.CustomerID = C.CustomerID
WHERE YEAR (C.DateJoined) = 2021;

-- 9. What products were ordered by customer Ava Moore in her order placed on September 10, 2022?
SELECT P.ProductName
FROM Product P
JOIN OrderItem OI ON P.ProductID = OI.ProductID
JOIN "Order" O ON OI.OrderID = O.OrderID
JOIN Customer C ON O.CustomerID = C.CustomerID
WHERE C.FirstName = "Ava" AND C.LastName = "Moore"
AND O.OrderDate = '2022-09-10';

-- 10. List the order IDs and customer IDs for orders with a total amount between $400 and $500.
SELECT OrderID, CustomerID
FROM "Order"
WHERE TotalAmount BETWEEN 400 AND 500;

--11. Find the total quantity of products ordered by customer James Davis.

--12. Which customers joined in 2019 or later?

--13. What products were ordered by customer Emily Johnson in orders with a total amount greater than $500?

--14.  Retrieve all orders with a total amount between $300 and $400.
--15. List the products with a price between $20 and $30.
--16. Find the email address of the customer who made the earliest order.
--17.Which customers placed orders in February 2022?
--18. Retrieve the order date and total order amounts for orders placed by customers who joined in 2020 or earlier.
--19. What products were ordered by customer Noah Martin in orders placed on or after September 2022?
--20. List the order IDs and customer IDs for orders with a total amount greater than $800.
