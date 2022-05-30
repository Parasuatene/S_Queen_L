--FROM句に直接ビュー定義を書く
SELECT shohin_bunrui, cnt_shohin
  FROM ( --FROM内にビューの定義を記述
        SELECT shohin_bunrui,
               COUNT(*) AS cnt_shohin
          FROM Shohin
      GROUP BY shohin_bunrui
  ) AS ShohinSum;
/*
 shohin_bunrui | cnt_shohin
---------------+------------
 キッチン用品  |          4
 衣服          |          2
 事務用品      |          2
(3 行)
*/
