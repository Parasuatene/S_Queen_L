BEGIN TRANSACTION;

-- manager_id=103の従業員データ
SELECT
    employee_id,
    last_name,
    salary,
    department_id
FROM
    employees
WHERE
    manager_id = 103
ORDER BY
    last_name ASC
;

-- manager_id=201の従業員データ
SELECT
    employee_id,
    last_name,
    salary,
    department_id
FROM
    employees
WHERE
    manager_id = 201
ORDER BY
    salary DESC
;

-- manager_id=124の従業員データ
SELECT
    employee_id,
    last_name,
    salary,
    department_id
FROM
    employees
WHERE
    manager_id = 103
ORDER BY
    employee_id ASC
;

COMMIT;