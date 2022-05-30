INSERT INTO ShohinIns ( --データの挿入
    shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi --列リスト（データを挿入するカラム）
) VALUES (
    '0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20' --値リスト（順序は上記のカラムの並びに順序）
);

--複数行のデータ挿入
INSERT INTO ShohinIns VALUES
('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11'),
('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL),
('0004', '包丁', 'キッチン用品', 3000, 2800, '2009-09-20');

--列リストの省略
INSERT INTO ShohinIns VALUES ('0005', '圧力鍋', 'キッチン用品', 6800, 5000, '2009-01-15');

--NULLを挿入する
INSERT INTO ShohinIns (
    shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi
) VALUES (
    '0006', 'フォーク', 'キッチン用品', 500, NULL, '2009-09-20' --NULLを挿入
);

--明示的にデフォルト値を挿入
INSERT INTO ShohinIns (
    shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi
) VALUES (
'0007', 'おろしがね', 'キッチン用品', DEFAULT, 790, '2009-04-28' --デフォルト値を挿入するカラムにDEFAULTを指定
);

--暗黙的にデフォルト値を挿入
INSERT INTO ShohinIns (
    shohin_id, shohin_mei, shohin_bunrui, shiire_tanka, torokubi --hanbai_tankaを省略
) VALUES (
'0007', 'おろしがね', 'キッチン用品', 790, '2009-04-28' --値も省略
);

--shiire_tanka列（制約なし）を省略
INSERT INTO ShohinIns (
    shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, torokubi
) VALUES (
'0008', 'ボールペン', '事務用品', 100, '2009-11-11'
);

--shohin_mei列（NOT NULL）を省略->エラー
INSERT INTO ShohinIns (
    shohin_id, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi
) VALUES (
'0008', '事務用品', 1000, 500, '2009-12-12'
);
/*
ERROR:  列"shohin_mei"内のNULL値はNOT NULL制約違反です
DETAIL:  失敗した行は(0008, null, 事務用品, 1000, 500, 2009-12-12)を含みます
*/

--INSERT ... SELECT文
INSERT INTO ShohinCopy (
    shohin_id , shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi
)
SELECT shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi --SELECTで抽出したデータを挿入する
  FROM Shohin;
