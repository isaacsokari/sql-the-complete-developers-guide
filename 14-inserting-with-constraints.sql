-- this fails
-- for some reason mysql defaults the current_status to 'employed'
INSERT INTO users (full_name)
VALUES ('Mister Man')

-- this passes
-- INSERT INTO users (full_name, current_status)
-- VALUES ('Mister Man', 'unemployed')