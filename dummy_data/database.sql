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