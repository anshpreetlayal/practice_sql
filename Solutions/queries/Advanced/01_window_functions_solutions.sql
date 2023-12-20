---1. What SQL query would rank products based on their prices using the ROW_NUMBER window function?
SELECT ProductName, Price, RANK() OVER (ORDER BY Price) AS PriceRank
FROM Product;

---2. How can you calculate the running total of sales amount for each order using the SUM window function?
SELECT OrderID, TotalAmount, SUM(TotalAmount) OVER (ORDER BY OrderID) AS RunningTotal
FROM "Order";

---3. Retrieve the average price of products within their respective categories using the AVG window function.
SELECT ProductID, ProductName, Price, AVG(Price) OVER (PARTITION BY ProductID) AS AvgPriceByProduct
FROM Product;

---4. Get the row number of customers ordered by their joining dates using the ROW_NUMBER window function.
SELECT CustomerID, FirstName, LastName, DateJoined, ROW_NUMBER() OVER (ORDER BY DateJoined) AS RowNumber
FROM Customer;


---5. What query can display the total sales amount for each year using the SUM window function?
SELECT YEAR(OrderDate) AS OrderYear,
       SUM(TotalAmount) OVER (PARTITION BY YEAR(OrderDate)) AS TotalSalesAmount
FROM "Order";


---6. Retrieve the cumulative sum of product quantities ordered using the SUM window function.
SELECT OrderItemID, OrderID, ProductID, Quantity,
       SUM(Quantity) OVER (ORDER BY OrderItemID) AS CumulativeQuantity
FROM OrderItem;

---7. Can you rank customers based on their total order amounts using the RANK window function?
SELECT
    CustomerID,
    RANK() OVER (ORDER BY TotalOrderAmount DESC) AS CustomerRank
FROM (
    SELECT
        CustomerID,
        SUM(TotalAmount) AS TotalOrderAmount
    FROM "Order"
    GROUP BY CustomerID
) AS CustomerTotalAmount

---8. How to fetch product details along with order quantities using the PARTITION BY clause with the SUM window function?
SELECT
    ProductID,
    ProductName,
    Quantity,
    SUM(Quantity) OVER (PARTITION BY ProductID) AS TotalQuantityOrdered
FROM OrderItem
JOIN Product ON OrderItem.ProductID = Product.ProductID;

---9. Get customer information for orders with total amounts using the PARTITION BY clause with the SUM window function.
SELECT c.CustomerID, c.FirstName, c.LastName, c.Email, c.Phone,
       o.OrderID, o.TotalAmount,
       SUM(o.TotalAmount) OVER (PARTITION BY c.CustomerID) AS TotalAmountPerCustomer
FROM Customer c
INNER JOIN "Order" o ON c.CustomerID = o.CustomerID;

---10. Retrieve product names and prices for each order item using the PARTITION BY clause with the ROW_NUMBER window function.
SELECT oi.orderItemID, oi.OrderID, oi.ProductID, oi.Quantity, p.ProductName, p.Price

---11. Fetch customer names and order dates for orders placed in 2023 using the PARTITION BY clause with the FILTER/WHERE condition.

---12. Get order details along with product names and quantities using the PARTITION BY clause with the SUM window function.

---13. Retrieve orders with customer names and order total amounts using the PARTITION BY clause with the SUM window function.

---14. Fetch product names and prices for each order item using the PARTITION BY clause with the ROW_NUMBER window function.

---15. Get customer names and order dates for orders placed in 2022 using the PARTITION BY clause with the FILTER/WHERE condition.

---16. How to get order details along with product names and quantities for orders placed using the PARTITION BY clause with the SUM window function?

---17. Retrieve orders with customer names and total order amounts placed in 2021 using the PARTITION BY clause with the SUM window function.

---18. Fetch product names and prices for each order item placed in 2020 using the PARTITION BY clause with the ROW_NUMBER window function.

---19. What SQL query fetches customer names and order dates for orders placed in 2019 using the PARTITION BY clause with the FILTER/WHERE condition?

---20. How to get order details along with product names and quantities for orders placed in 2018 using the PARTITION BY clause with the SUM window function?
