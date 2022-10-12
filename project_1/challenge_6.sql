SELECT
COUNT(*) AS no_of_addresses_without_customers
FROM address AS a
LEFT OUTER JOIN customer AS c
ON a.address_id = c.address_id
WHERE c.customer_id IS NULL