DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;

-- FOR MYSQL

-- CREATE TABLE `users` (
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   full_name VARCHAR(200) NOT NULL,
--   yearly_salary INT CHECK (yearly_salary > 0),
--   current_status ENUM('employed', 'unemployed', 'self-employed') -- mysql enum syntax 
-- );

-- CREATE TABLE employers (
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   company_name VARCHAR(200) NOT NULL,
--   company_address VARCHAR(300) NOT NULL,
--   yearly_revenue FLOAT CHECK (yearly_revenue > 0),
--   is_hiring BOOLEAN DEFAULT FALSE
-- );

-- CREATE TABLE conversations (
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   user_id INT NOT NULL,
--   employer_id INT NOT NULL,
--   message TEXT NOT NULL, -- accept text values of any length
--   date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- date + time
-- );

-- POSTGRES

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(200) NOT NULL,
  yearly_salary INT CHECK (yearly_salary > 0),
  -- employment status type already exists from `02-create-users-table.sql`
  current_status employment_status
);

CREATE TABLE employers (
  id SERIAL PRIMARY KEY,
  company_name VARCHAR(200) NOT NULL,
  company_address VARCHAR(300) NOT NULL,
  yearly_revenue FLOAT CHECK (yearly_revenue > 0),
  is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  employer_id INT NOT NULL,
  message TEXT NOT NULL, -- accept text values of any length
  date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- date + time
);