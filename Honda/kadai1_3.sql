--給与が$5,000未満もしくは$12,000より高い従業員の姓と給与を表示する
SELECT last_name,salary
FROM employees
WHERE salary<5000 OR salary>12000;