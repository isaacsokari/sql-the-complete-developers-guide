-- check the average amount tipped for bills above 20
-- SELECT ROUND(AVG(amount_tipped), 2) FROM bookings
-- WHERE amount_billed > 20;

-- check the average amount tipped for bills above 20 and with > 2 guests
-- SELECT ROUND(AVG(amount_tipped), 2) FROM bookings
-- WHERE amount_billed > 20 AND num_guests > 2;

-- check max number of guests against number of seats to see if we were overbooked
-- my attempt
-- SELECT MAX(b.num_guests) AS max_num_guests, MAX(t.num_seats) AS max_num_seats
-- FROM bookings AS b
-- JOIN tables AS t ON t.id = b.table_id;

-- check max number of guests for tables with max 4 seats that only paid with cash
-- my attempt
SELECT MAX(b.num_guests) AS max_num_guests, MAX(t.num_seats) AS max_num_seats
FROM bookings AS b
JOIN tables AS t ON t.id = b.table_id
JOIN payment_methods AS p ON b.payment_id = p.id
WHERE t.num_seats <= 4 AND p.id = 1;