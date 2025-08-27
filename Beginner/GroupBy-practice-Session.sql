-- The GROUP BY clause is used to organize rows that share the same value in one or more columns.
-- It's commonly used with aggregate functions like COUNT, MIN, MAX, SUM, and AVG.

-- View all employee demographic records
SELECT * FROM parks_and_recreation.employee_demographics;

-- Group employees by gender
SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

-- Group employees by birth date
SELECT birth_date
FROM parks_and_recreation.employee_demographics
GROUP BY birth_date;

-- View all employee salary records
SELECT * FROM parks_and_recreation.employee_salary;

-- Group employees by occupation
SELECT occupation
FROM parks_and_recreation.employee_salary
GROUP BY occupation;

-- Group employees by salary amount
SELECT salary
FROM parks_and_recreation.employee_salary
GROUP BY salary;

-- Calculate average age for each gender group
SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

-- View employee demographics again for reference
SELECT * FROM parks_and_recreation.employee_demographics;

-- Find the maximum age in each gender group
SELECT gender, MAX(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

-- Attempt to calculate average birth date per gender
-- Note: Averaging dates may not be meaningful unless converted to years
SELECT gender, AVG(birth_date)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

-- View employee salary data again for reference
SELECT * FROM parks_and_recreation.employee_salary;

-- Find the minimum salary for each occupation
SELECT occupation, MIN(salary)
FROM parks_and_recreation.employee_salary
GROUP BY occupation;

-- Group occupations again for practice
SELECT occupation
FROM parks_and_recreation.employee_salary
GROUP BY occupation;

-- Group by both occupation and salary to see unique combinations
SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary;

-- View employee demographics again for final reference
SELECT * FROM parks_and_recreation.employee_demographics;

-- Summary statistics for age by gender: max, min, average, and count
SELECT gender,
       MAX(age) AS max_age,
       MIN(age) AS min_age,
       AVG(age) AS avg_age,
       COUNT(age) AS total_count
FROM parks_and_recreation.employee_demographics
GROUP BY gender;