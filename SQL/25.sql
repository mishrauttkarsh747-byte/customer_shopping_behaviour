SELECT
    `Category`,
    COUNT(*) AS customers,
    ROUND(SUM(`Purchase Amount (USD)`) / COUNT(*), 2)
        AS revenue_per_customer
FROM customer_shopping_behavior
GROUP BY `Category`
ORDER BY revenue_per_customer DESC;