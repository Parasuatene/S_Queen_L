-- 同じ職種の従業員数を表示する
SELECT job_id,count(*)
FROM employees
GROUP BY job_id
ORDER BY job_id ASC;