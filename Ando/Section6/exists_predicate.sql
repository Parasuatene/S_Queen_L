SELECT
    shohin_id,
    shohin_mei,
    hanbai_tanka
FROM
    Shohin AS S
WHERE
    EXISTS (
        SELECT
            *  -- この値は何でもOK。慣習的に*が用いられている。
        FROM
            TenpoShohin AS TS
        WHERE
            TS.tenpo_id = '000C'
            AND TS.shohin_id = S.shohin_id  -- ここがキー列となる
    )
;