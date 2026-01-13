-- Day 2


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


