SELECT
last_name,
first_name,
email,
country
FROM customer AS cu
INNER JOIN address AS a
ON cu.address_id = a.address_id
INNER JOIN city AS ci
ON a.city_id = ci.city_id
INNER JOIN country AS co
ON ci.country_id = co.country_id
AND co.country = 'Brazil'
ORDER BY last_name ASC