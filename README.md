# 📊 SQL Sales Data Analysis using PostgreSQL

## Project Overview
This project was completed as part of **Week 3 of the AnalystLab Africa Data Analytics Internship Program**.

The objective was to use SQL to extract, analyze, and generate business insights from a sales dataset. The project involved importing data into PostgreSQL, writing SQL queries, performing business analysis, and applying advanced SQL concepts such as window functions and query optimization.

---

## Objectives

- Import and manage data in PostgreSQL
- Explore and analyze sales data using SQL
- Perform aggregations and filtering
- Identify top-performing customers and products
- Analyze revenue trends over time
- Apply advanced SQL concepts
- Generate business insights for decision-making

---

## Dataset

**Sales Data Sample Dataset**

The dataset contains **2,823 sales records** including:

- Order Number
- Customer Name
- Product Line
- Sales Revenue
- Country
- Order Date
- Product Code
- Deal Size

---

## Tools Used

- PostgreSQL
- pgAdmin 4
- SQL

---

## SQL Concepts Applied

### Core SQL
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING

### Aggregate Functions
- SUM()
- AVG()
- COUNT()

### Advanced SQL
- Window Functions
- RANK()
- ROW_NUMBER()
- Revenue Contribution Analysis

### Query Optimization
- Index Creation
- Performance Improvement Techniques

---

## Business Questions Answered

### 1. What is the total revenue generated?

```sql
SELECT SUM(sales) AS total_revenue
FROM sales_data;
```

### 2. Which product lines generate the highest revenue?

```sql
SELECT productline,
       SUM(sales) AS revenue
FROM sales_data
GROUP BY productline
ORDER BY revenue DESC;
```

### 3. Who are the top customers?

```sql
SELECT customername,
       SUM(sales) AS revenue
FROM sales_data
GROUP BY customername
ORDER BY revenue DESC
LIMIT 10;
```

### 4. Which countries contribute the most sales?

```sql
SELECT country,
       SUM(sales) AS revenue
FROM sales_data
GROUP BY country
ORDER BY revenue DESC;
```

### 5. How does revenue change over time?

```sql
SELECT year_id,
       month_id,
       SUM(sales) AS monthly_revenue
FROM sales_data
GROUP BY year_id, month_id
ORDER BY year_id, month_id;
```

---

## Key Findings

- Successfully analyzed **2,823 sales transactions**.
- Identified the highest-performing product categories.
- Ranked customers based on total revenue generated.
- Analyzed customer purchasing behavior and order frequency.
- Evaluated sales performance across different countries.
- Examined monthly revenue trends to identify business patterns.

---

## Learning Outcomes

Through this project, I strengthened my skills in:

- SQL querying and data extraction
- Database management using PostgreSQL
- Data aggregation and analysis
- Window functions and ranking techniques
- Business intelligence and reporting
- Query optimization and indexing

---

## Project Deliverables

- `week3_sql_queries.sql`
- SQL Analysis Report (PDF)
- Query Results and Business Insights

---

## Author

**Ngunu Iregi**  
Data Analytics Intern – AnalystLab Africa

---

## Connect With Me

I am continuously building projects in:

- SQL
- Power BI
- Python
- Data Analytics
- Machine Learning

Feel free to connect and follow my learning journey.
