-- Superstore Sales Analysis

-- 1. Category Performance Analysis
select category, sum(sales) as "total sales", sum(profit) as "total profit”,  round ((sum(profit) / sum(sales)) * 100, 2) as "profit margin %”
from sales 
group by category
order by "total profit" DESC;

  
-- 2. Furniture Sub-Category Breakdown
select sub_category, sum(sales) as "total sales", sum(profit) as "total profit", round((sum(profit) / sum(sales)) * 100, 2) as "profit margin %"
from sales
where category = 'Furniture'
group by sub_category
order by "total profit" ASC;

  
-- 3. Regional Profitability Analysis
select region, sum(sales) as "total sales", sum(profit) as "total profit"
from sales 
group by region
order by "total profit" DESC;
  
-- 4. Central Region State-Level Deep Dive
select state, sum(sales) as "total sales", sum(profit) as "total profit"
from sales 
where region = 'Central'
group by state
order by "total profit" ASC;

-- 5. Top 10 Customer Analysis
select customer_name, sum(sales) as "total sales", segment
from sales
group by customer_name, segment
order by  "total sales" DESC
limit 10;
