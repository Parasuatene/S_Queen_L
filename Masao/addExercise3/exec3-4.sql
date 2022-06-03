SELECT
    ROW_NUMBER() OVER() AS " ",
    emp.last_name       AS "Employee",
    emp.employee_id     AS "EMP#",
    mgr.last_name       AS "Manager",
    emp.manager_id      AS "Mgr#"
FROM
    employees AS emp INNER JOIN employees AS mgr
ON
    emp.manager_id = mgr.employee_id;
/*
     |  Employee   | EMP# |  Manager  | Mgr#
-----+-------------+------+-----------+------
   1 | Kochhar     |  101 | King      |  100
   2 | De Haan     |  102 | King      |  100
   3 | Hunold      |  103 | De Haan   |  102
   4 | Ernst       |  104 | Hunold    |  103
   5 | Austin      |  105 | Hunold    |  103
   6 | Pataballa   |  106 | Hunold    |  103
   7 | Lorentz     |  107 | Hunold    |  103
   8 | Greenberg   |  108 | Kochhar   |  101
   9 | Faviet      |  109 | Greenberg |  108
  10 | Chen        |  110 | Greenberg |  108
  11 | Sciarra     |  111 | Greenberg |  108
  12 | Urman       |  112 | Greenberg |  108
  13 | Popp        |  113 | Greenberg |  108
  14 | Raphaely    |  114 | King      |  100
  15 | Khoo        |  115 | Raphaely  |  114
*/