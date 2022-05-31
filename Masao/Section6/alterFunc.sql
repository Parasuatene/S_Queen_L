--文字列から数値型への変換
SELECT CAST('0001' AS INTEGER) AS int_col;
/*
 int_col
---------
       1
(1 行)
*/

--文字列型から日付型へ変換
SELECT CAST('2009-12-14' AS DATE) AS date_col;
/*
  date_col
------------
 2009-12-14
(1 行)
*/
