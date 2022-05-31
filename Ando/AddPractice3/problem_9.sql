SELECT
    main_tbl.last_name AS last_name,
    main_tbl.hire_date AS hire_date,
    employees.last_name AS last_name_1,
    employees.hire_date AS hire_date_1
FROM
    employees AS main_tbl
    INNER JOIN employees ON main_tbl.manager_id = employees.employee_id
WHERE
    employees.manager_id IS NOT NULL
    AND main_tbl.hire_date < employees.hire_date
;