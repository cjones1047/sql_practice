SELECT
city,
SUM(amount) AS total_sales
FROM payment AS p
LEFT OUTER JOIN customer AS cu
ON p.customer_id = cu.customer_id
INNER JOIN address AS a
ON cu.address_id = a.address_id
INNER JOIN city AS ci
ON a.city_id = ci.city_id
GROUP BY city
ORDER BY total_sales DESC