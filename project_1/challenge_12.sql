SELECT
district,
ROUND(AVG(customer_total), 2) AS avg_customer_total
FROM (
	SELECT
	district,
	SUM(amount) AS customer_total
	FROM customer AS c
	LEFT OUTER JOIN address AS a
	ON c.address_id = a.address_id
	LEFT OUTER JOIN payment AS p
	ON c.customer_id = p.customer_id
	GROUP BY c.customer_id, district
) AS t1
GROUP BY district
ORDER BY avg_customer_total DESC