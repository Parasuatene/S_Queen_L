SELECT shohin_mei, torokubi --商品名と登録日カラムのデータ
FROM Shohin --テーブル選択
WHERE torokubi >= '2009-04-28'; --2009-04-28以前の範囲からデータを選択
