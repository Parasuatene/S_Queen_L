create table Shohin (
    shohin_id char(4) primary key not null,
    shohin_mei varchar(30) not null,
    shohin_bunrui varchar(20) not null,
    hanbai_tanka integer not null,
    shiire_tanka integer,
    torokubi date
);