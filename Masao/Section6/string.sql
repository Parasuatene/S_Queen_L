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
