-- Table to store customer information
CREATE TABLE Customer (
    CustomerID INT NOT NULL PRIMARY KEY,
    FirstName VARCHAR(20) UNIQUE,
    LastName VARCHAR(20) UNIQUE,
    Email VARCHAR(50),
    Phone VARCHAR(15),
    DateJoined DATE NOT NULL,
    Address VARCHAR (100),
    City VARCHAR (50),
    Country VARCHAR (50)
);

-- Added indexes to Customer table
CREATE INDEX idx_customer_firstname ON Customer (FirstName);
CREATE INDEX idx_customer_lastname ON Customer (LastName);
CREATE INDEX idx_customer_email ON Customer (Email);
CREATE INDEX idx_customer_phone ON Customer (Phone);
CREATE INDEX idx_customer_datejoined ON Customer (DateJoined);

-- table to store order information
CREATE TABLE "Order" (
    OrderID INT NOT NULL PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Added index to Order table
CREATE INDEX idx_order_orderdate ON "Order" (OrderDate);

-- Table to store "OrderItem" information
CREATE TABLE OrderItem (
    OrderItemID INT NOT NULL PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES "Order"(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Added indexes to OrderItem table
CREATE INDEX idx_orderitem_orderid ON OrderItem (OrderID);
CREATE INDEX idx_orderitem_productid ON OrderItem (ProductID);

-- Table to store "product" information
CREATE TABLE Product (
    ProductID INT NOT NULL PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2) NOT NULL
);

-- Added index to Product table
CREATE INDEX idx_product_productname ON Product (ProductName);

-- Insert data into Customer table
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, Phone, DateJoined, Address, City, Country)
VALUES
    (1, 'John', 'Doe', 'john@example.com', '123-345-334', '2021-03-14', '123 Maple St', 'Springfield', 'USA'),
    (2, 'Jane', 'Smith', 'jane@example.com', '122-456-754', '2021-04-12', '456 Oak St', 'Riverside', 'USA'),
    (20, 'Alice', 'Johnson', 'alice@example.com', '456-567-347', '2020-09-19', '789 Pine St', 'Lakewood', 'USA'),
    (3, 'Katy', 'John', 'katy@example.com', '346-574-357', '2020-09-12', '890 Elm St', 'Maplewood', 'USA'),
    (4, 'Michael', 'Smith', 'michael@example.com', '555-123-4567', '2021-05-20', '234 Cedar St', 'Oakland', 'USA'),
     (5, 'Emily', 'Johnson', 'emily@example.com', '987-654-3210', '2019-11-08', '567 Birch St', 'Brentwood', 'USA'),
    (6, 'David', 'Brown', 'david@example.com', '123-456-7890', '2022-02-15', '678 Willow St', 'Salem', 'USA'),
    (7, 'Sophia', 'Williams', 'sophia@example.com', '111-222-3333', '2020-08-04', '789 Oak St', 'Beverly Hills', 'USA'),
    (8, 'James', 'Davis', 'james@example.com', '444-555-6666', '2021-12-01', '234 Maple St', 'Springfield', 'USA'),
    (9, 'Olivia', 'Miller', 'olivia@example.com', '777-888-9999', '2018-06-17', '345 Pine St', 'Brentwood', 'USA'),
    (10, 'Ethan', 'Wilson', 'ethan@example.com', '666-999-1111', '2019-03-25', '456 Cedar St', 'Riverside', 'USA'),
    (11, 'Ava', 'Moore', 'ava@example.com', '333-777-2222', '2022-09-10', '567 Oak St', 'Lakewood', 'USA'),
    (12, 'William', 'Lee', 'william@example.com', '123-789-4567', '2020-07-29', '678 Elm St', 'Maplewood', 'USA'),
    (13, 'Emma', 'Anderson', 'emma@example.com', '888-555-4444', '2017-04-12', '789 Maple St', 'Beverly Hills', 'USA'),
    (14, 'Mia', 'Thompson', 'mia@example.com', '222-333-4444', '2022-11-03', '234 Birch St', 'Springfield', 'USA'),
    (15, 'Liam', 'White', 'liam@example.com', '555-777-8888', '2019-10-17', '345 Cedar St', 'Riverside', 'USA'),
    (16, 'Isabella', 'Harris', 'isabella@example.com', '666-444-2222', '2021-06-28', '456 Oak St', 'Lakewood', 'USA'),
    (17, 'Noah', 'Martin', 'noah@example.com', '123-987-6543', '2018-09-14', '567 Pine St', 'Maplewood', 'USA'),
    (18, 'Aiden', 'Taylor', 'aiden@example.com', '777-333-1111', '2020-09-19', '678 Cedar St', 'Riverside', 'USA'),
    (19, 'Chloe', 'Wilson', 'chloe@example.com', '999-111-5555', '2017-12-09', '789 Elm St', 'Lakewood', 'USA');

-- Insert data into "Order" table
INSERT INTO "Order" (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1001, 101, '2023-01-10', 500.00),
    (1002, 102, '2023-01-11', 750.00),
    (1003, 103, '2023-01-12', 320.00),
    (1004, 104, '2023-01-13', 600.00),
    (1005, 105, '2023-01-14', 420.00),
    (1006, 106, '2023-01-15', 850.00),
    (1007, 107, '2023-01-16', 700.00),
    (1008, 108, '2023-01-17', 900.00),
    (1009, 109, '2023-01-18', 550.00),
    (1010, 110, '2023-01-19', 480.00),
    (1011, 111, '2023-01-20', 690.00),
    (1012, 112, '2023-01-21', 740.00),
    (1013, 113, '2023-01-22', 320.00),
    (1014, 114, '2023-01-23', 560.00),
    (1015, 115, '2023-01-24', 480.00),
    (1016, 116, '2023-01-25', 710.00),
    (1017, 117, '2023-01-26', 630.00),
    (1018, 118, '2023-01-27', 820.00),
    (1019, 119, '2023-01-28', 950.00),
    (1020, 120, '2023-01-29', 400.00);

-- Insert data into "OrderItem" table
INSERT INTO OrderItem (OrderItemID, OrderID, ProductID, Quantity)
VALUES
    (2001, 1001, 201, 3),
    (2002, 1002, 202, 6),
    (2003, 1003, 203, 4),
    (2004, 1004, 204, 6),
    (2005, 1005, 205, 10),
    (2006, 1006, 206, 13),
    (2007, 1007, 207, 4),
    (2008, 1008, 208, 9),
    (2009, 1009, 209, 3),
    (2010, 1010, 210, 9),
    (2011, 1011, 211, 5),
    (2012, 1012, 212, 7),
    (2013, 1013, 213, 2),
    (2014, 1014, 214, 4),
    (2015, 1015, 215, 8),
    (2016, 1016, 216, 3),
    (2017, 1017, 217, 6),
    (2018, 1018, 218, 5),
    (2019, 1019, 219, 10),
    (2020, 1020, 220, 7);


--Insert data into Product table
INSERT INTO Product (ProductID, ProductName, Price)
VALUES
    (201, 'Widget A', 20),
    (202, 'Widget B', 25),
    (203, 'Widget C', 18),
    (204, 'Gizmo X', 30),
    (205, 'Gizmo Y', 35),
    (206, 'Gizmo Z', 40),
    (207, 'Gadget 1', 50),
    (208, 'Gadget 2', 55),
    (209, 'Gadget 3', 60),
    (210, 'Accessory A', 10),
    (211, 'Accessory B', 12),
    (212, 'Accessory C', 15),
    (213, 'Tool 1', 25),
    (214, 'Tool 2', 30),
    (215, 'Tool 3', 35),
    (216, 'Toy A', 8),
    (217, 'Toy B', 12),
    (218, 'Toy C', 15),
    (219, 'Electronics 1', 100),
    (220, 'Electronics 2', 120);