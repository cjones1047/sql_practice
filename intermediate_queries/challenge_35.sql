SELECT
ROUND(AVG(total_daily_revenue), 2) AS average_daily_revenue
FROM (
	SELECT
	DATE(payment_date) AS day_of_payment,
	SUM(amount) AS total_daily_revenue
	FROM payment
	GROUP BY day_of_payment
) AS total_revenue_by_date