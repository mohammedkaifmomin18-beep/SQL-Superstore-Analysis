-- Total sales & profit
SELECT SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM superstore;

-- Sales by category
SELECT category, SUM(sales) AS total_sales
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;

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
