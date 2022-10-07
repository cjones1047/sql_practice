SELECT
MIN(replacement_cost) AS "Minimum"
, MAX(replacement_cost) AS "Maximum"
, ROUND(AVG(replacement_cost), 2) AS "Average"
, SUM(replacement_cost) AS "Sum"
FROM film