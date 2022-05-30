SELECT SUM(hanbai_tanka),         --テーブルの値の合計
       SUM(DISTINCT hanbai_tanka) --重複をなくした値での合計
  FROM Shohin;
/*
  sum  |  sum
-------+-------
 16780 | 16280
(1 行)
*/
