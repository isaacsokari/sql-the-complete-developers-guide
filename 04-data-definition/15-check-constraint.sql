-- the CHECK constraint forces the user to use a value that passes some criteria

-- table creation would look like this
-- CREATE TABLE users (
--   full_name VARCHAR(200) NOT NULL,
--   yearly_salary INT CHECK (yearly_salary > 0)
--   -- tables can have check constraints too, not only columns
--   -- e.g. CHECK (yearly_salary < max_salary)
-- )

-- when altering a table, we add the constraints to the table, not a specific column 
-- constraints can be named

UPDATE users
SET yearly_salary = NULL
WHERE full_name = 'Unemployed Doe';

-- same for postgres and mysql
ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK(yearly_salary > 0);
;