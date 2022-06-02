-- 姓がMatosおよびTaylorの姓、職務コード、雇用日を雇用日に対して昇順で表示する
SELECT last_name,job_id,hire_date
FROM employees
WHERE last_name='Matos' OR last_name='Taylor'
ORDER BY hire_date ASC; --ASCはあってもなくてもどちらでも良い