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

--範囲検索
SELECT shohin_mei, hanbai_tanka
  FROM Shohin
 WHERE hanbai_tanka BETWEEN 100 AND 1000; --販売単価が100~1000円
/*
  shohin_mei  | hanbai_tanka
--------------+--------------
 Tシャツ      |         1000
 穴あけパンチ |          500
 フォーク     |          500
 おろしがね   |          880
 ボールペン   |          100
(5 行)
*/

--NULLのデータを選択
SELECT shohin_mei, shiire_tanka
  FROM Shohin
 WHERE shiire_tanka IS NULL;
/*
 shohin_mei | shiire_tanka
------------+--------------
 フォーク   |
 ボールペン |
(2 行)
*/