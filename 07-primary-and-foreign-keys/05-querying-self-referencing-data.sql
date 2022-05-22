-- get all employees
-- SELECT * 
-- FROM employees;

-- get all employees and their supervisor's names
SELECT e.first_name, e.last_name, s.first_name AS supervisor_first_name, s.last_name AS supervisor_last_name
FROM employees AS e
LEFT JOIN employees AS s ON s.id = e.supervisor_id;