-- Day 5

-- Intermediate Problems

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

















