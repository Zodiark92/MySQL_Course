USE coffee_store;

SELECT coffee_origin FROM products;

SELECT DISTINCT coffee_origin FROM products;

SELECT DISTINCT customer_id FROM orders
WHERE order_time BETWEEN '2023-02-01' AND '2023-02-28 23:59:59'
ORDER BY customer_id;

SELECT DISTINCT customer_id, product_id FROM orders
WHERE order_time BETWEEN '2023-02-01' AND '2023-02-28 23:59:59'
ORDER BY customer_id;