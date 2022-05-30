  SELECT shohin_bunrui, AVG(hanbai_tanka)
    FROM Shohin
GROUP BY shohin_bunrui;
/*
 shohin_bunrui |          avg
---------------+-----------------------
 衣服          | 2500.0000000000000000
 事務用品      |  300.0000000000000000
 キッチン用品  | 2795.0000000000000000
(3 行)
*/

  SELECT shohin_bunrui, AVG(hanbai_tanka)
    FROM Shohin
GROUP BY shohin_bunrui
  HAVING AVG(hanbai_tanka) >= 2500; --販売単価が2500円以上のグループが条件
/*
 shohin_bunrui |          avg
---------------+-----------------------
 衣服          | 2500.0000000000000000
 キッチン用品  | 2795.0000000000000000
(2 行)
*/
