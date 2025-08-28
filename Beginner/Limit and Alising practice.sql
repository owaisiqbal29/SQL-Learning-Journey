-- LIMIT Clause
-- The LIMIT clause is used to control how many rows are returned in the result set.

-- Return the first 3 rows from the employee demographics table
SELECT * 
FROM parks_and_recreation.employee_demographics 
LIMIT 3;

-- Return the first 5 rows from the employee salary table
SELECT * 
FROM parks_and_recreation.employee_salary 
LIMIT 5;

-- Return the top 3 oldest employees
SELECT * 
FROM parks_and_recreation.employee_demographics 
ORDER BY age DESC 
LIMIT 3;

-- Return the top 5 highest-paid employees
SELECT * 
FROM parks_and_recreation.employee_salary 
ORDER BY salary DESC 
LIMIT 5;

-- Return the first 10 rows sorted by occupation
SELECT * 
FROM parks_and_recreation.employee_salary 
ORDER BY occupation 
LIMIT 10;

-- Return the first 10 departments sorted by name
SELECT * 
FROM parks_and_recreation.parks_departments 
ORDER BY department_name 
LIMIT 10;

-- Return 4 rows starting from the 4th record (offset 3), sorted by birth date
SELECT * 
FROM parks_and_recreation.employee_demographics 
ORDER BY birth_date ASC 
LIMIT 3, 4;

-- Return 3 rows starting from the 3rd record (offset 2), sorted by age descending
SELECT * 
FROM parks_and_recreation.employee_demographics 
ORDER BY age DESC 
LIMIT 2, 3;

-- Aliasing and HAVING Clause
-- Aliasing is used to rename columns in the output for clarity.
-- The HAVING clause filters grouped results based on aggregate functions.

-- Show average age by gender, only where average age is greater than 40
SELECT gender, AVG(age) AS Avg_age 
FROM parks_and_recreation.employee_demographics 
GROUP BY gender 
HAVING AVG(age) > 40;

-- View all employee salary records
SELECT * 
FROM parks_and_recreation.employee_salary;

-- Show average salary by occupation, only where average salary is greater than 55
SELECT occupation, AVG(salary) AS Avg_Employee_Salary 
FROM parks_and_recreation.employee_salary 
GROUP BY occupation 
HAVING AVG(salary) > 55;

-- Rename department_name column and sort departments alphabetically
SELECT department_name AS Employee_Department_name 
FROM parks_and_recreation.parks_departments 
GROUP BY department_name 
ORDER BY department_name ASC;