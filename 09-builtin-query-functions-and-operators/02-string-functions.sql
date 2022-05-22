-- mysql and postgres
-- SELECT CONCAT(first_name, ' ', last_name) AS name
-- FROM memberships;

-- postgres only 
-- SELECT first_name || ' ' || last_name
-- FROM memberships;

-- you can concat a string and an integer
SELECT CONCAT('$ ', price) AS price
FROM memberships;