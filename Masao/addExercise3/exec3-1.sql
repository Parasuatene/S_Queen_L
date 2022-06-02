SELECT 
    ROW_NUMBER() OVER() AS " ",
    location_id         AS "LOCATION_ID",
    street_address      AS "STREET_ADDRESS",
    city                AS "CITY",
    state_province      AS "STATE_PROVINCE",
    country_name        AS "COUNTRY_NAME"

FROM
    locations INNER JOIN countries

ON
    locations.country_id = countries.country_id;

/*
    | LOCATION_ID |              STREET_ADDRESS              |        CITY         |  STATE_PROVINCE   |       COUNTRY_NAME
----+-------------+------------------------------------------+---------------------+-------------------+--------------------------     
  1 |        1100 | 93091 Calle della Testa                  | Venice              |                   | Italy
  2 |        1000 | 1297 Via Cola di Rie                     | Roma                |                   | Italy
  3 |        1300 | 9450 Kamiya-cho                          | Hiroshima           |                   | Japan
  4 |        1200 | 2017 Shinjuku-ku                         | Tokyo               | Tokyo Prefecture  | Japan
  5 |        1700 | 2004 Charade Rd                          | Seattle             | Washington        | United States of America      
  6 |        1600 | 2007 Zagora St                           | South Brunswick     | New Jersey        | United States of America      
  7 |        1500 | 2011 Interiors Blvd                      | South San Francisco | California        | United States of America      
  8 |        1400 | 2014 Jabberwocky Rd                      | Southlake           | Texas             | United States of America      
  9 |        1900 | 6092 Boxwood St                          | Whitehorse          | Yukon             | Canada
 10 |        1800 | 147 Spadina Ave                          | Toronto             | Ontario           | Canada
 11 |        2000 | 40-5-12 Laogianggen                      | Beijing             |                   | China
 12 |        2100 | 1298 Vileparle (E)                       | Bombay              | Maharashtra       | India
 13 |        2200 | 12-98 Victoria Street                    | Sydney              | New South Wales   | Australia
 14 |        2300 | 198 Clementi North                       | Singapore           |                   | Singapore
 15 |        2600 | 9702 Chester Road                        | Stretford           | Manchester        | United Kingdom
*/