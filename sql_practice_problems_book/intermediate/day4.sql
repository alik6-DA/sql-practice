-- Day 4

-- Intermediate Problems

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


