SELECT
    COUNT(DISTINCT manager_id) AS number_of_managers
FROM
    employees
WHERE
    manager_id IS NOT NULL
;