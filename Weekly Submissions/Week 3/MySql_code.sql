CREATE TABLE CLIENT_MASTER(
  CLIENT_NO INTEGER, 
  CLIENT_NAME VARCHAR(20), 
  CITY VARCHAR(15), 
  STATE VARCHAR(15), 
  PIN INTEGER, 
  BALANCE_DUE DECIMAL(10,2));
  
INSERT INTO CLIENT_MASTER VALUES 
  (001,"IVAN","BOMBAY","MAHARASTRA",400057,15000),
  (002,"VANDURA","MADRAS","TAMILNADU",980001,0),
  (003,"PRAMOD","BOMBAY","MAHARASTRA",400057,5000),
  (004,"BASU","BOMBAY","MAHARASTRA",400056,0),
  (005,"RAVI","DELHI",NULL,100001,2000),
  (006,"RUKMINI","BOMBAY","MAHARASTRA",900050,0);
  
CREATE TABLE CLIENT_DETAILS(
  CLIENT_NO INTEGER, 
  CLIENT_AGE INTEGER);
  
INSERT INTO CLIENT_DETAILS VALUES 
  (001,26),
  (002,34),
  (003,43),
  (004,52),
  (005,31),
  (006,65);
  
SELECT * FROM CLIENT_MASTER;

SELECT * FROM CLIENT_DETAILS;

DELETE FROM CLIENT_MASTER 
  WHERE CLIENT_NO=001;

UPDATE CLIENT_MASTER 
  SET CITY="BOMBAY" 
  WHERE CLIENT_NO=005;

UPDATE CLIENT_MASTER 
  SET BALANCE_DUE=1000 
  WHERE CLIENT_NO=002;

SELECT * FROM CLIENT_MASTER;

SELECT AVG(BALANCE_DUE) FROM CLIENT_MASTER;

SELECT * FROM CLIENT_MASTER 
  WHERE CITY LIKE "_A%" OR STATE LIKE "_A%";
  
SELECT CLIENT_NO, CLIENT_NAME, CLIENT_AGE
  FROM CLIENT_MASTER
  INNER JOIN CLIENT_DETAILS
  USING (CLIENT_NO);