SELECT
staff_id
, DATE(payment_date)
, SUM(amount) AS "total sold amount"
, COUNT(*) AS "total sales"
FROM payment
WHERE amount != 0
GROUP BY staff_id, DATE(payment_date)
ORDER BY "total sold amount" DESC, "total sales" DESC