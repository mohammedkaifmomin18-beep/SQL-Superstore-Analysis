CREATE TABLE superstore (
    category TEXT,
    city TEXT,
    country TEXT,
    customer_id TEXT,
    customer_name TEXT,
    discount NUMERIC,
    market TEXT,
    record_count INT,
    order_date TEXT,
    order_id TEXT,
    order_priority TEXT,
    product_id TEXT,
    product_name TEXT,
    profit NUMERIC,
    quantity INT,
    region TEXT,
    row_id INT,
    sales NUMERIC,
    segment TEXT,
    ship_date TEXT,
    ship_mode TEXT,
    shipping_cost NUMERIC,
    state TEXT,
    sub_category TEXT,
    year INT,
    market2 TEXT,
    weeknum INT
);

SELECT * FROM superstore LIMIT 10;

-- Total rows
SELECT COUNT(*) FROM superstore;

-- Total sales & profit
SELECT SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM superstore;

-- Unique customers
SELECT COUNT(DISTINCT customer_id) FROM superstore;

-- Sales by category
SELECT category, SUM(sales) AS total_sales
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;

-- Profit by region
SELECT region, SUM(profit) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_profit DESC;

-- Top 5 customers
SELECT customer_name, SUM(sales) AS total_sales
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 5;

-- Monthly sales trend
SELECT 
    DATE_TRUNC('month', TO_DATE(order_date, 'MM/DD/YYYY')) AS month,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY month
ORDER BY month;

-- Top products by quantity
SELECT product_name, SUM(quantity) AS total_qty
FROM superstore
GROUP BY product_name
ORDER BY total_qty DESC
LIMIT 10;

-- Customer segmentation
SELECT customer_name,
       SUM(sales) AS total_spent,
       CASE 
           WHEN SUM(sales) > 20000 THEN 'High Value'
           WHEN SUM(sales) BETWEEN 10000 AND 20000 THEN 'Medium Value'
           ELSE 'Low Value'
       END AS segment
FROM superstore
GROUP BY customer_name
ORDER BY total_spent DESC;

-- Rank customers by sales
SELECT customer_name,
       SUM(sales) AS total_sales,
       RANK() OVER (ORDER BY SUM(sales) DESC) AS rank
FROM superstore
GROUP BY customer_name;

-- Running total of sales
SELECT 
    order_date,
    SUM(sales) AS daily_sales,
    SUM(SUM(sales)) OVER (ORDER BY TO_DATE(order_date, 'MM/DD/YYYY')) AS running_total
FROM superstore
GROUP BY order_date;