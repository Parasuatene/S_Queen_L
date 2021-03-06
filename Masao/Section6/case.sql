--CASE文で商品分類にA~Cの文字列を割り当てる
SELECT shohin_mei,
       CASE WHEN shohin_bunrui = '衣服'
            THEN 'A:' || shohin_bunrui
            WHEN shohin_bunrui = '事務用品'
            THEN 'B:' || shohin_bunrui
            WHEN shohin_bunrui = 'キッチン用品'
            THEN 'C:' || shohin_bunrui
            ELSE NULL
        END AS abc_shohin_bunrui
  FROM Shohin;
/*
   shohin_mei   | abc_shohin_bunrui
----------------+-------------------
 Tシャツ        | A:衣服
 穴あけパンチ   | B:事務用品
 カッターシャツ | A:衣服
 包丁           | C:キッチン用品
 圧力鍋         | C:キッチン用品
 フォーク       | C:キッチン用品
 おろしがね     | C:キッチン用品
 ボールペン     | B:事務用品
(8 行)
*/

--CASE式を使って行列変換
SELECT SUM(
            CASE WHEN shohin_bunrui = '衣服'
                 THEN hanbai_tanka
                 ELSE 0
            END
        ) AS sum_tanka_ihuku,
        SUM(
            CASE WHEN shohin_bunrui = 'キッチン用品'
                 THEN hanbai_tanka
                 ELSE 0
            END
        ) AS sum_tanka_kitchen,
        SUM(
            CASE WHEN shohin_bunrui = '事務用品'
                 THEN hanbai_tanka
                 ELSE 0
            END
        ) AS sum_tanka_jimu
  FROM Shohin;
/*
 sum_tanka_ihuku | sum_tanka_kitchen | sum_tanka_jimu
-----------------+-------------------+----------------
            5000 |             11180 |            600
(1 行)
*/