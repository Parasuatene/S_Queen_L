  SELECT shohin_mei, shiire_tanka, COUNT(*) --shohin_meiが集約キー（GROUP BYしたカラム）じゃないからエラーになる
    FROM Shohin
GROUP BY shiire_tanka;
/*
ERROR:  列"shohin.shohin_mei"はGROUP BY句で出現しなければならないか、集約関数内で使用しなければなりません
行 1: SELECT shohin_mei, shiire_tanka, COUNT(*)
*/
