USE cinema_booking_system;

-- Challenge 1 - films over 2 hours long

SELECT * FROM films;

SELECT * FROM films
WHERE length_min > 120;

-- challenge 2 - films with the most screenings

SELECT * FROM screenings;

-- 1.
SELECT f.name, count(*) AS no_screenings FROM screenings s
JOIN films f ON s.film_id = f.id
GROUP BY f.name
ORDER BY no_screenings DESC;

-- DUNKIRK (25), THE DEATH OF STALIN (24), GEOSTORM(23)

-- 2.
SELECT f.name, count(*) AS no_screenings FROM screenings s
JOIN films f ON s.film_id = f.id
GROUP BY f.name
ORDER BY no_screenings DESC
LIMIT 2;

-- 3. Only max

SELECT f.name, count(*) AS no_screenings FROM screenings s
JOIN films f ON s.film_id = f.id
GROUP BY f.name
HAVING no_screenings = (
SELECT max(no_screenings) FROM 
(SELECT count(*) AS no_screenings FROM screenings s
JOIN films f ON s.film_id = f.id
GROUP BY f.name) sh);

SELECT count(*) AS no_screenings FROM screenings s
JOIN films f ON s.film_id = f.id
GROUP BY f.name;
