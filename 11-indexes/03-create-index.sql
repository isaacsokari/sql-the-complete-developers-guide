-- to create an index after a table has been created
-- this is a simple single-column index
-- CREATE INDEX salaryidx ON users (salary);

-- to create a UNIQUE index
CREATE UNIQUE INDEX salaryidx ON users (salary);

-- to drop an index simply use DROP INDEX <index-name>
-- DROP INDEX salaryidx;