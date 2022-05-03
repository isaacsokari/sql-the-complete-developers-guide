INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Learning Inc', '12 Education Street, Bermuda', 0.69, TRUE);

INSERT INTO employers (company_name, company_address, yearly_revenue)
-- is_hiring is omitted so the default value is used
VALUES ('Tech Inc', '69 Technology Street, New York', 6.9);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Some Food Company', '12 Food Street, London', 4.2, TRUE);

INSERT INTO conversations (user_name, employer_name, message)
-- date_sent is omitted so the default value is used
VALUES ('John Doe', 'Learning Inc', 'Hey, your company seems interesting')

-- time is stored in UTC timezone
-- converted to it when saved, and converted to the clients timezone when read