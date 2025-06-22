USE cinema_booking_system;

SELECT * FROM bookings;
SELECT * FROM screenings;

SELECT count(*) FROM bookings;

SELECT customer_id, screening_id FROM bookings
ORDER BY customer_id;

SELECT customer_id, count(*) FROM bookings
GROUP BY customer_id;

SELECT customer_id, screening_id, count(*) FROM bookings
GROUP BY customer_id, screening_id
ORDER BY customer_id;

SELECT f.name, s.start_time, c.first_name, c.last_name, count(b.id) FROM films f
JOIN screenings s ON s.film_id = f.id
JOIN bookings b ON s.id = b.screening_id
JOIN customers c ON b.customer_id = c.id
GROUP BY f.name, s.start_time, c.first_name, c.last_name
ORDER BY s.start_time;
