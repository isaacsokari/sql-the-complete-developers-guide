-- SELECT * FROM sales
-- WHERE date_fulfilled IS NOT NULL;

-- check if date_fulfilled is <= 5 days from the date_created
-- SELECT * FROM sales
-- WHERE date_fulfilled - date_created <= 5;

-- for timestamps we use the EXTRACT function
SELECT * FROM sales
WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;

