SELECT
s.fare_conditions,
COUNT(*) AS no_of_seats
FROM seats AS s
INNER JOIN boarding_passes AS bp
ON s.seat_no = bp.seat_no
GROUP BY s.fare_conditions