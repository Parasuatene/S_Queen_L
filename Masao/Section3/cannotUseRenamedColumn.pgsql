  SELECT shohin_bunrui AS sb,
         COUNT(*)
    FROM Shohin
GROUP BY sb; --本来であれば、FROM->GROUP BY->SELECTの順で実行がされるので、sbはこの時点では未定義扱いになり、エラーになる。（PostgreSQLはいけるらしい）
/*
      sb      | count
--------------+-------
 衣服         |     2
 事務用品     |     2
 キッチン用品 |     4
(3 行)
*/

  SELECT shohin_bunrui AS "商品分類",
         COUNT(*)
    FROM Shohin
GROUP BY "商品分類"; --文字列入力でも大丈夫みたい
/*
   商品分類   | count
--------------+-------
 衣服         |     2
 事務用品     |     2
 キッチン用品 |     4
*/
