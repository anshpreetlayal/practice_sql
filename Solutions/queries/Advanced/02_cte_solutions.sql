--1. Retrieve the total number of orders placed by each customer.
WITH OrderCount AS (
    SELECT
        c.CustomerID,
        c.FirstName,
        c.LastName,
        COUNT(o.OrderID) AS TotalOrders
    FROM
        Customer c
    LEFT JOIN
        "Order" o ON c.CustomerID = o.CustomerID
    GROUP BY
        c.CustomerID, c.FirstName, c.LastName
)
SELECT * FROM OrderCount;

--2. Calculate the total sales amount for each year.
WITH YearlySales AS (
    SELECT
        YEAR(OrderDate) AS OrderYear,
        SUM(TotalAmount) AS TotalSalesAmount
    FROM "Order"
    GROUP BY YEAR(OrderDate)
)
SELECT OrderYear, TotalSalesAmount
FROM YearlySales
ORDER BY OrderYear;

--3. Find the average price of products within their respective categories.
WITH ProductCategories AS (
    SELECT
        SUBSTRING_INDEX(ProductName, ' ', 1) AS Category,
        Price
    FROM Product
)
SELECT Category, AVG(Price) AS AveragePrice
FROM ProductCategories
GROUP BY Category
ORDER BY Category;

--4. Assign row numbers to customers ordered by their joining dates.
WITH RankedCustomers AS (
    SELECT
        CustomerID,
        FirstName,
        LastName,
        Email,
        Phone,
        DateJoined,
        ROW_NUMBER() OVER (ORDER BY DateJoined) AS RowNum
    FROM Customer
)
SELECT
    CustomerID,
    FirstName,
    LastName,
    Email,
    Phone,
    DateJoined,
    RowNum
FROM RankedCustomers;

--5. Get the cumulative sum of product quantities ordered.
WITH CumulativeQuantity AS (
    SELECT
        OrderItemID,
        OrderID,
        ProductID,
        Quantity,
        SUM(Quantity) OVER (ORDER BY OrderItemID) AS CumulativeSum
    FROM OrderItem
)
SELECT
    OrderItemID,
    OrderID,
    ProductID,
    Quantity,
    CumulativeSum
FROM CumulativeQuantity;

--6. Rank customers based on their total order amounts.
WITH CustomerOrderTotal AS (
    SELECT
        CustomerID,
        SUM(TotalAmount) AS TotalOrderAmount
    FROM "Order"
    GROUP BY CustomerID
)
SELECT
    CustomerID,
    TotalOrderAmount,
    RANK() OVER (ORDER BY TotalOrderAmount DESC) AS CustomerRank
FROM CustomerOrderTotal;

--7. Fetch product details along with order quantities.
WITH OrderProductDetails AS (
    SELECT
        OI.OrderItemID,
        OI.OrderID,
        OI.ProductID,
        P.ProductName,
        P.Price,
        OI.Quantity
    FROM OrderItem OI
    INNER JOIN Product P ON OI.ProductID = P.ProductID
)
SELECT * FROM OrderProductDetails;

--8. Retrieve customer information for orders with total amounts.
WITH CustomerOrders AS (
    SELECT
        C.CustomerID,
        C.FirstName,
        C.LastName,
        C.Email,
        C.Phone,
        O.OrderID,
        O.TotalAmount
    FROM
        Customer C
    JOIN
        "Order" O ON C.CustomerID = O.CustomerID
    WHERE
        O.TotalAmount IS NOT NULL
)
SELECT * FROM CustomerOrders;

--9. Fetch product names and prices for each order item.
WITH OrderProductDetails AS (
    SELECT
        OI.OrderItemID,
        OI.OrderID,
        OI.ProductID,
        OI.Quantity,
        P.ProductName,
        P.Price
    FROM
        OrderItem OI
    JOIN
        Product P ON OI.ProductID = P.ProductID
)
SELECT * FROM OrderProductDetails;

--10. Determine the count of orders placed by each customer in a specific month.
WITH  TotalOrders AS (
     SELECT
        C.FirstName,
        C.LastName,
        O.OrderDate,
        O.TotalAmount
     FROM
         Customer C
     JOIN
        "Order" O ON C.CustomerID = O.CustomerID
)
SELECT * FROM TotalOrders;

--11. Calculate the running total of order amounts for each customer.
WITH TotalOrderAmounts AS (
    SELECT
        C.FirstName,
        C.LastName,
        O.OrderDate,
        O.TotalAmount,
        SUM(O.TotalAmount) OVER (PARTITION BY C.CustomerID ORDER BY O.OrderDate) AS RunningTotal
    FROM
        Customer C
    JOIN
        "Order" O ON C.CustomerID = O.CustomerID
)
SELECT * FROM TotalOrderAmounts;


--12. Find the maximum order amount placed by each customer.
WITH MaxOrderAmounts AS (
    SELECT
        CustomerID,
        MAX(TotalAmount) AS MaxOrderAmount
    FROM "Order"
    GROUP BY CustomerID
)
SELECT * FROM MaxOrderAmounts;

--13. Retrieve the minimum and maximum dates of orders for each customer.

--14. Get the average quantity of products ordered by each customer.

--15. Rank customers based on the number of orders they've placed.

--16. Calculate the total sales amount for each product.

--17. Retrieve the count of orders placed on each day of the week.

--18. Find the total number of products in different categories.

--19. Determine the count of distinct products ordered by each customer.

--20. Fetch the top 5 customers with the highest total order amounts.