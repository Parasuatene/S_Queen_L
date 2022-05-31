SELECT
    last_name,
    TO_CHAR(hire_date, 'DD-MON-YY') AS hire_date
FROM
    employees
WHERE
    hire_date > (SELECT hire_date FROM employees WHERE last_name = 'Davies')
;