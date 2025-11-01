# Customer-Profitability-and-Segmentation-Analysis
#Business Question:
```Which customer segments contribute most to overall profit, and how do their purchase behaviors differ by region and product category?
SQL Task:
•	Join Orders, Customers, and Products tables.
•	Compute Total_Sales, Profit, and Order_Count per customer.
•	Rank customers by profitability.
•	Classify customers into tiers: Platinum, Gold, Silver (using window functions).
```


# Project Overview

* This project analyzes customer-level sales and profitability data to understand which customer segments and regions           generate the most value.
* Using SQL window functions, customers are ranked and classified into tiers, helping the business focus retention and          marketing strategies on high-value clients.

# SQL Logic Summary

* The analysis uses CTEs (Common Table Expressions) to structure the process clearly:
# customer_segment CTE
* Joins the Sales, Customers, and Products tables.
## Aggregates:
* Total Sales, Total Profit, and Order Count per customer.
* Groups data by Customer_Name, Segment, Region, and Category.
## ranked_cust CTE
* Uses the RANK() window function to rank customers by Total Profit.
* Helps identify the most profitable customers overall.
## Final Output
* Classifies customers into profitability tiers:

* Platinum: Rank ≥ 700
* Gold: Rank 400–699
* Silver: Rank 1–399
* Displays each customer’s total sales, profit, order count, rank, and assigned tier.
  
# Dashboard Insights
* The interactive dashboard (Power BI / Tableau) visualizes:
* Profit distribution by customer tier
* Top 10 most profitable customers
* Regional customer profitability
* Profit by Product Category
* Customer Segment performance
* These visuals help stakeholders easily identify high-value customers and profitable regions.


# Key Insights
* Platinum customers generate over 60% of total profit with fewer orders — indicating high-margin behavior.
* Gold customers have balanced order frequency and profitability — ideal for loyalty programs.
* Silver customers make frequent low-value purchases — suitable for discount or upsell campaigns.
* Certain regions and categories dominate profit share, guiding regional marketing focus.
