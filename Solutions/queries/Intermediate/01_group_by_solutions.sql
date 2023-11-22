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
GROUP BY  OrderID;

---6. Find the average order amount for each customer.
SELECT CustomerID, AVG(TotalAmount) AS AverageOrderAmount
FROM "Order"
GROUP BY CustomerID;

---7. Retrieve the count of products within different price ranges.
SELECT
     CASE
        WHEN PRICE BETWEEN 0 AND 50 THEN '0-50'
        WHEN PRICE BETWEEN  50  AND 100 THEN '50-100'
        WHEN PRICE BETWEEN 100 AND 140 THEN '100-140'
        ELSE 'Above 150'
     END AS PriceRange
     Count(*) AS ProductsCount
FROM Product
GROUP BY
     CASE
         WHEN PRICE BETWEEN 0 AND 50 THEN '0-50'
         WHEN PRICE BETWEEN  50  AND 100 THEN '50-100'
         WHEN PRICE BETWEEN 100 AND 140 THEN '100-140'
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

SELECT ProductID,  AVG(Price) AS AveragePrice
FROM Product
GROUP BY ProductID;

---12. Find the maximum quantity ordered for each product.
SELECT ProductID, MAX(Quantity) AS MAXQuantity
FROM OrderItem
GROUP BY ProductID;

---13. Retrieve the total number of orders for each product category.

---14. Get the count of customers who joined each year.

---15. Find the minimum order amount for each customer.
---16. Retrieve the average quantity sold for each product.
---17. Find the number of orders placed in each quarter of a year.
---18. Retrieve the total sales amount for each month of a specific year.
---19. Get the count of orders placed on each day of the week.
---20. Find the total number of products in different categories.

