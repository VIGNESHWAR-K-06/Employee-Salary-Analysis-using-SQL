SELECT * FROM employees;

SELECT name, department, salary
FROM employees;

SELECT *
FROM employees
WHERE department = 'IT';

SELECT name, job_role, salary
FROM employees
WHERE salary > 60000;

SELECT name, job_role, salary
FROM employees
ORDER BY salary DESC;
