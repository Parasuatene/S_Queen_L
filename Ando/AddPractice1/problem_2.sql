-- 従業員番号176の姓と部門番号を表示する
SELECT
    last_name,
    department_id
FROM
    employees
WHERE
    employee_id = 176
    AND department_id = 80
;