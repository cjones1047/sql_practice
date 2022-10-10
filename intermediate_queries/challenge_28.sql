SELECT
bp.seat_no,
COUNT(*) AS no_of_bookings
FROM boarding_passes AS bp
LEFT OUTER JOIN seats AS s
ON bp.seat_no = s.seat_no
GROUP BY bp.seat_no
ORDER BY no_of_bookings DESC;

SELECT
RIGHT(bp.seat_no, 1) AS line,
COUNT(*) AS no_of_bookings
FROM boarding_passes AS bp
LEFT OUTER JOIN seats AS s
ON bp.seat_no = s.seat_no
GROUP BY line
ORDER BY no_of_bookings DESC