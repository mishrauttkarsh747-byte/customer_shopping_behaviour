SELECT
    `Category`,
    COUNT(*) AS total_reviews,
    ROUND(AVG(`Review Rating`), 2) AS avg_rating,
    SUM(`Purchase Amount (USD)`) AS total_revenue
FROM customer_shopping_behavior
GROUP BY `Category`
ORDER BY avg_rating DESC;