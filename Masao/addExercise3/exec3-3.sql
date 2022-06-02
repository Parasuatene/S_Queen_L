SELECT
    ROW_NUMBER() OVER()     AS " ",
    last_name               AS "LAST_NAME",
    job_id                  AS "JOB_ID",
    employees.department_id AS "DEPARTMENT_ID",
    department_name         AS "DEPARTMENT_NAME"
FROM
    employees INNER JOIN departments
ON 
    employees.department_id = departments.department_id INNER JOIN locations
ON
    departments.location_id = locations.location_id
WHERE
    city = 'Toronto';
/*
   | LAST_NAME | JOB_ID | DEPARTMENT_ID | DEPARTMENT_NAME
---+-----------+--------+---------------+-----------------
 1 | Hartstein | MK_MAN |            20 | Marketing
 2 | Fay       | MK_REP |            20 | Marketing
(2 行)
*/