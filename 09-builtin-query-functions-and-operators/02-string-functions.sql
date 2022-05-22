-- mysql and postgres
-- SELECT CONCAT(first_name, ' ', last_name) AS name
-- FROM memberships;

-- postgres only 
-- SELECT first_name || ' ' || last_name
-- FROM memberships;

-- you can concat a string and an integer
-- SELECT CONCAT('$ ', price) AS price
-- FROM memberships;

-- you can filter using string functions
SELECT * FROM memberships
WHERE LENGTH(last_name) < 4;
