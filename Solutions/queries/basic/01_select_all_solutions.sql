-- 1. Select all first names from the Customer table.
SELECT FirstName
FROM Customer;

-- 2. Select all last names from the Customer table.
SELECT LastName
FROM Customer;

-- 3. Select all order dates from the "Order" table.
SELECT OrderDate
FROM "Order";

-- 4. Select all product names from the "Product" table.
SELECT ProductName
FROM Product;

-- 5. Select all email addresses of customers who joined in 2021.
SELECT Email
FROM Customers
Where DateJoined => '2021-01-01' AND  <= '2021-12-31';

-- 6.Select all total order amounts from the "Order" table.
SELECT TotalAmount
FROM Order;
-- 7.Select all quantities of products in the "OrderItem" table.
SELECT Products
FROM
-- 8. Select all first names and phone numbers of customers.
SELECT Firstname AND Phone
FROM Customer;
-- 9.Select all total order amounts for orders with an amount greater than 700.

--  10. Select all product names and prices from the "Product" table.
SELECT ProductName, Prices
FROM Product;
--  11. Select all last names of customers who joined before 2020.

-- 12. Select all order IDs and customer IDs from the "Order" table.

-- 13.Select all order dates and total order amounts from the "Order" table.

-- 14. Select all product IDs from the "OrderItem" table.
SELECT ProductID
FROM OrderItem;

--  15. Select all first names of customers who joined in 2022.
SELECT FirstName
FROM Customer
WHERE DateJoined >= '2022-01-01' AND DateJoined <= '2022-12-31';


-- 16. Select all product names and quantities from the "Product" and "OrderItem" tables.
SELECT p.ProductName, oi.Quantity
FROM Product p
JOIN OrderItem oi ON p.ProductID = oi.ProductID;

-- 17. Select all email addresses and phone numbers of customers.
SELECT Email, Phone
FROM Customer;

-- 18. Select all order IDs and total order amounts for orders placed in January 2023.
SELECT OrderID, TotalAmount
FROM "Order"
WHERE OrderDate >= '2023-01-01' AND OrderDate <= '2023-01-31';

--  19. Select all product names and their prices from the "Product" table.
SELECT ProductName , Price
FROM Product;
-- 20.  Select all first names and last names of customers who joined before September 2020.
SELECT FirstName, LastName
FROM Customer
WHERE DateJoined < '2020-09-01';










