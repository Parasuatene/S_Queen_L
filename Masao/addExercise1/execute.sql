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

--2.
SELECT ROW_NUMBER() OVER(ORDER BY last_name) AS " ",
       last_name                             AS "LAST_NAME",
       department_id                         AS "DEPARTMENT_ID"
  FROM employees
 WHERE employee_id = 176;

/*
   | LAST_NAME | DEPARTMENT_ID
---+-----------+---------------
 1 | Taylor    |            80
(1 行)
*/

--3.
SELECT ROW_NUMBER() OVER() AS " ",
       last_name           AS "LAST_NAME",
       salary              AS salary
  FROM employees
 WHERE salary NOT BETWEEN 5000 AND 12000;

/*
    |  LAST_NAME  |  salary
----+-------------+----------
  1 | King        | 24000.00
  2 | Kochhar     | 17000.00
  3 | De Haan     | 17000.00
  4 | Austin      |  4800.00
  5 | Pataballa   |  4800.00
  6 | Lorentz     |  4200.00
  7 | Greenberg   | 12008.00
  8 | Khoo        |  3100.00
  9 | Baida       |  2900.00
 10 | Tobias      |  2800.00
 11 | Himuro      |  2600.00
 12 | Colmenares  |  2500.00
 13 | Nayer       |  3200.00
 14 | Mikkilineni |  2700.00
 15 | Landry      |  2400.00
 16 | Markle      |  2200.00
 17 | Bissot      |  3300.00
 18 | Atkinson    |  2800.00
 19 | Marlow      |  2500.00
 20 | Olson       |  2100.00
*/

