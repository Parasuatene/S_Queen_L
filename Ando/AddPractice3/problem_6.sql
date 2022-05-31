BEGIN TRANSACTION;

SELECT
    main_tbl.department_id AS department,
    main_tbl.last_name AS employee,
    employees.last_name AS colleague
FROM
    employees AS main_tbl
    INNER JOIN employees ON main_tbl.department_id = employees.department_id
WHERE
    main_tbl.last_name <> employees.last_name
;
