SELECT
    CASE
        WHEN `Previous Purchases` = 0 THEN 'New Customer'
        WHEN `Previous Purchases` BETWEEN 1 AND 5 THEN 'Low Repeat'
        WHEN `Previous Purchases` BETWEEN 6 AND 15 THEN 'Regular Customer'
        ELSE 'Loyal Customer'
    END AS customer_segment,

    COUNT(*) AS customers,

    ROUND(AVG(`Purchase Amount (USD)`), 2)
        AS avg_purchase,

    ROUND(SUM(`Purchase Amount (USD)`), 2)
        AS total_revenue

FROM customer_shopping_behavior

GROUP BY
    CASE
        WHEN `Previous Purchases` = 0 THEN 'New Customer'
        WHEN `Previous Purchases` BETWEEN 1 AND 5 THEN 'Low Repeat'
        WHEN `Previous Purchases` BETWEEN 6 AND 15 THEN 'Regular Customer'
        ELSE 'Loyal Customer'
    END

ORDER BY total_revenue DESC;