-- find all customers that have placed at least one order and return their emails

-- this works sha but isn't scalable as it can get long
-- SELECT DISTINCT c.email FROM customers AS c
-- INNER JOIN orders AS o 
-- ON o.customer_id = c.id;

-- (a)
-- SELECT id
-- FROM customers
-- WHERE first_name = 'Max' OR
-- first_name = 'Manu';

-- (b) same as (a)
-- SELECT id
-- FROM customers
-- WHERE first_name IN('Max', 'Manu');

-- (c) equivalent to != for each in (a) and (b)
-- SELECT id
-- FROM customers
-- WHERE first_name NOT IN('Max', 'Manu');

-- solving the original problem
SELECT email
FROM customers
WHERE id IN(
  -- both work
  -- SELECT DISTINCT customer_id FROM orders
  SELECT customer_id FROM orders
);