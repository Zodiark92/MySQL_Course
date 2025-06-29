USE cinema_booking_system;

SELECT * FROM films;

SELECT substring("example", 3, 3) AS Sub;

SELECT substring("example", 3) AS Sub;

SELECT substring(name, 1, 4) AS short_name FROM films;

SELECT substring(name, 5, 6) AS short_name FROM films;

SELECT substring(name, -2, 2) AS short_name FROM films;

SELECT substring(name, -6, 5) AS short_name FROM films;