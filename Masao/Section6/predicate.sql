--前方一致処理
SELECT *
  FROM SampleLike
 WHERE strcol LIKE 'ddd%';
/*
 strcol
--------
 dddabc
(1 行)
*/