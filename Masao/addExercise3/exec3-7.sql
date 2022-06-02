SELECT
    ROW_NUMBER() OVER(ORDER BY emp.salary DESC) AS " ",
    emp.last_name AS "LAST_NAME",
    emp.job_id AS "JOB_ID",
    dpt.department_name AS "DEPARTMENT_NAME",
    ROUND(emp.salary) AS "SALARY",
    (
        CASE 
            WHEN emp.salary >= 15000 THEN 'E'
            WHEN emp.salary BETWEEN 10000 AND 14999 THEN 'D'
            WHEN emp.salary BETWEEN  6000 AND  9999 THEN 'C'
            WHEN emp.salary BETWEEN  3000 AND  5999 THEN 'B'
            ELSE 'A'
        END 
    ) AS "GRADE_LEVEL"
FROM
    employees AS emp INNER JOIN departments AS dpt
ON
    emp.department_id = dpt.department_id
;
/*
     |  LAST_NAME  |   JOB_ID   | DEPARTMENT_NAME  | SALARY | GRADE_LEVEL
-----+-------------+------------+------------------+--------+-------------
   1 | King        | AD_PRES    | Executive        |  24000 | E
   2 | De Haan     | AD_VP      | Executive        |  17000 | E
   3 | Kochhar     | AD_VP      | Executive        |  17000 | E
   4 | Russell     | SA_MAN     | Sales            |  14000 | D
   5 | Partners    | SA_MAN     | Sales            |  13500 | D
   6 | Hartstein   | MK_MAN     | Marketing        |  13000 | D
   7 | Greenberg   | FI_MGR     | Finance          |  12008 | D
   8 | Higgins     | AC_MGR     | Accounting       |  12008 | D
   9 | Errazuriz   | SA_MAN     | Sales            |  12000 | D
  10 | Ozer        | SA_REP     | Sales            |  11500 | D
  11 | Raphaely    | PU_MAN     | Purchasing       |  11000 | D
  12 | Cambrault   | SA_MAN     | Sales            |  11000 | D
  13 | Abel        | SA_REP     | Sales            |  11000 | D
  14 | Vishney     | SA_REP     | Sales            |  10500 | D
  15 | Zlotkey     | SA_MAN     | Sales            |  10500 | D
*/