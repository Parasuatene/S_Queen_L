--練習問題5.1
CREATE VIEW ViewRenshu5_1
    AS 
SELECT shohin_mei, hanbai_tanka, torokubi
  FROM Shohin
 WHERE hanbai_tanka >= 1000
   AND torokubi = '2009-09-20';

SELECT * FROM ViewRenshu5_1;
/*
 shohin_mei | hanbai_tanka |  torokubi
------------+--------------+------------
 Tシャツ    |         1000 | 2009-09-20
 包丁       |         3000 | 2009-09-20
(2 行)
*/

--練習問題5.2
INSERT INTO ViewRenshu5_1 VALUES ('ナイフ', 300, '2009-11-02'); --INSERT指定できていない要素があるため実行できない（今回はidがnot null制約があって引っかかる）
/*
ERROR:  列"shohin_id"内のNULL値はNOT NULL制約違反です
DETAIL:  失敗した行は(null, ナイフ, null, 300, null, 2009-11-02)を含みます
*/

--練習問題5.3
SELECT shohin_id,
       shohin_mei,
       shohin_bunrui,
       hanbai_tanka,
       (
           SELECT AVG(hanbai_tanka) FROM Shohin
       ) AS hanbai_tanka_all
  FROM Shohin;
/*
 shohin_id |   shohin_mei   | shohin_bunrui | hanbai_tanka |   hanbai_tanka_all
-----------+----------------+---------------+--------------+-----------------------
 0001      | Tシャツ        | 衣服          |         1000 | 2097.5000000000000000
 0002      | 穴あけパンチ   | 事務用品      |          500 | 2097.5000000000000000
 0003      | カッターシャツ | 衣服          |         4000 | 2097.5000000000000000
 0004      | 包丁           | キッチン用品  |         3000 | 2097.5000000000000000
 0005      | 圧力鍋         | キッチン用品  |         6800 | 2097.5000000000000000
 0006      | フォーク       | キッチン用品  |          500 | 2097.5000000000000000
 0007      | おろしがね     | キッチン用品  |          880 | 2097.5000000000000000
 0008      | ボールペン     | 事務用品      |          100 | 2097.5000000000000000
(8 行)
*/

--練習問題5.4
CREATE VIEW AvgTankaByBunrui
    AS
SELECT shohin_id,
       shohin_mei,
       shohin_bunrui,
       hanbai_tanka,
       (
           SELECT AVG(hanbai_tanka)
             FROM Shohin AS S2
            WHERE S1.shohin_bunrui = S2.shohin_bunrui
       ) AS avg_hanbai_tanka
  FROM Shohin AS S1;

SELECT * FROM AvgTankaByBunrui;
/*
 shohin_id |   shohin_mei   | shohin_bunrui | hanbai_tanka |   avg_hanbai_tanka
-----------+----------------+---------------+--------------+-----------------------
 0001      | Tシャツ        | 衣服          |         1000 | 2500.0000000000000000
 0002      | 穴あけパンチ   | 事務用品      |          500 |  300.0000000000000000
 0003      | カッターシャツ | 衣服          |         4000 | 2500.0000000000000000
 0004      | 包丁           | キッチン用品  |         3000 | 2795.0000000000000000
 0005      | 圧力鍋         | キッチン用品  |         6800 | 2795.0000000000000000
 0006      | フォーク       | キッチン用品  |          500 | 2795.0000000000000000
 0007      | おろしがね     | キッチン用品  |          880 | 2795.0000000000000000
 0008      | ボールペン     | 事務用品      |          100 |  300.0000000000000000
(8 行)
*/
