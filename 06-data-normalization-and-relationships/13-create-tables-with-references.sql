-- note the table creation order matters, as you can't add a nonexistent table's data as a Foreign Key
CREATE TABLE cities (
  id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  -- id SERIAL PRIMARY KEY, -- postgres
  name VARCHAR(300)
);

CREATE TABLE addresses (
  id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  -- id SERIAL PRIMARY KEY, -- postgres
  street VARCHAR(300) NOT NULL,
  house_number VARCHAR(50) NOT NULL,
  city_id INT NOT NULL
);

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  -- id SERIAL PRIMARY KEY, -- postgres
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  email VARCHAR(300) NOT NULL,
  -- we can also remove id as it's the primary key that's referenced
  address_id INT,
  FOREIGN KEY (address_id) REFERENCES addresses (id) ON DELETE RESTRICT -- mysql
  -- address_id INT REFERENCES addresses (id) ON DELETE RESTRICT -- postgres
);