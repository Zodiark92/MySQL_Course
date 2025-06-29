USE cinema_booking_system;

-- 1.
SELECT * FROM films;

SELECT concat("name: ", name, ", duration: ", length_min) AS films_duration FROM films;

-- 2.
SELECT * FROM customers;

SELECT substring(email, 5) FROM customers;

-- 3.
SELECT lower(first_name), upper(last_name) FROM customers
WHERE last_name = 'Smith' AND first_name IS NOT NULL;

SELECT lower(first_name), upper(last_name) FROM customers
WHERE last_name = 'Smith';

-- with concat
SELECT concat(lower(first_name), " ", upper(last_name)) AS full_name FROM customers
WHERE last_name = 'Smith' AND first_name IS NOT NULL;

-- 4.
SELECT substring(name, -3) FROM films;

-- 5.
SELECT concat(substring(first_name, 1, 3), " ", substring(last_name, 1, 3)) AS short_name FROM customers;
