SELECT
    last_name AS employee,
    ROUND(salary) AS monthly_salary
FROM
    employees
WHERE
    salary BETWEEN 5000 AND 12000
    AND (
        department_id = 20
        OR department_id = 50
    )
;