SELECT *
FROM rental
WHERE return_date IS NULL;

SELECT payment_id, amount
FROM payment
WHERE amount <= 2
ORDER BY amount DESC