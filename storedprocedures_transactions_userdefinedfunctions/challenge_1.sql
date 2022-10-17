CREATE FUNCTION name_search (first TEXT, last TEXT)
RETURNS DECIMAL(6,2)
LANGUAGE plpgsql
AS
$$
DECLARE
name_search DECIMAL(6,2);

BEGIN
SELECT
SUM(amount)
INTO name_search
FROM payment
NATURAL LEFT JOIN customer
WHERE first_name = first AND last_name = last;
RETURN name_search;
END;
$$

SELECT 
first_name,
last_name,
name_search(first_name, last_name)
FROM customer