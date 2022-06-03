-- 歩合を受け取る人の姓、給与、歩合を表示する
-- 給与と歩合の降順でソートする
-- ORDER BY句で列の位置を数値で指定する
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY 2,3 DESC;