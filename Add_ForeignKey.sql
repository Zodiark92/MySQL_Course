USE test;

DESCRIBE addresses;

DESCRIBE people;

ALTER TABLE people
ADD CONSTRAINT FK_peopleaddress
FOREIGN KEY (addresses_id) REFERENCES addresses(id);

ALTER TABLE people
DROP FOREIGN KEY FK_peopleaddress,
DROP INDEX FK_peopleaddress;

ALTER TABLE people
DROP FOREIGN KEY FK_peopleaddress;

ALTER TABLE people
DROP INDEX FK_peopleaddress;

-- https://www.sqlshack.com/commonly-used-sql-server-constraints-not-null-unique-primary-key/
-- https://www.simplilearn.com/tutorials/sql-tutorial/index-in-sql

-- MySQL requires that foreign key columns be indexed; if you create a table with a foreign key constraint but no index on a given column, an index is created.