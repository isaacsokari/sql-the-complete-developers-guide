-- SELECT * from sales 
-- WHERE volume > 1000;

-- SELECT * FROM sales
-- WHERE is_recurring IS TRUE;
-- WHERE is_recurring = 1;
-- or for false
-- WHERE is_recurring IS FALSE;
-- WHERE is_recurring = 0;

-- SELECT * FROM sales
-- WHERE 
-- (is_disputed IS TRUE) 
-- OR (volume > 5000);

SELECT * FROM sales
WHERE 
(is_disputed IS TRUE) 
AND (volume > 5000);