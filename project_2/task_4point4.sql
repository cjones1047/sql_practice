SELECT
position_title,
ROUND(AVG(salary),2) AS average_salary
FROM employees
WHERE position_title LIKE '%SQL Analyst'
AND position_title != 'Senior SQL Analyst'
GROUP BY position_title