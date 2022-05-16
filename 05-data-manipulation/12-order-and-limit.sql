-- SELECT * FROM sales
-- -- defaults to ASC
-- ORDER BY volume DESC
-- -- only return 10 values
-- LIMIT 10;

-- SELECT * FROM sales
-- ORDER BY volume
-- LIMIT 10;

-- combine with where, note that the order matters
-- SELECT * FROM sales
-- WHERE is_disputed IS FALSE
-- ORDER BY volume
-- LIMIT 10;

-- use OFFSET to skip n values
SELECT * FROM sales
ORDER BY volume
LIMIT 10
OFFSET 3;