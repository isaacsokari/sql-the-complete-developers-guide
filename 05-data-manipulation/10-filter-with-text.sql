-- select sales by "John Doe"
-- SELECT * FROM sales
-- WHERE customer_name = 'John Doe';

-- select sales not by "John Doe"
-- SELECT * FROM sales
-- WHERE customer_name <> 'John Doe';

SELECT * FROM sales
WHERE customer_name > 'Company A';
-- the above query checks from the first character, not the whole string

