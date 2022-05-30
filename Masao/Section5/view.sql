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

--集約関数を用いていないためINSERTが可能なビュー
CREATE VIEW ShohinSumJim (
  shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi
)   AS
SELECT *
  FROM Shohin
 WHERE shohin_bunrui = '事務用品';

--ビューへのデータ追加(集約関数を用いていない場合はビューにデータを追加した場合でも元のテーブルに対して一意にデータを挿入できるのでOK)
INSERT INTO ShohinSumJim VALUES ('0009', '印鑑', '事務用品', 95, 10, '2009-11-30');
/*
【実行後】
●ShohinSumJim
 shohin_id |  shohin_mei  | shohin_bunrui | hanbai_tanka | shiire_tanka |  torokubi
-----------+--------------+---------------+--------------+--------------+------------
 0009      | 印鑑         | 事務用品      |           95 |           10 | 2009-11-30
 0002      | 穴あけパンチ | 事務用品      |          500 |          320 | 2009-09-11
 0008      | ボールペン   | 事務用品      |          100 |              | 2009-11-11
(3 行)

●Shohin
 shohin_id |   shohin_mei   | shohin_bunrui | hanbai_tanka | shiire_tanka |  torokubi
-----------+----------------+---------------+--------------+--------------+------------
 0009      | 印鑑           | 事務用品      |           95 |           10 | 2009-11-30
 0001      | Tシャツ        | 衣服          |         1000 |          500 | 2009-09-20
 0002      | 穴あけパンチ   | 事務用品      |          500 |          320 | 2009-09-11
 0003      | カッターシャツ | 衣服          |         4000 |         2800 |
 0004      | 包丁           | キッチン用品  |         3000 |         2800 | 2009-09-20
 0005      | 圧力鍋         | キッチン用品  |         6800 |         5000 | 2009-01-15
 0006      | フォーク       | キッチン用品  |          500 |              | 2009-09-20
 0007      | おろしがね     | キッチン用品  |          880 |          790 | 2008-04-28
 0008      | ボールペン     | 事務用品      |          100 |              | 2009-11-11
(9 行)
*/
