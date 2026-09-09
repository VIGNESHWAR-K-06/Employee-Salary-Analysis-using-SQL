-- 1. Count total employees
SELECT COUNT(*) AS total_employees
FROM employees;


-- 2. Find the highest salary
SELECT MAX(salary) AS highest_salary
FROM employees;


-- 3. Find the lowest salary
SELECT MIN(salary) AS lowest_salary
FROM employees;


-- 4. Calculate average salary
SELECT AVG(salary) AS average_salary
FROM employees;


-- 5. Calculate total salary
SELECT SUM(salary) AS total_salary
FROM employees;
