-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select Product.ProductName, Category.CategoryName
    FROM Product
    inner join category ON Category.Id = product.CategoryId

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT O.Id, S.CompanyName, O.OrderDate
    FROM [Order] AS O 
    INNER JOIN Shipper AS S ON O.ShipVia = S.Id
    WHERE O.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.ProductName, od.Quantity, od.OrderId
    FROM OrderDetail as od
    INNER JOIN [Product] as p ON od.ProductId = p.Id
    WHERE od.OrderId = '10251'

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT O.Id, Customer.CompanyName, Employee.LastName
    FROM [Order] as O
    INNER JOIN Customer ON O.CustomerId = Customer.Id
    INNER JOIN Employee ON O.EmployeeId = Employee.Id
