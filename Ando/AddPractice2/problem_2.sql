SELECT
    job_id,
    ROUND(MAX(salary)) AS maximum,
    ROUND(MIN(salary)) AS minimum,
    ROUND(SUM(salary)) AS sum,
    ROUND(AVG(salary)) AS average
FROM
    employees
GROUP BY
    job_id
;