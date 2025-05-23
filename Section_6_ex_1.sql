USE coffee_store;

SELECT * FROM customers;

SELECT * FROM products;


-- 1.
SELECT first_name, phone_number FROM customers
WHERE last_name = 'Bluth'
AND gender = 'F';

-- 2.
SELECT name FROM products
WHERE price > 3.00
OR coffee_origin = 'Sri Lanka';

-- 3.
SELECT * FROM customers
WHERE phone_number is null
AND gender = 'M';

-- 3 customers 

