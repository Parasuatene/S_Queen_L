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
