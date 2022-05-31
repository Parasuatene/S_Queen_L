--練習問題6.1
SELECT shohin_mei, shiire_tanka
  FROM Shohin
 WHERE shiire_tanka NOT IN (500, 2800, 5000);
/*
  shohin_mei  | shiire_tanka
--------------+--------------
 穴あけパンチ |          320
 おろしがね   |          790
(2 行)
*/

SELECT shohin_mei, shiire_tanka
  FROM Shohin
 WHERE shiire_tanka NOT IN (500, 2800, 5000, NULL); --どの列もNULLとの比較はできない？
/*
 shohin_mei | shiire_tanka
------------+--------------
(0 行)
*/

--練習問題6.2
--   SELECT (SELECT COUNT(*) FROM Shohin WHERE hanbai_tanka <= 1000) AS low_price,
--          (SELECT COUNT(*) FROM Shohin WHERE hanbai_tanka BETWEEN 1001 AND 3000) AS mid_price,
--          (SELECT COUNT(*) FROM Shohin WHERE hanbai_tanka >= 3001) AS high_price
--     FROM Shohin;

SELECT COUNT(CASE WHEN hanbai_tanka <= 1000 THEN 1 ELSE NULL END) AS low_price,
       COUNT(CASE WHEN hanbai_tanka BETWEEN 1001 AND 3000 THEN 1 ELSE NULL END) AS mid_price,
       COUNT(CASE WHEN hanbai_tanka >= 3001 THEN 1 ELSE NULL END) AS high_price
  FROM Shohin;

-- SELECT COUNT(SELECT * FROM Shohin WHERE hanbai_tanka <= 1000) AS low_price,
--        COUNT(SELECT * FROM Shohin WHERE hanbai_tanka BETWEEN 1001 AND 3000) AS mid_price,
--        COUNT(SELECT * FROM Shohin WHERE hanbai_tanka >= 3001) AS high_price
--   FROM Shohin;

--模範解答
SELECT SUM(CASE WHEN hanbai_tanka <= 1000 THEN 1 ELSE 0 END) AS low_price,
       SUM(CASE WHEN hanbai_tanka BETWEEN 1001 AND 3000 THEN 1 ELSE 0 END) AS mid_price,
       SUM(CASE WHEN hanbai_tanka >= 3001 THEN 1 ELSE 0 END) AS high_price
  FROM Shohin;
