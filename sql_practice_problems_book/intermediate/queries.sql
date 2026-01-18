-- ============================
-- INTERMEDIATE SQL PROBLEMS
-- ============================

-- Problem 20 
select CategoryName, count(*) as TotalProducts
from categories as c
inner join Products as p
	on c.CategoryID = p.CategoryID
group by CategoryName
order by TotalProducts desc

-- Problem 21
select country, city, count(*) as TotalCustomers
from customers
group by country, city
order by TotalCustomers desc

-- Problem 22
select ProductID, ProductName, UnitsInStock, ReorderLevel
from Products
where UnitsInStock < ReorderLevel
order by ProductID

-- Problem 23
select 
	ProductID, 
	ProductName, 
	UnitsInStock, 
	UnitsOnOrder, 
	ReorderLevel, 
	Discontinued
from 
	Products
where 
	(UnitsInStock + UnitsOnOrder) <= ReorderLevel
	and Discontinued = 0
order by 
	ProductID

-- Problem 24
select CustomerID, CompanyName, Region
from customers
order by 
	(CASE WHEN REGION IS NULL THEN 1 ELSE 0 END), 
	Region, 
	CustomerID


-- Problem 25
select 
	top 3 
	ShipCountry,
	avg(Freight) as AverageFreight
from 
	orders
group by 
	ShipCountry
order by 
		AverageFreight DESC

-- Problem 26
select 
	top 3
	ShipCountry,
	avg(Freight) as AverageFreight
from 
	orders
where 
	OrderDate >= '20150101'
	and OrderDate <  '20160101'
	-- This means: 
	 -- Start at 2015-01-01 00:00:00.000
	 -- Stop just before 2016-01-01 00:00:00.000
group by 
	ShipCountry
order by 
		AverageFreight DESC


-- Problem 28
-- assigning variable
declare @last_date_in_dataset datetime
select @last_date_in_dataset = max(OrderDate)
from orders

-- query
select 
	top 3
	ShipCountry,
	avg(Freight) as AverageFreight
from 
	orders
where 
	OrderDate >= DATEADD(YEAR, -1, @last_date_in_dataset)
group by 
	ShipCountry
order by 
		AverageFreight DESC

-- Problem 29
select
	e.EmployeeID, 
	e.LastName, 
	o.OrderID,
	p.ProductName,
	od.Quantity
from Employees as e
join Orders as o 
	on e.EmployeeID = o.EmployeeID
join OrderDetails as od
	on o.OrderID = od.OrderID
join Products as p
	on od.ProductID = p.ProductID
order by o.OrderID, p.ProductID

-- Problem 30
select *
from customers as c
left join orders as o
	on c.CustomerID = o.CustomerID
where o.OrderID is null


-- Problem 31
-- all the customers that have never placed an order with Employee ID 4 
select 
	c.CustomerID, 
	o.CustomerID
from 
	customers as c
left join 
	orders as o
	on o.CustomerID = c.CustomerID
	   and o.EmployeeID = 4
where 
	o.CustomerID is null









