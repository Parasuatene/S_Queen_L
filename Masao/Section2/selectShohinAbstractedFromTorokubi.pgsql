SELECT shohin_mei AS "商品名", --商品名と登録日カラムのデータ
       torokubi   AS "登録日"  --日本語のカラム名は気持ち悪さもあるけど、表示の時は案外わかりやすい
FROM Shohin --テーブル選択
WHERE torokubi >= '2009-04-28'; --2009-04-28以前の範囲からデータを選択
