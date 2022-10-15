CREATE TABLE online_sales(
	transaction_id SERIAL PRIMARY KEY,
	customer_id INT REFERENCES customer(customer_id),
	film_id INT REFERENCES film(film_id),
	amount NUMERIC(5,2) NOT NULL,
	promotion_code VARCHAR(10) DEFAULT 'None'
)