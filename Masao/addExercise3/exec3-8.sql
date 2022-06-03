SELECT
    ROW_NUMBER() OVER() AS " ",
    last_name           AS "LAST_NAME",
    hire_date           AS "HIRES_DATE"
FROM
    employees
WHERE
    hire_date > (
        SELECT
            hire_date
        FROM
            employees
        WHERE
            last_name = 'Davies'
    )
;
/*
    |  LAST_NAME  | HIRES_DATE
----+-------------+------------
  1 | Kochhar     | 2005-09-21
  2 | Hunold      | 2006-01-03
  3 | Ernst       | 2007-05-21
  4 | Austin      | 2005-06-25
  5 | Pataballa   | 2006-02-05
  6 | Lorentz     | 2007-02-07
  7 | Chen        | 2005-09-28
  8 | Sciarra     | 2005-09-30
  9 | Urman       | 2006-03-07
 10 | Popp        | 2007-12-07
 11 | Baida       | 2005-12-24
 12 | Tobias      | 2005-07-24
 13 | Himuro      | 2006-11-15
 14 | Colmenares  | 2007-08-10
 15 | Fripp       | 2005-04-10
*/