CREATE TABLE employees (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  id SERIAL PRIMARY KEY, -- postgres
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  -- email VARCHAR(200) REFERENCES intranet_accounts (email) ON DELETE SET NULL -- can be omitted as email is the primary key
  email VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE intranet_accounts (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  id SERIAL PRIMARY KEY, -- postgres
  email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE, -- postgres
  password VARCHAR(200) NOT NULL
);