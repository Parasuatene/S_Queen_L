--練習問題5.1
CREATE VIEW ViewRenshu5_1
    AS 
SELECT shohin_mei, hanbai_tanka, torokubi
  FROM Shohin
 WHERE hanbai_tanka >= 1000
   AND torokubi = '2009-09-20';

SELECT * FROM ViewRenshu5_1;
/*
 shohin_mei | hanbai_tanka |  torokubi
------------+--------------+------------
 Tシャツ    |         1000 | 2009-09-20
 包丁       |         3000 | 2009-09-20
(2 行)
*/
