-- SELECT booking_date, amount_tipped, SUM(amount_tipped) OVER ()
-- FROM bookings;

SELECT booking_date, amount_tipped, SUM(amount_tipped) OVER (PARTITION BY booking_date)
FROM bookings;