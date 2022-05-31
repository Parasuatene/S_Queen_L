SELECT
    last_name,
    TO_CHAR(hire_date, 'DD-MON-YY') AS hire_date  -- 日付を指定したフォーマットに変換する
FROM
    employees
WHERE
    EXTRACT(YEAR from hire_date) = 2006
;