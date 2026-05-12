SELECT * FROM superstore LIMIT 10;

-- Total rows
SELECT COUNT(*) FROM superstore;

-- Total sales & profit
SELECT SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM superstore;

-- Unique customers
SELECT COUNT(DISTINCT customer_id) FROM superstore;
