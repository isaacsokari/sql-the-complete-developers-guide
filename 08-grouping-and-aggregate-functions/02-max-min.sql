-- find the max num_seats
-- SELECT MAX(num_seats) FROM tables;

-- find the min num_seats
-- SELECT MIN(num_seats) FROM tables;

-- Note the * can't work with MAX and MIN when the columns have different data types

-- find the max bill and max tip at the same time
-- SELECT MAX(amount_billed), MAX(amount_tipped) FROM bookings;
-- and using aliases
-- SELECT MAX(amount_billed) AS max_billed, MAX(amount_tipped) AS max_tipped FROM bookings;

-- MAX and MIN also work with letters, just like ORDER BY
-- SELECT MIN(category), MAX(category) FROM tables;
-- and dates
SELECT MIN(booking_date), MAX(booking_date) FROM bookings;

