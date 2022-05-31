SELECT
    job_id,
    ROUND(SUM(CASE WHEN department_id = 20 THEN salary ELSE 0 END)) AS dept_20,
    ROUND(SUM(CASE WHEN department_id = 50 THEN salary ELSE 0 END)) AS dept_50,
    ROUND(SUM(CASE WHEN department_id = 80 THEN salary ELSE 0 END)) AS dept_80,
    ROUND(SUM(CASE WHEN department_id = 90 THEN salary ELSE 0 END)) AS dept_90,
    ROUND(SUM(salary)) AS total
FROM
    employees
GROUP BY
    job_id
;
