SHOW DATABASES;

CREATE DATABASE cinema_booking_system;

USE cinema_booking_system;

CREATE TABLE films (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL UNIQUE,
    length_min INT NOT NULL
);

SHOW TABLES;

SELECT * FROM films;

DESCRIBE films;

CREATE TABLE customers (
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(45),
last_name VARCHAR(45) NOT NULL,
email VARCHAR(45) UNIQUE NOT NULL
);

DESCRIBE customers;

CREATE TABLE rooms(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
no_seats INT NOT NULL
);

DESCRIBE rooms;

CREATE TABLE screenings(
id INT PRIMARY KEY AUTO_INCREMENT,
film_id INT NOT NULL,
room_id INT NOT NULL,
start_time DATETIME NOT NULL,
FOREIGN KEY(film_id) REFERENCES films(id),
FOREIGN KEY(room_id) REFERENCES rooms(id)
);

DESCRIBE screenings;

CREATE TABLE seats (
id INT PRIMARY KEY AUTO_INCREMENT,
seat_row CHAR(1) NOT NULL,
number INT NOT NULL,
room_id INT NOT NULL,
FOREIGN KEY(room_id) REFERENCES rooms(id)
);

DESCRIBE seats;

CREATE TABLE bookings(
id INT PRIMARY KEY AUTO_INCREMENT,
screening_id INT NOT NULL,
customer_id INT NOT NULL,
FOREIGN KEY (screening_id) REFERENCES screenings(id),
FOREIGN KEY (customer_id) REFERENCES customers(id)
);

SHOW TABLES;

DESCRIBE bookings;

CREATE TABLE reserved_seat(
id INT PRIMARY KEY AUTO_INCREMENT,
booking_id INT NOT NULL,
seat_id INT NOT NULL,
FOREIGN KEY(booking_id) REFERENCES bookings(id),
FOREIGN KEY(seat_id) REFERENCES seats(id)
);

DESCRIBE reserved_seat;