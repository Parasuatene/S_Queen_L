--Shohinテーブルを空にする
DELETE FROM Shohin;

--条件をつけてデータを削除する
DELETE FROM Shohin
 WHERE hanbai_tanka >= 4000; --販売単価が4000円以上のデータを削除
