CREATE TABLE ShohinIns
(shohin_id    CHAR(4)      NOT NULL,
 shohin_mei    VARCHAR(100) NOT NULL,
 shohin_bunrui VARCHAR(32)  NOT NULL,
 hanbai_tanka  INTEGER      DEFAULT 0,
 shiire_tanka  INTEGER,
 torokubi      DATE,
 PRIMARY KEY (shohin_id));

CREATE TABLE ShohinCopy
(shohin_id    CHAR(4)      NOT NULL,
 shohin_mei    VARCHAR(100) NOT NULL,
 shohin_bunrui VARCHAR(32)  NOT NULL,
 hanbai_tanka  INTEGER      DEFAULT 0,
 shiire_tanka  INTEGER,
 torokubi      DATE,
 PRIMARY KEY (shohin_id));

CREATE TABLE ShohinBunrui
(shohin_bunrui    VARCHAR(32)  NOT NULL,
 sum_hanbai_tanka INTEGER,
 sum_shiire_tanka INTEGER,
 PRIMARY KEY (shohin_bunrui));
 