USE coffee_store;

SELECT * FROM orders;

SELECT * FROM products;

SELECT products.name, orders.order_time FROM orders
INNER JOIN products ON orders.product_id = products.id;

SELECT p.name, o.order_time FROM orders o
INNER JOIN products p ON p.id = o.product_id
WHERE o.product_id = 5
ORDER BY o.order_time;