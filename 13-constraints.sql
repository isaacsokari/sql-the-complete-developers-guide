-- just an example of how it looks
-- CREATE TABLE users {
--   full_name VARCHAR(200) NOT NULL;
-- }

ALTER TABLE users
-- postgres
-- ALTER COLUMN full_name SET NOT NULL, 
-- ALTER COLUMN current_status SET NOT NULL;

-- mysql
MODIFY COLUMN full_name VARCHAR(200) NOT NULL,
MODIFY COLUMN current_status ENUM('employed', 'unemployed', 'self-employed') NOT NULL;