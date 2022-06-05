  SELECT ROW_NUMBER() OVER ()  AS " ",
         job_id                AS "JOB_ID",
         MAX(salary)           AS "Maximum",
         MIN(salary)           AS "Minimum",
         SUM(salary)           AS "Sum",
         ROUND(AVG(salary), 0) AS "Average"
    FROM employees
GROUP BY job_id;
/*
    |   JOB_ID   | Maximum  | Minimum  |    Sum    | Average
----+------------+----------+----------+-----------+---------
  1 | AC_ACCOUNT |  8300.00 |  8300.00 |   8300.00 |    8300
  2 | ST_MAN     |  8200.00 |  5800.00 |  36400.00 |    7280
  3 | IT_PROG    |  9000.00 |  4200.00 |  28800.00 |    5760
  4 | SA_MAN     | 14000.00 | 10500.00 |  61000.00 |   12200
  5 | AD_PRES    | 24000.00 | 24000.00 |  24000.00 |   24000
  6 | AC_MGR     | 12008.00 | 12008.00 |  12008.00 |   12008
  7 | FI_MGR     | 12008.00 | 12008.00 |  12008.00 |   12008
  8 | AD_ASST    |  4400.00 |  4400.00 |   4400.00 |    4400
  9 | MK_MAN     | 13000.00 | 13000.00 |  13000.00 |   13000
 10 | PU_CLERK   |  3100.00 |  2500.00 |  13900.00 |    2780
 11 | HR_REP     |  6500.00 |  6500.00 |   6500.00 |    6500
 12 | PR_REP     | 10000.00 | 10000.00 |  10000.00 |   10000
 13 | FI_ACCOUNT |  9000.00 |  6900.00 |  39600.00 |    7920
 14 | SH_CLERK   |  4200.00 |  2500.00 |  64300.00 |    3215
 15 | AD_VP      | 17000.00 | 17000.00 |  34000.00 |   17000
 16 | SA_REP     | 11500.00 |  6100.00 | 250500.00 |    8350
 17 | ST_CLERK   |  3600.00 |  2100.00 |  55700.00 |    2785
 18 | MK_REP     |  6000.00 |  6000.00 |   6000.00 |    6000
 19 | PU_MAN     | 11000.00 | 11000.00 |  11000.00 |   11000
(19 行)
*/