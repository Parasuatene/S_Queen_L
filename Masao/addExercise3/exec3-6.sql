SELECT
    ROW_NUMBER() OVER(ORDER BY emp1.department_id) AS " ",
    emp1.department_id                             AS "DEPARTMENT",
    emp1.last_name                                 AS "EMPLOYEE",
    emp2.last_name                                 AS "COLLEAGUE"
FROM
    employees AS emp1 CROSS JOIN employees AS emp2
ORDER BY
    emp1.department_id
;
/*
       | DEPARTMENT |  EMPLOYEE   |  COLLEAGUE
-------+------------+-------------+-------------
     1 |         10 | Whalen      | Kochhar
     2 |         10 | Whalen      | De Haan
     3 |         10 | Whalen      | Hunold
     4 |         10 | Whalen      | Ernst
     5 |         10 | Whalen      | Austin
     6 |         10 | Whalen      | Pataballa
     7 |         10 | Whalen      | Lorentz
     8 |         10 | Whalen      | Greenberg
     9 |         10 | Whalen      | Faviet
    10 |         10 | Whalen      | Chen
    11 |         10 | Whalen      | Sciarra
    12 |         10 | Whalen      | Urman
    13 |         10 | Whalen      | Popp
    14 |         10 | Whalen      | Raphaely
    15 |         10 | Whalen      | Khoo
*/