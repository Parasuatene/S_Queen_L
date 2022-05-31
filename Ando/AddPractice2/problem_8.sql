SELECT
    job_id,
    (
        SELECT
            ROUND(SUM(salary))
        FROM
            employees AS D_20
        WHERE
            BASE.job_id = D_20.job_id
        GROUP BY
            department_id
        HAVING
            department_id = 20
    ) AS dept_20,
    (
        SELECT
            ROUND(SUM(salary))
        FROM
            employees AS D_50
        WHERE
            BASE.job_id = D_50.job_id
        GROUP BY
            department_id
        HAVING
            department_id = 50
    ) AS dept_50,
    (
        SELECT
            ROUND(SUM(salary))
        FROM
            employees AS D_80
        WHERE
            BASE.job_id = D_80.job_id
        GROUP BY
            department_id
        HAVING
            department_id = 80
    ) AS dept_80,
    (
        SELECT
            ROUND(SUM(salary))
        FROM
            employees AS D_90
        WHERE
            BASE.job_id = D_90.job_id
        GROUP BY
            department_id
        HAVING
            department_id = 90
    ) AS dept_90,
    (
        SELECT
            ROUND(SUM(salary))
        FROM
            employees AS total
        WHERE
            BASE.job_id = total.job_id
        GROUP BY
            job_id
    ) AS total
FROM
    employees AS BASE
GROUP BY
    job_id
;