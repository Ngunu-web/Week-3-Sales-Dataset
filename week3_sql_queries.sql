/* =====================================================
   WEEK 3: SQL & DATA QUERYING PROJECT
   Dataset: Sales Data Sample
   AnalystLab Africa Internship Program
===================================================== */

/* Query 1: Count Total Records */
SELECT COUNT(*) AS total_records
FROM sales_data;

/* Query 2: View First 10 Records */
SELECT *
FROM sales_data
LIMIT 10;

/* Query 3: Total Revenue */
SELECT SUM(sales) AS total_revenue
FROM sales_data;

/* Query 4: Average Sales Value */
SELECT AVG(sales) AS average_sale
FROM sales_data;

/* Query 5: Top 10 Sales Orders */
SELECT ordernumber,
       customername,
       sales
FROM sales_data
ORDER BY sales DESC
LIMIT 10;

/* Query 6: Revenue by Product Line */
SELECT productline,
       SUM(sales) AS revenue
FROM sales_data
GROUP BY productline
ORDER BY revenue DESC;

/* Query 7: Revenue by Country */
SELECT country,
       SUM(sales) AS revenue
FROM sales_data
GROUP BY country
ORDER BY revenue DESC;

/* Query 8: Top 10 Customers by Revenue */
SELECT customername,
       SUM(sales) AS revenue
FROM sales_data
GROUP BY customername
ORDER BY revenue DESC
LIMIT 10;

/* Query 9: Customer Purchase Frequency */
SELECT customername,
       COUNT(DISTINCT ordernumber) AS total_orders
FROM sales_data
GROUP BY customername
ORDER BY total_orders DESC;

/* Query 10: Monthly Revenue Trend */
SELECT year_id,
       month_id,
       SUM(sales) AS monthly_revenue
FROM sales_data
GROUP BY year_id, month_id
ORDER BY year_id, month_id;

/* Query 11: Product Lines with Revenue Above 500,000 */
SELECT productline,
       SUM(sales) AS revenue
FROM sales_data
GROUP BY productline
HAVING SUM(sales) > 500000
ORDER BY revenue DESC;

/* Query 12: Customer Revenue Ranking (Window Function) */
SELECT customername,
       SUM(sales) AS revenue,
       RANK() OVER (
           ORDER BY SUM(sales) DESC
       ) AS customer_rank
FROM sales_data
GROUP BY customername;

/* Query 13: Row Number Within Product Line */
SELECT productline,
       productcode,
       sales,
       ROW_NUMBER() OVER (
           PARTITION BY productline
           ORDER BY sales DESC
       ) AS row_num
FROM sales_data;

/* Query 14: Revenue Contribution by Product Line */
SELECT productline,
       SUM(sales) AS revenue,
       ROUND(
           100 * SUM(sales) /
           SUM(SUM(sales)) OVER (),
           2
       ) AS revenue_percentage
FROM sales_data
GROUP BY productline;

/* Query 15: Create Indexes for Optimization */
CREATE INDEX idx_customername
ON sales_data(customername);

CREATE INDEX idx_productline
ON sales_data(productline);

CREATE INDEX idx_orderdate
ON sales_data(orderdate);