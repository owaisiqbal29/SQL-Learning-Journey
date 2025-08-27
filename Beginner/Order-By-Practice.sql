-- ORDER BY is used to sort the result set in ascending (ASC) or descending (DESC) order.
-- By default, ORDER BY sorts in ascending order unless specified otherwise.

-- View all employee demographic records
SELECT * FROM parks_and_recreation.employee_demographics;

-- Sort employee demographics by first name (ascending by default)
SELECT * FROM parks_and_recreation.employee_demographics
ORDER BY first_name;

-- Sort employee demographics by last name
SELECT * FROM parks_and_recreation.employee_demographics
ORDER BY last_name;

-- Sort department records by department name
SELECT * FROM parks_and_recreation.parks_departments
ORDER BY department_name;

-- View employee demographics again for reference
SELECT * FROM parks_and_recreation.employee_demographics;

-- View all employee salary records
SELECT * FROM parks_and_recreation.employee_salary;

-- Select and sort first names in ascending order explicitly
SELECT first_name
FROM parks_and_recreation.employee_demographics
ORDER BY first_name ASC;

-- Select and sort last names in ascending order
SELECT last_name
FROM parks_and_recreation.employee_demographics
ORDER BY last_name ASC;

-- Select and sort occupations in descending order
SELECT occupation
FROM parks_and_recreation.employee_demographics
ORDER BY occupation DESC;

-- View all department records again
SELECT * FROM parks_and_recreation.parks_departments;

-- Select and sort department names in ascending order
SELECT department_name
FROM parks_and_recreation.parks_departments
ORDER BY department_name ASC;

-- Sort employee demographics by column 5 (likely age or birth_date) and then column 4 (possibly gender)
-- Note: Using column numbers is allowed but not recommended for clarity
SELECT * FROM parks_and_recreation.employee_demographics
ORDER BY 5, 4;