CREATE DATABASE storeDB;
USE storeDB;
CREATE TABLE transactions(
trans_id CHAR(4) not null primary key,
trans_date DATE not null,
item VARCHAR(65) not null,
quantity int,
amount decimal
);
INSERT INTO transactions(trans_id,trans_date,item,quantity,amount)
VALUES (1,'2026/03/17','clothing',34,340),
(2,'2026/03/17','house wares',39,390),
(3,'2026/03/17','cookies',339,3000),
(4,'2026/03/17','garden tool',null,null);
ALTER TABLE transactions
ADD rate decimal;
SELECT*
FROM transactions
WHERE amount is null;
SELECT*
FROM transactions;
SELECT*
FROM transactions
WHERE amount is null
or rate is null
or quantity is null
or item is null
or trans_date is null
or trans_id is null
UPDATE transactions
SET quantity = 56
WHERE trans_id = 4;
UPDATE transactions
SET rate = 10;
UPDATE transactions
SET amount = 560
WHERE trans_id = 4;
UPDATE transactions
SET item = UPPER(item);
