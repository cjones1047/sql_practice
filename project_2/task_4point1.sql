UPDATE
employees
SET position_title = 'Senior SQL Analyst',
salary = 7200
WHERE emp_id = 25 AND first_name = 'Jack' AND last_name = 'Franklin'
RETURNING *;