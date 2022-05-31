--FROM句に直接ビュー定義を書く
SELECT shohin_bunrui, cnt_shohin
  FROM ( --FROM内にビューの定義を記述
        SELECT shohin_bunrui,
               COUNT(*) AS cnt_shohin
          FROM Shohin
      GROUP BY shohin_bunrui
  ) AS ShohinSum;
/*
 shohin_bunrui | cnt_shohin
---------------+------------
 キッチン用品  |          4
 衣服          |          2
 事務用品      |          2
(3 行)
*/

--3段のサブクエリ
SELECT shohin_bunrui, cnt_shohin --➂商品分類でグループ化されたテーブルのデータ数が4のデータの商品分類とデータ数を表示
  FROM (                         --➁商品分類でグループ化されたテーブルのデータ数が4のデータを抽出
      SELECT * 
        FROM (                   --➀商品テーブルを商品分類でグループ化
              SELECT shohin_bunrui,
                     COUNT(*) AS cnt_shohin
                FROM Shohin
            GROUP BY shohin_bunrui
        ) AS ShohinSum
       WHERE cnt_shohin = 4
  ) AS ShohinSum2;
/*
 shohin_bunrui | cnt_shohin
---------------+------------
 キッチン用品  |          4
(1 行)
*/

--スカラ・サブクエリ（単一のデータを返すようなクエリ）
SELECT shohin_id, shohin_mei, hanbai_tanka
  FROM Shohin
 WHERE hanbai_tanka > (
     SELECT AVG(hanbai_tanka)
       FROM Shohin
 );
/*
 shohin_id |   shohin_mei   | hanbai_tanka
-----------+----------------+--------------
 0003      | カッターシャツ |         4000
 0004      | 包丁           |         3000
 0005      | 圧力鍋         |         6800
(3 行)
*/
