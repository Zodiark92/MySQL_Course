USE coffee_store;

UPDATE orders
SET customer_id = null
WHERE id IN (221, 230, 235);

SELECT o.*, c.* FROM customers c
RIGHT JOIN orders o ON c.id =  o.customer_id
ORDER BY o.id;

SELECT o.*, c.* FROM orders o
RIGHT JOIN customers c ON c.id = o.customer_id
ORDER BY o.order_time;