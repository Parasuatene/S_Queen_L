--1.
SELECT ROW_NUMBER() OVER (ORDER BY salary DESC) AS " ",
       last_name                                AS "LAST_NAME",
       salary                                   AS "SALARY"
  FROM employees;

/*
     |  LAST_NAME  |  SALARY
-----+-------------+----------
   1 | King        | 24000.00
   2 | Kochhar     | 17000.00
   3 | De Haan     | 17000.00
   4 | Russell     | 14000.00
   5 | Partners    | 13500.00
   6 | Hartstein   | 13000.00
   7 | Higgins     | 12008.00
   8 | Greenberg   | 12008.00
   9 | Errazuriz   | 12000.00
  10 | Ozer        | 11500.00
  11 | Cambrault   | 11000.00
  12 | Abel        | 11000.00
  13 | Raphaely    | 11000.00
  14 | Zlotkey     | 10500.00
  15 | Vishney     | 10500.00
  16 | Bloom       | 10000.00
  17 | Baer        | 10000.00
  18 | Tucker      | 10000.00
  19 | King        | 10000.00
  20 | Fox         |  9600.00
*/
