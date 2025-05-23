USE coffee_store;

-- 1.
SELECT name, price FROM products
WHERE coffee_origin IN ('Colombia', 'Indonesia')
ORDER BY name;


-- 2. 
SELECT * FROM orders
WHERE customer_id IN (19, 20, 21, 24)
AND (order_time BETWEEN '2023-02-01' AND '2025-05-23 23:59:59');
 
 -- 3.
SELECT first_name, phone_number, last_name FROM customers
WHERE last_name LIKE '%ar%'; 

