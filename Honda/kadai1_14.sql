-- 職務が販売担当または在庫管理者であり、給与が$2,500、$3,500、$7,000と等しくない人の
-- 姓、職務、給与を表示する
SELECT last_name,job_id,salary
FROM employees
WHERE job_id IN ('SA_REP','ST_CLERK')
AND salary NOT IN (2500,3500,7000);