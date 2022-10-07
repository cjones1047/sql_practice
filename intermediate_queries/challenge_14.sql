SELECT
RIGHT(email, 4) AS last_four_of_email
FROM customer;

SELECT
LEFT(RIGHT(email, 4),1) AS fourth_to_last_email_character
FROM customer