  SELECT ROW_NUMBER() OVER() AS " ",
         job_id              AS "JOB_ID",
         COUNT(*)            AS "COUNT(*)"
    FROM employees
GROUP BY job_id;

/*
    |   JOB_ID   | COUNT(*)
----+------------+----------
  1 | AC_ACCOUNT |        1
  2 | ST_MAN     |        5
  3 | IT_PROG    |        5
  4 | SA_MAN     |        5
  5 | AD_PRES    |        1
  6 | AC_MGR     |        1
  7 | FI_MGR     |        1
  8 | AD_ASST    |        1
  9 | MK_MAN     |        1
 10 | PU_CLERK   |        5
 11 | HR_REP     |        1
 12 | PR_REP     |        1
 13 | FI_ACCOUNT |        5
 14 | SH_CLERK   |       20
 15 | AD_VP      |        2
 16 | SA_REP     |       30
 17 | ST_CLERK   |       20
 18 | MK_REP     |        1
 19 | PU_MAN     |        1
(19 行)
*/