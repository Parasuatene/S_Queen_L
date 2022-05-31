--前方一致処理
SELECT *
  FROM SampleLike
 WHERE strcol LIKE 'ddd%'; --%は0文字以上の任意の文字列
/*
 strcol
--------
 dddabc
(1 行)
*/

--中間一致処理
SELECT *
  FROM SampleLike
 WHERE strcol LIKE '%ddd%';
/*
 strcol
--------
 abcddd
 dddabc
 abdddc
(3 行)
*/

--後方一致処理
SELECT *
  FROM SampleLike
 WHERE strcol LIKE '%ddd';
/*
 strcol
--------
 abcddd
(1 行)
*/

--LIKEとアンダーバーによる前方一致
SELECT *
  FROM SampleLike
 WHERE strcol LIKE 'abc__'; --_は任意の文字1字
/*
 strcol
--------
 abcdd
(1 行)
*/