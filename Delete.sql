USE test;

CREATE TABLE people (
id INT PRIMARY KEY auto_increment,
name VARCHAR(30),
age INT,
gender ENUM('M','F')
);

DESCRIBE people;

INSERT INTO people (name, age, gender)
VALUES ('Emma', 21, 'F'), ('Jhon', 30, 'M'), ('Thomas', 27, 'M'),
('Chris', 44, 'M'), ('Sally', 23, 'F'), ('Frank', 55, 'M');

SELECT * FROM people;

DELETE FROM people
WHERE name = 'Jhon'; 

DELETE FROM people
WHERE gender = 'F';

SET sql_safe_updates = true;

DELETE FROM people;