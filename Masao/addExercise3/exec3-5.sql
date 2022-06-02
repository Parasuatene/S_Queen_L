SELECT
    ROW_NUMBER() OVER(ORDER BY emp.employee_id) AS " ",
    emp.last_name                               AS "Employee",
    emp.employee_id                             AS "EMP#",
    mgr.last_name                               AS "Manager",
    emp.manager_id                              AS "Mgr#"
FROM
    employees AS emp LEFT OUTER JOIN employees AS mgr
ON
    emp.manager_id = mgr.employee_id
ORDER BY
    emp.employee_id
;
/*
     |  Employee   | EMP# |  Manager  | Mgr#
-----+-------------+------+-----------+------
   1 | King        |  100 |           |
   2 | Kochhar     |  101 | King      |  100
   3 | De Haan     |  102 | King      |  100
   4 | Hunold      |  103 | De Haan   |  102
   5 | Ernst       |  104 | Hunold    |  103
   6 | Austin      |  105 | Hunold    |  103
   7 | Pataballa   |  106 | Hunold    |  103
   8 | Lorentz     |  107 | Hunold    |  103
   9 | Greenberg   |  108 | Kochhar   |  101
  10 | Faviet      |  109 | Greenberg |  108
  11 | Chen        |  110 | Greenberg |  108
  12 | Sciarra     |  111 | Greenberg |  108
  13 | Urman       |  112 | Greenberg |  108
  14 | Popp        |  113 | Greenberg |  108
  15 | Raphaely    |  114 | King      |  100
*/