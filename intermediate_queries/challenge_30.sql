SELECT
b.seat_no,
ROUND(AVG(t.amount), 2) AS avg_amount_per_seat
FROM boarding_passes AS b
LEFT OUTER JOIN ticket_flights AS t
ON b.ticket_no = t.ticket_no
AND b.flight_id = t.flight_id
GROUP BY b.seat_no
ORDER BY avg_amount_per_seat DESC