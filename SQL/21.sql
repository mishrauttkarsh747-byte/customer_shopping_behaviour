SELECT
    `Discount Applied`,
    COUNT(*) AS total_orders,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_order_value,
    ROUND(SUM(`Purchase Amount (USD)`), 2) AS total_revenue
FROM customer_shopping_behavior
GROUP BY `Discount Applied`
ORDER BY avg_order_value DESC;