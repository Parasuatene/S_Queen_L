--課題3.2
  SELECT shohin_bunrui, SUM(hanbai_tanka), SUM(shiire_tanka) --商品分類、販売単価の合計、仕入れ単価の合計をカラムとして出力
    FROM Shohin
GROUP BY shohin_bunrui                                       --商品分類でグループ化（これがないとSELECTで指定できない）
  HAVING SUM(hanbai_tanka) > SUM(shiire_tanka) * 1.5;        --販売単価の合計が仕入れ単価の合計の1.5倍より大きい
/*
 shohin_bunrui | sum  | sum
---------------+------+------
 衣服          | 5000 | 3300
 事務用品      |  600 |  320
(2 行)
*/
