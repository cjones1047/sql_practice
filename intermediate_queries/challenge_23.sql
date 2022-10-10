SELECT
title
, CASE
WHEN (rating IN('PG', 'PG-13')) OR length > 210 THEN 'Great rating or long(tier 1)'
WHEN description LIKE '%Drama%' AND length > 90 THEN 'Long drama (tier 2)'
WHEN description LIKE '%Drama%' AND NOT length > 90 THEN 'Short drama (tier 3)'
WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
END AS film_tier
FROM film
WHERE 
	CASE
	WHEN (rating IN('PG', 'PG-13')) OR length > 210 THEN 'Great rating or long(tier 1)'
	WHEN description LIKE '%Drama%' AND length > 90 THEN 'Long drama (tier 2)'
	WHEN description LIKE '%Drama%' AND NOT length > 90 THEN 'Short drama (tier 3)'
	WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
	END
	IS NOT NULL
ORDER BY film_tier ASC