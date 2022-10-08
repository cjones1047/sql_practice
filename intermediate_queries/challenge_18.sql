SELECT
EXTRACT(month FROM payment_date) AS month_of_payment
, SUM(amount) AS monthly_payment_total
FROM payment
GROUP BY month_of_payment
ORDER BY monthly_payment_total DESC;

SELECT
EXTRACT(DOW FROM payment_date) AS dow_of_payment
, SUM(amount) AS dow_payment_total
FROM payment
GROUP BY dow_of_payment
ORDER BY dow_payment_total DESC;

SELECT
customer_id
, EXTRACT(WEEK FROM payment_date) AS week_of_payment
, SUM(amount) AS weekly_payment_total
FROM payment
GROUP BY customer_id, week_of_payment
ORDER BY weekly_payment_total DESC