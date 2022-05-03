-- mysql syntax
CREATE TABLE `users` (
  full_name VARCHAR(200),
  yearly_salary INT,
  current_status ENUM('employed', 'unemployed', 'self-employed') -- mysql enum syntax 
);

-- postgres syntax
CREATE TYPE employment_status AS ENUM('employed', 'unemployed', 'self-employed');

CREATE TABLE "users" (
  full_name VARCHAR(200),
  yearly_salary INT,
  current_status employment_status
);
