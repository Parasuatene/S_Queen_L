--2つのテーブルを内部結合する
SELECT TS.tenpo_id, 
       TS.tenpo_mei, 
       TS.shohin_id, 
       S.shohin_mei, 
       S.hanbai_tanka
  FROM TenpoShohin AS TS
  JOIN Shohin      AS S
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
*/