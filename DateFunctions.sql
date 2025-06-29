USE cinema_booking_system;

SELECT date('2023-09-22 07:45:32');

SELECT * FROM screenings;

SELECT date(start_time) FROM screenings;

SELECT * FROM screenings
WHERE date(start_time) = '2023-07-08';

SELECT * FROM screenings
WHERE date(start_time) BETWEEN '2023-07-08' AND '2023-09-09';

-- MONTH
SELECT month('2023-09-10');

SELECT month(start_time) FROM screenings;

SELECT * FROM screenings
WHERE month(start_time) = 8;

SELECT month(start_time), count(*) FROM screenings
GROUP BY month(start_time);

SELECT month(start_time) AS screening_month, count(*) FROM screenings
GROUP BY screening_month;

SELECT year('2023-05-05');

SELECT year(start_time) FROM screenings;

SELECT * FROM screenings
WHERE year(start_time) = 2023;