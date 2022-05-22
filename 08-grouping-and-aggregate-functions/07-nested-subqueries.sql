-- find the booking_date with the minimum total bill
SELECT booking_date 
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) = 
(
  -- find the minimum total bill for a calendar day
  SELECT MIN(daily_sum)
  FROM (
    SELECT booking_date, SUM(amount_billed) AS daily_sum
    FROM bookings
    GROUP BY booking_date
  ) AS daily_table -- we have to alias subquery results when running aggrifations on them
);