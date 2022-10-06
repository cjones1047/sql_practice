SELECT COUNT(*) AS "Number of Customers" FROM customer
WHERE first_name LIKE '___' AND
(last_name LIKE '%X' OR last_name LIKE'%Y')