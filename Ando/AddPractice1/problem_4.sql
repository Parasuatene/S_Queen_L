SELECT
    last_name,
    job_id,
    to_char(hire_date, 'DD-Mon-MM') AS hire_date  -- 日付を指定したフォーマットに変換する
FROM
    employees
WHERE
    last_name = 'Matos'
    OR last_name = 'Taylor'
ORDER BY
    hire_date ASC
;