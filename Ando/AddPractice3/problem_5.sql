SELECT
    main_tbl.last_name AS employee,
    main_tbl.employee_id AS emp_hash,
    employees.last_name AS manager,
    employees.manager_id AS mgr_hash
FROM
    employees AS main_tbl
    LEFT JOIN employees ON main_tbl.manager_id = employees.employee_id
ORDER BY
    emp_hash ASC
;