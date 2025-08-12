CREATE SCHEMA sales_db;
USE sales_db;
-- a.Use EXTRACT(MONTH FROM order_date) for month.
SELECT EXTRACT(MONTH FROM Date) FROM online_sales_data;

-- b.GROUP BY year/month.
SELECT YEAR(Date) Year, MONTHNAME(Date) Month, ROUND(SUM(`Total Revenue`),2) 'Total Revenue' FROM online_sales_data GROUP BY YEAR(Date), MONTHNAME(Date);

-- c.Use SUM() for revenue.
SELECT ROUND(SUM(`Total Revenue`),2) 'Total Revenue' FROM online_sales_data;

-- d.COUNT(DISTINCT order_id) for volume.
SELECT COUNT(DISTINCT `Transaction ID`) Volume FROM online_sales_data;

-- e.Use ORDER BY for sorting.
SELECT `Transaction ID`, Date, `Product Name`, `Total Revenue` FROM online_sales_data WHERE MONTH(Date)=1 ORDER BY `Product Name`;

-- f.Limit results for specific time periods.
SELECT YEAR(Date), MONTH(Date), SUM(`Total Revenue`) FROM online_sales_data GROUP BY YEAR(Date), MONTH(Date) ORDER BY SUM(`Total Revenue`) LIMIT 3;