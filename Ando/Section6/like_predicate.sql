BEGIN TRANSACTION;

-- 前方一致
-- '%'は0文字以上の任意の文字列を意味する（ワイルドカード的な存在）
SELECT
    *
FROM
    SampleLike
WHERE
    strcol LIKE 'ddd%'
;

-- 中間一致
SELECT
    *
FROM
    SampleLike
WHERE
    strcol LIKE '%ddd%'
;

-- 後方一致
SELECT
    *
FROM
    SampleLike
WHERE
    strcol LIKE '%ddd'
;

-- 条件一致
-- アンダーバーの中には任意の1文字が入る
SELECT
    *
FROM
    SampleLike
WHERE
    strcol LIKE 'abc___'
;

COMMIT;