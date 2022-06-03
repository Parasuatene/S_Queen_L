-- マネージャーがいない全ての従業員の姓と職務を表示
SELECT last_name,job_id
FROM employees
WHERE manager_id IS NULL;