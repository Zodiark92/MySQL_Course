USE cinema_booking_system;

-- Challenge 6 - how many customers made a booking

SELECT * FROM customers; 
SELECT * FROM bookings;

-- 105
SELECT DISTINCT count(distinct(customer_id)) AS no_customers
FROM bookings b;


SELECT count(*) FROM bookings;


-- DB normalization

SELECT * FROM rooms;
SELECT * FROM seats;

SELECT r.id, r.name, count(*) FROM seats s
JOIN rooms r ON s.room_id = r.id
GROUP BY r.id, r.name;