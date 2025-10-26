'Which customer segments contribute most to overall profit, 
and how do their purchase behaviors differ by region and product category?'

'Join Orders, Customers, and Products tables.
•	Compute Total_Sales, Profit, and Order_Count per customer.
•	Rank customers by profitability.
•	Classify customers into tiers: Platinum, Gold, Silver (using window functions).
'

--Join orders, customes, products table
'Compute Total_Sales, Profit, and Order_Count per customer.
•	Rank customers by profitability.'
With customer_segment as(
select c.customer_name,c.segment,c.region,p.category,sum(s.sales) as total_Sales,
sum(s.profit) as total_profit,
count(s.order_id) as total_orders
from customer as c 
join sales as s 
on c.customer_id = s.customer_id
join product as p 
on s.product_id = p.product_id 
group by customer_name,segment,region,category
),
ranked_cust as(
select customer_name,segment,region,total_orders,total_sales,total_profit,
rank() over(order by total_profit) as ranked_profit
from customer_segment
)
select customer_name,total_sales, total_profit,total_orders,ranked_profit,
case when ranked_profit >= 700 then 'Platinium'
when ranked_profit >= 400 and ranked_profit <= 700 then 'Gold'
when ranked_profit >= 1 and ranked_profit <= 400 then 'silver'
end as customer_tiers
from ranked_Cust 
order by ranked_profit 


