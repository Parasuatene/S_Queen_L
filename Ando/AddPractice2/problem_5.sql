SELECT
    ROUND(MAX(salary) - MIN(salary)) AS difference
FROM
    employees
;