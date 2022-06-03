SELECT ROW_NUMBER() OVER ()       AS " ",
       COUNT(DISTINCT manager_id) AS "Number of Managers"
  FROM employees;

/*
   | Number of Managers
---+--------------------
 1 |                 18
(1 行)
*/