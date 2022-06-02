-- 給与が$5,000から$12,000の間にあり、
-- 部門20または50に所属する人の姓と給与を
-- 列にそれぞれEmployee,Monthly Salaryというラベルを付けて表示する
SELECT last_name AS Employees,salary AS Monthly_Salary
FROM employees
WHERE department_id IN (20,50) AND salary BETWEEN 5000 AND 12000