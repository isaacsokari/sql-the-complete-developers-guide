-- insert the basic data first, i.e. the table that doesn't reference another.
-- INSERT INTO cities (name)
-- VALUES ('Berlin'), ('New York'), ('London'), ('Lagos');

-- then insert the data for tables that reference created tables
-- INSERT INTO addresses (street, house_number, city_id)
-- VALUES ('Teststreet', '8A', 3),
-- ('Some street', '10', 1),
-- ('Teststreet', '1', 3),
-- ('My street', '101', 2);

-- carry on with the inserts
INSERT INTO users (first_name, last_name, email, address_id)
VALUES 
('John', 'Doe', 'johndoe@test.com', 2),
('Jane', 'Donut', 'janedonut@test.com', 4),
('Manuel', 'Lorenz', 'manuellorenz@test.com', 3);
