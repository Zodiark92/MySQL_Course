USE coffee_store;

SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM orders;

-- 1. 
SELECT o.id, c.phone_number FROM orders o
INNER JOIN  customers c ON o.customer_id = c.id
WHERE o.product_id = 4;


-- 2.
SELECT p.name, o.order_time FROM products p 
JOIN orders o ON o.product_id = p.id
WHERE order_time BETWEEN '2023-01-01' AND '2023-03-31 23:59:59.9999'
AND p.name = 'Filter'
ORDER BY order_time;

-- 3.
SELECT p.name, p.price, o.order_time FROM orders o
JOIN products p ON o.product_id = p.id
JOIN customers c ON o.customer_id = c.id
WHERE c.gender = 'F'
AND o.order_time BETWEEN '2023-01-01' AND '2023-01-31 23.59.59.9999'
ORDER BY o.order_time;