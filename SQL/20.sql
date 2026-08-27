SELECT
    `Subscription Status`,
    `Frequency of Purchases`,
    COUNT(*) AS total_customers,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_purchase_value
FROM customer_shopping_behavior
GROUP BY
    `Subscription Status`,
    `Frequency of Purchases`
ORDER BY total_revenue DESC;