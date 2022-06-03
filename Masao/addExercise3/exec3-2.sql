SELECT
    ROW_NUMBER() OVER()     AS " ",
    last_name               AS "LAST_NAME",
    employees.department_id AS "DEPARTMENT_ID",
    department_name         AS "DEPARTMENT_NAME"
FROM
    employees INNER JOIN departments
ON 
    employees.department_id = departments.department_id;
/*
     |  LAST_NAME  | DEPARTMENT_ID | DEPARTMENT_NAME
-----+-------------+---------------+------------------
   1 | King        |            90 | Executive
   2 | Kochhar     |            90 | Executive
   3 | De Haan     |            90 | Executive
   4 | Hunold      |            60 | IT
   5 | Ernst       |            60 | IT
   6 | Austin      |            60 | IT
   7 | Pataballa   |            60 | IT
   8 | Lorentz     |            60 | IT
   9 | Greenberg   |           100 | Finance
  10 | Faviet      |           100 | Finance
  11 | Chen        |           100 | Finance
  12 | Sciarra     |           100 | Finance
  13 | Urman       |           100 | Finance
  14 | Popp        |           100 | Finance
  15 | Raphaely    |            30 | Purchasing
*/