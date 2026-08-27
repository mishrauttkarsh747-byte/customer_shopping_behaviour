
SELECT
    `Location`,
    COUNT(*) AS total_purchases,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_purchase_value,
    SUM(`Purchase Amount (USD)`) AS total_revenue
FROM customer_shopping_behavior
GROUP BY `Location`
HAVING COUNT(*) >= 50
ORDER BY avg_purchase_value DESC
LIMIT 10;
