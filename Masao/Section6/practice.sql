--練習問題6.1
SELECT shohin_mei, shiire_tanka
  FROM Shohin
 WHERE shiire_tanka NOT IN (500, 2800, 5000);
/*
  shohin_mei  | shiire_tanka
--------------+--------------
 穴あけパンチ |          320
 おろしがね   |          790
(2 行)
*/

SELECT shohin_mei, shiire_tanka
  FROM Shohin
 WHERE shiire_tanka NOT IN (500, 2800, 5000, NULL); --どの列もNULLとの比較はできない？
/*
 shohin_mei | shiire_tanka
------------+--------------
(0 行)
*/

