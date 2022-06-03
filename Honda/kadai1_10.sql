-- ユーザが指定する額を超える給与の従業員の姓と給与を表示する
SELECT last_name,salary
FROM employees
WHERE salary > 12000;