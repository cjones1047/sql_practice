SELECT
ROUND(AVG(total), 2) AS average_Sunday_revenue
FROM (
	SELECT
	SUM(amount) AS total,
	DATE(payment_date) AS date,
	EXTRACT(DOW FROM payment_date) AS dow
	FROM payment
	WHERE EXTRACT(DOW FROM payment_date) = 0
	GROUP BY date, dow
	ORDER BY total DESC
) AS t1