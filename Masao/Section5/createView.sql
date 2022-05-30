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

--多段ビュー
CREATE VIEW ShohinSumJim (shohin_bunrui, cnt_shohin)
    AS
SELECT shohin_bunrui, cnt_shohin
  FROM ShohinSum --ビューからビューをつくる
 WHERE shohin_bunrui = '事務用品';

--多段ビューの作成を確認
SELECT shohin_bunrui, cnt_shohin
  FROM ShohinSumJim;
/*
 shohin_bunrui | cnt_shohin
---------------+------------
 事務用品      |          2
(1 行)
*/