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

--4.
  SELECT ROW_NUMBER() OVER(ORDER BY hire_date) AS " ",
         last_name                             AS "LAST_NAME",
         job_id                                AS "JOB_ID",
         hire_date                             AS "HIRE_DATE"
    FROM employees
   WHERE last_name IN ('Matos', 'Taylor') --文字列データはシングルコーテーションじゃないとダメ
ORDER BY hire_date;

/*
   | LAST_NAME |  JOB_ID  | HIRE_DATE
---+-----------+----------+------------
 1 | Taylor    | SH_CLERK | 2006-01-24
 2 | Matos     | ST_CLERK | 2006-03-15
 3 | Taylor    | SA_REP   | 2006-03-24
(3 行)
*/

--5
  SELECT ROW_NUMBER() OVER(ORDER BY last_name) AS " ",
         last_name                             AS "LAST_NAME",
         department_id                         AS "DEPARTMENT_ID"
    FROM employees
   WHERE department_id IN (20, 50)
ORDER BY last_name;

/*
    |  LAST_NAME  | DEPARTMENT_ID
----+-------------+---------------
  1 | Atkinson    |            50
  2 | Bell        |            50
  3 | Bissot      |            50
  4 | Bull        |            50
  5 | Cabrio      |            50
  6 | Chung       |            50
  7 | Davies      |            50
  8 | Dellinger   |            50
  9 | Dilly       |            50
 10 | Everett     |            50
 11 | Fay         |            20
 12 | Feeney      |            50
 13 | Fleaur      |            50
 14 | Fripp       |            50
 15 | Gates       |            50
 16 | Gee         |            50
 17 | Geoni       |            50
 18 | Grant       |            50
 19 | Hartstein   |            20
 20 | Jones       |            50
*/

--6.
SELECT ROW_NUMBER() OVER() AS " ",
       last_name           AS "Employee",
       salary              AS "Monthly Salary"
 FROM employees
WHERE department_id IN (20, 50)
  AND salary BETWEEN 5000 AND 12000;

/*
   | Employee | Monthly Salary
---+----------+----------------
 1 | Weiss    |        8000.00
 2 | Fripp    |        8200.00
 3 | Kaufling |        7900.00
 4 | Vollman  |        6500.00
 5 | Mourgos  |        5800.00
 6 | Fay      |        6000.00
(6 行)
*/

--7.
SELECT ROW_NUMBER() OVER() AS " ",
       last_name           AS "LAST_NAME",
       hire_date           AS "HIRE_DATE"
  FROM employees
 WHERE to_char(hire_date, 'YYYY') = '2006';

/*
    |  LAST_NAME  | HIRE_DATE
----+-------------+------------
  1 | Hunold      | 2006-01-03
  2 | Pataballa   | 2006-02-05
  3 | Urman       | 2006-03-07
  4 | Himuro      | 2006-11-15
  5 | Mikkilineni | 2006-09-28
  6 | Rogers      | 2006-08-26
  7 | Seo         | 2006-02-12
  8 | Patel       | 2006-04-06
  9 | Matos       | 2006-03-15
 10 | Vargas      | 2006-07-09
 11 | Olsen       | 2006-03-30
 12 | Cambrault   | 2006-12-09
 13 | Sewall      | 2006-11-03
 14 | Bloom       | 2006-03-23
 15 | Fox         | 2006-01-24
 16 | Taylor      | 2006-03-24
 17 | Livingston  | 2006-04-23
 18 | Taylor      | 2006-01-24
 19 | Fleaur      | 2006-02-23
 20 | Dellinger   | 2006-06-24
*/

--8.
SELECT ROW_NUMBER() OVER() AS " ",
       last_name           AS "LAST_NAME",
       job_id              AS "JOB_ID"
  FROM employees
 WHERE manager_id IS NULL;

/*
   | LAST_NAME | JOB_ID
---+-----------+---------
 1 | King      | AD_PRES
(1 行)
*/

--9.
   SELECT ROW_NUMBER() OVER(ORDER BY commission_pct DESC) AS " ",
          last_name                                       AS "LAST_NAME",
          salary                                          AS "SALARY",
          commission_pct                                  AS "COMMISSION_PCT"
     FROM employees
    WHERE commission_pct IS NOT NULL
 ORDER BY commission_pct DESC;

/*
    | LAST_NAME  |  SALARY  | COMMISSION_PCT
----+------------+----------+----------------
  1 | Russell    | 14000.00 |           0.40
  2 | Sully      |  9500.00 |           0.35
  3 | McEwen     |  9000.00 |           0.35
  4 | King       | 10000.00 |           0.35
  5 | Partners   | 13500.00 |           0.30
  6 | Errazuriz  | 12000.00 |           0.30
  7 | Doran      |  7500.00 |           0.30
  8 | Smith      |  8000.00 |           0.30
  9 | Cambrault  | 11000.00 |           0.30
 10 | Abel       | 11000.00 |           0.30
 11 | Tucker     | 10000.00 |           0.30
 12 | Vishney    | 10500.00 |           0.25
 13 | Bernstein  |  9500.00 |           0.25
 14 | Hall       |  9000.00 |           0.25
 15 | Sewall     |  7000.00 |           0.25
 16 | Ozer       | 11500.00 |           0.25
 17 | Hutton     |  8800.00 |           0.25
 18 | Olsen      |  8000.00 |           0.20
 19 | Bloom      | 10000.00 |           0.20
 20 | Fox        |  9600.00 |           0.20
*/

