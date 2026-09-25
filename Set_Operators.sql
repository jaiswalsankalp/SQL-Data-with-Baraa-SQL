SELECT
	FirstName,
	LastName
FROM Sales.Employees

INTERSECT

SELECT
	FirstName,
	LastName	
FROM Sales.Customers;

SELECT *
FROM Sales.Customers;

SELECT *
FROM Sales.Employees;

SELECT *
FROM Sales.Orders;

SELECT *
FROM Sales.OrdersArchive;

SELECT *
FROM Sales.Orders

UNION

SELECT *
FROM Sales.OrdersArchive;