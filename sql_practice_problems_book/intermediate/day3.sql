-- Day 3

-- Intermediate Problems

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








