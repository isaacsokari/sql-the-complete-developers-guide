-- you can filter based on data any of the tables

-- this filters users that stay in Berlin
-- SELECT u.id, first_name, last_name, street, house_number, c.name AS city_name
-- FROM users AS u
-- INNER JOIN addresses AS a ON u.address_id = a.id
-- INNER JOIN cities AS c ON a.city_id = c.id
-- -- WHERE c.name = 'Berlin';
-- WHERE c.id = 1;

-- this filters users in Berlin or New York
-- SELECT u.id, first_name, last_name, street, house_number, c.name AS city_name
-- FROM users AS u
-- INNER JOIN addresses AS a ON u.address_id = a.id
-- INNER JOIN cities AS c ON a.city_id = c.id
-- WHERE c.id = 1 OR c.id = 2;

-- you can also order by any of the columns
SELECT u.id, first_name, last_name, street, house_number, c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities AS c ON a.city_id = c.id
WHERE c.id = 1 OR c.id = 2
ORDER BY u.id DESC;