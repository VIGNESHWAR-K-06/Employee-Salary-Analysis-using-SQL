-- 1. Categorize employees based on salary
SELECT
    name,
    salary,
    CASE
        WHEN salary >= 70000 THEN 'High'
        WHEN salary >= 60000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM employees;


-- 2. Categorize employees based on experience
SELECT
    name,
    experience_years,
    CASE
        WHEN experience_years >= 6 THEN 'Senior'
        WHEN experience_years >= 4 THEN 'Mid-Level'
        ELSE 'Junior'
    END AS experience_category
FROM employees;


-- 3. Count employees in each salary category
SELECT
    CASE
        WHEN salary >= 70000 THEN 'High'
        WHEN salary >= 60000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category,
    COUNT(*) AS employee_count
FROM employees
GROUP BY
    CASE
        WHEN salary >= 70000 THEN 'High'
        WHEN salary >= 60000 THEN 'Medium'
        ELSE 'Low'
    END;
