--登録日をすべて2009年10月10日に更新
UPDATE Shohin
   SET torokubi = '2009-10-10';
/*
【更新後】
 shohin_id |  shohin_mei  | shohin_bunrui | hanbai_tanka | shiire_tanka |  torokubi
-----------+--------------+---------------+--------------+--------------+------------
 0001      | Tシャツ      | 衣服          |         1000 |          500 | 2009-10-10
 0002      | 穴あけパンチ | 事務用品      |          500 |          320 | 2009-10-10
 0004      | 包丁         | キッチン用品  |         3000 |         2800 | 2009-10-10
 0006      | フォーク     | キッチン用品  |          500 |              | 2009-10-10
 0007      | おろしがね   | キッチン用品  |          880 |          790 | 2009-10-10
 0008      | ボールペン   | 事務用品      |          100 |              | 2009-10-10
(6 行)
*/

--条件付きでデータを更新
UPDATE Shohin
   SET hanbai_tanka = hanbai_tanka * 10
 WHERE shohin_bunrui = 'キッチン用品';
/*
【更新後】
 shohin_id |  shohin_mei  | shohin_bunrui | hanbai_tanka | shiire_tanka |  torokubi
-----------+--------------+---------------+--------------+--------------+------------
 0001      | Tシャツ      | 衣服          |         1000 |          500 | 2009-10-10
 0002      | 穴あけパンチ | 事務用品      |          500 |          320 | 2009-10-10
 0008      | ボールペン   | 事務用品      |          100 |              | 2009-10-10
 0004      | 包丁         | キッチン用品  |        30000 |         2800 | 2009-10-10
 0006      | フォーク     | キッチン用品  |         5000 |              | 2009-10-10
 0007      | おろしがね   | キッチン用品  |         8800 |          790 | 2009-10-10
(6 行)
*/

--NULLクリア
UPDATE Shohin
   SET torokubi = NULL --データとしてNULLを挿入する
 WHERE shohin_id = '0008';
/*
【更新後】
 shohin_id |  shohin_mei  | shohin_bunrui | hanbai_tanka | shiire_tanka |  torokubi
-----------+--------------+---------------+--------------+--------------+------------
 0001      | Tシャツ      | 衣服          |         1000 |          500 | 2009-10-10
 0002      | 穴あけパンチ | 事務用品      |          500 |          320 | 2009-10-10
 0004      | 包丁         | キッチン用品  |        30000 |         2800 | 2009-10-10
 0006      | フォーク     | キッチン用品  |         5000 |              | 2009-10-10
 0007      | おろしがね   | キッチン用品  |         8800 |          790 | 2009-10-10
 0008      | ボールペン   | 事務用品      |          100 |              |
(6 行)
*/

--複数列更新（冗長な書き方）
UPDATE Shohin
   SET hanbai_tanka = hanbai_tanka * 10
 WHERE shohin_bunrui = 'キッチン用品';

UPDATE Shohin
   SET shiire_tanka = shiire_tanka / 2
 WHERE shohin_bunrui = 'キッチン用品';

--複数列更新（列をカンマ区切りで並べる）-> 基本的にはこっちの方法が良い
UPDATE Shohin
   SET hanbai_tanka = hanbai_tanka * 10,
       shiire_tanka = shiire_tanka / 2
 WHERE shohin_bunrui = 'キッチン用品';

--複数列更新（列をカッコで囲むことによるリスト表現）-> こっちはDBMSによっては使えない
UPDATE Shohin
   SET (hanbai_tanka, shiire_tanka) = (hanbai_tanka * 10, shiire_tanka / 2)
 WHERE shohin_bunrui = 'キッチン用品';
