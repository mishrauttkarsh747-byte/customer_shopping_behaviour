SELECT
    `Category`,
    `Item Purchased`,
    SUM(`Purchase Amount (USD)`) AS total_revenue,
    COUNT(*) AS total_orders
FROM customer_shopping_behavior
GROUP BY
    `Category`,
    `Item Purchased`
ORDER BY
    `Category`,
    total_revenue DESC;