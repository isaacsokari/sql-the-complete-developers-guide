-- SELECT * 
-- FROM users 
-- WHERE salary > 12000;

-- to see details of how the query runs a.k.a QUERY PLAN
-- EXPLAIN
-- SELECT * 
-- FROM users 
-- WHERE salary > 12000;

-- to see the plan and actually execute the command uses
EXPLAIN ANALYZE
SELECT * 
FROM users 
WHERE salary > 12000;