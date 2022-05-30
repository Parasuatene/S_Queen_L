--Shohinテーブルを空にする
DELETE FROM Shohin;

--条件をつけてデータを削除する
DELETE FROM Shohin
 WHERE hanbai_tanka >= 4000; --販売単価が4000円以上のデータを削除

/*
INSERTのときはGPOUP BYやHAVINGが使えるが
DELETEでは使えない
*/

--TRUNCATE
TRUNCATE Shohin; --テーブルを全削除するコマンド（DELETEで全削除するよりも処理速度が速い）
