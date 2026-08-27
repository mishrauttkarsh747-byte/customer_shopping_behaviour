SELECT
    `Category`,
    `Season`,
    COUNT(*) AS total_orders,
    ROUND(SUM(`Purchase Amount (USD)`), 2) AS total_revenue,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_purchase
FROM customer_shopping_behavior
GROUP BY
    `Category`,
    `Season`
ORDER BY total_revenue DESC
LIMIT 10;