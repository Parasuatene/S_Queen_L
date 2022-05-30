BEGIN TRANSACTION;

UPDATE Shohin
   SET hanbai_tanka = hanbai_tanka - 1000
 WHERE shohin_mei = 'カッターシャツ';

UPDATE Shohin
   SET hanbai_tanka = hanbai_tanka + 1000
 WHERE shohin_mei = 'Tシャツ';

COMMIT;
/*
【変更後】
 shohin_id |   shohin_mei   | shohin_bunrui | hanbai_tanka | shiire_tanka |  torokubi
-----------+----------------+---------------+--------------+--------------+------------
 0002      | 穴あけパンチ   | 事務用品      |          500 |          320 | 2009-09-11
 0004      | 包丁           | キッチン用品  |         3000 |         2800 | 2009-09-20
 0005      | 圧力鍋         | キッチン用品  |         6800 |         5000 | 2009-01-15
 0006      | フォーク       | キッチン用品  |          500 |              | 2009-09-20
 0007      | おろしがね     | キッチン用品  |          880 |          790 | 2008-04-28
 0008      | ボールペン     | 事務用品      |          100 |              | 2009-11-11
 0003      | カッターシャツ | 衣服          |         3000 |         2800 |
 0001      | Tシャツ        | 衣服          |         2000 |          500 | 2009-09-20
(8 行)
*/
