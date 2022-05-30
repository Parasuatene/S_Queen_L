--練習問題4.1
--Aさんがここまで実行
BEGIN TRANSACTION;
INSERT INTO Shohin VALUES ('0001', 'Tシャツ' ,'衣服', 1000, 500, '2009-09-20');
INSERT INTO Shohin VALUES ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11');
INSERT INTO Shohin VALUES ('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL);
--直後にBさんがこれを実行
SELECT * FROM Shohin;
/*
【Aさん側で実行】
 shohin_id |   shohin_mei   | shohin_bunrui | hanbai_tanka | shiire_tanka |  torokubi       
-----------+----------------+---------------+--------------+--------------+------------     
 0001      | Tシャツ        | 衣服          |         1000 |          500 | 2009-09-20      
 0002      | 穴あけパンチ   | 事務用品      |          500 |          320 | 2009-09-11      
 0003      | カッターシャツ | 衣服          |         4000 |         2800 |
(3 行)
*/
/*
【Bさん側で実行】
 shohin_id | shohin_mei | shohin_bunrui | hanbai_tanka | shiire_tanka | torokubi  
-----------+------------+---------------+--------------+--------------+---------- 
(0 行)
*/

--練習問題4.2
INSERT INTO Shohin SELECT * FROM Shohin; --データをそのままコピーして増やそうとする
/*
ERROR:  重複キーが一意性制約"shohin_pkey"に違反しています
DETAIL:  キー (shohin_id)=(0001) はすでに存在します
*/