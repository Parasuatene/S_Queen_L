-- 姓の中にaとeの両方が含まれる全ての人の姓を全て表示する
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%e%'
OR last_name LIKE '%e%a%';