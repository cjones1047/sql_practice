SELECT
rental_date,
COALESCE(CAST(return_date AS VARCHAR), 'not returned') AS return_date
FROM rental
ORDER BY rental_date ASC