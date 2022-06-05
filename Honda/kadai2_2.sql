-- 職種ごとの給与の最低額、最高額、合計、平均を表示する
SELECT job_id,MAX(salary) AS Maximum, MIN(salary) AS Minimum,SUM(salary),ROUND(AVG(salary),0) AS Average
FROM employees
GROUP BY job_id;