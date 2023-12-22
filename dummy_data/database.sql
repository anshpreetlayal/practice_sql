--table to store customer information
CREATE TABLE Customer (
    CustomerID INT NOT NULL PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    Email VARCHAR(50),
    Phone VARCHAR(15),
    DateJoined DATE NOT NULL,
    Address VARCHAR (100),
    City VARCHAR (50),
    Country VARCHAR (50)
 );

CREATE TABLE Order (
    OrderID INT NOT NULL PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount (DECIMAL 10,2) NOT NULL,
    FOREIGN KEY (CustomerID) References Customer(CustomerID)
);

CREATE TABLE OrderItem (
    OrderItemID INT NOT NULL PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES OrderInfo(OrderID),
    FORIEGN KEY (ProductID) REFERENCES Product(ProductID)
);

CREATE TABLE Product (
    ProductID INT NOT NULL PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2) NOT NULL
);

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

INSERT INTO "Order" (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 1, '2023-01-10', 500),
    (2, 2, '2023-01-11', 750),
    (3, 3, '2023-01-12', 320),
    (4, 4, '2023-01-13', 600),
    (5, 5, '2023-01-14', 420),
    (6, 6, '2023-01-15', 850),
    (7, 7, '2023-01-16', 700),
    (8, 8, '2023-01-17', 900),
    (9, 9, '2023-01-18', 550),
    (10, 10, '2023-01-19', 480),
    (11, 11, '2023-01-20', 690),
    (12, 12, '2023-01-21', 740),
    (13, 13, '2023-01-22', 320),
    (14, 14, '2023-01-23', 560),
    (15, 15, '2023-01-24', 480),
    (16, 16, '2023-01-25', 710),
    (17, 17, '2023-01-26', 630),
    (18, 18, '2023-01-27', 820),
    (19, 19, '2023-01-28', 950),
    (20, 20, '2023-01-29', 400);

INSERT INTO OrderItem (OrderItemID, OrderID, ProductID, Quantity)
VALUES
    (1, 1, 101, 3),
    (2, 2, 102, 6),
    (3, 3, 103, 4),
    (4, 4, 104, 6),
    (5, 5, 105, 10),
    (6, 6, 106, 13),
    (7, 7, 107, 4),
    (8, 8, 108, 9),
    (9, 9, 109, 3),
    (10, 10, 110, 9);

INSERT INTO Product (ProductID, ProductName, Price)
VALUES
    (101, 'Widget A', 20),
    (102, 'Widget B', 25),
    (103, 'Widget C', 18),
    (104, 'Gizmo X', 30),
    (105, 'Gizmo Y', 35),
    (106, 'Gizmo Z', 40),
    (107, 'Gadget 1', 50),
    (108, 'Gadget 2', 55),
    (109, 'Gadget 3', 60),
    (110, 'Accessory A', 10),
    (111, 'Accessory B', 12),
    (112, 'Accessory C', 15),
    (113, 'Tool 1', 25),
    (114, 'Tool 2', 30),
    (115, 'Tool 3', 35),
    (116, 'Toy A', 8),
    (117, 'Toy B', 12),
    (118, 'Toy C', 15),
    (119, 'Electronics 1', 100),
    (120, 'Electronics 2', 120);
