UPDATE film
SET rental_rate = 1.99
WHERE rental_rate = 0.99;

SELECT
*
FROM film
ORDER BY rental_rate;

ALTER TABLE customer ADD COLUMN initials VARCHAR(10);

UPDATE customer
SET initials = LEFT(first_name, 1) || '.' || LEFT(last_name, 1) || '.';

SELECT
*
FROM customer;