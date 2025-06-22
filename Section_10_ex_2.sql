USE cinema_booking_system;

SELECT * FROM reserved_seat;
SELECT * FROM bookings;
SELECT * FROM films;
SELECT * FROM screenings;

-- 1.  OK
SELECT b.customer_id, count(r.seat_id) FROM bookings b
JOIN reserved_seat r ON r.booking_id = b.id
GROUP BY b.customer_id
ORDER BY customer_id;

-- 2.
SELECT f.name, count(*) FROM films f
JOIN screenings s ON s.film_id = f.id
WHERE f.length_min > 120
GROUP BY f.name;

SELECT f.name, f.length_min, count(*) FROM films f
JOIN screenings s ON s.film_id = f.id
GROUP BY f.name, f.length_min
HAVING f.length_min > 120;

-- 3.
SELECT f.name, count(*) FROM films f
JOIN screenings s ON s.film_id = f.id
WHERE f.length_min > 120
AND year(s.start_time) = 2023
AND month(s.start_time) = 1
GROUP BY f.name;

SELECT f.name, f.length_min, count(*) FROM films f
JOIN screenings s ON s.film_id = f.id
AND year(s.start_time) = 2023
AND month(s.start_time) = 1
GROUP BY f.name, f.length_min
HAVING f.length_min > 120;

SELECT f.name, f.length_min, s.start_time, count(*) FROM films f
JOIN screenings s ON s.film_id = f.id
GROUP BY f.name, f.length_min, s.start_time
HAVING f.length_min > 120
AND year(s.start_time) = 2023
AND month(s.start_time) = 1;

-- 4.
SELECT b.customer_id, b.screening_id, count(*) AS no_seats FROM bookings b
JOIN reserved_seat r ON r.booking_id = b.id
GROUP BY b.customer_id, b.screening_id
ORDER BY customer_id;
