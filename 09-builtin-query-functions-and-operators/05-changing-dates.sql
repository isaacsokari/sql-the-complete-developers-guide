-- using the + or - operators to increase dates works in postgres
-- but in mysql it converts the DATE to a string

-- increase date by 7 days
-- postgres
-- SELECT membership_start + 7, membership_start
-- FROM memberships;

-- mysql
-- SELECT DATE_ADD(membership_start, INTERVAL 7 DAY), membership_start
-- FROM memberships;

-- add months 
-- in postgres
-- SELECT membership_start + INTERVAL '7 MONTHS', membership_start -- returns TIMESTAMP
-- to extract just the date
-- SELECT (membership_start + INTERVAL '7 MONTHS')::TIMESTAMP::DATE, membership_start
-- in mysql
-- SELECT DATE_ADD(membership_start, INTERVAL 7 MONTH), membership_start
-- FROM memberships;

-- add years
-- in postgres
-- SELECT membership_start + INTERVAL '7 YEARS', membership_start -- returns TIMESTAMP
-- to extract just the date
SELECT (membership_start + INTERVAL '7 YEARS')::TIMESTAMP::DATE, membership_start
-- in mysql
-- SELECT DATE_ADD(membership_start, INTERVAL 7 YEAR), membership_start
FROM memberships;