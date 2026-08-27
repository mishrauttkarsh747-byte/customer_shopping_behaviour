
SELECT
    `Season`,
    COUNT(*) AS total_purchases,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_purchase_value
FROM customer_shopping_behavior
GROUP BY `Season`
ORDER BY total_revenue DESC;