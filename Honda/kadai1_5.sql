-- 部門20または50に所属する人の姓と部門番号を名前のアルファベット順（昇順）で表示する
SELECT last_name,department_id
FROM employees
WHERE department_id IN (20,50)
ORDER BY last_name ASC; --ASCはあってもなくてもどちらでも良い