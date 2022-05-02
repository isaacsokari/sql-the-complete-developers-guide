-- talently database could have been wrapped in double quotes or backticks(only on mysql)

CREATE DATABASE If NOT EXISTS talently;

-- the above can't be used on postgres, on mysql it lets safely create a db, no error if a db exists

-- CREATE DATABASE talently;

-- PS: `IF NOT EXISTS` can be used when creating tables on both mysql and postgres