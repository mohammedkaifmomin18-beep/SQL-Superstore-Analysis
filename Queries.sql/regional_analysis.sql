-- Profit by region
SELECT region, SUM(profit) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_profit DESC;
