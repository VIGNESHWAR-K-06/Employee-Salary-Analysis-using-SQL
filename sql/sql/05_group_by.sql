-- 1. Count employees in each department
SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department;


-- 2. Average salary by department
SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department;


-- 3. Highest salary in each department
SELECT
    department,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department;


-- 4. Lowest salary in each department
SELECT
    department,
    MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;


-- 5. Total salary by department
SELECT
    department,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC;
