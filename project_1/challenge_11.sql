SELECT
title,
length
FROM film AS f1
WHERE length > (
	SELECT
	AVG(length)
	FROM film AS f2
	WHERE f1.replacement_cost = f2.replacement_cost
)
ORDER BY length ASC