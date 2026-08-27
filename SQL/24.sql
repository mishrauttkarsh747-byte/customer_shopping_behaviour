SELECT
    `Item Purchased`,
    COUNT(*) AS total_orders,
    ROUND(SUM(`Purchase Amount (USD)`), 2) AS total_revenue,
    ROUND(AVG(`Review Rating`), 2) AS avg_rating
FROM customer_shopping_behavior
GROUP BY `Item Purchased`
HAVING COUNT(*) >= 50
   AND AVG(`Review Rating`) < 3.5
ORDER BY total_revenue DESC;