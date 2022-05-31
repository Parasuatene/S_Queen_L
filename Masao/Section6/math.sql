--数値の絶対値を求める
SELECT m,
       ABS(m) AS abs_col --ABS関数で絶対を計算
  FROM SampleMath;
/*
    m     | abs_col
----------+---------
  500.000 | 500.000
 -180.000 | 180.000
          |
          |
          |
          |
    8.000 |   8.000
    2.270 |   2.270
    5.555 |   5.555
          |
    8.760 |   8.760
(11 行)
*/

--余剰を求める
SELECT n, p,
       MOD(n, p) AS mod_col --MOD(n, p)でnをpで割った余りを計算
  FROM SampleMath;
/*
 n | p | mod_col
---+---+---------
 0 |   |
 0 |   |
   |   |
 7 | 3 |       1
 5 | 2 |       1
 4 |   |
   | 3 |
 1 |   |
 2 |   |
 1 |   |
   |   |
(11 行)
*/

--四捨五入
SELECT m, n,
       ROUND(m, n) AS round_col --ROUND(m, n)でmを小数第n位で四捨五入する
  FROM SampleMath;
/*
    m     | n | round_col
----------+---+-----------
  500.000 | 0 |       500
 -180.000 | 0 |      -180
          |   |
          | 7 |
          | 5 |
          | 4 |
    8.000 |   |
    2.270 | 1 |       2.3
    5.555 | 2 |      5.56
          | 1 |
    8.760 |   |
(11 行)
*/