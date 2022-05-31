--文字列の連結
SELECT str1, str2,
       str1 || str2 AS str_concat
  FROM SampleStr;
/*
     str1     |  str2  |   str_concat
--------------+--------+----------------
 あいう       | えお   | あいうえお
 abc          | def    | abcdef
 山田         | 太郎   | 山田太郎
 aaa          |        |
              | あああ |
 @!#$%        |        |
 ABC          |        |
 aBC          |        |
 abc太郎      | abc    | abc太郎abc
 abcdefabc    | abc    | abcdefabcabc
 ミックマック | ッ     | ミックマックッ
(11 行)
*/

--文字列の長さを調べる
SELECT str1,
       LENGTH(str1) AS len_str
  FROM SampleStr;
/*
     str1     | len_str
--------------+---------
 あいう       |       3
 abc          |       3
 山田         |       2
 aaa          |       3
              |
 @!#$%        |       5
 ABC          |       3
 aBC          |       3
 abc太郎      |       5
 abcdefabc    |       9
 ミックマック |       6
(11 行)
*/

--文字列を小文字化
SELECT str1,
       LOWER(str1) AS low_str
  FROM SampleStr
 WHERE str1 IN ('ABC', 'aBC', 'abc', '山田');
/*
 str1 | low_str
------+---------
 abc  | abc
 山田 | 山田
 ABC  | abc
 aBC  | abc
(4 行)
*/

--文字列の置換
SELECT str1, str2, str3,
       REPLACE(str1, str2, str3) AS rep_str
  FROM SampleStr;
/*
     str1     |  str2  | str3 |   rep_str
--------------+--------+------+--------------
 あいう       | えお   |      |
 abc          | def    |      |
 山田         | 太郎   | です | 山田
 aaa          |        |      |
              | あああ |      |
 @!#$%        |        |      |
 ABC          |        |      |
 aBC          |        |      |
 abc太郎      | abc    | ABC  | ABC太郎
 abcdefabc    | abc    | ABC  | ABCdefABC
 ミックマック | ッ     | っ   | ミっクマっク
(11 行)
*/
