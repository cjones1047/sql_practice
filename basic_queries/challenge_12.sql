SELECT
customer_id
, DATE(payment_date)
, ROUND(AVG(amount), 2) AS "average_sale_amount"
, COUNT(*) AS "total_sales"
FROM payment
WHERE DATE(payment_date) IN ('2020-04-28', '2020-04-29', '2020-04-30')
GROUP BY DATE(payment_date), customer_id
HAVING COUNT(*) > 1
ORDER BY "average_sale_amount" DESC, DATE(payment_date) DESC, "total_sales" DESC