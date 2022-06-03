SELECT ROW_NUMBER() OVER ()                                                       AS " ",
       COUNT(*)                                                                   AS "TOTAL",
       (SELECT COUNT(*) FROM employees WHERE to_char(hire_date, 'YYYY') = '2005') AS "2005",
       (SELECT COUNT(*) FROM employees WHERE to_char(hire_date, 'YYYY') = '2006') AS "2006",
       (SELECT COUNT(*) FROM employees WHERE to_char(hire_date, 'YYYY') = '2007') AS "2007",
       (SELECT COUNT(*) FROM employees WHERE to_char(hire_date, 'YYYY') = '2008') AS "2008"
  FROM employees;
/*
   | TOTAL | 2005 | 2006 | 2007 | 2008
---+-------+------+------+------+------
 1 |   107 |   29 |   24 |   19 |   11
(1 行)
*/