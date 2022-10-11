SELECT
'actor' AS origin,
last_name
FROM actor
UNION
SELECT
'customer',
last_name
FROM customer
UNION
SELECT
'staff',
last_name
FROM staff
ORDER BY origin