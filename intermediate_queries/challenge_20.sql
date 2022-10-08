SELECT
rental_date
, return_date
, return_date-rental_date AS rental_duration
FROM rental
WHERE customer_id = 35
ORDER BY rental_duration DESC;

SELECT
customer_id
, AVG(return_date-rental_date) AS average_rental_duration
FROM rental
GROUP BY customer_id
ORDER BY average_rental_duration DESC