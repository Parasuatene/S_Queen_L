  SELECT shohin_bunrui, COUNT(*)
    FROM Shohin
GROUP BY shohin_bunrui
  HAVING shohin_bunrui = '衣服'; --HAVING句で絞り込み
/*
 shohin_bunrui | count
---------------+-------
 衣服          |     2
(1 行)
*/

  SELECT shohin_bunrui, COUNT(*)
    FROM Shohin
   WHERE shohin_bunrui = '衣服'  --WHERE句で絞り込み
GROUP BY shohin_bunrui;
/*
 shohin_bunrui | count
---------------+-------
 衣服          |     2
(1 行)
*/

/*
上記の二つのコマンドは同じ出力結果を示すが、この場合WHERE句で絞り込みをしたほうが良い
理由は二つ
①今回の条件はHAVING句を使用する目的である「グループに対する条件指定」とは一致していない
②WHERE句のほうが処理速度が速い（HAVINGだとソートしたりグループ化したりしてから条件にかけるから重い）
*/