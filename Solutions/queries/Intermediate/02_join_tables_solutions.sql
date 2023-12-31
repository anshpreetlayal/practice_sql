--1. Retrieve orders with customer information.
SELECT o.OrderID, c.FirstName, c.LastName, c.Email, c.Phone
FROM "Order" o
JOIN Customer c ON o.CustomerID = c.CustomerID;

--2. Get order details along with product information.
SELECT oi.OrderID, oi.ProductID, p.ProductName, p.Price
FROM OrderItem oi
JOIN Product p ON oi.ProductID = p.ProductID;

--3.Fetch customer information for orders placed.
SELECT c.CustomerID, c.FirstName, c.LastName, c.Email, c.Phone
FROM Customer c
JOIN Order o ON c.CustomerID = o.CustomerID;

--4. Get product details for each order item.
SELECT oi.OrderItemID, oi.OrderID, oi.ProductID, oi.Quantity, p.ProductName, p.Price
FROM OrderItem oi
JOIN Product p ON oi.ProductID = p.ProductID;

--5. Retrieve orders with customer names and order dates.
SELECT o.OrderID, c.FirstName, c.LastName, o.OrderDate
FROM "Order" o
JOIN Customer c ON o.CustomerID = c.CustomerID;

--6. Get product names along with their prices for each order item.
SELECT oi.OrderItemID, p.ProductName, p.Price
FROM OrderItem oi
JOIN Product p ON oi.ProductID = p.ProductID;

--7. Fetch customer information for orders with total amounts.
SELECT c.FirstName, c.LastName, c.Email, c.Phone, o.TotalAmount
FROM Customer c
JOIN "Order" o ON c.CustomerID = o.CustomerID;

--8. Get product details along with order quantities.
SELECT p.ProductID, p.ProductName, p.Price, oi.Quantity
FROM Product p
JOIN OrderItem oi ON p.ProductID = oi.ProductID;

--9. Retrieve orders with customer email addresses.
SELECT o.OrderID, c.Email
FROM "Order" o
JOIN Customer c ON o.CustomerID = c.CustomerID;

--10. Get product names and prices for each order item.
SELECT p.ProductName, p.Price, oi.Quantity
FROM Product p
JOIN OrderItem oi ON p.ProductID = oi.ProductID;

--11. Fetch customer names and order dates for orders placed.
SELECT c.FirstName, c.LastName, o.OrderDate
FROM Customer c
JOIN "Order" o ON c.CustomerID = o.CustomerID;

--12. Get order details along with product names and quantities.
SELECT o.OrderID, p.ProductName, oi.Quantity
FROM "Order" o
JOIN OrderItem oi ON o.OrderID = oi.OrderID
JOIN Product p ON oi.ProductID = p.ProductID;

--13. Retrieve orders with customer names and order total amounts.
SELECT c.FirstName, c.LastName, o.TotalAmount
FROM Customer c
JOIN "Order" o ON c.CustomerID = o.CustomerID;

--14. Get product names and prices for each order item.
SELECT p.ProductName, p.Price, oi.Quantity
FROM Product p
JOIN OrderItem oi ON p.ProductID = oi.ProductID;

--15. Fetch customer names and order dates for orders placed in 2023.
SELECT c.FirstName, c.LastName, o.OrderDate
FROM Customer c
JOIN "Order" o ON c.CustomerID = o.CustomerID
WHERE EXTRACT(YEAR FROM o.OrderDate) = 2023;

--16. Get order details along with product names and quantities for orders placed.
SELECT o.OrderID, p.ProductName, oi.Quantity
FROM "Order" o
JOIN OrderItem oi ON o.OrderID = oi.OrderID
JOIN Product p ON oi.ProductID = p.ProductID;

--17. Retrieve orders with customer names and total order amounts placed in 2022.
SELECT c.FirstName, c.LastName, o.TotalAmount
FROM Customer c
JOIN "Order" o ON c.CustomerID = o.CustomerID
WHERE EXTRACT(YEAR FROM o.OrderDate) = 2022;


--18.Get product names and prices for each order item placed in 2021.
SELECT p.ProductName, p.Price, oi.Quantity
FROM Product p
JOIN OrderItem oi ON p.ProductID = oi.ProductID
JOIN "Order" o ON oi.OrderID = o.OrderID
WHERE EXTRACT(YEAR FROM o.OrderDate) = 2021;

--19.Fetch customer names and order dates for orders placed in 2020.
SELECT c.FirstName, c.LastName, o.OrderDate
FROM Customer c
JOIN "Order" o ON c.CustomerID = o.CustomerID
WHERE EXTRACT(YEAR FROM o.OrderDate) = 2020;

--20. Get order details along with product names and quantities for orders placed in 2019.
SELECT o.OrderID, p.ProductName, oi.Quantity
FROM "Order" o
JOIN OrderItem oi ON o.OrderID = oi.OrderID
JOIN Product p ON oi.ProductID = p.ProductID
WHERE EXTRACT(YEAR FROM o.OrderDate) = 2019;