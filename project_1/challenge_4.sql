SELECT
COUNT(*) AS no_of_films,
name AS film_category
FROM film AS f
INNER JOIN film_category AS fc
ON f.film_id = fc.film_id
INNER JOIN category AS c
ON fc.category_id = c.category_id
GROUP BY film_category
ORDER BY no_of_films DESC