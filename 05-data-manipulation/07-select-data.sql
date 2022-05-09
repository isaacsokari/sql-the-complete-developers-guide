-- read all columns
-- SELECT * FROM sales;

-- read specific COLUMNS
-- SELECT 
--   date_created,
--   customer_name,
--   product_name,
--   volume
-- FROM sales;

-- SELECT commands return a RESULT set

-- alias specific COLUMNS using AS
SELECT 
  date_created,
  customer_name,
  product_name,
  volume AS total_sales,
  -- you can also perfom calculations or put in literals
  -- volume /1000 AS total_sales
  -- 'Some text' AS note
FROM sales;
