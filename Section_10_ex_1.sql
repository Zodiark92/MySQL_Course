USE cinema_booking_system;

SHOW TABLES;

SELECT * FROM bookings;
SELECT * FROM customers;
SELECT * FROM screenings;
SELECT * FROM films;
SELECT * FROM reserved_seat;
SELECT * FROM rooms;

-- 1. -> 6 
SELECT count(*) FROM bookings
WHERE customer_id = 10;

-- 2. -> 2
SELECT count(*) FROM screenings s
JOIN films f ON s.film_id = f.id
WHERE s.start_time BETWEEN '2022-10-01' AND '2022-10-31 23:59:59.9999'
AND f.name = 'Blade Runner 2049';

SELECT count(*) FROM screenings s
JOIN films f ON s.film_id = f.id
AND f.name = 'Blade Runner 2049'
AND month(s.start_time) = 10
AND year(s.start_time) = 2022;

-- 3. -> 17
SELECT  count(DISTINCT(customer_id)) FROM screenings s
JOIN bookings b ON b.screening_id = s.id
WHERE start_time BETWEEN '2023-04-01' AND '2023-04-30 23:59:59.999999';
