--UNIONによるテーブルの足し算
SELECT shohin_id, shohin_mei
  FROM Shohin
 UNION
SELECT shohin_id, shohin_mei
  FROM Shohin2;
/*
 shohin_id |   shohin_mei
-----------+----------------
 0007      | おろしがね
 0008      | ボールペン
 0006      | フォーク
 0004      | 包丁
 0003      | カッターシャツ
 0010      | やかん
 0002      | 穴あけパンチ
 0009      | 手袋
 0001      | Tシャツ
 0005      | 圧力鍋
(10 行)
*/

--UNIONを使用した場合のORDER BYは最後に一つだけ
 SELECT shohin_id, shohin_mei
   FROM Shohin
  WHERE shohin_bunrui = 'キッチン用品'
  UNION
 SELECT shohin_id, shohin_mei
   FROM Shohin2
  WHERE shohin_bunrui = 'キッチン用品'
ORDER BY shohin_id; --ここに一回だけ書く
/*
 shohin_id | shohin_mei
-----------+------------
 0004      | 包丁
 0005      | 圧力鍋
 0006      | フォーク
 0007      | おろしがね
 0010      | やかん
(5 行)
*/

--UNIONで重複を残す
SELECT shohin_id, shohin_mei
  FROM Shohin
 UNION ALL --ALLをつける
SELECT shohin_id, shohin_mei
  FROM Shohin2;
/*
 shohin_id |   shohin_mei
-----------+----------------
 0001      | Tシャツ
 0002      | 穴あけパンチ
 0003      | カッターシャツ
 0004      | 包丁
 0005      | 圧力鍋
 0006      | フォーク
 0007      | おろしがね
 0008      | ボールペン
 0001      | Tシャツ
 0002      | 穴あけパンチ
 0003      | カッターシャツ
 0009      | 手袋
 0010      | やかん
(13 行)
*/

--テーブル間の共通部分を選択
SELECT shohin_id, shohin_mei
  FROM Shohin
INTERSECT
SELECT shohin_id, shohin_mei
  FROM Shohin2;
/*
 shohin_id |   shohin_mei
-----------+----------------
 0002      | 穴あけパンチ
 0003      | カッターシャツ
 0001      | Tシャツ
(3 行)
*/