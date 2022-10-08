SELECT
SUM(amount) AS total_amount
, TO_CHAR(payment_date, 'Dy, DD/MM/YYYY') AS day
FROM payment
GROUP BY day
ORDER BY total_amount DESC;

SELECT
SUM(amount) AS total_amount
, TO_CHAR(payment_date, 'Mon, YYYY') AS month
FROM payment
GROUP BY month
ORDER BY total_amount DESC;

SELECT
SUM(amount) AS total_amount
, TO_CHAR(payment_date, 'Dy, HH:MI') AS day
FROM payment
GROUP BY day
ORDER BY total_amount DESC