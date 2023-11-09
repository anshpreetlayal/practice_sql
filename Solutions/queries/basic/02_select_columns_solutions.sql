
--Select the first and last names of all customers.
SELECT FirstName, LastName
FROM Customer;

--Select the order dates from the "Order" table.
SELECT OrderDate
FROM Order;


--Select the product names from the "Product" table.
SELECT ProductName
FROM Product;


--Select the email addresses of customers who joined in 2021.
SELECT Email
FROM Customer
WHERE DateJoined LIKE '2021';


--Select the total order amounts from the "Order" table.
SELECT TotalAmount
FROM Order;


--Select the quantity of products in the "OrderItem" table.
SELECT Quantity
FROM OrderItem;


--Select the first name and phone number of customers.
SELECT FirstName, Phone
FROM Customer;


--Select the total order amounts for orders with an amount greater than 700.
SELECT TotalAmount
FROM Order
WHERE TotalAmount > 700;


--Select the product names and prices from the "Product" table.
SELECT Names, Prices


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



