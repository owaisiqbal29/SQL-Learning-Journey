-- HAVING vs WHERE in SQL
-- The HAVING clause is used to filter grouped results based on aggregate functions.
-- The WHERE clause filters rows before grouping, while HAVING filters after grouping.

-- Example 1: Average age by gender, only showing groups with average age greater than 40
SELECT gender, AVG(age) AS average_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

-- Example 2: Average age by gender, excluding groups where average age equals 50
SELECT gender, AVG(age) AS average_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) != 50;

-- View all employee salary records
SELECT * FROM parks_and_recreation.employee_salary;

-- Example 3: Average salary by first name, showing only those above 50,000
SELECT first_name, AVG(salary) AS average_salary
FROM parks_and_recreation.employee_salary
GROUP BY first_name
HAVING AVG(salary) > 50000;

-- Example 4: Average salary by occupation, showing only those below 45,000
SELECT occupation, AVG(salary) AS average_salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation
HAVING AVG(salary) < 45000;

-- Example 5: Filter occupations containing 'manager' before grouping,
-- then show only those with average salary above 75,000
SELECT occupation, AVG(salary) AS average_salary
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;

-- View all employee demographic records
SELECT * FROM parks_and_recreation.employee_demographics;

-- Example 6: Average age by gender, excluding groups where average age equals 54
SELECT gender, AVG(age) AS average_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) != 54;

-- Example 7: Average salary by first name, showing only those with average salary >= 25,000
SELECT first_name, AVG(salary) AS average_salary
FROM parks_and_recreation.employee_salary
GROUP BY first_name
HAVING AVG(salary) >= 25000;