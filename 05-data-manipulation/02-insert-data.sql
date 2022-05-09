-- INSERT INTO sales ( 
--   customer_name,
--   product_name,
--   volume,
--   is_recurring
--  )
-- VALUES (
--   'John Doe',
--   'Some Book',
--   42.00,
--   TRUE
-- )

INSERT INTO sales ( 
  date_fulfilled,
  customer_name,
  product_name,
  volume,
  is_recurring,
  is_disputed
 )
VALUES (
  NULL,
  'Learner One',
  'Course Bundle',
  42.00,
  FALSE,
  FALSE
), (
  '2022-04-10',
  'Big Oil Inc',
  'Trucks',
  400000.00,
  FALSE,
  TRUE
)