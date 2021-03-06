SELECT SUM(hanbai_tanka) AS "販売単価の合計",
       SUM(shiire_tanka) AS "仕入れ単価の合計" --データ内にNULLがあり、これの合計値は本来NULLであるはずだが、SUM関数ではデータ内にNULLが存在している場合はそれを無視して計算する
  FROM Shohin;
/*
 販売単価の合計 | 仕入れ単価の合計
----------------+------------------
          16780 |            12210
(1 行)
*/