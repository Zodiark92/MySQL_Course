USE cinema_booking_system;

-- COUNT

SELECT * FROM customers;

SELECT count(*) FROM customers;

SELECT count(last_name) FROM customers;

SELECT count(first_name) FROM customers;

SELECT count(*) FROM customers
WHERE last_name = 'Smith';

SELECT count(*) FROM customers
WHERE first_name IS NULL;

-- SUM

SELECT * FROM rooms;

SELECT sum(no_seats) FROM rooms;

SELECT sum(no_seats) FROM rooms
WHERE id > 1;

-- MIN e MAX
SELECT * FROM films;

SELECT max(length_min) FROM films;

SELECT min(length_min) FROM films;

-- AVG

SELECT * FROM films;

SELECT avg(length_min) FROM films;

SELECT avg(length_min) FROM films
WHERE length_min > 120;