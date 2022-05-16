-- SELECT * FROM sales
-- WHERE date_created > '2021-11-01' AND date_created < '2022-05-01';

-- SELECT * FROM sales
-- WHERE date_created BETWEEN '2021-11-01' AND '2022-05-01';

-- PS: BETWEEN includes the values
-- i.e. 
-- WHERE date_created >= '2021-11-01' AND date_created <= '2022-05-01';

-- SELECT * FROM sales
-- WHERE volume > 1000 AND volume < 100000;

SELECT * FROM sales
WHERE volume BETWEEN 1000 AND 100000;