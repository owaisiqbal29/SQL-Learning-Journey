-- The WHERE clause helps filter rows based on specific conditions.
-- It allows us to extract only the records that meet the criteria we define.

USE parks_and_recreation;

-- Filter rows where the first name is 'Leslie'
SELECT * FROM employee_salary
WHERE first_name = 'Leslie';

-- Filter rows where the occupation is 'Entrepreneur'
SELECT * FROM employee_salary
WHERE occupation = 'Entrepreneur';

-- Find employees with a salary exactly equal to 50000
SELECT * FROM employee_salary
WHERE salary = 50000;

-- Find employees with a salary greater than 50000
SELECT * FROM employee_salary
WHERE salary > 50000;

-- Find employees with a salary greater than or equal to 50000
SELECT * FROM employee_salary
WHERE salary >= 50000;

-- Find employees with a salary less than or equal to 50000
SELECT * FROM employee_salary
WHERE salary <= 50000;

-- Filter rows where gender is 'Female'
SELECT * FROM employee_demographics
WHERE gender = 'Female';

-- Filter rows where gender is not 'Male'
SELECT * FROM employee_demographics
WHERE gender != 'Male';

-- Find employees born after January 1, 1985
SELECT * FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- Show all unique birth dates
SELECT DISTINCT birth_date
FROM employee_demographics;

-- Find employees born on August 28, 1962
SELECT * FROM employee_demographics
WHERE birth_date = '1962-08-28';

-- Logical Operators: AND, OR, NOT
-- These help combine multiple conditions in a WHERE clause

-- AND: Returns rows only when both conditions are true
SELECT * FROM employee_demographics
WHERE gender = 'Male' AND age = 36;

SELECT * FROM employee_demographics
WHERE first_name = 'Jerry' AND age > 50;

SELECT * FROM employee_demographics
WHERE last_name = 'Wyatt' AND birth_date = '1985-07-26';

-- OR: Returns rows when at least one condition is true
SELECT * FROM employee_demographics
WHERE gender = 'Female' OR age < 25;

-- Filter rows where occupation is 'Nurse' or salary is 60000
SELECT * FROM employee_salary
WHERE occupation = 'Nurse' OR salary = 60000;

-- NOT: Reverses the condition
-- Returns rows where gender is not 'Male'
SELECT * FROM employee_demographics
WHERE NOT gender = 'Male';

-- Combined conditions using AND and OR
SELECT * FROM employee_demographics
WHERE (gender = 'Female' AND age > 25) OR (gender = 'Male' AND age < 30);

-- LIKE operator: Used to search for patterns in text
-- % means any number of characters, _ means a single character

-- Exact match: first name is 'Jerry'
SELECT * FROM employee_demographics
WHERE first_name = 'Jerry';

-- Partial match: first name is 'Jer' (exact string, not a pattern)
SELECT * FROM employee_demographics
WHERE first_name = 'Jer';

-- Pattern match: first name starts with 'Jer'
SELECT * FROM employee_demographics
WHERE first_name LIKE 'Jer%';

-- Pattern match: gender starts with 'Fem'
SELECT * FROM employee_demographics
WHERE gender LIKE 'Fem%';

-- Occupation starts with 'Office'
SELECT * FROM employee_salary
WHERE occupation LIKE 'Office%';

-- Occupation contains 'anag' anywhere in the word
SELECT * FROM employee_salary
WHERE occupation LIKE '%anag%';

-- Last name contains 'prene'
SELECT * FROM employee_salary
WHERE last_name LIKE '%prene%';

-- Last name starts with 'K' followed by exactly 4 characters
SELECT * FROM employee_salary
WHERE last_name LIKE 'K____';

-- Gender starts with 'Fe' followed by exactly 4 characters
SELECT * FROM employee_demographics
WHERE gender LIKE 'Fe____';

-- First name starts with 'Do' followed by exactly 3 characters
SELECT * FROM employee_demographics
WHERE first_name LIKE 'Do___';

-- First name starts with 'a' followed by at least 3 characters
SELECT * FROM employee_demographics
WHERE first_name LIKE 'a___%';