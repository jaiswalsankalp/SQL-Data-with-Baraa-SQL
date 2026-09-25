SELECT
	o.OrderID,
	CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
	p.Product AS ProductName,
	o.Sales,
	p.Price,
	CONCAT(e.FirstName, ' ', e.LastName) AS SalespersonName
FROM sales.orders AS o
LEFT JOIN sales.customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN sales.products AS p
ON o.ProductID = p.ProductID
LEFT JOIN sales.employees AS e
ON o.SalesPersonID = e.EmployeeID
;