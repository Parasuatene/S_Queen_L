-- 姓の３文字目がaの人の姓を全て表示する
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%'