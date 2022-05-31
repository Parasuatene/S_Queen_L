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
