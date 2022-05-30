SELECT COUNT(*)  AS "列指定なしのcount", --列名を指定していないので、テーブルの列を全て数える
    COUNT(col_1) AS "列指定ありのcount"  --列名を指定しているので、col_1のNULLでない列を数える
  FROM NullTbl;
/*
 列指定なしのcount | 列指定ありのcount
-------------------+-------------------
                 3 |                 0
(1 行)
*/