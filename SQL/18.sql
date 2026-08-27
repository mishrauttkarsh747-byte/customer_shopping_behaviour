SELECT
    `Customer ID`,
    `Age`,
    `Gender`,
    `Location`,
    `Item Purchased`,
    `Category`,
    `Purchase Amount (USD)`,
    `Previous Purchases`,
    `Subscription Status`
FROM customer_shopping_behavior
ORDER BY `Purchase Amount (USD)` DESC
LIMIT 10;