--現在の日付を表示
SELECT CURRENT_DATE;
/*
    date
------------
 2022-05-31
(1 行)
*/

--現在時刻を表示
SELECT CURRENT_TIME;
/*
       timetz
--------------------
 11:52:26.809886+09
(1 行)
*/

--現在の日時を表示
SELECT CURRENT_TIMESTAMP;
/*
              now
-------------------------------
 2022-05-31 11:53:45.143144+09
(1 行)
*/

--日付要素の切り出し
SELECT CURRENT_TIMESTAMP,
       EXTRACT(YEAR   FROM CURRENT_TIMESTAMP) AS year,
       EXTRACT(MONTH  FROM CURRENT_TIMESTAMP) AS month,
       EXTRACT(DAY    FROM CURRENT_TIMESTAMP) AS day,
       EXTRACT(HOUR   FROM CURRENT_TIMESTAMP) AS hour,
       EXTRACT(MINUTE FROM CURRENT_TIMESTAMP) AS mitute,
       EXTRACT(SECOND FROM CURRENT_TIMESTAMP) AS second;
/*
              now              | year | month | day | hour | mitute |  second
-------------------------------+------+-------+-----+------+--------+-----------
 2022-05-31 13:07:51.706766+09 | 2022 |     5 |  31 |   13 |      7 | 51.706766
(1 行)
*/