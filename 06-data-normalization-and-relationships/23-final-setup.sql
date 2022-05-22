CREATE TABLE projects (
  id SERIAL PRIMARY KEY, -- postgres
  title VARCHAR(300) NOT NULL,
  deadline DATE
);

CREATE TABLE company_buildings (
  id SERIAL PRIMARY KEY, -- postgres
  name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
  id SERIAL PRIMARY KEY, -- postgres
  name VARCHAR(300) NOT NULL,
  building_id INT REFERENCES company_buildings ON DELETE SET NULL
);

CREATE TABLE employees (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  id SERIAL PRIMARY KEY, -- postgres
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  -- email VARCHAR(200) REFERENCES intranet_accounts (email) ON DELETE SET NULL -- can be omitted as email is the primary key
  email VARCHAR(200) UNIQUE NOT NULL,
  team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  id SERIAL PRIMARY KEY, -- postgres
  email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE, -- postgres
  password VARCHAR(200) NOT NULL
);

-- Intermediate table for n:n
CREATE TABLE projects_employees (
  id SERIAL PRIMARY KEY, -- postgres
  employee_id INT REFERENCES employees ON DELETE CASCADE,
  project_id INT REFERENCES projects ON DELETE CASCADE
)