-- マネージャーをリストせずに数を特定する
SELECT COUNT(DISTINCT manager_id) AS Number_of_Managers
FROM employees;
-- GROUP BY manager_id