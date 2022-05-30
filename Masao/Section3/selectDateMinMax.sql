SELECT MAX(torokubi), --日付の最大値
       MIN(torokubi)  --日付の最小値
  FROM Shohin;
/*
    max     |    min
------------+------------
 2009-11-11 | 2008-04-28
(1 行)
*/
