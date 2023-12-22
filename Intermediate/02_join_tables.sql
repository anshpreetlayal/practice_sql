--1. Retrieve orders with customer information.

--2. Get order details along with product information.

--3.Fetch customer information for orders placed.

--4. Get product details for each order item.

--5. Retrieve orders with customer names and order dates.

--6. Get product names along with their prices for each order item.

--7. Fetch customer information for orders with total amounts.

--8. Get product details along with order quantities.

--9. Retrieve orders with customer email addresses.

--10. Get product names and prices for each order item.

--11. Fetch customer names and order dates for orders placed.

--12. Get order details along with product names and quantities.

--13. Retrieve orders with customer names and order total amounts.

--14. Get product names and prices for each order item.

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