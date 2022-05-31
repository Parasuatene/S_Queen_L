-- 予算が$12,000を超える従業員の姓と給与を表示する
SELECT
    last_name,
    ROUND(salary)
FROM
    employees
WHERE
    salary > 12000
;