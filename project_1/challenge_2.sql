SELECT
(CASE 
 WHEN replacement_cost BETWEEN 9.98 AND 20.00 THEN 'low'
 WHEN replacement_cost BETWEEN 19.99 AND 25.00 THEN 'medium'
 WHEN replacement_cost BETWEEN 24.99 AND 30.00 THEN 'high'
 END) AS cost_range,
COUNT(*) AS no_of_films
FROM film
GROUP BY cost_range
ORDER BY no_of_films DESC
