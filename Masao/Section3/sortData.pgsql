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
