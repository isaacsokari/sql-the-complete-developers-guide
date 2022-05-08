-- CREATE DATABASE sales_db;

CREATE TABLE sales (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  id SERIAL PRIMARY KEY, -- postgres
  date_created DATE DEFAULT (CURRENT_DATE),
  date_fulfilled DATE,
  customer_name VARCHAR(300) NOT NULL,
  product_name VARCHAR(300) NOT NULL,
  volume NUMERIC(10,3) NOT NULL CHECK (volume >= 0),
  is_recurring BOOLEAN DEFAULT FALSE,
  is_disputed BOOLEAN DEFAULT FALSE
)