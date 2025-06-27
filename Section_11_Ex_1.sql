USE cinema_booking_system;

SELECT * FROM films;
SELECT * FROM screenings;

-- 1. 
SELECT avg(length_min) FROM films;

SELECT name, length_min FROM films
WHERE length_min >
(SELECT avg(length_min)
 FROM films);
 
 -- 2.
SELECT min(s.no_screenings), max(s.no_screenings) FROM 
(SELECT film_id, count(*) AS no_screenings
FROM screenings
GROUP BY film_id) s;

-- 3.
-- WITH JOIN
SELECT f.name, count(*) FROM screenings s
JOIN films f ON f.id = s.film_id
GROUP BY f.name;

-- WITH SUBQUERY
SELECT f.name, 
(SELECT count(*) FROM screenings s
WHERE s.film_id = f.id)
FROM films f;

-- INNER QUERY, IT GOES IN ERROR ALONE
SELECT count(*) FROM screenings
WHERE film_id = films.id;
-- ->
SELECT count(*) FROM screenings s
JOIN films ON s.film_id = films.id;