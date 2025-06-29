USE cinema_booking_system;

SELECT concat(first_name, last_name) as full_name FROM customers;

SELECT concat(first_name, " ", last_name) as full_name FROM customers;

SELECT concat(first_name, " ", last_name, " ", email) as full_name FROM customers;

SELECT concat("This is ", first_name, " ", last_name, "'s email address: ", email) as customer_email FROM customers;