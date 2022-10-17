UPDATE
employees
SET salary = salary*1.06
WHERE position_title = 'Senior SQL Analyst'
RETURNING *