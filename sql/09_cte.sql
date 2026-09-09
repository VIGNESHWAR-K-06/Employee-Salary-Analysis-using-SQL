-- 1. Calculate average salary by department
WITH department_salary AS (
    SELECT
        department,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department
)
SELECT *
FROM department_salary;


-- 2. Find employees earning above their department average
WITH department_salary AS (
    SELECT
        department,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department
)
SELECT
    e.name,
    e.department,
    e.salary,
    d.average_salary
FROM employees e
JOIN department_salary d
    ON e.department = d.department
WHERE e.salary > d.average_salary
ORDER BY e.department, e.salary DESC;
