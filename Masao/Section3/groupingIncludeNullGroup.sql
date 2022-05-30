  SELECT shiire_tanka, COUNT(*)
    FROM Shohin
GROUP BY shiire_tanka; --NULLのグループもできる
/*
 shiire_tanka | count
--------------+-------
              |     2
          320 |     1
          500 |     1
         5000 |     1
         2800 |     2
          790 |     1
(6 行)
*/
