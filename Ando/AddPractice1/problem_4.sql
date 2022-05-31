SELECT
    last_name,
    job_id,
    TO_CHAR(hire_date, 'DD-MON-YY') AS hire_date  -- 日付を指定したフォーマットに変換する
FROM
    employees
WHERE
    last_name = 'Matos'
    OR last_name = 'Taylor'
ORDER BY
    hire_date ASC
;