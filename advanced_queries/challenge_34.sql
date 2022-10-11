SELECT
first_name,
last_name
FROM customer
WHERE customer_id IN (
	SELECT
	customer_id
	FROM payment
	WHERE DATE(payment_date) = '2020-01-25'
);

SELECT
first_name,
email
FROM customer
WHERE customer_id IN (
	SELECT
	customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 30
);

SELECT
first_name,
last_name
FROM customer
WHERE address_id IN (
	SELECT
	address_id
	FROM address
	WHERE district = 'California'
)
AND customer_id IN (
	SELECT
	customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 100
)
