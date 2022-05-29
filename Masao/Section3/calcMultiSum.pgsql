SELECT SUM(hanbai_tanka) AS "販売単価の合計",
       SUM(shiire_tanka) AS "仕入れ単価の合計"
  FROM Shohin;
/*
 販売単価の合計 | 仕入れ単価の合計
----------------+------------------
          16780 |            12210
(1 行)
*/