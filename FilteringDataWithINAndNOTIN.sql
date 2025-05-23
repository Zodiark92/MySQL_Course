USE coffee_store;

SELECT * FROM customers;

SELECT * FROM customers
WHERE last_name IN ('Taylor', 'Bluth', 'Taylor');

SELECT * FROM customers
WHERE last_name NOT IN ('Katie', 'Jhon', 'George');