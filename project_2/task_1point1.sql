CREATE TABLE employees (
	emp_id SERIAL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	job_position TEXT NOT NULL,
	salary NUMERIC(8,2),
	start_date DATE NOT NULL,
	birth_date DATE NOT NULL,
	store_id INT REFERENCES store(store_id),
	department_id INT,
	manager_id INT
)