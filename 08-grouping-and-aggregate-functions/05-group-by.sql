-- this should fail as the booking_date isn't an aggregated column
-- SELECT booking_date, SUM(num_guests)
-- FROM bookings;

-- this works by grouping similar booking dates
-- SELECT booking_date, SUM(num_guests)
-- FROM bookings
-- GROUP BY booking_date;

-- using group by with joins
-- SELECT name, SUM(num_guests)
-- FROM payment_methods AS p
-- INNER JOIN bookings AS b ON p.id = b.payment_id
-- GROUP BY p.name;

-- how many guests, their payment methods and the dates they came in
-- SELECT p.name, b.booking_date, SUM(b.num_guests)
-- FROM payment_methods AS p
-- INNER JOIN bookings AS b ON p.id = b.payment_id
-- GROUP BY p.name, b.booking_date;

-- adding more AGGREGATE FUNCTIONS
SELECT p.name, b.booking_date, SUM(b.num_guests), ROUND(AVG(b.amount_tipped), 2)
FROM payment_methods AS p
INNER JOIN bookings AS b ON p.id = b.payment_id
GROUP BY p.name, b.booking_date;