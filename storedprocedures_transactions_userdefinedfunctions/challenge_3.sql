CREATE OR REPLACE PROCEDURE emp_swap (emp1 INT, emp2 INT)
LANGUAGE plpgsql
AS
$$
DECLARE
salary1 NUMERIC(8,2);
salary2 NUMERIC(8,2);
position1 TEXT;
position2 TEXT;

BEGIN
-- store values into variables
SELECT
salary
INTO salary1
FROM employees
WHERE emp_id = 1;

SELECT
salary
INTO salary2
FROM employees
WHERE emp_id = 2;

SELECT
position_title
INTO position1
FROM employees
WHERE emp_id = 1;

SELECT
position_title
INTO position2
FROM employees
WHERE emp_id = 2;

-- update salaries

UPDATE employees
SET salary = salary2
WHERE emp_id = 1;

UPDATE employees
SET salary = salary1
WHERE emp_id = 2;

-- update positions

UPDATE employees
SET position_title = position2
WHERE emp_id = 1;

UPDATE employees
SET position_title = position1
WHERE emp_id = 2;

COMMIT;
END;
$$

CALL emp_swap(1,2);

SELECT * FROM employees
WHERE emp_id IN(1,2)
ORDER BY 1;