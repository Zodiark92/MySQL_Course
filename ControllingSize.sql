USE coffee_store;

SELECT * FROM customers;

SELECT * FROM customers
LIMIT 5;

SELECT * FROM customers
LIMIT 5 OFFSET 5;

SELECT * FROM customers
LIMIT 12,3; 
-- Equivalent to LIMIT 3 OFFSET 12

SELECT * FROM customers
ORDER BY last_name
LIMIT 10;