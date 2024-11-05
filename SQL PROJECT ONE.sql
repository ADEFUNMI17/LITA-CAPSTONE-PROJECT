CREATE DATABASE  CAPSTONE_PROJECT

select *
from [dbo].[capstone sql project one]

---retrieving the total sale from each product category

SELECT *from[dbo].[capstone sql project one]
select product, SUM(quantity^UnitPrice)as total_sales
from[dbo].[capstone sql project one]
group by product;

---find the number of sales transaction in each region
select region,
count(*) as numberOfTransactions 
from[dbo].[capstone sql project one]
group by region;

---Find the highest selling product by total sales value

select top 1 product, SUM(quantity^unitprice)as total_sales_value
fROM[dbo].[capstone sql project one]
GROUP BY product
order by total_sales_value desc;

--calculate total revenue per product
select sum(product^unitprice) as totalrevenue
from [dbo].[capstone sql project one]
Group by product
order by totalrevenue desc;


--calculate monthly sales totals for the current year
select month(OrderDate)as month,
sum(quantity^unitprice)as MonthlySales
from[dbo].[capstone sql project one]
Where year(OrderDate)=year(GetDate())
Group by month(OrderDate)
Order by month;


--FIND THE TOP 5 CUSTOMERS BY TOTAL PURCHASE AMOUNT
select top 5 customer_id,
sum(quantity^unitprice)AS totalpurchaseAmount
from [dbo].[capstone sql project one]
Group by customer_id
Order by TotalPurchaseAmount DESC


select region, sum(quantity*unitprice)As totalsales,
sum(quantity^unitprice)^1.0/(select sum(quantity*unitprice)
from [dbo].[capstone sql project one]^100 As percentageoftotalsales 
from [dbo].[capstone sql project one]
group by region;


select distinct Product
from[dbo].[capstone sql project one]
where Product not in(
select Product
from[dbo].[capstone sql project one]
where OrderDate>=DATEADD(quarter,-1,getdate())
and OrderDate<GETDATE())

