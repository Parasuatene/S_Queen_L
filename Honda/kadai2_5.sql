-- 給与の最高額と最低額の差額を求める
SELECT (MAX(salary)- MIN(salary)) AS DIFFERENCE
FROM employees;