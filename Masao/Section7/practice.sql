--練習問題7.1
   SELECT *
     FROM Shohin
    UNION
   SELECT *
     FROM Shohin
INTERSECT
   SELECT *
     FROM Shohin
 ORDER BY shohin_id;
/*
 shohin_id |   shohin_mei   | shohin_bunrui | hanbai_tanka | shiire_tanka |  torokubi  
-----------+----------------+---------------+--------------+--------------+------------
 0001      | Tシャツ        | 衣服          |         1000 |          500 | 2009-09-20
 0002      | 穴あけパンチ   | 事務用品      |          500 |          320 | 2009-09-11
 0003      | カッターシャツ | 衣服          |         4000 |         2800 | 
 0004      | 包丁           | キッチン用品  |         3000 |         2800 | 2009-09-20
 0005      | 圧力鍋         | キッチン用品  |         6800 |         5000 | 2009-01-15
 0006      | フォーク       | キッチン用品  |          500 |              | 2009-09-20
 0007      | おろしがね     | キッチン用品  |          880 |          790 | 2008-04-28
 0008      | ボールペン     | 事務用品      |          100 |              | 2009-11-11
(8 rows)
*/

--練習問題7.2
SELECT COALESCE(TS.tenpo_id, '不明') AS tenpo_id, 
       COALESCE(TS.tenpo_mei, '不明') AS tenpo_mei, 
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
 不明     | 不明      |           | ボールペン     |          100
 不明     | 不明      |           | 圧力鍋         |         6800
(15 rows)
*/