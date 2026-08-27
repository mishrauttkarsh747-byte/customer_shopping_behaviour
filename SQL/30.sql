SELECT
    `Category`,
    ROUND(SUM(`Purchase Amount (USD)`), 2) AS category_revenue,

    ROUND(
        SUM(`Purchase Amount (USD)`) * 100 /
        (SELECT SUM(`Purchase Amount (USD)`)
         FROM customer_shopping_behavior),
        2
    ) AS revenue_percentage

FROM customer_shopping_behavior

GROUP BY `Category`

ORDER BY category_revenue DESC;