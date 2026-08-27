
SELECT
    CASE
        WHEN `Age` BETWEEN 18 AND 24 THEN '18-24'
        WHEN `Age` BETWEEN 25 AND 34 THEN '25-34'
        WHEN `Age` BETWEEN 35 AND 44 THEN '35-44'
        WHEN `Age` BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS age_group,

    COUNT(*) AS total_customers,

    SUM(`Purchase Amount (USD)`) AS total_revenue,

    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_purchase_value

FROM customer_shopping_behavior

GROUP BY
    CASE
        WHEN `Age` BETWEEN 18 AND 24 THEN '18-24'
        WHEN `Age` BETWEEN 25 AND 34 THEN '25-34'
        WHEN `Age` BETWEEN 35 AND 44 THEN '35-44'
        WHEN `Age` BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END

ORDER BY total_revenue DESC;