    -- SELECT ROW_NUMBER() OVER () AS " ",
    --         job_id AS "Job",
    --         (SELECT ROUND(SUM(salary)) FROM employees AS inner_employees WHERE employees.job_id = inner_employees.job_id AND department_id = 20) AS "Dept 20",
    --         (SELECT ROUND(SUM(salary)) FROM employees AS inner_employees WHERE employees.job_id = inner_employees.job_id AND department_id = 50) AS "Dept 50",
    --         (SELECT ROUND(SUM(salary)) FROM employees AS inner_employees WHERE employees.job_id = inner_employees.job_id AND department_id = 80) AS "Dept 80",
    --         (SELECT ROUND(SUM(salary)) FROM employees AS inner_employees WHERE employees.job_id = inner_employees.job_id AND department_id = 90) AS "Dept 90",
    --         ROUND(SUM(salary), 0) AS "Total"
    --     FROM employees
    -- GROUP BY job_id;

  SELECT ROW_NUMBER() OVER () AS " ",
         job_id AS "Job",
         ROUND(SUM(CASE department_id WHEN 20 THEN salary ELSE 0 END)) AS "Dept 20",
         ROUND(SUM(CASE department_id WHEN 50 THEN salary ELSE 0 END)) AS "Dept 50",
         ROUND(SUM(CASE department_id WHEN 80 THEN salary ELSE 0 END)) AS "Dept 80",
         ROUND(SUM(CASE department_id WHEN 90 THEN salary ELSE 0 END)) AS "Dept 90",
         ROUND(SUM(salary), 0) AS "Total"
    FROM employees
GROUP BY job_id;

/*
    |    Job     | Dept 20 | Dept 50 | Dept 80 | Dept 90 | Total
----+------------+---------+---------+---------+---------+--------
  1 | AC_ACCOUNT |       0 |       0 |       0 |       0 |   8300
  2 | ST_MAN     |       0 |   36400 |       0 |       0 |  36400
  3 | IT_PROG    |       0 |       0 |       0 |       0 |  28800
  4 | SA_MAN     |       0 |       0 |   61000 |       0 |  61000
  5 | AD_PRES    |       0 |       0 |       0 |   24000 |  24000
  6 | AC_MGR     |       0 |       0 |       0 |       0 |  12008
  7 | FI_MGR     |       0 |       0 |       0 |       0 |  12008
  8 | AD_ASST    |       0 |       0 |       0 |       0 |   4400
  9 | MK_MAN     |   13000 |       0 |       0 |       0 |  13000
 10 | PU_CLERK   |       0 |       0 |       0 |       0 |  13900
 11 | HR_REP     |       0 |       0 |       0 |       0 |   6500
 12 | PR_REP     |       0 |       0 |       0 |       0 |  10000
 13 | FI_ACCOUNT |       0 |       0 |       0 |       0 |  39600
 14 | SH_CLERK   |       0 |   64300 |       0 |       0 |  64300
 15 | AD_VP      |       0 |       0 |       0 |   34000 |  34000
 16 | SA_REP     |       0 |       0 |  243500 |       0 | 250500
 17 | ST_CLERK   |       0 |   55700 |       0 |       0 |  55700
 18 | MK_REP     |    6000 |       0 |       0 |       0 |   6000
 19 | PU_MAN     |       0 |       0 |       0 |       0 |  11000
(19 行)
*/