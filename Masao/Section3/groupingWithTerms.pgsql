  SELECT shiire_tanka, COUNT(*)
    FROM Shohin
   WHERE shohin_bunrui = '衣服'
GROUP BY shiire_tanka;
/*
 shiire_tanka | count
--------------+-------
          500 |     1
         2800 |     1
(2 行)
*/
