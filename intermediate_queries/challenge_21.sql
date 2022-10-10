SELECT
film_id
, ROUND((rental_rate/replacement_cost)*100, 2) AS rental_rate_percentage
FROM film
WHERE ROUND((rental_rate/replacement_cost)*100, 2) < 4
ORDER BY rental_rate_percentage ASC