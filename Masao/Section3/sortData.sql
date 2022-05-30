  SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
    FROM Shohin
ORDER BY hanbai_tanka; --販売単価の昇順で並べ替え
/*
 shohin_id |   shohin_mei   | hanbai_tanka | shiire_tanka
-----------+----------------+--------------+--------------
 0008      | ボールペン     |          100 |
 0006      | フォーク       |          500 |
 0002      | 穴あけパンチ   |          500 |          320
 0007      | おろしがね     |          880 |          790
 0001      | Tシャツ        |         1000 |          500
 0004      | 包丁           |         3000 |         2800
 0003      | カッターシャツ |         4000 |         2800
 0005      | 圧力鍋         |         6800 |         5000
(8 行)
*/

  SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
    FROM Shohin
ORDER BY hanbai_tanka DESC; --販売単価の降順で並べ替え
/*
 shohin_id |   shohin_mei   | hanbai_tanka | shiire_tanka
-----------+----------------+--------------+--------------
 0005      | 圧力鍋         |         6800 |         5000
 0003      | カッターシャツ |         4000 |         2800
 0004      | 包丁           |         3000 |         2800
 0001      | Tシャツ        |         1000 |          500
 0007      | おろしがね     |          880 |          790
 0002      | 穴あけパンチ   |          500 |          320
 0006      | フォーク       |          500 |
 0008      | ボールペン     |          100 |
(8 行)
*/

  SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
    FROM Shohin
ORDER BY hanbai_tanka, shohin_id; --複数のカラムで並べ替え（左側にあるキーから優先順位が高くなる）
/*
 shohin_id |   shohin_mei   | hanbai_tanka | shiire_tanka
-----------+----------------+--------------+--------------
 0008      | ボールペン     |          100 |
 0002      | 穴あけパンチ   |          500 |          320
 0006      | フォーク       |          500 |
 0007      | おろしがね     |          880 |          790
 0001      | Tシャツ        |         1000 |          500
 0004      | 包丁           |         3000 |         2800
 0003      | カッターシャツ |         4000 |         2800
 0005      | 圧力鍋         |         6800 |         5000
(8 行)
*/

  SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
    FROM Shohin
ORDER BY shiire_tanka;
/*
 shohin_id |   shohin_mei   | hanbai_tanka | shiire_tanka
-----------+----------------+--------------+--------------
 0002      | 穴あけパンチ   |          500 |          320
 0001      | Tシャツ        |         1000 |          500
 0007      | おろしがね     |          880 |          790
 0003      | カッターシャツ |         4000 |         2800
 0004      | 包丁           |         3000 |         2800
 0005      | 圧力鍋         |         6800 |         5000
 0006      | フォーク       |          500 |
 0008      | ボールペン     |          100 |
(8 行)

->NULLのデータが最後にまとめて表示されている
*/

  SELECT shohin_id AS id,
         shohin_mei,
         hanbai_tanka AS ht,
         shiire_tanka
    FROM Shohin
ORDER BY ht, id; --実行順がSELECTよりも後になるので、ASで定義された変数を使用できる
/*
  id  |   shohin_mei   |  ht  | shiire_tanka
------+----------------+------+--------------
 0008 | ボールペン     |  100 |
 0002 | 穴あけパンチ   |  500 |          320
 0006 | フォーク       |  500 |
 0007 | おろしがね     |  880 |          790
 0001 | Tシャツ        | 1000 |          500
 0004 | 包丁           | 3000 |         2800
 0003 | カッターシャツ | 4000 |         2800
 0005 | 圧力鍋         | 6800 |         5000
(8 行)
*/

  SELECT shohin_mei, hanbai_tanka, shiire_tanka
    FROM Shohin
ORDER BY shohin_id; --SELECT句で登場していないカラムであっても指定可能
/*
   shohin_mei   | hanbai_tanka | shiire_tanka
----------------+--------------+--------------
 Tシャツ        |         1000 |          500
 穴あけパンチ   |          500 |          320
 カッターシャツ |         4000 |         2800
 包丁           |         3000 |         2800
 圧力鍋         |         6800 |         5000
 フォーク       |          500 |
 おろしがね     |          880 |          790
 ボールペン     |          100 |
(8 行)
*/

  SELECT shohin_bunrui, COUNT(*)
    FROM Shohin
GROUP BY shohin_bunrui
ORDER BY COUNT(*); --集約関数を利用してソートすることも可能
/*
 shohin_bunrui | count
---------------+-------
 衣服          |     2
 事務用品      |     2
 キッチン用品  |     4
(3 行)
*/

--列名で指定
  SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
    FROM Shohin
ORDER BY hanbai_tanka DESC, shohin_id; --列の情報を名前で指定
/*
 shohin_id |   shohin_mei   | hanbai_tanka | shiire_tanka
-----------+----------------+--------------+--------------
 0005      | 圧力鍋         |         6800 |         5000
 0003      | カッターシャツ |         4000 |         2800
 0004      | 包丁           |         3000 |         2800
 0001      | Tシャツ        |         1000 |          500
 0007      | おろしがね     |          880 |          790
 0002      | 穴あけパンチ   |          500 |          320
 0006      | フォーク       |          500 |
 0008      | ボールペン     |          100 |
(8 行)
*/

--列番号で指定
  SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
    FROM Shohin
ORDER BY 3 DESC, 1; --列の情報を番号で指定(可読性の低さ、保守性の低さ（将来そのカラムが削除される場合など）から非推奨)
/*
 shohin_id |   shohin_mei   | hanbai_tanka | shiire_tanka
-----------+----------------+--------------+--------------
 0005      | 圧力鍋         |         6800 |         5000
 0003      | カッターシャツ |         4000 |         2800
 0004      | 包丁           |         3000 |         2800
 0001      | Tシャツ        |         1000 |          500
 0007      | おろしがね     |          880 |          790
 0002      | 穴あけパンチ   |          500 |          320
 0006      | フォーク       |          500 |
 0008      | ボールペン     |          100 |
(8 行)
*/
