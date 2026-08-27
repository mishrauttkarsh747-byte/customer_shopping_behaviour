SELECT
    `Payment Method`,
    COUNT(*) AS transactions,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_order_value,
    ROUND(SUM(`Purchase Amount (USD)`), 2) AS total_revenue
FROM customer_shopping_behavior
GROUP BY `Payment Method`
HAVING COUNT(*) >= 50
ORDER BY avg_order_value DESC;