-- find the total amount billed
-- SELECT SUM (amount_billed) AS total_billed FROM bookings;

-- find the average number of guests
-- SELECT AVG (num_guests) AS total_billed FROM bookings;
-- round up the result to 2 dps to look better
SELECT ROUND(AVG (num_guests), 2) AS total_billed FROM bookings;