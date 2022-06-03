SELECT
    ROW_NUMBER() OVER() AS " ",
    emp.last_name       AS "LAST_NAME",
    emp.hire_date       AS "HIRE_DATE",
    mgr.last_name       AS "LAST_NAME_1",
    mgr.hire_date       AS "HIRE_DATE_1"
FROM
    employees AS emp INNER JOIN employees AS mgr 
ON
    emp.manager_id = mgr.employee_id
WHERE
    emp.hire_date < mgr.hire_date
;
/*
    | LAST_NAME  | HIRE_DATE  | LAST_NAME_1 | HIRE_DATE_1
----+------------+------------+-------------+-------------
  1 | De Haan    | 2001-01-13 | King        | 2003-06-17
  2 | Austin     | 2005-06-25 | Hunold      | 2006-01-03
  3 | Greenberg  | 2002-08-17 | Kochhar     | 2005-09-21
  4 | Faviet     | 2002-08-16 | Greenberg   | 2002-08-17
  5 | Raphaely   | 2002-12-07 | King        | 2003-06-17
  6 | Kaufling   | 2003-05-01 | King        | 2003-06-17
  7 | Marlow     | 2005-02-16 | Fripp       | 2005-04-10
  8 | Ladwig     | 2003-07-14 | Vollman     | 2005-10-10
  9 | Rajs       | 2003-10-17 | Mourgos     | 2007-11-16
 10 | Davies     | 2005-01-29 | Mourgos     | 2007-11-16
 11 | Matos      | 2006-03-15 | Mourgos     | 2007-11-16
 12 | Vargas     | 2006-07-09 | Mourgos     | 2007-11-16
 13 | King       | 2004-01-30 | Partners    | 2005-01-05
 14 | Sully      | 2004-03-04 | Partners    | 2005-01-05
 15 | McEwen     | 2004-08-01 | Partners    | 2005-01-05
*/