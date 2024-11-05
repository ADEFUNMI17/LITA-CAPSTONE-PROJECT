CREATE DATABASE CUSTOMER

--RETRIEVE THE TOTAL NUMBER OF CUSTOMERS FROM EACH REGION
SELECT region, count(distinct customerid)as
total_customers
from[dbo].[capstone sql project two]
group by region;

--FIND THE MOST POPULAR SUBSCRIPTION BY NUMBER OF CUSTOMERS
select top 1 subscriptiontype,
count(distinct customerid)as
total_customers
from[dbo].[capstone sql project two]
group by subscriptiontype
order by total_customers desc;

--FIND CUSTOMERS WHO CANCELED THEIR SUBSCRIPTION WITHIN SIX MONTHS
select customerID
from[dbo].[capstone sql project two]
where datediff(MONTH,subscriptionstart,subscriptionend)<=6; 

--CALCULATE THE AVERAGE SUBSCRIPTION DURATION FOR ALL CUSTOMERS
select avg(datediff(day, subscriptionstart, subscriptionend))as subscription_duration
from[dbo].[capstone sql project two]


--CALCULATE THE AVERAGE SUBSCRIPTION DURATION FOR ALL CUSTOMERS
 select customerid
 from[dbo].[capstone sql project two]
 where datediff(month,subscriptionstart,subscriptionend)>12;

 -- CALCULATE TOTAL REVENUE BY SUBSCRIPTION TYPE
 select subscriptiontype,sum(revenue)as total_revenue
 from[dbo].[capstone sql project two]
 group by subscriptiontype;

 -- 7. FIND THE TOP THREE REGION BY SUBSCRIPTION CANCELLATION.---
 select top 3 region,count(*)as
subscriptionend_count
from[dbo].[capstone sql project two]
where subscriptionend is null
group by region
order by subscriptionend_count desc;

-- find the total number of active and cancellation subscptionri.---
select SubscriptionType
from[dbo].[capstone sql project two]
group by SubscriptionType
having SUM(case when SubscriptionEnd between'2024-06-01'and '2024-08-31' 
then 1 else 0 end)=0


