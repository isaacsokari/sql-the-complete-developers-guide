-- extracts month from last checkin
-- SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
-- FROM memberships;

-- extracts day from last checkin
-- SELECT EXTRACT(DAY FROM last_checkin), last_checkin
-- FROM memberships;

-- extracts minute from last checkin
-- SELECT EXTRACT(MINUTE FROM last_checkin), last_checkin
-- FROM memberships;

-- extracts weekday from timedate

-- postgres 
-- 0-6, Sunday - Saturday using DOW
-- SELECT EXTRACT(DOW FROM last_checkin), last_checkin
-- FROM memberships;
-- 1-7, Sunday - Saturday using ISODOW
-- SELECT EXTRACT(ISODOW FROM last_checkin), last_checkin
-- FROM memberships;

-- mysql
-- 0-6 0 = Monday ... 6 = Sunday
-- SELECT WEEKDAY(last_checkin), last_checkin
-- FROM memberships;

-- mysql only 
-- SELECT CONVERT (last_checkin, DATE) AS date, CONVERT (last_checkin, TIME) AS time;
-- FROM memberships;

-- postgres
SELECT last_checkin::TIMESTAMP::DATE AS date, last_checkin::TIMESTAMP::TIME AS time
FROM memberships;
