USE cinema_booking_system;

SELECT * FROM bookings;

SELECT screening_id, customer_id, count(*) FROM bookings
-- WHERE customer_id = 10
GROUP BY screening_id, customer_id
HAVING customer_id = 10;

SELECT screening_id, customer_id, count(*) FROM bookings
JOIN screenings ON screenings.id = bookings.screening_id
WHERE year(screenings.start_time) = 2022
GROUP BY screening_id, customer_id
HAVING customer_id = 10;

SELECT b.customer_id, s.* FROM bookings b
JOIN screenings s ON b.screening_id = s.id
WHERE b.customer_id = 10;

