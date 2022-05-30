--パターン1
SELECT shohin_mei, hanbai_tanka, shiire_tanka
  FROM Shohin
 WHERE hanbai_tanka - shiire_tanka >= 500;
/*
   shohin_mei   | hanbai_tanka | shiire_tanka
----------------+--------------+--------------
 Tシャツ        |         1000 |          500
 カッターシャツ |         4000 |         2800
 圧力鍋         |         6800 |         5000
(3 行)
*/

--パターン2
SELECT shohin_mei, hanbai_tanka, shiire_tanka
  FROM Shohin
 WHERE hanbai_tanka >= shiire_tanka + 500;
 /*
   shohin_mei   | hanbai_tanka | shiire_tanka
----------------+--------------+--------------
 Tシャツ        |         1000 |          500
 カッターシャツ |         4000 |         2800
 圧力鍋         |         6800 |         5000
(3 行)
*/