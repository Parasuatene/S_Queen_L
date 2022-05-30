BEGIN TRANSACTION;

-- 重複を除いてからカウント
SELECT
    COUNT(DISTINCT shohin_bunrui)
FROM
    Shohin
;

-- カウントしてから、重複を除去
SELECT
    DISTINCT COUNT(shohin_bunrui)
FROM
    Shohin
;

COMMIT;