-- 給与の最高額、最低額、合計、平均を表示する（小数点以下四捨五入）
SELECT MAX(salary) AS Maximum, MIN(salary) AS Minimum,SUM(salary),ROUND(AVG(salary),0) AS Average
FROM employees;