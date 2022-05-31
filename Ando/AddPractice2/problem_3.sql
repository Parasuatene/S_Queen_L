SELECT
    job_id,
    COUNT(*)
FROM
    employees
GROUP BY
    job_id
ORDER BY
    COUNT(*) DESC
;