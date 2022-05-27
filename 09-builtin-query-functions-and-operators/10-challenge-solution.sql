SELECT weekday_num,
  CASE WHEN weekday_num = 1 THEN 'Monday'
      WHEN weekday_num = 2 THEN 'Tuesday'
      WHEN weekday_num = 3 THEN 'Wednesday'
      WHEN weekday_num = 4 THEN 'Thursday'
      WHEN weekday_num = 5 THEN 'Friday'
      WHEN weekday_num = 6 THEN 'Saturday'
      ELSE 'Sunday'
  END
FROM ( 
  -- mysql
  -- SELECT WEEKDAY(last_checkin) + 1 AS weekday_num
  -- postgres
  SELECT EXTRACT(DOW FROM last_checkin) AS weekday_num
  FROM memberships
-- remember to add alias to subqueries referenced in FROM
-- so your db knows how to reference it
) AS weekday_numbers;