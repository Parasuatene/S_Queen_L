-- 歩合が20%の人の姓、給与、歩合を表示する
SELECT last_name,salary AS Monthly_Salary,commission_pct
FROM employees
WHERE commission_pct=0.2;