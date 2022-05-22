-- e.g. mathematical operators work in SQL just as normal programming languages
-- SELECT price * billing_frequency AS expected_revenue
-- FROM memberships;

-- CEIL()
-- FLOOR()
-- ROUND()
-- TRUNC() or TRUNCATE() -- truncate is mysql 

SELECT CEIL(consumption)
FROM memberships;