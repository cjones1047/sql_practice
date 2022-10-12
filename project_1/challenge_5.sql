SELECT
first_name,
last_name,
COUNT(*) AS no_of_films
FROM actor AS a
INNER JOIN film_actor AS fa
ON a.actor_id = fa.actor_id
INNER JOIN film AS f
ON f.film_id = fa.film_id
GROUP BY first_name, last_name
ORDER BY no_of_films DESC