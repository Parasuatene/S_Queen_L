SELECT shohin_mei                        AS "商品名",
       shohin_bunrui                     AS "商品分類",
       hanbai_tanka * 0.9 - shiire_tanka AS "利益"                   --販売単価を10%引きして仕入れ単価を引いた値が利益
  FROM Shohin
 WHERE hanbai_tanka * 0.9 - shiire_tanka > 100                       --利益が100円より高い商品が条件（ASで定義した名前を比較として使いないのかな？）
   AND (shohin_bunrui = '事務用品' OR shohin_bunrui = 'キッチン用品'); --商品分類が事務用品かキッチン用品
/*
    商品名    |   商品分類   |  利益
--------------+--------------+--------
 穴あけパンチ | 事務用品     |  130.0
 圧力鍋       | キッチン用品 | 1120.0
(2 行)
*/