-- マネージャー番号を指定することでそのマネージャーが管理する
-- 従業員の番号、姓、給与、部門を表示する
SELECT employee_id,last_name,salary,department_id
FROM employees
WHERE manager_id = 103
ORDER BY last_name ASC; --ASCはあってもなくてもどちらでも良い