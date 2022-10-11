SELECT
c.first_name,
c.last_name,
a.phone,
a.district
FROM customer AS c
RIGHT OUTER JOIN address AS a
ON c.address_id = a.address_id
WHERE a.district = 'Texas';

SELECT
a.address_id,
a.address
FROM customer AS c
RIGHT OUTER JOIN address AS a
ON c.address_id = a.address_id
WHERE c.customer_id IS NULL
ORDER BY address_id