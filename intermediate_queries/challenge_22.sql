SELECT
COUNT(*) AS no_of_tickets_sold
, CASE
WHEN total_amount < 20000 THEN 'low priced bookings (< $20,000)'
WHEN total_amount > 20000 AND total_amount < 150000 THEN 'mid priced bookings (between $20,000 and $150,000)'
WHEN total_amount >= 150000 THEN 'high priced bookings (> or equal to $150,000)'
ELSE 'no booking price listed'
END AS ticket_price_ranges
FROM bookings
GROUP BY ticket_price_ranges
ORDER BY no_of_tickets_sold DESC;

SELECT
COUNT(*) AS no_of_departures
, CASE
WHEN EXTRACT(MONTH FROM scheduled_departure) IN(12, 1, 2) THEN 'Winter'
WHEN EXTRACT(MONTH FROM scheduled_departure) IN(3, 4, 5) THEN 'Spring'
WHEN EXTRACT(MONTH FROM scheduled_departure) IN(6, 7, 8) THEN 'Summer'
ELSE 'Fall'
END AS season
FROM flights
GROUP BY season
ORDER BY no_of_departures ASC