DROP TABLE regions;
CREATE TABLE regions
    ( region_id      INTEGER 
    , region_name    VARCHAR(25) 
    );

DROP TABLE countries;
CREATE TABLE countries 
    ( country_id      CHAR(2) 
    , country_name    VARCHAR(40) 
    , region_id       INTEGER 
    ) ;

DROP TABLE locations;
CREATE TABLE locations
    ( location_id    INTEGER
    , street_address VARCHAR(40)
    , postal_code    VARCHAR(12)
    , city       VARCHAR(30)
    , state_province VARCHAR(25)
    , country_id     CHAR(2)
    ) ;

DROP SEQUENCE locations_seq;
CREATE SEQUENCE locations_seq
 START WITH     3300
 INCREMENT BY   100
 MAXVALUE       9900;

DROP TABLE departments;
CREATE TABLE departments
    ( department_id    INTEGER
    , department_name  VARCHAR(30)
    , manager_id       INTEGER
    , location_id      INTEGER
    ) ;

DROP SEQUENCE departments_seq;
CREATE SEQUENCE departments_seq
 START WITH     280
 INCREMENT BY   10
 MAXVALUE       9990
;

DROP TABLE jobs;
CREATE TABLE jobs
    ( job_id         VARCHAR(10)
    , job_title      VARCHAR(35)
    , min_salary     INTEGER
    , max_salary     INTEGER
    ) ;

DROP TABLE employees;
CREATE TABLE employees
    ( employee_id    INTEGER
    , first_name     VARCHAR(20)
    , last_name      VARCHAR(25)
    , email          VARCHAR(25)
    , phone_INTEGER   VARCHAR(20)
    , hire_date      DATE
    , job_id         VARCHAR(10)
    , salary         NUMERIC(8,2)
    , commission_pct NUMERIC(2,2)
    , manager_id     INTEGER
    , department_id  INTEGER
    ) ;


DROP SEQUENCE employees_seq;
CREATE SEQUENCE employees_seq
 START WITH     207
 INCREMENT BY   1
;

DROP TABLE job_history;
CREATE TABLE job_history
    ( employee_id   INTEGER
    , start_date    DATE
    , end_date      DATE
    , job_id        VARCHAR(10)
    , department_id INTEGER
    ) ;
