CREATE TABLE customer_spendings
AS
SELECT
first_name || ' ' || last_name AS name,
SUM(amount) AS total_amount
FROM customer AS cu
LEFT JOIN payment AS p
ON cu.customer_id = p.customer_id
GROUP BY name;

SELECT
*
FROM customer_spendings;