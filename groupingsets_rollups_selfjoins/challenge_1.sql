SELECT
first_name,
last_name,
staff_id,
SUM(amount) AS total_revenue
FROM customer AS c
LEFT JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY
GROUPING SETS(
	(first_name, last_name),
	(first_name, last_name, staff_id)
)