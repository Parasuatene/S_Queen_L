  SELECT shohin_bunrui, COUNT(*)
    FROM Shohin
GROUP BY shohin_bunrui
  HAVING COUNT(*) = 2; --集合に対する条件を指定
/*
 shohin_bunrui | count
---------------+-------
 衣服          |     2
 事務用品      |     2
(2 行)
*/

  SELECT shohin_bunrui, COUNT(*)
    FROM Shohin
GROUP BY shohin_bunrui;
/*
 shohin_bunrui | count
---------------+-------
 衣服          |     2
 事務用品      |     2
 キッチン用品  |     4  ->HAVING指定がないとこのデータも出てくる
(3 行)
*/
