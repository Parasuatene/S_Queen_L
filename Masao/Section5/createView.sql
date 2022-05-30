--ビューを定義する
  CREATE VIEW ShohinSum (shohin_bunrui, cnt_shohin) --ShohinSumというビューを定義
      AS
  SELECT shohin_bunrui, COUNT(*)                    --ビューの中身はここ以下
    FROM Shohin
GROUP BY shohin_bunrui;

--ビューを利用したSELECT
SELECT shohin_bunrui, cnt_shohin
  FROM ShohinSum;
/*
 shohin_bunrui | cnt_shohin
---------------+------------
 キッチン用品  |          4
 衣服          |          2
 事務用品      |          2
(3 行)
*/
