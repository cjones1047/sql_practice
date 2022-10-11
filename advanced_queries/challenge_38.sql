SELECT
*,
(SELECT
SUM(amount)
FROM payment AS p2
WHERE p1.customer_id = p2.customer_id),
(SELECT
COUNT(*)
FROM payment AS p2
WHERE p1.customer_id = p2.customer_id)
FROM payment AS p1
ORDER BY customer_id;

SELECT
title,
replacement_cost,
rating,
(SELECT
ROUND(AVG(replacement_cost), 2)
FROM film AS f2
WHERE f1.rating = f2.rating) AS avg
FROM film AS f1
WHERE f1.replacement_cost = (
	SELECT
	MAX(replacement_cost)
	FROM film AS f2
	WHERE f1.rating = f2.rating
);

SELECT
first_name,
amount,
payment_id
FROM payment AS p1
INNER JOIN customer AS c
ON p1.customer_id = c.customer_id
WHERE amount = (
	SELECT
	MAX(amount)
	FROM payment AS p2
	WHERE p1.customer_id = p2.customer_id
)