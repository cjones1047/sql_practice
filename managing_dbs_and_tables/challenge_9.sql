CREATE VIEW films_category
AS
SELECT
title,
length,
name AS category_name
FROM film AS f
LEFT JOIN film_category AS fc
ON f.film_id = fc.film_id
LEFT JOIN category AS c
ON fc.category_id = c.category_id
WHERE name IN ('Action', 'Comedy')
ORDER BY length DESC, title ASC;

SELECT
*
FROM films_category;