SELECT
    COUNT(DISTINCT employee_id) AS total,
    (
        SELECT 
            COUNT(TO_CHAR(hire_date, 'YYYY')) 
        FROM
            employees
        GROUP BY
            to_char(hire_date, 'YYYY')
        HAVING
            to_char(hire_date, 'YYYY') = '2005'
    ) AS _2005_,
    (
        SELECT
            COUNT(TO_CHAR(hire_date, 'YYYY'))
        FROM
            employees
        GROUP BY
            to_char(hire_date, 'YYYY')
        HAVING
            to_char(hire_date, 'YYYY') = '2006'
    ) AS _2006_,
    (
        SELECT
            COUNT(TO_CHAR(hire_date, 'YYYY'))
        FROM
            employees
        GROUP BY
            to_char(hire_date, 'YYYY')
        HAVING
            to_char(hire_date, 'YYYY') = '2007'
    ) AS _2007_,
    (
        SELECT
            COUNT(TO_CHAR(hire_date, 'YYYY'))
        FROM
            employees
        GROUP BY
            to_char(hire_date, 'YYYY')
        HAVING
            to_char(hire_date, 'YYYY') = '2008'
    ) AS _2008_
FROM
    employees
;