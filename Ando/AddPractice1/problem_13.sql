SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '%a%e%'
    OR last_name LIKE '%e%a%'
;