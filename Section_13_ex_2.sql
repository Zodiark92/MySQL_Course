USE cinema_booking_system;

SELECT * FROM films;
SELECT * FROM screenings;

-- 1.
SELECT film_id, start_time FROM screenings
WHERE date(start_time) = '2022-06-18';

SELECT f.name, s.start_time FROM screenings s
JOIN films f ON f.id = s.film_id
WHERE date(start_time) = '2022-06-18';

-- 2.
SELECT * FROM screenings
WHERE date(start_time) BETWEEN '2023-03-06' AND '2023-03-13';

-- 3.
SELECT * FROM screenings
WHERE month(start_time) = 10
AND year(start_time) = 2022;