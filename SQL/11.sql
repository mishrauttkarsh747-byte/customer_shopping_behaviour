
SELECT
    `Shipping Type`,
    COUNT(*) AS total_orders,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_purchase_value
FROM customer_shopping_behavior
GROUP BY `Shipping Type`
ORDER BY total_revenue DESC;