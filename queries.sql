-- Total sales by product category
SELECT product_category, SUM(sales) AS total_sales
FROM retail_sales
GROUP BY product_category;

-- Monthly sales trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(sales) AS monthly_sales
FROM retail_sales
GROUP BY month
ORDER BY month;

-- Top 5 best-selling products
SELECT product_name, SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 5;

-- Sales by region
SELECT region, SUM(sales) AS total_sales
FROM retail_sales
GROUP BY region;

-- Average order value
SELECT AVG(sales) AS average_order_value
FROM retail_sales;
