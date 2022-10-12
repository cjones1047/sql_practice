SELECT
FORMAT('%s, %s',country, city) location,
SUM(amount) AS total_sales
FROM payment AS p
LEFT OUTER JOIN customer AS cu
ON p.customer_id = cu.customer_id
INNER JOIN address AS a
ON cu.address_id = a.address_id
INNER JOIN city AS ci
ON a.city_id = ci.city_id
INNER JOIN country AS co
ON ci.country_id = co.country_id
GROUP BY location
ORDER BY total_sales ASC