-- this should work and the R&D building_id should become NULL
-- DELETE FROM company_buildings
-- WHERE id = 2;

-- this should set employees with team_id 2 to team_id 1
-- DELETE FROM teams
-- WHERE id = 2;

-- this should delete a whole employee and remove records from the intermediate projects_employees table and intranet_accounts table
DELETE FROM employees
WHERE id = 1;