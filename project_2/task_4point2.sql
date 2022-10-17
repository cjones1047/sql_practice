UPDATE
employees
SET position_title = 'Customer Specialist'
WHERE position_title = 'Customer Support'
RETURNING *