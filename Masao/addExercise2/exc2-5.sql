SELECT ROW_NUMBER() OVER ()      AS " ",
       MAX(salary) - MIN(salary) AS "DIFFERENCE"
  FROM employees;
/*
   | DIFFERENCE
---+------------
 1 |   21900.00
(1 行)
*/