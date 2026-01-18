-- ============================
-- INTRODUCTORY SQL PROBLEMS
-- ============================

-- Problem 1
select 
  * 
from 
  dbo.Shippers;

-- Problem 2
select 
  CategoryName, 
  Description 
from 
  dbo.Categories;

-- Problem 3
select 
  FirstName, 
  LastName, 
  HireDate 
from 
  dbo.Employees 
where 
  title = 'Sales Representative';

-- Problem 4
select 
  FirstName, 
  LastName, 
  HireDate 
from 
  dbo.Employees 
where 
  title = 'Sales Representative' 
  and Country = 'USA';

-- Problem 5
select 
  OrderID, 
  OrderDate 
from 
  dbo.Orders 
where 
  EmployeeID = 5;

-- Problem 6
select 
  SupplierID, 
  ContactName, 
  ContactTitle 
from 
  dbo.Suppliers 
where 
  ContactTitle != 'Marketing Manager';

-- Problem 7
select 
  ProductID, 
  ProductName 
from 
  products 
where 
  ProductName like '%queso%';
  
-- Problem 8
select 
  OrderID, 
  CustomerID, 
  ShipCountry 
from 
  Orders 
where 
  ShipCountry in ('France', 'Belgium')

-- Problem 9
select 
  OrderID, 
  CustomerID, 
  ShipCountry 
from 
  Orders 
where 
  ShipCountry in ('Brazil', 'Mexico', 'Argentina', 'Venezuela') 
  
-- Problem 10
select 
  FirstName, 
  LastName, 
  Title, 
  BirthDate 
from 
  Employees 
order by 
  BirthDate 
  

-- Problem 11
select 
  FirstName, 
  LastName, 
  Title, 
  cast(BirthDate as date) as BirthDate 
from 
  Employees 
order by 
  BirthDate 
  
-- Problem 12
select 
  FirstName, 
  LastName, 
  concat(FirstName, ' ', LastName) as FullName 
from 
  Employees 
  
-- Problem 13
select 
  OrderID, 
  ProductID, 
  UnitPrice, 
  (UnitPrice * Quantity) as TotalPrice 
from 
  OrderDetails 
order by 
  OrderID, 
  ProductID 

-- Problem 14
select 
  count(*) as TotalCustomers 
from 
  Customers 

-- Problem 15
select 
  min(OrderDate) 
from 
  Orders

-- Problem 16
select 
  distinct Country 
from 
  Customers


-- Problem 17
select 
	ContactTitle, 
	count(*) as TotalContactTitle
from 
	Customers
group by 
	ContactTitle
order by 
	TotalContactTitle desc

-- Problem 18
select 
	p.ProductID, 
	p.ProductName, 
	s.CompanyName
from 
	Products as p
inner join 
	Suppliers as s
	on p.SupplierID = s.SupplierID
order by 
	p.ProductID

-- Problem 19
select 
	o.OrderID,
	cast(o.OrderDate as date) as OrderDate,
	CompanyName
from Orders as o
inner join Shippers as s
	on o.ShipVia = s.ShipperID
where o.OrderID < 10300
order by o.OrderID 
