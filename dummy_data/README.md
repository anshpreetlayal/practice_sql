# E-Commerce Database Readme



## Introduction

This README file provides an overview of the entity-relationship diagram (ERD) for a simplified e-commerce database. The database consists of four main entities: Customer, Order, Product, and OrderItem, and defines their attributes and relationships.



## Entities

### Customer

- **Attributes**: CustomerID (Primary Key), FirstName, LastName, Email, Phone, DateJoined

### Order

- **Attributes**: OrderID (Primary Key), OrderDate, TotalAmount
- **Relationships**: Belongs to one Customer (CustomerID as a Foreign Key)

### Product

- **Attributes**: ProductID (Primary Key), ProductName, Price

### OrderItem

- **Attributes**: OrderItemID (Primary Key), Quantity
- **Relationships**: Belongs to one Order (OrderID as a Foreign Key), Includes one Product (ProductID as a Foreign Key)

## Relationships

- A Customer can place multiple Orders (One-to-Many relationship).
- An Order can consist of multiple Order Items (One-to-Many relationship).
- Each Order Item corresponds to one Product (Many-to-One relationship).

## Purpose

This simplified ERD represents the foundation of an e-commerce database. It allows you to practice SQL queries and operations commonly found in e-commerce systems, such as retrieving customer information, calculating total order amounts, and managing pr