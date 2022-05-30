create table Jyushoroku (
    toroku_bango integer primary key not null,
    namae varchar(128) not null,
    jyusho varchar(256) not null,
    tel_no char(10),
    mail_address char(20),
    yubin_bango char(8) not null
);