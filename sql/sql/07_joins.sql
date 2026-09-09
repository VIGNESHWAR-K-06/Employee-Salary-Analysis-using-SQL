-- 1. Create departments table
CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50),
    manager_name VARCHAR(50)
);


-- 2. Insert department data
INSERT INTO departments
(department_id, department_name, manager_name)
VALUES
(1, 'IT', 'Ramesh'),
(2, 'HR', 'Lakshmi'),
(3, 'Finance', 'Sathish');


-- 3. Display employees with their department manager
SELECT
    e.name,
    e.job_role,
    e.department,
    e.salary,
    d.manager_name
FROM employees e
INNER JOIN departments d
    ON e.department = d.department_name;


-- 4. Display IT employees and their manager
SELECT
    e.name,
    e.job_role,
    d.manager_name
FROM employees e
INNER JOIN departments d
    ON e.department = d.department_name
WHERE e.department = 'IT';
