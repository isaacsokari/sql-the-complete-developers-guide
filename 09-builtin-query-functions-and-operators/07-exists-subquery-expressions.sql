-- SELECT first_name, last_name
-- FROM customers
-- WHERE email = 'max@test.com';

-- to check if a field exists
-- it returns a boolean or 1 or 0 
-- it is more efficient as it stops once a value is found
-- SELECT EXISTS(
--   SELECT first_name, last_name
--   FROM customers
--   WHERE email = 'max@test.com'
-- );

-- find the order id of a customer with an email given
SELECT o.id
FROM orders AS o
WHERE EXISTS(
  SELECT c.email
  FROM customers AS c
  WHERE o.customer_id = c.id AND c.email = 'manu@test.com'
);