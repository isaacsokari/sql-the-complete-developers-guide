-- calculate the latest stay of our gym members
-- it returns an INTERVAL data type in postgres but an INT in mysql
-- SELECT last_checkout - last_checkin
-- FROM memberships;

-- to get diff b/w TIMESTAMPS in mysql
-- returns an INT
-- SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
-- FROM memberships;

-- calculate membership duration (membership_start - membership_end)
-- returns result in DAYS
-- SELECT membership_end - membership_start
-- FROM memberships;

-- in mysql
-- SELECT DATEDIFF(membership_end, membership_start)
-- FROM memberships;

-- find days of active membership
-- mysql
-- SELECT DATEDIFF(NOW(), membership_start)
-- FROM memberships;
-- postgres
-- returns an INTERVAL
SELECT NOW() - membership_start
FROM memberships;