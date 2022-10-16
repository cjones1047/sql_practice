SELECT 
flight_id,
departure_airport,
SUM(actual_arrival-scheduled_arrival) OVER (ORDER BY flight_id) AS total_arrival_difference
FROM flights
WHERE actual_arrival IS NOT NULL AND scheduled_arrival IS NOT NULL;

SELECT 
flight_id,
departure_airport,
SUM(actual_arrival-scheduled_arrival) OVER (PARTITION BY departure_airport ORDER BY flight_id) AS total_arrival_difference
FROM flights
WHERE actual_arrival IS NOT NULL AND scheduled_arrival IS NOT NULL;