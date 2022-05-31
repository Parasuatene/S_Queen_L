SELECT
    last_name,
    employees.department_id,
    department_name
FROM
    employees
    INNER JOIN departments ON employees.department_id = departments.department_id
ORDER BY
    last_name ASC
;