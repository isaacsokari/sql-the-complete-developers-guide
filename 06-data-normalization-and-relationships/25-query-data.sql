-- get all employees and their projects
-- my attempt
-- SELECT first_name, last_name, p.title, p.deadline FROM employees AS e
-- LEFT JOIN projects_employees ON projects_employees.employee_id = e.id
-- INNER JOIN projects AS p ON p.id  = projects_employees.project_id;

-- get all employees that are part of a specific team
-- SELECT e.id AS employee_id, e.first_name, e.last_name, t.name AS team_name
-- FROM employees AS e
-- INNER JOIN teams AS t ON t.id = e.team_id
-- WHERE t.id = 2; -- data analysts

-- get all employees in the building with id = 3
-- my attempt
SELECT e.id as employee_id, e.first_name, e.last_name, b.name AS building_name, b.id AS building_id
FROM employees AS e
LEFT JOIN teams AS t ON t.id = e.team_id
INNER JOIN company_buildings AS b ON b.id = t.building_id
WHERE b.id = 3;