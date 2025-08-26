-- SELECT statements are used to work with column and specify what column you want to see from a database.
-- You can choose specific columns or use * to select all columns.

-- View all data from the employee_demographics table
SELECT * FROM parks_and_recreation.employee_demographics;

-- View all data from the employee_salary table
SELECT * FROM parks_and_recreation.employee_salary;

-- View all data from the parks_departments table
SELECT * FROM parks_and_recreation.parks_departments;

-- Select specific columns and perform a simple calculation
-- This adds 10 to each employee's age
SELECT first_name, last_name, age, age + 10 AS age_plus_10
FROM parks_and_recreation.employee_demographics;

-- View all data again from employee_salary (repetition for practice)
SELECT * FROM parks_and_recreation.employee_salary;

-- Use a logical comparison to check if salary equals 750000
-- This returns TRUE or FALSE for each row
SELECT first_name, last_name, salary, salary = 750000 AS is_salary_750k
FROM parks_and_recreation.employee_salary;

-- Select only first name and last name from employee_demographics
SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics;

-- Reminder: MySQL follows the standard math order of operations (PEMDAS)
-- Parentheses help make calculations clear and readable

-- View all data again from employee_demographics
SELECT * FROM parks_and_recreation.employee_demographics;

-- Add 10 to age using parentheses for clarity
SELECT first_name, last_name, age, (age + 10) AS future_age
FROM parks_and_recreation.employee_demographics;

-- Use DISTINCT to return only unique values from a column

-- Show all first names (may include duplicates)
SELECT first_name
FROM parks_and_recreation.employee_demographics;

-- Show only unique first names
SELECT DISTINCT first_name
FROM parks_and_recreation.employee_demographics;

-- Show only unique gender values
SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

-- View all data again from employee_demographics
SELECT * FROM parks_and_recreation.employee_demographics;

-- Show unique birth dates from employee_salary
SELECT DISTINCT birth_date
FROM parks_and_recreation.employee_salary;

-- Show unique ages from employee_demographics
SELECT DISTINCT age
FROM parks_and_recreation.employee_demographics;

-- Show unique birth dates from employee_demographics
SELECT DISTINCT birth_date
FROM parks_and_recreation.employee_demographics;

-- View all data again from employee_salary
SELECT * FROM parks_and_recreation.employee_salary;

-- Show unique department IDs from employee_salary
SELECT DISTINCT dept_id
FROM parks_and_recreation.employee_salary;