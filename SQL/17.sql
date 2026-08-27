
SELECT
    CASE
        WHEN `Previous Purchases` BETWEEN 0 AND 5
            THEN '0-5 Previous Purchases'

        WHEN `Previous Purchases` BETWEEN 6 AND 15
            THEN '6-15 Previous Purchases'

        WHEN `Previous Purchases` BETWEEN 16 AND 30
            THEN '16-30 Previous Purchases'

        ELSE '31+ Previous Purchases'
    END AS customer_segment,

    COUNT(*) AS total_customers,

    SUM(`Purchase Amount (USD)`) AS total_revenue,

    ROUND(AVG(`Purchase Amount (USD)`), 2)
        AS avg_current_purchase

FROM customer_shopping_behavior

GROUP BY
    CASE
        WHEN `Previous Purchases` BETWEEN 0 AND 5
            THEN '0-5 Previous Purchases'

        WHEN `Previous Purchases` BETWEEN 6 AND 15
            THEN '6-15 Previous Purchases'

        WHEN `Previous Purchases` BETWEEN 16 AND 30
            THEN '16-30 Previous Purchases'

        ELSE '31+ Previous Purchases'
    END

ORDER BY total_revenue DESC;