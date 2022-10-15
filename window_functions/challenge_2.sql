SELECT
*,
COUNT(amount) OVER (PARTITION BY customer_id, amount) AS no_payments_with_that_amount
FROM payment
ORDER BY payment_id ASC