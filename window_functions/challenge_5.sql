SELECT
SUM(amount) AS total_daily_revenue,
DATE(payment_date) AS day,
LAG(SUM(amount)) OVER(ORDER BY DATE(payment_date)) AS previous_day,
SUM(amount)-LAG(SUM(amount)) OVER(ORDER BY DATE(payment_date)) AS difference
FROM payment
GROUP BY day
ORDER BY day;

SELECT
SUM(amount) AS total_daily_revenue,
DATE(payment_date) AS day,
LAG(SUM(amount)) OVER(ORDER BY DATE(payment_date)) AS previous_day,
SUM(amount)-LAG(SUM(amount)) OVER(ORDER BY DATE(payment_date)) AS difference,
ROUND((SUM(amount)-LAG(SUM(amount)) OVER(ORDER BY DATE(payment_date)))
/(LAG(SUM(amount)) OVER(ORDER BY DATE(payment_date)))
*100, 2) AS percent_difference
FROM payment
GROUP BY day
ORDER BY day;