SELECT
name,
country,
COUNT(*) AS payments_per_customer
FROM customer_list AS cl
LEFT JOIN payment AS p
ON cl.id = p.customer_id
GROUP BY name, country;

SELECT
*
FROM(
SELECT
name,
country,
COUNT(*) AS payments_per_customer,
RANK() OVER (PARTITION BY country ORDER BY COUNT(*) DESC) AS rank
FROM customer_list AS cl
LEFT JOIN payment AS p
ON cl.id = p.customer_id
GROUP BY name, country) AS q1
WHERE rank < 4