Sales Trend Analysis using SQL

Objective

Analyze monthly revenue and order volume using SQL aggregation functions.

Tools Used

MySQL Workbench 8.0

Dataset

Table: `online_sales`

Columns:

* order_id
* order_date
* product_id
* amount

Analysis Performed

1. Extracted Month & Year

Used YEAR() and MONTH() functions.

2. Monthly Aggregation

* Total Revenue → SUM(amount)
* Total Orders → COUNT(DISTINCT order_id)

3. Top Performing Month

Used ORDER BY DESC and LIMIT 1.

4. Lowest Performing Month

Used ORDER BY ASC and LIMIT 1.

5. Month-over-Month Growth

Used LAG() window function to compare revenue.

Key Insights

* Highest revenue month: March
* Lowest revenue month: January
* Observed fluctuations in monthly growth

Screenshots

Added in screenshots folder.

Conclusion

This task helped understand SQL aggregation, grouping, and trend analysis using real-world data.
