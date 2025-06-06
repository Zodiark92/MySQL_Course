USE coffee_store;

UPDATE orders
SET customer_id = null
WHERE id IN (300, 305, 310);

SELECT * FROM orders;

SELECT O.*, C.* FROM orders o
 LEFT JOIN customers c ON o.customer_id = c.id;
 
 SELECT c.*, o.* FROM customers c
 LEFT JOIN orders o ON c.id = o.customer_id
 ORDER BY o.id;