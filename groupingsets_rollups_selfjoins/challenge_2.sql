SELECT
first_name,
last_name,
staff_id,
SUM(amount) AS total_revenue,
ROUND(
(SUM(amount)
/FIRST_VALUE(SUM(amount)) OVER(PARTITION BY first_name, last_name ORDER BY SUM(amount) DESC)
)*100
, 2) AS percentage_of_revenue
FROM customer AS c
LEFT JOIN payment AS p
ON c.customer_id = p.customer_id
GROUP BY
GROUPING SETS(
	(first_name, last_name),
	(first_name, last_name, staff_id)
)