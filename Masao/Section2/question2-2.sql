/*NULLに比較演算子を使うことはできないので、以下3つのコマンドは全て出力なし
NULLを判定したいならIS NULLかNOT IS NULLを使う
*/
SELECT *
  FROM Shohin
 WHERE shiire_tanka = NULL;

SELECT *
  FROM Shohin
 WHERE shiire_tanka <> NULL;

SELECT *
  FROM Shohin
 WHERE shiire_tanka > NULL;
