# DataAnalyst-Internship-Task6
# Task 6: Sales Trend Analysis Using Aggregations

## **Objective**
The objective of this task is to analyze monthly revenue and order volume using SQL aggregation techniques.  
The goal is to group sales data by month and year, calculate total revenue and number of orders, and identify top-performing months.

---

## **Dataset**
Dataset Name: `online_sales`  
Table: `orders`  

---

## **Tools Used**
- MySQL Workbench (You can also use PostgreSQL or SQLite)
- SQL Aggregation Functions

---

## **Steps Performed**
1. **Extract Month and Year** from `order_date` using `EXTRACT()` function.
2. **Group Data** by month and year.
3. **Calculate Total Revenue** using `SUM(Total revenue)`.
4. **Calculate Total Orders** using `COUNT(DISTINCT Transaction_id)`.
5. **Sort Results** using `ORDER BY`.
6. **Find Top 3 Months** by Total revenue using `LIMIT`.

---
## **Deliverables**
sales_trend_analysis.sql – Contains all SQL queries used for analysis.
sales_trend_results.csv – Exported results table.
sales_trend_results.png – Screenshot of the query output.
