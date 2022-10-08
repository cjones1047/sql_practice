SELECT
LEFT(email, 1) || '***' || SUBSTRING(email FROM POSITION('.' IN email) FOR 2) || '***' || RIGHT(email, 19)
AS anonymized_email
FROM customer;

SELECT
'***' || SUBSTRING(email FROM POSITION('.' IN email)-1 FOR 1) ||  SUBSTRING(email FROM POSITION('.' IN email) FOR 2) || '***' || RIGHT(email, 19)
AS anonymized_email_2
FROM customer