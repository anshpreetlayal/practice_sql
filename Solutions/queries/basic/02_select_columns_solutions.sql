--Select the last names of customers who joined before 2020.
SELECT LastName
FROM Customer
WHERE DateJoined < '2020-01-01';

--Select the order IDs and customer IDs from the "Order" table.
SELECT OrderID, CustomerID
FROM "Order";
--Select the order dates and total order amounts from the "Order" table.
SELECT OrderDate, TotalAmount
FROM "Order";

--Select the product IDs from the "OrderItem" table.
SELECT ProductID
FROM OrderItem;

--Select the first names of customers who joined in 2022.


--Select the product names and quantities from the "Product" and "OrderItem" tables.



--Select the email addresses of customers who joined in 2020.



--Select the last names of customers who placed orders with a total amount less than $400.



--Select the product names and prices from the "Product" table.
SELECT ProductName, Price
FROM Product;

--Select the last names of customers who joined before 2020.


--Select the order IDs and customer IDs from the "Order" table.


--Select the order dates and total order amounts from the "Order" table.


--Select the product IDs from the "OrderItem" table.


--Select the first names of customers who joined in 2022.


--Select the product names and quantities from the "Product" and "OrderItem" tables.
SELECT p.ProductName, oi.Quantity
FROM Product p
JOIN OrderItem oi ON p.ProductID = oi.ProductID;


-- 16. Select the email addresses of customers who joined in 2020.

--17. Select the last names of customers who placed orders with a total amount less than $400.

--18. Select the product names from the "Product" table that have a price higher than $50.

--19. Select the total order amounts for orders placed by customers with a first name starting with 'A'.

--20. Select the order dates and total order amounts from the "Order" table for orders placed in January 2023.




