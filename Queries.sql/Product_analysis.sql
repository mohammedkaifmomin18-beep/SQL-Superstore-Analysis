-- Top products by quantity
SELECT product_name, SUM(quantity) AS total_qty
FROM superstore
GROUP BY product_name
ORDER BY total_qty DESC
LIMIT 10;
