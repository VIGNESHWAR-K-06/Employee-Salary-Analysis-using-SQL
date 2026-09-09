-- 1. Find the average salary
SELECT AVG(salary) AS average_salary
FROM employees;


-- 2. Find employees earning above the company average
SELECT
    name,
    department,
    job_role,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
)
ORDER BY salary DESC;


-- 3. Find the highest-paid employee
SELECT
    name,
    department,
    job_role,
    salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);


-- 4. Find employees earning more than 60000
SELECT
    name,
    department,
    salary
FROM employees
WHERE salary > (
    SELECT 60000
)
ORDER BY salary DESC;
