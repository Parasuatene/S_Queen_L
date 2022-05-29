   SELECT shohin_bunrui, count(*)
     FROM Shohin
 GROUP BY shohin_bunrui; --商品分類ごとにデータのカウントを行う
/*
 shohin_bunrui | count
---------------+-------
 衣服          |     2
 事務用品      |     2
 キッチン用品  |     4
(3 行)
*/
