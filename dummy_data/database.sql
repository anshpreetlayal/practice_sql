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
values (1, 'John', 'Doe', 'john@example.com', 123-345-334, 2021-03-14),
       (2, 'Jane', 'Smith', 'jane@example.com', 122-456-754, 2021-04-12),
       (20, 'Alice', 'Johnson', 'alice@example.com', 456-567-347, 2020-09-19, );
       (3, 'Katy', 'John', 'katy@example.com', 346-574-357, 2020-03-12, );
        (4, 'Michael', 'Smith', 'michael@example.com', 555-123-4567, '2021-05-20')
        (5, 'Emily', 'Johnson', 'emily@example.com', 987-654-3210, '2019-11-08')
        (6, 'David', 'Brown', 'david@example.com', 123-456-7890, '2022-02-15')
        (7, 'Sophia', 'Williams', 'sophia@example.com', 111-222-3333, '2020-08-04')
        (8, 'James', 'Davis', 'james@example.com', 444-555-6666, '2021-12-01')
        (9, 'Olivia', 'Miller', 'olivia@example.com', 777-888-9999, '2018-06-17')
        (10, 'Ethan', 'Wilson', 'ethan@example.com', 666-999-1111, '2019-03-25')
        (11, 'Ava', 'Moore', 'ava@example.com', 333-777-2222, '2022-09-10')
        (12, 'William', 'Lee', 'william@example.com', 123-789-4567, '2020-07-29')
        (13, 'Emma', 'Anderson', 'emma@example.com', 888-555-4444, '2017-04-12')





