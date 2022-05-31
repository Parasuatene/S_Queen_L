SELECT
    manager_id,
    ROUND(MIN(salary)) AS min_salary
FROM
    employees
WHERE
    manager_id IS NOT NULL
GROUP BY
    manager_id
HAVING
    MIN(salary) > 6000
;