BEGIN TRANSACTION;

CREATE TABLE my_employee (
    id INTEGER,
    last_name VARCHAR(25),
    first_name VARCHAR(25),
    userid VARCHAR(8),
    salary NUMERIC(9, 2)
);

INSERT INTO 
    my_employee 
VALUES
    (1, 'Pate1', 'Ralph', 'rpate1', 895),
    (2, 'Dancs', 'Betty', 'bdancs', 860),
    (3, 'Biri', 'Ben', 'bbiri', 1100),
    (4, 'Newman', 'Chad', 'cnewman', 750),
    (5, 'Ropeburn', 'Audrey', 'aropebur', 1550)
;

COMMIT;