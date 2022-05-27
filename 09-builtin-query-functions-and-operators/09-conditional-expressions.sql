-- note the order matters,
-- the first matching condition wins
-- so use explicit operators

SELECT amount_billed,
--   CASE WHEN amount_billed > 30 THEN 'Good Day'
--       WHEN amount_billed > 15 THEN 'Normal Day'
--       ELSE 'Bad Day'
--   END AS status

-- explicit cases
-- equivalent to the above, but unmistakeable
  CASE WHEN amount_billed > 15 AND amount_billed <= 30 THEN 'Good Day'
      WHEN amount_billed > 30 THEN 'Normal Day'
      ELSE 'Bad Day'
  END AS status
FROM orders;

