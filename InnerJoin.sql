USE coffee_store;

SELECT * FROM orders;

SELECT * FROM products;

SELECT products.name, orders.order_time FROM orders
INNER JOIN products ON orders.product_id = products.id;

SELECT p.name, o.order_time FROM orders o
INNER JOIN products p ON p.id = o.product_id
WHERE o.product_id = 5
ORDER BY o.order_time;

SELECT * FROM customers;

SELECT * FROM orders;

SELECT c.first_name, c.last_name, o.order_time FROM customers c
JOIN orders o ON c.id = o.customer_id
ORDER BY o.order_time DESC;