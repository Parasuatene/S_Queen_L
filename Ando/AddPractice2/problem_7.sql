SELECT
    COUNT(DISTINCT employee_id) AS total,
    SUM(CASE WHEN EXTRACT(YEAR FROM hire_date) = 2005 THEN 1 ELSE 0 END) AS emp_2005,
    SUM(CASE WHEN EXTRACT(YEAR FROM hire_date) = 2006 THEN 1 ELSE 0 END) AS emp_2006,
    SUM(CASE WHEN EXTRACT(YEAR FROM hire_date) = 2007 THEN 1 ELSE 0 END) AS emp_2007,
    SUM(CASE WHEN EXTRACT(YEAR FROM hire_date) = 2008 THEN 1 ELSE 0 END) AS emp_2008
FROM
    employees
;