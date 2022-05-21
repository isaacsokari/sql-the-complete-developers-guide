-- Unlike INNER JOIN which only returns rows that meet the ON condition, LEFT and RIGHT [ OUTER ] JOINs return all rows from the LEFT or RIGHT tables, with null values for the missing data.
-- LEFT table === table to the LEFT of the LEFT JOIN 
-- e.g. addresses below
-- RIGHT table === table to the RIGHT of the RIGHT JOIN 
-- e.g. users below

-- SELECT *
-- FROM addresses AS A
-- LEFT JOIN users AS u ON a.id = u.address_id;

SELECT *
FROM addresses AS A
LEFT JOIN users AS u ON a.id = u.address_id
-- the new left table here is the result set of the above
-- it's a general rule, joins use the above result sets
LEFT JOIN cities AS c ON c.id = a.city_id;

-- RIGHT JOINs are basically same as LEFT JOINs so they are barely used, they can be used if you like though