CREATE TABLE NullTbl (
    col_1 INTEGER
);

BEGIN TRANSACTION;

INSERT INTO NullTbl VALUES (NULL);
INSERT INTO NullTbl VALUES (NULL);
INSERT INTO NullTbl VALUES (NULL);

COMMIT;
