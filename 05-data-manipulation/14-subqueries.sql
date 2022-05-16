-- you can run commands from the query result table of a query from another
-- e.g

-- SELECT customer_name, product_name
-- FROM
-- ( SELECT * FROM sales
-- WHERE volume > 1000 ) AS base_result;


-- create a view using a common subquery
-- NOTE that views a stored PERMANENTLY by the DBMS, they can be deleted though.
-- IT does not store the result of the query but the query itself.
-- IT re-executes the query everytime the view is used
-- CREATE VIEW base_result AS SELECT * FROM sales
-- WHERE volume > 1000;

SELECT customer_name, product_name
FROM base_result;

-- we can also insert the result of a subquery 
-- INSERT INTO top_sales (...)
-- SELECT ...