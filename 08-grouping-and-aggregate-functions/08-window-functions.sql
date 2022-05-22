-- SELECT booking_date, amount_tipped, SUM(amount_tipped) OVER ()
-- FROM bookings;

-- only show sum of tips on the same day
-- SELECT booking_date, amount_tipped, SUM(amount_tipped) OVER (PARTITION BY booking_date)
-- FROM bookings;

-- define what column to order results by
-- here we're sorting by amount_billed
-- this returns an incremental sum (aggregation)
-- SELECT booking_date, amount_tipped, SUM(amount_tipped)
-- OVER (PARTITION BY booking_date ORDER BY amount_billed)
-- FROM bookings;

-- rank values using RANK
SELECT booking_date, amount_tipped, RANK()
OVER (PARTITION BY booking_date ORDER BY amount_tipped DESC)
FROM bookings;
