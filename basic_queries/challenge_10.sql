SELECT
staff_id,
COUNT(payment_id) AS "num of payments",
SUM(amount) AS "payment total" 
FROM payment
WHERE amount != 0
GROUP BY staff_id
ORDER BY staff_id ASC;
