USE coffee_store;

SELECT * FROM products;

UPDATE products
SET coffee_origin = 'Sri Lanka'
WHERE id = 7;

UPDATE products
SET price = 3.25, coffee_origin = 'Ethiopa'
WHERE name = 'Americano';

SET sql_safe_updates = false;

UPDATE products
SET coffee_origin = 'Colombia'
WHERE coffee_origin = 'Brazil';