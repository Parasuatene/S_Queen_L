  SELECT shohin_bunrui, COUNT(*)
    FROM Shohin
GROUP BY shohin_bunrui;
/*
 shohin_bunrui | count
---------------+-------
 衣服          |     2
 事務用品      |     2
 キッチン用品  |     4
(3 行)

->カウントが2のデータだけをWHEREで絞り込める？
*/

  SELECT shohin_bunrui, COUNT(*)
    FROM Shohin
   WHERE COUNT(*)
GROUP BY shohin_bunrui;
/*
ERROR:  WHEREの中では集約関数を使用できません
行 6:    WHERE COUNT(*)
               ^
*/
