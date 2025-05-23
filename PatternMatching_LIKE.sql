USE coffee_store;

SELECT * FROM customers;

SELECT * FROM customers
WHERE last_name LIKE 'W%';

SELECT * FROM customers
WHERE last_name LIKE '%T%';

SELECT * FROM customers
WHERE first_name LIKE '_o_';

SELECT * FROM customers
WHERE first_name LIKE '_o__';

SELECT * FROM products;

SELECT * FROM products
WHERE price LIKE '3%';

SELECT * FROM products
WHERE price BETWEEN 3.00 AND 3.99;