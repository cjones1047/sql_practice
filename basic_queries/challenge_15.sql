SELECT
LEFT(email, 1) || '***' || RIGHT(email, 19) AS anonymized_email
FROM customer