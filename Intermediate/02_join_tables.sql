--Syntax for help
SELECT columns
FROM table1
JOIN table2 ON table1.column_name = table2.column_name;

--1. Retrieve orders with customer information.
SELECT o.OrderID, c.FirstName, c.LastName, c.Email, c.Phone
FROM "Order" o
JOIN Customer c ON o.CustomerID = c.CustomerID;

--2. Get order details along with product information.
SELECT oi.OrderID, oi.ProductID, p.ProductName, p.Price
FROM OrderItem oi
JOIN Product p ON oi.ProductID = p.ProductID;


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

--16. Get order details along with product names and quantities for orders placed.

--17. Retrieve orders with customer names and total order amounts placed in 2022.

--18.Get product names and prices for each order item placed in 2021.

--19.Fetch customer names and order dates for orders placed in 2020.

--20. Get order details along with product names and quantities for orders placed in 2019.