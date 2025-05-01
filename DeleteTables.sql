-- DELETE TABLE/TRUNCATE DATA IN A DATABASE

CREATE DATABASE example;

USE example;

CREATE TABLE test(
id INT auto_increment PRIMARY KEY,
name VARCHAR(30),
age INT
);

DESCRIBE test;

SHOW tables;

DROP TABLE test;

INSERT INTO test (name, age) VALUES ('Ben', 25), ('Simon', 22), ('Claire', 28);

SELECT * FROM test;

TRUNCATE TABLE test;