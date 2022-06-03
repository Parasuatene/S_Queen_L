SELECT MAX(salary)           AS "Maximum",
       MIN(salary)           AS "Minimum",
       SUM(salary)           AS "Sum",
       ROUND(AVG(salary), 0) AS "Average"
  FROM employees;

/*
 Maximum  | Minimum |    Sum    | Average
----------+---------+-----------+---------
 24000.00 | 2100.00 | 691416.00 |    6462
(1 行)
*/