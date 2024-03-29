---1. Retrieve the count of orders placed by each customer.
SELECT  CustomerID,  COUNT(OrderID) AS OrderCount
FROM  Order
GROUP BY CustomerID;

---2. Get the total sales amount for each product.
SELECT ProductID,  SUM(Price) AS TotalSales
FROM Product
Group by ProductID;


---3. Find the maximum order amount placed by each customer.
SELECT  CustomerID,  MAX(TotalAmount) AS MaxOrderAmount
FROM Order
GROUP BY CustomerID;

---4. Retrieve the number of orders placed in each year.
SELECT YEAR(OrderDate) AS OrderYear, COUNT(*) AS OrdersPerYear
FROM "Order"
GROUP BY YEAR(OrderDate);


---5. Get the total quantity sold for each product.
SELECT OrderID, SUM(Quantity) AS TotalQuantity
FROM OrderItem
GROUP BY ProductID;

---6. Find the average order amount for each customer.
SELECT CustomerID, AVG(TotalAmount) AS AverageOrderAmount
FROM "Order"
GROUP BY CustomerID;

---7. Retrieve the count of products within different price ranges.
SELECT
     CASE
        WHEN Price BETWEEN 0 AND 50 THEN '0-50'
        WHEN Price BETWEEN  50  AND 100 THEN '50-100'
        WHEN Price BETWEEN 100 AND 140 THEN '100-140'
        ELSE 'Above 150'
     END AS PriceRange,
     COUNT(*) AS ProductsCount
FROM Product
GROUP BY
     CASE
         WHEN Price BETWEEN 0 AND 50 THEN '0-50'
         WHEN Price BETWEEN  50  AND 100 THEN '50-100'
         WHEN Price BETWEEN 100 AND 140 THEN '100-140'
         ELSE 'Above 150'
     END;



---8. Get the earliest order date for each customer.
SELECT CustomerID, MIN(OrderDate) AS EarliestOrderDate
FROM Order
GROUP BY CustomerID;

---9. Find the number of orders placed each month.
SELECT MONTH(OrderDate) AS Month, COUNT(*) AS NumOfOrders
FROM `Order`
GROUP BY MONTH(OrderDate);

---10. Retrieve the total sales amount for each year.
SELECT YEAR(OrderDate) AS Year, SUM(TotalAmount) AS TotalSalesAmount
FROM `Order`
GROUP BY YEAR(OrderDate);

---11. Get the average price for each product.
SELECT ProductID, AVG(Price) AS AveragePrice
FROM Product
GROUP BY ProductID;

---12. Find the maximum quantity ordered for each product.
SELECT ProductID, MAX(Quantity) AS MAXQuantity
FROM OrderItem
GROUP BY ProductID;

---13. Retrieve the total number of orders for each product category.
SELECT ProductID, COUNT(OrderID) AS TotalOrders
FROM OrderItem
GROUP BY ProductID;

---14. Get the count of customers who joined each year.
SELECT YEAR(DateJoined) AS JoinYear, COUNT(CustomerID) AS CustomersCount
FROM Customer
GROUP BY JoinYear;

---15. Find the minimum order amount for each customer.
SELECT CustomerID, MIN(TotalAmount) AS MinOrderAmount
FROM "Order"
GROUP BY CustomerID;

---16. Retrieve the average quantity sold for each product.
SELECT ProductID, AVG(Quantity) AS AvgQuantitySold
FROM OrderItem
GROUP BY ProductID;

---17. Find the number of orders placed in each quarter of a year.
SELECT YEAR(OrderDate) AS OrderYear,
       QUARTER(OrderDate) AS OrderQuarter,
       COUNT(OrderID) AS OrdersCount
FROM "Order"
GROUP BY OrderYear, OrderQuarter;

---18. Retrieve the total sales amount for each month of a specific year.
SELECT YEAR(OrderDate) AS OrderYear,
       MONTH(OrderDate) AS OrderMonth,
       SUM(TotalAmount) AS TotalSales
FROM "Order"
WHERE YEAR(OrderDate) = 2020
GROUP BY OrderYear, OrderMonth;

---19. Get the count of orders placed on each day of the week.
SELECT DAY(OrderDate) AS DayOfWeek, COUNT(OrderID) AS NumOfOrders
FROM `Order`
GROUP BY DAY(OrderDate);


---20. Find the total number of products in different categories.
SELECT CategoryName, COUNT(*) AS TotalProducts
FROM Product
GROUP BY CategoryName;


