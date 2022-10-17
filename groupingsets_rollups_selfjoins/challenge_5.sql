SELECT
f1.title,
f2.title,
f2.length
FROM film AS f1
LEFT JOIN film AS f2
ON f1.length = f2.length
WHERE f1.title <> f2.title
ORDER BY length DESC