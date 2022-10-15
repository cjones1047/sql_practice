SELECT
f.film_id,
title,
length,
name AS category_name,
ROUND(AVG(length) OVER (PARTITION BY name), 2) AS avg_length_in_category
FROM film AS f
LEFT JOIN film_category AS fc
ON f.film_id = fc.film_id
LEFT JOIN category AS c
ON fc.category_id = c.category_id
ORDER BY f.film_id