-- I will be using this website to practice - https://sqliteonline.com/
-- Retries customer id from the customer table

-- Retrieve all customer data from the Customer table.

-- Get the first and last names of customers who joined on a specific DateJoined.


-- Fetch the email and phone number of a customer with a specific CustomerID.


--List all orders from the Order table.


-- Retrieve the total amount of a specific order using its OrderID.


-- Get the OrderDate of a particular order.


--  List all order items from the OrderItem table.



--  Retrieve the quantity of a specific product in an order item.


-- List all products from the Product table.
s

-- Get the name and price of a specific product.


--Retrieve all customer data from the Customer table.


--Get the first and last names of customers who joined on a specific DateJoined.

--Fetch the email and phone number of a customer with a specific CustomerID.


--  List all orders from the Order table.


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





