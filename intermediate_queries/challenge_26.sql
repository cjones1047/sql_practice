SELECT
CAST(REPLACE(flight_no, 'PG', '') AS INT) AS new_flight_num
FROM flights