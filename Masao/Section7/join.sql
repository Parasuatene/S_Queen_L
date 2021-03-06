--2つのテーブルを内部結合する
SELECT TS.tenpo_id, 
       TS.tenpo_mei, 
       TS.shohin_id, 
       S.shohin_mei, 
       S.hanbai_tanka
  FROM TenpoShohin  AS TS
  INNER JOIN Shohin AS S            --INNER JOINで複数のテーブルを内部結合している
    ON TS.shohin_id = S.shohin_id; --結合キー（複数のテーブルを結びつける結合条件）
/*
 tenpo_id | tenpo_mei | shohin_id |   shohin_mei   | hanbai_tanka 
----------+-----------+-----------+----------------+--------------
 000A     | 東京      | 0001      | Tシャツ        |         1000
 000A     | 東京      | 0002      | 穴あけパンチ   |          500
 000A     | 東京      | 0003      | カッターシャツ |         4000
 000B     | 名古屋    | 0002      | 穴あけパンチ   |          500
 000B     | 名古屋    | 0003      | カッターシャツ |         4000
 000B     | 名古屋    | 0004      | 包丁           |         3000
 000B     | 名古屋    | 0006      | フォーク       |          500
 000B     | 名古屋    | 0007      | おろしがね     |          880
 000C     | 大阪      | 0003      | カッターシャツ |         4000
 000C     | 大阪      | 0004      | 包丁           |         3000
 000C     | 大阪      | 0006      | フォーク       |          500
 000C     | 大阪      | 0007      | おろしがね     |          880
*/

--内部結合とWHEREを組み合わせる
SELECT TS.tenpo_id, 
       TS.tenpo_mei, 
       TS.shohin_id, 
       S.shohin_mei, 
       S.hanbai_tanka
  FROM TenpoShohin  AS TS
  INNER JOIN Shohin AS S 
    ON TS.shohin_id = S.shohin_id
 WHERE TS.tenpo_id = '000A';
/*
 tenpo_id | tenpo_mei | shohin_id |   shohin_mei   | hanbai_tanka 
----------+-----------+-----------+----------------+--------------
 000A     | 東京      | 0001      | Tシャツ        |         1000
 000A     | 東京      | 0002      | 穴あけパンチ   |          500
 000A     | 東京      | 0003      | カッターシャツ |         4000
(3 rows)
*/

--外部結合
SELECT TS.tenpo_id, 
       TS.tenpo_mei, 
       TS.shohin_id, 
       S.shohin_mei, 
       S.hanbai_tanka
  FROM TenpoShohin  AS TS
  RIGHT OUTER JOIN Shohin AS S
    ON TS.shohin_id = S.shohin_id;
/*
 tenpo_id | tenpo_mei | shohin_id |   shohin_mei   | hanbai_tanka 
----------+-----------+-----------+----------------+--------------
 000A     | 東京      | 0001      | Tシャツ        |         1000
 000A     | 東京      | 0002      | 穴あけパンチ   |          500
 000A     | 東京      | 0003      | カッターシャツ |         4000
 000B     | 名古屋    | 0002      | 穴あけパンチ   |          500
 000B     | 名古屋    | 0003      | カッターシャツ |         4000
 000B     | 名古屋    | 0004      | 包丁           |         3000
 000B     | 名古屋    | 0006      | フォーク       |          500
 000B     | 名古屋    | 0007      | おろしがね     |          880
 000C     | 大阪      | 0003      | カッターシャツ |         4000
 000C     | 大阪      | 0004      | 包丁           |         3000
 000C     | 大阪      | 0006      | フォーク       |          500
 000C     | 大阪      | 0007      | おろしがね     |          880
 000D     | 福岡      | 0001      | Tシャツ        |         1000
          |           |           | ボールペン     |          100
          |           |           | 圧力鍋         |         6800
(15 rows)
*/

--3つのテーブルを内部結合
SELECT TS.tenpo_id, 
       TS.tenpo_mei, 
       TS.shohin_id, 
       S.shohin_mei, 
       S.hanbai_tanka
  FROM TenpoShohin  AS TS
  INNER JOIN Shohin AS S
    ON TS.shohin_id = S.shohin_id
        INNER JOIN ZaikoShohin AS ZS
        ON TS.shohin_id = ZS.shohin_id
    WHERE ZS.souko_id = 'S001';
/*
 tenpo_id | tenpo_mei | shohin_id |   shohin_mei   | hanbai_tanka 
----------+-----------+-----------+----------------+--------------
 000A     | 東京      | 0001      | Tシャツ        |         1000
 000A     | 東京      | 0002      | 穴あけパンチ   |          500
 000A     | 東京      | 0003      | カッターシャツ |         4000
 000B     | 名古屋    | 0002      | 穴あけパンチ   |          500
 000B     | 名古屋    | 0003      | カッターシャツ |         4000
 000B     | 名古屋    | 0004      | 包丁           |         3000
 000B     | 名古屋    | 0006      | フォーク       |          500
 000B     | 名古屋    | 0007      | おろしがね     |          880
 000C     | 大阪      | 0003      | カッターシャツ |         4000
 000C     | 大阪      | 0004      | 包丁           |         3000
 000C     | 大阪      | 0006      | フォーク       |          500
 000C     | 大阪      | 0007      | おろしがね     |          880
 000D     | 福岡      | 0001      | Tシャツ        |         1000
(13 rows)
*/

--クロス結合
SELECT TS.tenpo_id,
       TS.tenpo_mei,
       TS.shohin_id,
       S.shohin_mei
  FROM TenpoShohin AS TS
  CROSS JOIN Shohin AS S;
/*
 tenpo_id | tenpo_mei | shohin_id |   shohin_mei   
----------+-----------+-----------+----------------
 000A     | 東京      | 0001      | Tシャツ
 000A     | 東京      | 0002      | Tシャツ
 000A     | 東京      | 0003      | Tシャツ
 000B     | 名古屋    | 0002      | Tシャツ
 000B     | 名古屋    | 0003      | Tシャツ
 000B     | 名古屋    | 0004      | Tシャツ
 000B     | 名古屋    | 0006      | Tシャツ
 000B     | 名古屋    | 0007      | Tシャツ
 000C     | 大阪      | 0003      | Tシャツ
 000C     | 大阪      | 0004      | Tシャツ
 000C     | 大阪      | 0006      | Tシャツ
 000C     | 大阪      | 0007      | Tシャツ
 000D     | 福岡      | 0001      | Tシャツ
 000A     | 東京      | 0001      | 穴あけパンチ
 000A     | 東京      | 0002      | 穴あけパンチ
 000A     | 東京      | 0003      | 穴あけパンチ
 000B     | 名古屋    | 0002      | 穴あけパンチ
 000B     | 名古屋    | 0003      | 穴あけパンチ
 000B     | 名古屋    | 0004      | 穴あけパンチ
 000B     | 名古屋    | 0006      | 穴あけパンチ
 000B     | 名古屋    | 0007      | 穴あけパンチ
 000C     | 大阪      | 0003      | 穴あけパンチ
 000C     | 大阪      | 0004      | 穴あけパンチ
 000C     | 大阪      | 0006      | 穴あけパンチ
*/
