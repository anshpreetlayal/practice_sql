--1. Fetch the email and phone number of a customer with a specific CustomerID.
Select email, phone
from customer
where CustomerID = "12";

--2. List all orders from the Order table.
select * from Order;

--3. Retrieve the total amount of a specific order using its OrderID.
Select order

--4.  Get the OrderDate of a particular order.
SELECT OrderDate
FROM Order
WHERE OrderID = 12;

--5.  List all order items from the OrderItem table.
SELECT *
FROM OrderItem;

--6. Retrieve the quantity of a specific product in an order item.


--7. List all products from the Product table.
select * from Product;

-- 8. Get the name and price of a specific product.
SELECT ProductName, Price
FROM Product
WHERE ProductID = 104;

--9. Retrieve all customer data from the Customer table.
SELECT *
FROM Customer;

--10. Get the first and last names of customers who joined on a specific DateJoined.
Select FirstName, LastName
from Customer
where DateJoined = " 2020-08-12";

--11. Fetch the email and phone number of a customer with a specific CustomerID.
SELECT Email, Phone
FROM Customer
WHERE CustomerID = 12;

--12. List all orders from the Order table.
SELECT *
FROM Order;

--13. Retrieve the total amount of a specific order using its OrderID.
 SELECT TotalAmount
 FROM Order
 WHERE OrderID = 19;

--14.  Get the OrderDate of a particular order.
SELECT OrderDate
FROM Order
WHERE OrderID = 16;

--15. List all order items from the OrderItem table.
SELECT *
FROM OrderItem;

--16.  Retrieve the quantity of a specific product in an order item.
SELECT Quantity
FROM OrderItem
WHERE OrderID = 12
AND ProductID = 104;

--17. List all products from the Product table.
Select * from Product;

--18.  Get the name and price of a specific product.
Select ProductName , Price
from Product
where ProductName = "Toy";





