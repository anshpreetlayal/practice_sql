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
        WHEN PRICE BETWEEN 0 AND 20 THEN '0-20'
        WHEN PRICE BETWEEN  21 AND 40 THEN '21-40'
        WHEN PRICE BETWEEN 41 AND 60 THEN '41-60'
        ELSE 'Above 60'
     END AS PriceRange
     Count(*) AS



---8. Get the earliest order date for each customer.
---9. Find the number of orders placed each month.
---10. Retrieve the total sales amount for each year.
---11. Get the average price for each product category.
---12. Find the maximum quantity ordered for each product.
---13. Retrieve the total number of orders for each product category.
---14. Get the count of customers who joined each year.
---15. Find the minimum order amount for each customer.
---16. Retrieve the average quantity sold for each product.
---17. Find the number of orders placed in each quarter of a year.
---18. Retrieve the total sales amount for each month of a specific year.
---19. Get the count of orders placed on each day of the week.
---20. Find the total number of products in different categories.

