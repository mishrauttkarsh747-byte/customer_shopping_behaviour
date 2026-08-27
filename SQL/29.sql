SELECT
    `Customer ID`,
    `Age`,
    `Gender`,
    `Location`,
    `Purchase Amount (USD)`,
    `Previous Purchases`,
    `Subscription Status`
FROM customer_shopping_behavior
WHERE `Previous Purchases` >= 20
  AND `Purchase Amount (USD)` >= 80
ORDER BY
    `Purchase Amount (USD)` DESC,
    `Previous Purchases` DESC;