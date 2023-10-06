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



