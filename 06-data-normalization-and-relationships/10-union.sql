-- a contrived example here that can be replaced by OR
-- SELECT * FROM users
-- WHERE id < 3
-- UNION
-- SELECT * FROM users
-- WHERE id > 5
-- ORDER BY id ASC;

-- this command below should result in an error because we have different column counts
-- SELECT * FROM users
-- UNION
-- SELECT * FROM addresses;

-- this command below works (as both result sets have 2 columns) and the UNION appends the streets as first_names
SELECT id, first_name FROM users
UNION
SELECT id, street FROM addresses;