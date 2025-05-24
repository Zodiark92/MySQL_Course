USE coffee_store;


-- 1.
SELECT * FROM customers;

SELECT DISTINCT last_name FROM customers
ORDER BY last_name;

-- 2.
SELECT * FROM orders;

SELECT * FROM orders
WHERE product_id = 3
AND (order_time BETWEEN '2023-02-01' AND '2023-02-28 23:59:59')
ORDER BY order_time
LIMIT 4;

-- 3.
SELECT name, price AS 'retail price', coffee_origin FROM products;

SELECT name, price AS retail_price, coffee_origin FROM products;

