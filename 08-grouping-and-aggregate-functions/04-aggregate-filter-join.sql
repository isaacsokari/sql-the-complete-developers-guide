-- check the average amount tipped for bills above 20
-- SELECT ROUND(AVG(amount_tipped), 2) FROM bookings
-- WHERE amount_billed > 20;

-- check the average amount tipped for bills above 20 and with > 2 guests
SELECT ROUND(AVG(amount_tipped), 2) FROM bookings
WHERE amount_billed > 20 AND num_guests > 2;