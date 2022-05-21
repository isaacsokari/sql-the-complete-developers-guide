-- without aliases
-- SELECT * 
-- FROM users
-- INNER JOIN addresses
-- ON address_id = addresses.id;

-- with aliases
-- SELECT * 
-- FROM users AS u
-- INNER JOIN addresses AS a
-- ON u.address_id = a.id;

-- select specific columns
-- you don't need to specify table names/aliases of unique columns
-- SELECT u.id, first_name, last_name, street, house_number, city_id 
-- FROM users AS u
-- INNER JOIN addresses AS a
-- ON u.address_id = a.id;

-- you can perform multiple inner joins
SELECT u.id, first_name, last_name, street, house_number, c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities AS c ON a.city_id = c.id;