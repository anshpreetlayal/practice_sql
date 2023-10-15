CREATE Table Customer (
CustomerID int NOT NULL PRIMARY KEY,
FirstName Varchar(20),
LastName Varchar(20),
Email  Varchar(20),
Phone  int NOT NULL,
DateJoined int NOT NULL,
)

CREATE Table Order(
OrderID int NOT NULL PRIMARY KEY,
CustomerID  int NOT NULL FOREIGN KEY,
OrderDate int NOT NULL,
TotalAmount int NOT NULL,
)

CREATE Table OrderItem(
OrderItem-ID int NOT NULL PRIMARY KEY,
OrderID int NOT NULL FOREIGN KEY,
ProductID int NOT NULL FOREIGN KEY,
Quantity int NOT NULL,
)

CREATE Table Product(
ProductID int NOT NULL PRIMARY KEY,
ProductName Varchar(20)
Price int NOT NULL,
)


Insert into Customer (CustomerID, FirstName, LastName, Email, Phone, DateJoined)
values (1, 'John', 'Doe', 'john@example.com', 123-345-334, '2021-03-14'),
       (2, 'Jane', 'Smith', 'jane@example.com', 122-456-754, '2021-04-12'),
       (20, 'Alice', 'Johnson', 'alice@example.com', 456-567-347, '2020-09-19' );
       (3, 'Katy', 'John', 'katy@example.com', 346-574-357, '2020-09-12' );
        (4, 'Michael', 'Smith', 'michael@example.com', 555-123-4567, '2021-05-20');
        (5, 'Emily', 'Johnson', 'emily@example.com', 987-654-3210, '2019-11-08');
        (6, 'David', 'Brown', 'david@example.com', 123-456-7890, '2022-02-15');
        (7, 'Sophia', 'Williams', 'sophia@example.com', 111-222-3333, '2020-08-04');
        (8, 'James', 'Davis', 'james@example.com', 444-555-6666, '2021-12-01');
        (9, 'Olivia', 'Miller', 'olivia@example.com', 777-888-9999, '2018-06-17');
        (10, 'Ethan', 'Wilson', 'ethan@example.com', 666-999-1111, '2019-03-25');
        (11, 'Ava', 'Moore', 'ava@example.com', 333-777-2222, '2022-09-10');
        (12, 'William', 'Lee', 'william@example.com', 123-789-4567, '2020-07-29');
        (13, 'Emma', 'Anderson', 'emma@example.com', 888-555-4444, '2017-04-12');
        (14, 'Mia', 'Thompson', 'mia@example.com', 222-333-4444, '2022-11-03');
        (15, 'Liam', 'White', 'liam@example.com', 555-777-8888, '2019-10-17');
         (16, 'Isabella', 'Harris', 'isabella@example.com', 666-444-2222, '2021-06-28');
         (17, 'Noah', 'Martin', 'noah@example.com', 123-987-6543, '2018-09-14');
         (18, 'Aiden', 'Taylor', 'aiden@example.com', 777-333-1111, '2020-09-19');
         (19, 'Chloe', 'Wilson', 'chloe@example.com', 999-111-5555, '2017-12-09');

Insert into Order (OrderID, CustomerID, OrderDate, TotalAmount)
 values (1, 1, '2023-01-10', 500);
        (2, 2, '2023-01-11', 750);
        (3, 3, '2023-01-12', 320);
        (4, 4, '2023-01-13', 600);
        (5, 5, '2023-01-14', 420);
        (6, 6, '2023-01-15', 850);
        (7, 7, '2023-01-16', 700);
        (8, 8, '2023-01-17', 900);
        (9, 9, '2023-01-18', 550);
        (10,10, '2023-01-19', 480);
        (11,11, '2023-01-20', 690);
        (12,12, '2023-01-21', 740);
        (13,13, '2023-01-22', 320);
        (14,14, '2023-01-23', 560);
        (15,15, '2023-01-24', 480);
        (16,16, '2023-01-25', 710);
        (17,17, '2023-01-26', 630);
        (18,18, '2023-01-27', 820);
        (19,19, '2023-01-28', 950);
        (20,20, '2023-01-29', 400);

INSERT INTO OrderItem (OrderItemID, OrderID, ProductID, Quantity)
VALUES (1, 1 , 101, 3);
        (2, 2, 102, 6);
INSERT INTO Product (ProductID, ProductName, Price)
VALUES (101, 'Widget A', 20),
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



