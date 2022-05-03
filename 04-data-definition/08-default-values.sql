CREATE TABLE employers (
  company_name VARCHAR(200),
  company_address VARCHAR(300),
  -- yearly_revenue FLOAT(5, 2), -- Approximation, Allowed: 123.12, 12.1, Not Allowed: 1234.43, 1.234 -- Precision and scale are optional
  -- yearly_revenue DECIMAL(5,2), -- Exact value, Allowed 123.12, 12343.12, Not Allowed: 123.123 -- Precision >= specified, scale is exact.
  yearly_revenue NUMERIC(5,2), -- Exact value, Allowed 123.12, Not Allowed: 123.123
  is_hiring BOOLEAN DEFAULT FALSE
)

CREATE TABLE conversations (
  user_name VARCHAR(200),
  employer_name VARCHAR(200),
  message TEXT, -- accept text values of any length
  date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- date + time
);