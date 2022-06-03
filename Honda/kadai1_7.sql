-- 2006年に雇用された全ての人の姓と雇用日を表示する
SELECT last_name,hire_date
FROM employees
WHERE hire_date BETWEEN '2006-01-01' AND '2006-12-31';