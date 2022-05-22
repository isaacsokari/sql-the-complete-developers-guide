CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL
  -- ...
);

CREATE TABLE users_friends (
  user_id INT REFERENCES users ON DELETE CASCADE,
  friend_id INT REFERENCES users ON DELETE CASCADE,
  -- this prevents having 2 rows for the same user and friend
  -- users 1 and 2 as friends would have been added as 1,2 and 2,1 without it
  CHECK (user_id < friend_id), 
  PRIMARY KEY (user_id, friend_id)
);