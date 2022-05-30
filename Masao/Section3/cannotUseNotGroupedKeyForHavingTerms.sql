  SELECT shohin_bunrui, COUNT(*)
    FROM Shohin
GROUP BY shohin_bunrui
  HAVING shohin_mei = 'ボールペン'; --shohin_meiが集約関数じゃないし、GROUP BYで指定もされていないからエラーになる
/*
ERROR:  列"shohin.shohin_mei"はGROUP BY句で出現しなければならないか、集約関数内で使用しなければなりません
行 6:   HAVING shohin_mei = 'ボールペン';
*/
