SELECT
LOWER(first_name) AS first_name_lower
, LOWER(last_name) AS last_name_lower
, LOWER(email) AS email_lower
FROM customer
WHERE LENGTH(first_name) > 10 OR LENGTH(last_name) > 10