USE test;

DESCRIBE pets;

ALTER TABLE pets
ADD PRIMARY KEY (id);

DESCRIBE people;

ALTER TABLE pets
MODIFY COLUMN owner_id int;

ALTER TABLE pets
ADD CONSTRAINT FK_OwnerPets
FOREIGN KEY (owner_id) REFERENCES people(id);

ALTER TABLE people
ADD COLUMN email VARCHAR(30);

ALTER TABLE people
ADD CONSTRAINT u_email UNIQUE (email);

ALTER TABLE people
DROP CONSTRAINT email;

DESCRIBE pets;

ALTER TABLE pets
RENAME COLUMN name TO first_name;

DESCRIBE addresses;

ALTER TABLE addresses
MODIFY COLUMN postcode CHAR(7);

