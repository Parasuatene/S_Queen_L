SELECT
    last_name,
    job_id,
    main_tbl.department_id,
    join_tbl.department_name
FROM
    employees AS main_tbl
    INNER JOIN (
        SELECT
            department_name,
            department_id,
            city
        FROM
            departments
            INNER JOIN locations ON departments.location_id = locations.location_id
    ) AS join_tbl
    ON main_tbl.department_id = join_tbl.department_id
WHERE
    join_tbl.city = 'Toronto'
;