  SELECT ROW_NUMBER() OVER(ORDER BY MIN(salary) DESC) AS " ",
         manager_id                                   AS "MANAGER_ID",
         MIN(salary)                                  AS "MIN(SALARY)"
    FROM employees
   WHERE manager_id IS NOT NULL
GROUP BY manager_id
  HAVING MIN(salary) > 6000
ORDER BY MIN(salary) DESC;

/*
   | MANAGER_ID | MIN(SALARY)
---+------------+-------------
 1 |        102 |     9000.00
 2 |        205 |     8300.00
 3 |        145 |     7000.00
 4 |        146 |     7000.00
 5 |        108 |     6900.00
 6 |        149 |     6200.00
 7 |        147 |     6200.00
 8 |        148 |     6100.00
(8 行)
*/