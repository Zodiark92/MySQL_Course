USE cinema_booking_system;

SELECT * FROM screenings;

-- CORRELATED SUBQUERIES

SELECT id, start_time FROM screenings
WHERE film_id IN 
	(SELECT id FROM films 
     WHERE length_min > 120)
ORDER BY start_time; 
     
SELECT id FROM films 
     WHERE length_min > 120;
     
SELECT id, start_time FROM screenings 
WHERE film_id IN (1, 3, 8, 11)
ORDER BY start_time;

SELECT * FROM customers;

-- SELECT customers that made a booking for screening_id = 1
SELECT first_name, last_name, email FROM customers
WHERE id IN 
(SELECT customer_id FROM bookings
WHERE screening_id = 1);


SELECT * FROM reserved_seat;

SELECT booking_id, count(seat_id) AS no_seats FROM reserved_seat
GROUP BY booking_id;

SELECT avg(no_seats), max(no_seats) FROM 
(SELECT booking_id, count(seat_id) AS no_seats FROM reserved_seat
GROUP BY booking_id) b;

-- NON CORRELATED SUBQUERUES

SELECT * FROM reserved_seat;
SELECT * FROM screenings;
SELECT * FROM bookings;

SELECT screening_id, customer_id
FROM bookings
ORDER BY screening_id;

SELECT screening_id, customer_id, id,
(SELECT count(*) FROM reserved_seat
WHERE booking_id = b.id)
FROM bookings b
ORDER BY screening_id;