-- this should fail as the booking_date isn't an aggregated column
-- SELECT booking_date, SUM(num_guests)
-- FROM bookings;

-- this works by grouping similar booking dates
SELECT booking_date, SUM(num_guests)
FROM bookings
GROUP BY booking_date;
