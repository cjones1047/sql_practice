SELECT
*
FROM film
WHERE 'Behind the Scenes' = ANY(special_features)