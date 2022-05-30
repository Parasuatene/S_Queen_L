-- '2'より大きいデータを取得
SELECT
    chr
FROM
    Chars
WHERE
    chr > '2';

/*
実行結果
文字の比較は辞書式で行われる

 chr
-----
 3
 222
(2 行)
*/
