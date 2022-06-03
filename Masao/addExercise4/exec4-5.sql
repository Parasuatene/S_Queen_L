SELECT
    ROW_NUMBER() OVER(ORDER BY ID) AS " ",
    *
FROM
    MY_EMPLOYEE
ORDER BY
    ID
;
/*
   | id | last_name | first_name |  userid  | salary
---+----+-----------+------------+----------+---------
 1 |  1 | Patel     | Ralph      | rpatel   | 1000.00
 2 |  2 | Dancs     | Betty      | bdancs   | 1000.00
 3 |  3 | Drexler   | Ben        | bbiri    | 1100.00
 4 |  4 | Newman    | Chad       | cnewman  | 1000.00
 5 |  5 | Ropeburn  | Audrey     | aropebur | 1550.00
(5 行)
*/