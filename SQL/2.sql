SELECT
    `Item Purchased`,
    COUNT(*) AS total_purchases,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_purchase_value
FROM customer_shopping_behavior
GROUP BY `Item Purchased`
ORDER BY total_revenue DESC
LIMIT 5;