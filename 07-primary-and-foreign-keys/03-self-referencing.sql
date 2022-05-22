CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  -- the supervisor_id can be null
  -- it references itself omitting the primary key column
  supervisor_id INT REFERENCES employees ON DELETE SET NULL
)