-- it is CASE SENSITIVE in postgres,
-- for case insensitivity use ILIKE 

-- LIKE here is equivalent to =
-- SELECT first_name LIKE 'Max', first_name
-- FROM memberships;

-- using pattern matching
-- % means 0+ characters
-- _ means 1 chararacter

-- matches names that have 0+ letters before 'a', and have 0+ chars after 
-- SELECT first_name LIKE '%a%', first_name
-- FROM memberships;

-- this searches for 1 character then an o, and 0+ chars after
-- SELECT first_name LIKE '_o%', first_name
-- FROM memberships;

-- this searches for 2 characters then an o, and 0+ chars after
-- SELECT first_name LIKE '__o%', first_name
-- FROM memberships;

-- using like in a query with WHERE
-- SELECT first_name
-- FROM memberships
-- WHERE first_name LIKE 'J___';

-- to remove the case sensitivity in postgres
-- SELECT first_name
-- FROM memberships
-- WHERE first_name ILIKE 'j___';
