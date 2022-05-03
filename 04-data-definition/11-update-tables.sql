-- ALTER TABLE employers
-- ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT; -- postres

-- ALTER TABLE employers
-- MODIFY COLUMN yearly_revenue FLOAT; -- mysql;

ALTER TABLE employers
ALTER COLUMN is_hiring SET DEFAULT FALSE; -- postgres

ALTER TABLE conversations
ALTER COLUMN date_sent SET DEFAULT CURRENT_TIMESTAMP; -- postgres

-- ALTER TABLE employers
-- MODIFY COLUMN is_hiring BOOLEAN DEFAULT FALSE; -- mysql

-- ALTER TABLE conversations
-- MODIFY COLUMN date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP; -- mysql