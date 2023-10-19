-- I will be using this website to practice - https://sqliteonline.com/
Select * from demo;
-- Retries customer id from the customer table
Select CustomerID from Customer;

-- Retrieve all customer data from the Customer table.
Select * from Customer;

-- Get the first and last names of customers who joined on a specific DateJoined.
  Select FirstName, LastName
  from Customer
  WHERE DateJoined = "2020-09-19";

-- Fetch the email and phone number of a customer with a specific CustomerID.
Select email, phone
from customer
where CustomerID = "12";

--List all orders from the Order table.
select * from Order;

-- Retrieve the total amount of a specific order using its OrderID.
Select order
-- Get the OrderDate of a particular order.


--  List all order items from the OrderItem table.

--  Retrieve the quantity of a specific product in an order item.
-- List all products from the Product table.
select * from Products;
-- Get the name and price of a specific product.
SELECT ProductName, Price
FROM Product
WHERE ProductID = 104;

--Retrieve all customer data from the Customer table.
SELECT *
FROM Customer;

--Get the first and last names of customers who joined on a specific DateJoined.
Select FirstName, LastName
from Customer
where DateJoined = " 2020-08-12";

--Fetch the email and phone number of a customer with a specific CustomerID.
SELECT Email, Phone
FROM Customer
WHERE CustomerID = 12;

--  List all orders from the Order table.
SELECT *
FROM Order;

 -- Retrieve the total amount of a specific order using its OrderID.
 SELECT TotalAmount
 FROM Order
 WHERE OrderID = 19;

--  Get the OrderDate of a particular order.
SELECT OrderDate
FROM Order
WHERE OrderID = 16;

--  List all order items from the OrderItem table.
SELECT *
FROM OrderItem;

--  Retrieve the quantity of a specific product in an order item.
SELECT Quantity
FROM OrderItem
WHERE OrderID = 12
AND ProductID = 104;

--  List all products from the Product table.
Select * from Product;
--  Get the name and price of a specific product.
Select ProductName , Price
from Product
where ProductName = "Toy";





